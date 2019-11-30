; 
; EYE Divine Cybermancy hold-to-aim v1
; Author:			Desi Quintans <me@desiquintans.com>
; Website:			http://www.desiquintans.com/eyeaim
; 
; The full readme and changelog are available at https://github.com/DesiQuintans/eye-holdaim


#NoEnv
#SingleInstance, Force
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1

; --- USER-EDITABLE VARIABLES ------------------------------------------------------

; How long (in milliseconds) should the Right Mouse be held down for it to be
; detected as a button-hold and not a button-tap? 
; The default value of 115 is the upper 95 % CI of 200 of my own mouse-taps. 
; You might try a larger number like 156 (95 % of my button-taps were 156 ms 
; or faster) or 171 (99 % of my taps were 171 ms or faster).
; DEFAULT:    hold_threshold := 116
hold_threshold := 116


; How often (in milliseconds) should the script check whether the aim mode needs 
; to be reset?
; Sometimes the game pops you out of aim mode, like when you walk too close to 
; a wall. You can also do it to yourself by sprinting during aiming. At these 
; times the script might becomes confused about your actual state, so it will 
; check at regular intervals to ensure that its internal state matches what 
; you're doing in the game.
; DEFAULT:    sync_interval := 10
sync_interval := 10


; --- END OF USER-EDITABLE VARIABLES -----------------------------------------------


in_aim_mode := FALSE

SetTimer, Reset_Aim_Mode, %sync_interval%

#IfWinActive, ahk_exe EYE.exe
{
    ~$^RButton::Press_Key("^{RButton}", in_aim_mode, "RButton", hold_threshold)
    ~$^RButton Up::Release_Key("^{RButton}", in_aim_mode)
    
    ~$RButton::Press_Key("{RButton}", in_aim_mode, "RButton", hold_threshold)
    ~$RButton Up::Release_Key("{RButton}", in_aim_mode)
}

Press_Key(target_key, ByRef aiming, trigger_key, hold_time) 
{
    if (aiming == FALSE)
    {
        Send %target_key%
    }
    
    Sleep, hold_time
    
    if (GetKeyState(trigger_key, "P") == 1)
    {
        aiming := TRUE
    }
}

Release_Key(target_key, ByRef aiming) 
{
    if (aiming == TRUE)
    {
        Send %target_key%
    }
    
    aiming := FALSE
}

Reset_Aim_Mode:

    if (in_aim_mode == TRUE and GetKeyState("RButton", "P") == 0)
    {
        in_aim_mode := FALSE
    }
return