rmdir /S /Q "./build" > nul
echo Removed build/ & its contents

mkdir "./build" > nul
echo Created build/

robocopy "./public/" "./build/public" /MIR > nul
echo Copied public/

rmdir /S /Q "./build/public/assets/unused" > nul
echo Removed public/assets/unused/

robocopy "./script/" "./build/script" /MIR > nul
echo Copied script/

robocopy "./src/" "./build/src" /MIR > nul
echo Copied src/

robocopy "./styles/" "./build/styles" /MIR > nul
echo Copied styles/

robocopy "." "./build" index.html LICENSE README.md > nul
echo Copied index.html, LICENSE, README.md

echo Done!!!
pause