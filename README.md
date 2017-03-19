# jpegoptim for Windows

This is just my own project files for easy building of jpegoptim with mozjpeg and MSVC 2015.
Currently only x64 is targeted.

## Notes:

* MultiThreaded; no need for MSVC Runtime to be installed
* Uses LTCG
* Runs on Vista and newer

## Build Instructions

1. Clone the repository
2. Init submodules with `git submodule init` and `git submodule update --recursive`. Alternatively you can use `git clone --recursive https://github.com/XhmikosR/jpegoptim-windows.git` when cloning this repository.
2. Download and install MSVC 2015 (any edition)
3. Place `nasm.exe` somewhere into your `PATH`
4. Open `jpegoptim.sln` and build
