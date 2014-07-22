"%VS100COMNTOOLS%..\IDE\devenv.com" msvc/gtest.sln /rebuild "Release|Win32" || goto :EOF
call mvn -f ./pom/x86-windows-static-mt-msvc10-release/pom.xml deploy || goto :EOF

"%VS100COMNTOOLS%..\IDE\devenv.com" msvc/gtest.sln /rebuild "Debug|Win32" || goto :EOF
call mvn -f ./pom/x86-windows-static-mt-msvc10-debug/pom.xml deploy || goto :EOF

"%VS100COMNTOOLS%..\IDE\devenv.com" msvc/gtest.sln /rebuild "Release|x64" || goto :EOF
call mvn -f ./pom/x64-windows-static-mt-msvc10-release/pom.xml deploy || goto :EOF

"%VS100COMNTOOLS%..\IDE\devenv.com" msvc/gtest.sln /rebuild "Debug|x64" || goto :EOF
call mvn -f ./pom/x64-windows-static-mt-msvc10-debug/pom.xml deploy || goto :EOF

pause