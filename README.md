# jpegoptim for Windows

[![Build status](https://img.shields.io/appveyor/ci/XhmikosR/jpegoptim-windows/master.svg)](https://ci.appveyor.com/project/XhmikosR/jpegoptim-windows/branch/master)

This is just my own project files for easy building of [jpegoptim](https://github.com/tjko/jpegoptim) with [mozjpeg](https://github.com/mozilla/mozjpeg) and Microsoft Visual Studio.
Currently only 64-bit (x64) is targeted.

## Notes

* Multithreaded; no need for the MSVC Runtime to be installed separately
* Built with [LTCG](https://docs.microsoft.com/en-us/cpp/build/reference/ltcg-link-time-code-generation?view=vs-2019)
* Runs on Windows Vista and newer

## Build Instructions

1. Clone the repository

  ```shell
  git clone --recursive https://github.com/XhmikosR/jpegoptim-windows.git
  ```

  Alternatively you can do this:

  ```shell
  git submodule init
  git submodule update --recursive
  ```

2. Download and install [Visual Studio 2019](https://visualstudio.microsoft.com/downloads/) (any edition)
3. Download [nasm](https://www.nasm.us/) and place `nasm.exe` somewhere into your `PATH`
4. Open `jpegoptim.sln` and build, or run `build.bat`

## Sample script

There's a sample script that loop all the subfolders in a folder optimizing pictures.

```bat
for /f "tokens=*" %%i in ('dir /a:d /b') do (
  jpegoptim.exe --preserve --verbose --totals "%%i\*.jpg"    
)
```
