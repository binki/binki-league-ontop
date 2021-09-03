@ECHO OFF
:# Source https://stackoverflow.com/a/58542670
(
	ECHO $signature = @'
	ECHO [DllImport("user32.dll"^^^)]public static extern bool SetWindowPos(IntPtr hWn, IntPtr hWndInsertAfter, int x, int y, int cx, int cy, uint uFlags^^^);
	ECHO '@
	:# https://stackoverflow.com/a/37418731
	ECHO.
	ECHO $type = Add-Type -MemberDefinition $signature -Name SetWindowPosition -Namespace SetWindowPos -Using System.Text -PassThru
	ECHO $alwaysOnTop = New-Object -TypeName System.IntPtr -ArgumentList (-1^^^)
	ECHO $type::SetWindowPos((Get-Process LeagueClientUx^^^).MainWindowHandle, $alwaysOnTop, 0, 0, 0, 0, 0x0003^^^)
) | powershell -noprofile -
