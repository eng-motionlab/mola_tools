REM start Molannotate Jupyter notebooks IDE 
REM Author Nuno M. C. da Costa

@echo OFF
title molannotate

echo Hello! This is a batch to molannotatejupyter.

REM ACTIVATE ENV ********
call conda.bat activate molannotate

REM change dir to start in root env *****
cd ..

REM Start jupyter lab *******
call jupyter lab

