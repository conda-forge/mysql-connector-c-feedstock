mkdir build && cd build

cmake -GNinja ^
      -DCMAKE_BUILD_TYPE="Release" ^
      -DCMAKE_C_FLAGS="-I%LIBRARY_INC%" ^
      -DCMAKE_CXX_FLAGS="-I%LIBRARY_INC%" ^
      -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      ..
if errorlevel 1 exit 1

ninja
if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1

