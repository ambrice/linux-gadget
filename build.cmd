@echo off
@echo Running WIX Candle for linux-gadget
"%WIX%\bin\candle" -ext "%WIX%\bin\WixUIExtension.dll" -ext "%WIX%\bin\WixDifxAppExtension.dll" linux-gadget.wxs -arch x64

@echo Running WIX Light for linux-gadget
"%WIX%\bin\light" -ext "%WIX%\bin\WixUIExtension.dll" -ext "%WIX%\bin\WixDifxAppExtension.dll" linux-gadget.wixobj "%WIX%\bin\difxapp_x64.wixlib" -o linux-gadget-x64.msi

