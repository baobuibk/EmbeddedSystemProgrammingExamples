# Simulating the book examples with Renode

[Renode](https://renode.io/) is an open-source functional simulator for embedded systems. It emulates the CPU core and on-chip peripherals of a real microcontroller closely enough that most of the code in this repo can be built, flashed (into the simulator), and run without any physical STM32F407 Discovery board — useful for readers who don't have the hardware yet, and for quick smoke-testing while working through the book.

This folder contains a Renode platform description for the STM32F407VG Discovery board plus scripts to boot any example project's `.elf` on it.

## Contents

```
simulate/
├── README.md                          this file
├── platforms/
│   └── stm32f407_discovery.repl       board platform description
├── renode/
│   └── run_example.resc               generic runner script (parameterized by $bin)
└── scripts/
    ├── run.sh                         bash wrapper: run.sh <project>
    └── run.ps1                        PowerShell wrapper: run.ps1 <project>
```

## 1. Install Renode

Download and install Renode for your OS from **https://renode.io/#downloads** (installer/zip on Windows, `.deb`/`.rpm`/portable tarball on Linux, `brew` on macOS). Make sure the `renode` command is on your `PATH` — on Windows this usually means adding the install directory to `PATH` or using the "Renode" shortcut it registers; test with:

```
renode --version
```

## 2. Build the example you want to simulate

Renode boots a compiled `.elf`, so build the project first exactly as described in the top-level `CLAUDE.md`:

```
cd Source/chapter9_example1/Debug
make all
```

This produces `Source/chapter9_example1/Debug/chapter9_example1.elf` (the artifact name matches the project folder name for every project except `UinitTest`, whose artifact is `STM32_template.elf` — see the table below).

## 3. Run it in Renode

From the **repository root**:

```bash
simulate/scripts/run.sh chapter9_example1        # bash / Git Bash / WSL
```
```powershell
simulate\scripts\run.ps1 chapter9_example1        # PowerShell
```

This opens Renode, loads the `stm32f407_discovery` platform, loads the ELF, opens a UART terminal window attached to USART1 (the console UART used by every chapter8+ example — see `Src/BSP/board.h`), and starts execution. For the LED-only chapters (no UART), just watch the LED state in Renode's GUI (`View -> LEDs`, or inspect a peripheral's state in the Monitor, e.g. `led_orange State`).

To stop: switch to the Renode Monitor window and run `quit`, or close the window.

### Running by hand

If you don't want to use the wrapper scripts, you can drive Renode's interactive Monitor directly:

```
renode
```

```
(monitor) $name = "stm32f407_discovery"
(monitor) mach create $name
(monitor) machine LoadPlatformDescription @simulate/platforms/stm32f407_discovery.repl
(monitor) sysbus LoadELF @Source/chapter9_example1/Debug/chapter9_example1.elf
(monitor) showAnalyzer sysbus.usart1
(monitor) start
```

Useful follow-up commands: `pause`, `machine Reset`, `sysbus LoadELF @...` again to reflash a new build without restarting Renode.

## 4. What's actually simulated (and what isn't)

The platform (`platforms/stm32f407_discovery.repl`) extends Renode's own bundled STM32F4 Discovery description with the three LEDs it doesn't wire by default, so all four on-board LEDs match the real board (LD3 orange/PD13, LD4 green/PD12, LD5 red/PD14, LD6 blue/PD15) alongside the user button (PA0).

| Peripheral | Status in simulation |
|---|---|
| GPIO ports A-K, incl. the Cortex-M bit-band alias region (`0x42000000`) | ✅ Fully modeled — direct register pokes, LL GPIO calls, and the `dio`/BSP LED drivers all behave like real hardware. |
| USART1/2/3, UART4/5 | ✅ Fully modeled — `showAnalyzer` gives you an interactive terminal; interrupt-driven RX (ring buffers) works. |
| NVIC, EXTI, SysTick, TIM1-14 | ✅ Modeled — `HAL_Delay`, the SoftTimer/scheduler middleware, and interrupt timing all work. Simulated time isn't wall-clock time by default; don't rely on it for precise real-time latency testing. |
| RCC, PWR, CRC, IWDG, on-chip RTC | ✅ Modeled at register level. Note the on-chip RTC isn't what `BSP_RTC` in chapter10-12 talks to (see below). |
| SPI1-3, I2C1-3 | ⚠️ The bus *controllers* are modeled (register-accurate), but no slave device is attached. Writes complete, but reads won't return real data. This affects: the DS3234 SPI RTC used by `Src/BSP/BSP_RTC` in `chapter10_example*`/`chapter11_example1`/`chapter12_example*`, and any I2C peripheral (e.g. the PCF8574/HD44780 LCD used by `UinitTest`'s handheld-device extension). |
| ADC1/2/3 | ❌ Not modeled by the base platform. `NTC_ADC` reads in `chapter11_example1` will read back as 0. |
| Ethernet MAC | Present on the STM32F4 die but unused by every project in this repo — ignore it. |

