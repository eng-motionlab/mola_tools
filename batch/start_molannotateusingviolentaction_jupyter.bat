REM START VIOLENT ACTION ENV

@echo OFF
title violent_action

echo Hello! This is a batch to start violent_action jupyter.


REM ACTIVATE ENV ********
call conda.bat activate violent_action

REM change dir to start in root env *****
cd ..

REM Start jupyter lab *******
call jupyter lab

