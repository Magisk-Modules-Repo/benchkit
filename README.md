# Benchkit

Benchkit is a developer-centric toolkit module for Android with a plethora of tools for in-depth profiling and benchmarking. Many of the tools are focused on kernel benchmarking, but userspace (i.e. Android) benchmarking is also covered by some of them. This module aims to make empirical data-driven development more accessible so people can make optimal tuning decisions based on real results.

The only supported CPU architecture is little-endian AArch64, which includes almost all modern Android phones.

## Contents

Command-line utilities:

- [Bonnie++](https://doc.coker.com.au/projects/bonnie/):
  General filesystem and I/O benchmark
- [callbench](https://github.com/kdrag0n/callbench):
  Measure the speed of simple time syscalls (with and without vDSO) and basic in-memory I/O using `mmap(2)` and `read(2)`. A 32-bit version is available as `callbench32` for 32-bit vDSO testing.
- [cyclictest](https://git.kernel.org/pub/scm/utils/rt-tests/rt-tests.git/tree/src/cyclictest/cyclictest.c?h=stable/devel/v1.0.1):
  Measure timer jitter, useful for real-time latency testing
- [Dhrystone](https://github.com/ARM-software/workload-automation/blob/e387e3d9b79e936b50e5985c369aad1654cc9c06/wa/workloads/dhrystone/src/dhrystone.c):
  Simple CPU integer performance benchmark typically used for calculating CPU capacities for an EAS energy model
- [Flexible I/O Tester](https://github.com/axboe/fio/tree/4e8c82b4e9804c52bf2c78327cc5bfca9d8aedfc) (`fio`):
  Flexible generic I/O tester that can simulate a variety of configurable workloads
- [GTcycles](https://github.com/kdrag0n/gtcycles):
  Measure the frequency of the CPU's generic timer
- [Hackbench](https://git.kernel.org/pub/scm/utils/rt-tests/rt-tests.git/tree/src/hackbench/hackbench.c?h=stable/devel/v1.0.1&id=34caa080e0472cf480f2e90538aaf300f9ae487b):
  Scheduler wakeup latency and pipe benchmark
- [IOzone](http://www.iozone.org/):
  General filesystem and I/O benchmark
- [memcpy](https://github.com/ARM-software/workload-automation/blob/e387e3d9b79e936b50e5985c369aad1654cc9c06/wa/workloads/memcpy/src/memcopy.c):
  Measure memory bandwidth using libc's `memcpy(3)` function
- [perf](https://github.com/kdrag0n/proton_bluecross/tree/a9c87582ba82f2ec3889a975bd5e827d846676cd/tools/perf):
  Profiling tool (from Linux 4.9) for kernel and userspace. Some microbenchmarks are also available in `perf bench`.
- [rt-app](https://github.com/scheduler-tools/rt-app):
  Flexible real-time application simulator designed to replicate typical mobile workloads in a reproducible manner. Some reference tests from ARM are available in `/system/etc/rt-app`.
- [schbench](https://github.com/kdrag0n/schbench/blob/8d075b39d6a4cbb362b24912eddcdd362bf09649/schbench.c):
  Scheduler wakeup latency benchmark
- [stress-ng](https://kernel.ubuntu.com/git/cking/stress-ng.git/):
  Stress-test various hardware and kernel subsystems
- [sysbench](https://github.com/akopytov/sysbench):
  Scriptable database and system performance benchmark with several built-in tests
- [hyperfine](https://github.com/sharkdp/hyperfine):
  Advanced benchmark runner that makes it easy to run benchmarks in a
  statistically sound manner and export results into machine-readable formats
- [synthmark](https://github.com/google/synthmark):
  Benchmark CPU performance with real-time audio workloads (by Google; CLI version)

Android apps:

- [JankBenchX](https://github.com/joshuous/JankBenchX):
  [joshuous](https://github.com/joshuous/)' modified version of AOSP [JankBench](https://android.googlesource.com/platform/frameworks/base/+/refs/tags/android-9.0.0_r47/tests/JankBench/) for automatic reproducible UIBench testing
- [TouchLatency](https://android.googlesource.com/platform/frameworks/base/+/refs/tags/android-9.0.0_r47/tests/TouchLatency/):
  Test touch latency and jank in simple scenes (from AOSP)
- [UIBench](https://android.googlesource.com/platform/frameworks/base/+/refs/tags/android-9.0.0_r47/tests/UiBench/):
  Google's AOSP app for testing various mobile workloads and UI rendering tasks
- [Audio Latency Test](https://superpowered.com/latency) (shows as "Latency Test"):
  Test end-to-end (i.e. speaker to microphone) audio latency (from Superpowered)
- [SynthMark](https://github.com/google/synthmark):
  Benchmark CPU performance with real-time audio workloads (by Google; GUI version)
- [OboeTester](https://github.com/google/oboe):
  Various audio-related tests including latency and glitch testing (by Google)

## Links

- [**Donate** to show your support](https://paypal.me/dragon5232)
- [GitHub repository](https://github.com/kdrag0n/benchkit)

## Credits

- ARM for [LISA](https://github.com/ARM-software/lisa) and [Workload Automation](https://github.com/ARM-software/workload-automation)
- [celtare21](https://github.com/celtare21) for the [IOzone](http://www.iozone.org/) executable
- The respective authors of all tests included in this module
