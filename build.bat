@echo off

SET BG_SUCCESS=[92m[1m
SET BG_ERROR=[91m[1m
SET BG_INFO=[94m[1m
SET BG_EXIT=[97m[0m

if exist dist ( rmdir /s /q dist )
mkdir dist
echo .
echo %BG_INFO%"############ Dist directory created successfully!!! ##############"

echo .
echo %BG_INFO%"******************************************************************"
echo %BG_INFO%"#########  Generating the build (compile and package).  ##########"
echo %BG_INFO%"******************************************************************"
echo .

call mvn clean package

cd target
for %%f in ("*.jar") do set JAR_BUILD=%%~nf
if [%JAR_BUILD%] == [] (
  echo .
  echo %BG_ERROR%"************************************************************************"
  echo %BG_ERROR%"###### FAIL: an error occurred when trying to deploy in nexus :(  ######"
  echo %BG_ERROR%"************************************************************************"
  echo %BG_EXIT%
  exit /b
)

echo %BG_INFO%"************************************************************************"
echo %BG_INFO%"#########  Moving generated artifact to the dist directory... ########### "
echo %BG_INFO%"************************************************************************"
move "%JAR_BUILD%.jar" ..\dist

echo .
echo %BG_SUCCESS%"****************************************************************************"
echo %BG_SUCCESS%"######                Build completed successfully!!!!                ######"
echo %BG_SUCCESS%"****************************************************************************"

echo .
echo %BG_INFO%"*** Press any key to exit... ***"
echo %BG_EXIT%
Pause>nul