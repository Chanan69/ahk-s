#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

gaySex(){
	i := 1
	times := ["08","20" , "09","15" , "09","25" , "10","10" , "10","20" , "11","05" , "11","15" , "12","00" , "12","20" , "13","05" , "13","15" , "13","55" , "14","10" , "14","50" , "14","55" , "15","35" , "15","40" , "16","20" ]
	X := times.Length() / 2
	loop, %X%{
		hr := times[i]
		min := times[i+1]
		currHr := A_Hour
		currMin := A_Min
		if (hr = currHr){
			if (min = currMin){
				return True
			}
		}
		i += 2
	}
	return False
}

gayporn(){
	Array := ["1.mp3","2.mp3","3.mp3","4.mp3","5.mp3","6.mp3"]
	lengf := Array.Length()
	Random, Rand, 1, lengf
	X_sound := Array[Rand]
	SoundPlay, %X_sound%
}

while (True){
	if gaySex(){
		gayporn()
		sleep, 120000
	}
	sleep, 5000
}