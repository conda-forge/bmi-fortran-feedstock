mkdir _build
cd _build

cmake -G "Visual Studio 14 2015 Win64" ^
  -DCMAKE_INSTALL_PREFIX:PATH=%LIBRARY_PREFIX% ^
  -DCMAKE_BUILD_TYPE=Release ^
  %SRC_DIR%

if errorlevel 1 exit 1

cmake --build .
if errorlevel 1 exit 1
