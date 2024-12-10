mkdir build && cd build

cmake -G Ninja ^
  -DCMAKE_INSTALL_PREFIX:PATH=%LIBRARY_PREFIX% ^
  -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_BUILD_TYPE=Release ^
  %CMAKE_ARGS% ^
  %SRC_DIR%
if errorlevel 1 exit 1

cmake --build . --target install --config Release
if errorlevel 1 exit 1
