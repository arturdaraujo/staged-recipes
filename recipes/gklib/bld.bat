mkdir build && cd build

cmake -LAH -G"NMake Makefiles" ^
    -DCMAKE_PREFIX_PATH="%PREFIX%" ^
    -DCMAKE_INSTALL_PREFIX="%PREFIX%" ^
    -DDEBUG=OFF ^
    -DOPENMP=set ^
    -DBUILD_SHARED_LIBS=ON ^
    ..
if errorlevel 1 exit 1

:: Build!
nmake
if errorlevel 1 exit 1

:: Install!
nmake install
if errorlevel 1 exit 1
