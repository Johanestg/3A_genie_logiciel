if exist "O:\Documents\3A\genie_logiciel\3A_genie_logiciel\build3" (
	cd ./build3
) else (
  mkdir build3 
  cd ./build3
)


cmake -DCMAKE_BUILD_TYPE=Release -DHELLOWORLD_WITH_TESTS="ON" -DHELLOWORLD_WITH_EXECUTABLES="OFF" ..
cmake --build . --config Release

ctest -C Release

pause