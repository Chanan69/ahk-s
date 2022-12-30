#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoTrayIcon
Gui,+ToolWindow

FileInstall, image.png, image.png

Random, xPos, 1, A_ScreenWidth-301
Random, yPos, 1, A_ScreenHeight-301
xSpeed := 9
ySpeed := 6
xStop := A_ScreenWidth-300
yStop := A_ScreenHeight-300
Gui, Add, Picture, w300 h300 , image.png
while (True){
    Gui, Show, x%xPos% y%yPos%, L
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
    Sleep, 20
}