In short: **anything that's pure CPU + GPIO + UART + timers + interrupts runs faithfully**; peripherals reached over an external bus (the DS3234 RTC, an I2C LCD, an NTC via ADC) execute their driver code but won't get realistic data back. That's fine for exercising control flow, console output, and LED/GPIO-based logic (e.g. `chapter10_example1`'s digital water-level sensor, which is plain GPIO and works perfectly), but don't expect the simulated RTC/LCD/temperature values to be meaningful.

If you want realistic responses from one of those external devices, extend `platforms/stm32f407_discovery.repl` with a device model — Renode ships C# models for common I2C/SPI parts, and for anything it doesn't have you can stub one quickly with a `Python.PythonPeripheral` entry (see Renode's own documentation for the exact syntax: https://renode.readthedocs.io/).

## 5. Which projects can run on this platform

This platform models an **STM32F407VG**. Most projects in `Source/` target exactly that part (the STM32F407 Discovery board used throughout the book), but a handful of chapters use a different Nucleo/Discovery board (STM32F401, STM32F411, or STM32F746) and won't run correctly here — the flash/RAM layout, clock tree, and peripheral instances differ. You'd need a different Renode platform (e.g. `platforms/boards/stm32f7_discovery-bb.repl` or `platforms/boards/nucleo_f401re.repl`-style descriptions) to simulate those.

**✅ STM32F407VG — runs on this platform:**

| Project | Notes |
|---|---|
| `0_test_example` | Bare-metal, direct register / bit-band LED toggling |
| `chapter4_example2` | |
| `chapter5_example1` | |
| `chapter5_example4` | |
| `chapter6_example1` | |
| `chapter8_example1`, `chapter8_example2`, `chapter8_example3` | |
| `chapter9_example1`, `chapter9_example2`, `chapter9_example3`, `chapter9_example4` | USART1 console |
| `chapter10_example1` ... `chapter10_example8` | USART1 console; `BSP_RTC` (DS3234) reads won't be meaningful, see above |
| `chapter11_example1` | USART1 console; NTC ADC reads won't be meaningful |
| `chapter12_example1` | USART1 console; FreeRTOS kernel — runs fine, RTC caveat as above |
| `freeRTOS_inclass_ex1` | |
| `FreeRTOS_STM32F407_Example1`, `FreeRTOS_STM32F407_Example2` | |
| `UinitTest` (`../UinitTest/`) | Artifact is `Debug/STM32_template.elf`, not `UinitTest.elf` — pass that path explicitly. I2C LCD/keypad won't get real data (see above); this project's own host-side Unity tests (`UinitTest/tests/`) are the better way to verify its portable logic anyway. |

**⚠️ Different MCU — not covered by this platform:**

| Project | Actual target |
|---|---|
| `chapter5_example2`, `chapter5_example3`, `chapter7_example1`, `chapter7_example3`, `chapter_example1`, `chapter_example2` | STM32F401VEHx |
| `chapter6_example2` | STM32F411VETx |
| `chapter7_example4` | STM32F411CCUx |
| `Chapter6_Example3`, `chapter5_example5`, `chapter6_example4`, `chapter12_example2`, `freertos_example`, `freertos_example2`, `freertos_example3` | STM32F746NGHx / STM32F746VGHx |

(`chip_header/` is just vendored CMSIS headers, not a runnable project, and is excluded from both lists.)

## Troubleshooting

- **`renode: command not found`** — Renode isn't on `PATH`; see step 1.
- **`Could not find file '@Source/.../*.elf'`** — you didn't build the project first, or you ran the script from a directory other than the repo root (the `@`-relative paths in `run_example.resc` are resolved relative to Renode's current working directory).
- **`No such file` for the `.repl`/`using` line** — different Renode versions occasionally rename/move bundled boards files. If `platforms/boards/stm32f4_discovery.repl` isn't found, check what your installed version ships by browsing your Renode install's `platforms/boards/` directory for an `stm32f4_discovery*.repl` file and update the `using` line in `simulate/platforms/stm32f407_discovery.repl` to match.
- **Nothing prints over UART** — confirm the example actually uses USART1 as its console (`grep CONSOLE_USART Src/BSP/board.h` in the project); a few projects define it differently, in which case change `showAnalyzer sysbus.usart1` to the right instance.
