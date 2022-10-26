# jpegoptim for Windows

[![Build Status](https://github.com/XhmikosR/jpegoptim-windows/workflows/CI/badge.svg?branch=main)](https://github.com/XhmikosR/jpegoptim-windows/actions?query=workflow%3ACI+branch%3Amain)

This is just my own project files for easy building of [jpegoptim](https://github.com/tjko/jpegoptim)
with [mozjpeg](https://github.com/mozilla/mozjpeg) and Microsoft Visual Studio.
Currently only 64-bit (x64) is targeted.

## Notes

* Multithreaded; no need for the MSVC Runtime to be installed separately
* Built with [LTCG](https://docs.microsoft.com/en-us/cpp/build/reference/ltcg-link-time-code-generation?view=msvc-170)
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

2. Download and install [Visual Studio 2022](https://visualstudio.microsoft.com/downloads/) (any edition)
3. Download [nasm](https://www.nasm.us/) and place `nasm.exe` somewhere into your `PATH`
4. Open `jpegoptim.sln` and build, or run `build.bat`

## Sample scripts

**WARNING**: The following scripts optimize the images in place! Remember to make a backup before running them.

Here's a sample script that loops through only the first-level subfolders in a folder optimizing all pictures:

```bat
for /f "tokens=*" %%i in ('dir /a:d /b') do (
  jpegoptim.exe --preserve --strip-all --totals --verbose "%%i\*.jpg"
)
```

Here's another sample script that loops through all subfolders in a folder optimizing all pictures:

```bat
for /f "delims=" %%i in ('dir /b /s *.jpg') do (
  jpegoptim.exe --preserve --strip-all --verbose "%%i"
)
```
