#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Array := ["1.mp3","2.mp3","3.mp3","4.mp3","5.mp3","6.mp3"]

for i in Array {
	ending := Array[i]
	X := "https://raw.githubusercontent.com/Chanan69/ahk-s/main/folder/" ending
	UrlDownloadToFile, %X%, %ending%
}
	
