@ECHO OFF

mode con: lines=40
mode con: cols=170

ECHO ***********************************************************
ECHO ** Encrypts or decrypts Web.config elements.             **
ECHO **                                                       **
ECHO ** Proceed with caution! For aspnet_regiis docs, see:    **
ECHO ** http://msdn.microsoft.com/en-us/library/zhhddkxy.aspx **
ECHO ***********************************************************
ECHO.

SET aspnetpath=%windir%\Microsoft.NET\Framework\v4.0.30319\
SET site1=sitename
SET siteIDvar1=123456789

ECHO ** Site names on this machine:
ECHO %site1%
ECHO.

ECHO Enter d to decrypt or e to encrypt:
SET /p action= 
ECHO Enter the section you wish to encrypt or decrypt:
SET /p section= 
ECHO Enter the application path:
SET /p app= 
ECHO Enter the site name for the application (see above):
SET /p site= 
ECHO.

IF %site%==%site1% SET siteID=%siteIDvar1%

ECHO Running:
ECHO %aspnetpath%aspnet_regiis.exe -p%action% "%section%" -app "%app%" -site "%siteID%"
ECHO.
%aspnetpath%aspnet_regiis.exe -p%action% "%section%" -app "%app%" -site "%siteID%"
ECHO.

pause