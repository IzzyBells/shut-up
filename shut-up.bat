@echo off
:: --HAS ENDING BACKSLASH
set batdir=%~dp0
:: --MISSING ENDING BACKSLASH
:: set batdir=%CD%
pushd "%batdir%"

for %%G in ("%batdir%*.exe") do (

netsh advfirewall firewall add rule name="Blocked With Batchfile %%G" dir=in action=block program="%%G" enable=yes profile=any
netsh advfirewall firewall add rule name="Blocked With Batchfile %%G" dir=out action=block program="%%G" enable=yes profile=any

)