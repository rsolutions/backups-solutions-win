@echo off

echo ****************************************

echo * rALMEIDA - Soluções em TI  *
echo * Deleta arquivos antigos         *

echo ****************************************

echo ****************************************

echo * Suporte - 62 9 9942-4108             *
echo * Email - rafaah.psy@gmail.com        *

echo ****************************************

cd "C:\GoogleDrive\Bkp_AlterData\"

echo ****************************************

echo * Excluindo arquivos antigos de backup *

echo ****************************************

FORFILES /D -05 /M *.backup /c "cmd /c del @file | echo @file foi excluido"



EXIT