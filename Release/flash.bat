"C:\Program Files (x86)\STMicroelectronics\STM32 ST-LINK Utility\ST-LINK Utility\ST-LINK_CLI.exe" -c SWD -P Avada.hex 0x08000000 -V  -Rst

@if %ERRORLEVEL% EQU 0 echo Done

