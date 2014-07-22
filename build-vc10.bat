rmdir msvc\gtest /q /s
rmdir msvc\x64 /q /s

"%VS100COMNTOOLS%..\IDE\devenv.com" msvc/gtest.sln /build "Release|Win32"
"%VS100COMNTOOLS%..\IDE\devenv.com" msvc/gtest.sln /build "Debug|Win32"
"%VS100COMNTOOLS%..\IDE\devenv.com" msvc/gtest.sln /build "Release|x64"
"%VS100COMNTOOLS%..\IDE\devenv.com" msvc/gtest.sln /build "Debug|x64"

call mvn -f ./pom/include/pom.xml deploy
call mvn -f ./pom/x64-windows-static-mt-msvc10-debug/pom.xml deploy
call mvn -f ./pom/x64-windows-static-mt-msvc10-release/pom.xml deploy
call mvn -f ./pom/x86-windows-static-mt-msvc10-debug/pom.xml deploy
call mvn -f ./pom/x86-windows-static-mt-msvc10-release/pom.xml deploy

pause