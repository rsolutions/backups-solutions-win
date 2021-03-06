@echo off
@echo ::::rALMEIDA - Soluções em TI::::
@echo Suporte: 62 9 9942-4108

set cliente=Almeida Consultoria
set data=%date:~0,2%-%date:~3,2%-%date:~6,10%_%time:~0,2%-%time:~3,2%
set dir_postgres=C:\Program Files\PostgreSQL\9.6\bin
set dir_bkp=C:\GoogleDrive\Bkp_AlterData
set bd=ALTERDATA


REM IP do Servidor do PostgreSQL:
SET PGHOST=localhost

REM Porta de acesso ao PostgreSQL:
SET PGPORT=5432

REM Base de Dados que será feito backup:
SET PGDATABASE=ALTERDATA

REM Usuário da base de dados:
SET PGUSER=postgres


REM Senha da base de dados
SET PGPASSWORD=#abc123#

echo "Backup banco de dados %cliente%"
chdir %dir_postgres%
echo "Aguarde, realizando o backup do Banco de Dados..."
pg_dump --host localhost --port 5432 --username "postgres" --format custom --blobs -Z4 -Fc --verbose --file "%dir_bkp%\%data%.backup" "ALTERDATA"
echo "Backup realizado com sucesso!"

exit