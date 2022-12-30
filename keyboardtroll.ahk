#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoTrayIcon

monkey(){
Characters := "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
Random, Rand, 1, StrLen(Characters)
char := SubStr(Characters, Rand, 1)
send {Backspace}
send %char%
}

~q::monkey()
~w::monkey()
~e::monkey()
~r::monkey()
~t::monkey()
~y::monkey()
~u::monkey()
~i::monkey()
~o::monkey()
~p::monkey()
~a::monkey()
~s::monkey()
~d::monkey()
~f::monkey()
~g::monkey()
~h::monkey()
~j::monkey()
~k::monkey()
~l::monkey()
~z::monkey()
~x::monkey()
~c::monkey()
~v::monkey()
~b::monkey()
~n::monkey()
~m::monkey()