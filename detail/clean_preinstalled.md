# プリインストールアプリの削除

+ `アプリと機能` から不要なゲームアプリなどを削除
+ `オプション機能` から不要な機能を削除

![img](../img/app.png)

#### ストアアプリ等の強制削除

https://winaero.com/windows-11-uninstall-preinstalled-apps/#Uninstall_apps_from_the_Start_menu

|App|Removal command|
|:---|:---|
|AV1 Codec| `Get-AppxPackage *AV1VideoExtension* \| Remove-AppxPackage` |
|News app| `Get-AppxPackage *BingNews* \| Remove-AppxPackage` |
|Weather| `Get-AppxPackage *BingWeather* \| Remove-AppxPackage` |
|PowerShell| `Get-AppxPackage *PowerShell* \| Remove-AppxPackage` |
|WebP image support| `Get-AppxPackage *WebpImageExtension* \| Remove-AppxPackage` |
|HEIF image support| `Get-AppxPackage *HEIFImageExtension* \| Remove-AppxPackage` |
|Windows Terminal| `Get-AppxPackage *WindowsTerminal* \| Remove-AppxPackage` |
|Music app| `Get-AppxPackage *ZuneMusic* \| Remove-AppxPackage` |
|Movies and TV| `Get-AppxPackage *ZuneVideo* \| Remove-AppxPackage` |
|MS Office| `Get-AppxPackage *MicrosoftOfficeHub* \| Remove-AppxPackage` |
|People app| `Get-AppxPackage *People* \| Remove-AppxPackage` |
|Maps| `Get-AppxPackage *WindowsMaps* \| Remove-AppxPackage` |
|Help and tips| `Get-AppxPackage *GetHelp* \| Remove-AppxPackage` |
|Voice Recorder| `Get-AppxPackage *WindowsSoundRecorder* \| Remove-AppxPackage` |
|Notepad| `Get-AppxPackage *WindowsNotepad* \| Remove-AppxPackage` |
|MS Paint| `Get-AppxPackage *Paint* \| Remove-AppxPackage` |
|Sticky Notes| `Get-AppxPackage *MicrosoftStickyNotes* \| Remove-AppxPackage` |
|PowerAutomate| `Get-AppxPackage *PowerAutomateDesktop* \| Remove-AppxPackage` |
|Xbox and related apps| `Get-AppxPackage *Xbox* \| Remove-AppxPackage` |
|Feedback Hub| `Get-AppxPackage *WindowsFeedbackHub* \| Remove-AppxPackage` |
|Microsoft To-Do| `Get-AppxPackage *Todos* \| Remove-AppxPackage` |
|Calculator| `Get-AppxPackage *WindowsCalculator* \| Remove-AppxPackage` |
|Alarms and Clocks| `Get-AppxPackage *WindowsAlarms* \| Remove-AppxPackage` |
|Teams/Chat| `Get-AppxPackage *Teams* \| Remove-AppxPackage` |
|Microsoft Edge| `Get-AppxPackage *MicrosoftEdge* \| Remove-AppxPackage` |
|Your Phone| `Get-AppxPackage *YourPhone* \| Remove-AppxPackage` |
|Spotify| `Get-AppxPackage *SpotifyAB.SpotifyMusic* \| Remove-AppxPackage` |
|Screen & Sketch/Snipping tool| `Get-AppxPackage *ScreenSketch* \| Remove-AppxPackage` |
|Solitaire Collection| `Get-AppxPackage *MicrosoftSolitaireCollection* \| Remove-AppxPackage` |
|Photos| `Get-AppxPackage *Windows.Photos* \| Remove-AppxPackage` |
|OneDrive| `Get-AppxPackage *OneDriveSync* \| Remove-AppxPackage` |
|Skype| `Get-AppxPackage *SkypeApp* \| Remove-AppxPackage` |
