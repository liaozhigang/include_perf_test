rmdir /s "d:/work/include_perf_test/build"

@echo Started: %date% %time%

"D:\Program Files\CMake\bin\cmake.exe" --no-warn-unused-cli -DUSE_ALL=ON -DCMAKE_TOOLCHAIN_FILE:STRING=D:/work/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE -Sd:/work/include_perf_test -Bd:/work/include_perf_test/build -G "Visual Studio 16 2019"
 
"D:\Program Files\CMake\bin\cmake.exe" --build d:/work/include_perf_test/build --config Debug --target ALL_BUILD -j 10

@echo Finished: %date% %time%
