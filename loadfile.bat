@REM
@REM LOADFILE.BAT - Load an AD object table from a file
@REM
@IF EXIST %1 (
@IF EXIST %2 (
REM Usage:   loadfile <ad_object_type> <input filename> <output tablename>
REM Example: loadfile ad_group_member 2018-06-08\CURRENEXADGroupsAssignments_cln.txt ad_group_member_curnx
REM          loadfile ad_group 2018-06-08\CURRENEXADGroups_cln.txt ad_group_curnx
REM          loadfile ad_account 2018-06-08\CURRENEXADAccounts_cln.txt ad_account_curnx
@REM Customize the logon script, assume Teradata UID is the same as Windows username, LDAP authentication, TDWALLET set up for 'tdprd'
%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe -Command "(gc logon) -replace '@username', '%username%' | Set-Content -path 'logon.txt'
@REM Customize the specified loader script using the specified filename and tablename
%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe -Command "((gc %1) -replace '@file', '%2' )  -replace '@table', '%3' | Set-Content -path '%1.fl'
@REM suppress Teradata logon dialog box
set GUILOGON=NO
fastload <%1.fl
) ELSE (@ECHO %2 DOES NOT EXIST)
) ELSE (@ECHO %1 UNKNOWN OBJECT TYPE)