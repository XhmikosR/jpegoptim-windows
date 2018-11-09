@echo off
setlocal

cd /d %~dp0

rem add MSVC in PATH
call "%ProgramFiles(x86)%\Microsoft Visual Studio\2017\Community\Common7\Tools\VsMSBuildCmd.bat"

set "MSBUILD_SWITCHES=/nologo /consoleloggerparameters:Verbosity=minimal /maxcpucount /nodeReuse:true"

MSBuild.exe "jpegoptim.sln" %MSBUILD_SWITCHES%^
 /target:"Rebuild" /property:Configuration="Release";Platform="x64"

:end
endlocal
rem pause
exit /b
