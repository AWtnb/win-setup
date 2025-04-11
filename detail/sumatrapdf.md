# SumatraPDF

[SumatraPDF-settings.txt](./SumatraPDF-settings.txt) を `%USERPROFILE%\AppData\Local\SumatraPDF` にコピーする。

```PowerShell
gi .\detail\SumatraPDF-settings.txt|copy -Destination "$env:USERPROFILE\AppData\Local\SumatraPDF"
```
