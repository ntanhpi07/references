FOR %%X in (".\*.xls") DO IF NOT %%~xX == .xlsx echo Converting "%%~dpnxX"  & "C:\Program Files (x86)\Microsoft Office\Office14\excelcnv.exe"  -nme -oice "%%~dpnxX" "%%~dpnX.xlsx"
