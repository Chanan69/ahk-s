#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

UrlDownloadToFile, https://raw.githubusercontent.com/Chanan69/ahk-s/main/files/HackedByTony.jpeg, HackedByTony.jpeg
UrlDownloadToFile, https://raw.githubusercontent.com/Chanan69/ahk-s/main/files/tony_blink.png, tony_blink.png
InputBox, ScreenHeight ,enter screen height
InputBox, ScreenWidth ,enter screen width
Random, xPos, 1, ScreenWidth-301
Random, yPos, 1, ScreenHeight-301
xSpeed := 20
ySpeed := 15
xStop := ScreenWidth-300
yStop := ScreenHeight-300
Gui, Add, Picture, w300 h300 , HackedByTony.jpeg
number := 0
while (true){
    Gui, Show, x%xPos% y%yPos%
    xPos += xSpeed
    yPos += ySpeed
    if (xPos > xStop){
    xSpeed *= -1
    }
    if (xPos < 0){
    xSpeed *= -1
    }
    if (yPos > yStop){
    ySpeed *= -1
    }
    if (yPos < 0){
    ySpeed *= -1
    }
	if (number = 3000){
		Gui, Destroy
		Gui, Add, Picture, w300 h300 , tony_blink.png
		number := 0
	}
	if (number = 300){
		Gui, Destroy
		Gui, Add, Picture, w300 h300 , HackedByTony.jpeg
	}
	number += 50
	Sleep, 50
}
