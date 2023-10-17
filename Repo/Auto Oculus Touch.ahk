SetBatchLines, -1
#MaxThreadsPerHotkey 2
#HotkeyModifierTimeout -1

Sleep(ms=1) {
  DllCall("Winmm.dll\timeBeginPeriod", UInt, 1)
  DllCall("Sleep", UInt, ms)
  DllCall("Winmm\timeEndPeriod", UInt, 1)
  }

#NoEnv
#SingleInstance force
#include Lib\AHK-ViGEm-Bus.ahk
#include Lib\auto_oculus_touch.ahk

FileRead, Ini_io, %A_WorkingDir%\..\gui_files\Profile_Manager\last_used_ini_path.txt

IniRead, Trayico, %A_WorkingDir%\..\%Ini_io%, Settings, Trayico, %A_Space%

IniRead, GUIState, %A_WorkingDir%\..\%Ini_io%, Settings, GUIState, %A_Space%

IniRead, ControllerMode, %A_WorkingDir%\..\%Ini_io%, Settings, ControllerMode, %A_Space%


if (GUIState = 1) 
  If Trayico && (ControllerMode = 1)
    Menu,Tray,Icon,%A_WorkingDir%\..\gui_files\Images\xbox_360.ico
  If Trayico && !(ControllerMode = 1)
    Menu,Tray,Icon,%A_WorkingDir%\..\gui_files\Images\playstation.ico
  If !Trayico
    Menu, Tray, NoIcon

if (GUIState = 0)
  if (ControllerMode = 1)
    Menu,Tray,Icon,%A_WorkingDir%\..\gui_files\Images\xbox_360.ico
  if !(ControllerMode = 1)
    Menu,Tray,Icon,%A_WorkingDir%\..\gui_files\Images\playstation.ico

InitOculus()
DllCall("auto_oculus_touch\poll")
ResetFacing(0)
ResetFacing(1)
ResetFacing(2)
SetTrackingOrigin(OriginFloor)

#include aot_files\Presets General.ahk

If (ShiftMode = 2) 
   shift := 0

Loop {
  Poll()
 
  Vibrate(LeftHand, 1,RumbleLpre+RumbleSpre,0)
  Vibrate(RightHand, 1,RumbleLpre+RumbleSpre,0)

  #include aot_files\Input Assignment.ahk
  #include aot_files\Input Assignment.set.ahk
  #include aot_files\Input Assignment.dpad.ahk
  #include aot_files\Input Assignment.mouse.ahk
 
 
; ====================================
; :::::::: Oculus Touch Grips ::::::::
; ====================================
  LeftGrip := GetAxis(AxisHandTriggerLeft)
  RightGrip := GetAxis(AxisHandTriggerRight)

  ; ============================================
  ; || Left Grip Shift && Right Grip Buttons ||
  ; ============================================ 
  If (ShiftGrip = 1) && !(ShiftMode = 3) { 
    ; =====================
    ; || Left Grip Shift ||
    ; =====================   
    if (ShiftMode = 1)
      (LeftGrip >= LeftGripDz) ? Shifter := 1 : Shifter := 0
    
    if (ShiftMode = 2) && (LeftGrip >= LeftGripDz) {
        Shift := !Shift
        if (Shift) {   
          Shifter := 1
          sleep 500
          }      
        else {  
          Shifter := 0
          sleep 500
          }}
           
    ; ========================
    ; || Right Grip Buttons ||
    ; ========================
    if (Shifter) && (RightGrip >= RightGripDz) 
      RGrip_pri.SetState(false), LGrip_pri.SetState(LGrip_pri_set)
    else if !(Shifter) && (RightGrip >= RightGripDz) 
      RGrip_pri.SetState(RGrip_pri_set), LGrip_pri.SetState(false)
    else RGrip_pri.SetState(false), LGrip_pri.SetState(false)
    }
  
  ; ============================================
  ; || Right Grip Shift && Left Grip Buttons ||
  ; ============================================
  If (ShiftGrip = 2) && !(ShiftMode = 3) { 
    ; ================
    ; || Right Grip ||
    ; ================
    if (ShiftMode = 1)
      (RightGrip >= RightGripDz) ? Shifter := 1 : Shifter := 0
    
    if (ShiftMode = 2) && (RightGrip >= RightGripDz) {
        Shift := !Shift
        if (Shift) {   
          Shifter := 1
          sleep 500
          }      
        else {  
          Shifter := 0
          sleep 500
          }}
      
    ; ===============
    ; || Left Grip ||
    ; ===============
    if (Shifter) && (LeftGrip >= LeftGripDz) 
      LGrip_pri.SetState(false), RGrip_pri.SetState(RGrip_pri_set)
    else if !(Shifter) && (LeftGrip >= LeftGripDz) 
      LGrip_pri.SetState(LGrip_pri_set), RGrip_pri.SetState(false) 
    else LGrip_pri.SetState(false), RGrip_pri.SetState(false)
    }

  ; =========================
  ; || Left && Right Grip ||
  ; =========================
  If (ShiftMode = 3) && !(Shifter) {
    (LeftGrip >= LeftGripDz) ? LGrip_pri.SetState(LGrip_pri_set) : LGrip_pri.SetState(false)
   
    (RightGrip >= RightGripDz) ? RGrip_pri.SetState(RGrip_pri_set) : RGrip_pri.SetState(false)
    }   

; ==========================
; :::::::: Triggers ::::::::
; ==========================
  if (ControllerMode = 1) {
    LeftTrigger := GetAxis(AxisIndexTriggerLeft) * 0.38986205 
    RightTrigger := GetAxis(AxisIndexTriggerRight) * 0.38986205 
    }
  
  if !(ControllerMode = 1) {
    LeftTrigger := GetAxis(AxisIndexTriggerLeft) * 50
    RightTrigger := GetAxis(AxisIndexTriggerRight) * 50
    }

  ; ==================
  ; || Left Trigger ||
  ; ==================
  if !(Shifter) && (LTrig_pri)
    (LeftTrigger) ? LTrig_pri.SetState(LTrig_pri_set) : LTrig_pri.SetState(false)
  else if !(Shifter) && (LTrig_pri_dpad)
    (LeftTrigger) ? controller.Dpad.SetState(LTrig_pri_dpad) : controller.Dpad.SetState("none")
  
  if (Shifter) && (LTrig_alt)
    (LeftTrigger) ? LTrig_alt.SetState(LTrig_alt_set) : LTrig_alt.SetState(false) 
  else if (Shifter) && (LTrig_alt_dpad)
    (LeftTrigger) ? controller.Dpad.SetState(LTrig_alt_dpad) : controller.Dpad.SetState("none")
      
  ; ===================
  ; || Right Trigger ||
  ; ===================
  if !(Shifter) && (RTrig_pri)
    (RightTrigger) ? RTrig_pri.SetState(RTrig_pri_set) : RTrig_pri.SetState(false)
  else if !(Shifter) && (RTrig_pri_dpad)
    (RightTrigger) ? controller.Dpad.SetState(RTrig_pri_dpad) : controller.Dpad.SetState("none")
  
  if (Shifter) && (RTrig_alt)
    (RightTrigger) ? RTrig_alt.SetState(RTrig_alt_set) : RTrig_alt.SetState(false) 
  else if (Shifter) && (RTrig_alt_dpad)
    (RightTrigger) ? controller.Dpad.SetState(RTrig_alt_dpad) : controller.Dpad.SetState("none")
    
    
; ==================================
; :::::::: JoyStick Presets ::::::::
; ==================================
  ;LS_Dz := 0.5
  ;RS_Dz := 0.5
  
  ;LSms_Dz := 0.1
  ;RSms_Dz := 0.1

  LS_Xa := (GetAxis(AxisXLeft) * 50) + 50
  (ControllerMode = 1) ? LS_Ya := (GetAxis(AxisYLeft) * 50) + 50: LS_Ya := -(GetAxis(AxisYLeft) * 50) + 50

  RS_Xa := (GetAxis(AxisXRight) * 50) + 50
  RS_Ya := (GetAxis(AxisYRight) * 50) + 50
  
  LS_X := GetAxis(AxisXLeft) 
  LS_Y := GetAxis(AxisYLeft) 
  RS_X := GetAxis(AxisXRight) 
  RS_Y := GetAxis(AxisYRight)
  
; ==========================================
; :::::::: JoyStick Mapping General ::::::::
; ==========================================
  ; ================================
  ; || Left Stick Mapping Primary ||
  ; ================================
  if !(Shifter = 1) {
    if (LS_X <= -LS_Dz) && (LS_Y <= -LS_Dz) {
      LSdl_pri.SetState(LSdl_pri_set)
      LSul_pri.SetState(false), LSur_pri.SetState(false)
      LSdr_pri.SetState(false), LSrht_pri.SetState(false)
      LSlft_pri.SetState(false), LSup_pri.SetState(false)
      LSdwn_pri.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (LS_X <= -LS_Dz) && (LS_Y >= LS_Dz) {
      LSul_pri.SetState(LSul_pri_set)
      LSdl_pri.SetState(false), LSur_pri.SetState(false)
      LSdr_pri.SetState(false), LSrht_pri.SetState(false)
      LSlft_pri.SetState(false), LSup_pri.SetState(false)
      LSdwn_pri.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (LS_X >= LS_Dz) && (LS_Y >= LS_Dz) {
      LSur_pri.SetState(LSur_pri_set) 
      LSdl_pri.SetState(false), LSul_pri.SetState(false)
      LSdr_pri.SetState(false), LSrht_pri.SetState(false)
      LSlft_pri.SetState(false), LSup_pri.SetState(false)
      LSdwn_pri.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (LS_X >= LS_Dz) && (LS_Y <= -LS_Dz) {
      LSdr_pri.SetState(LSdr_pri_set) 
      LSdl_pri.SetState(false), LSul_pri.SetState(false)
      LSur_pri.SetState(false), LSrht_pri.SetState(false)
      LSlft_pri.SetState(false), LSup_pri.SetState(false)
      LSdwn_pri.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (LS_X >= LS_Dz) {
      LSrht_pri.SetState(LSrht_pri_set) 
      LSdl_pri.SetState(false), LSul_pri.SetState(false)
      LSur_pri.SetState(false), LSdr_pri.SetState(false)
      LSlft_pri.SetState(false), LSup_pri.SetState(false)
      LSdwn_pri.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (LS_X <= -LS_Dz) { 
      LSlft_pri.SetState(LSlft_pri_set)
      LSdl_pri.SetState(false), LSul_pri.SetState(false)
      LSur_pri.SetState(false), LSdr_pri.SetState(false)
      LSrht_pri.SetState(false), LSup_pri.SetState(false)
      LSdwn_pri.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (LS_Y >= LS_Dz) {
      LSup_pri.SetState(LSup_pri_set)
      LSdl_pri.SetState(false), LSul_pri.SetState(false)
      LSur_pri.SetState(false), LSdr_pri.SetState(false)
      LSrht_pri.SetState(false), LSlft_pri.SetState(false)
      LSdwn_pri.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (LS_Y <= -LS_Dz) {
      LSdwn_pri.SetState(LSdwn_pri_set)
      LSdl_pri.SetState(false), LSul_pri.SetState(false)
      LSur_pri.SetState(false), LSdr_pri.SetState(false)
      LSrht_pri.SetState(false), LSlft_pri.SetState(false)
      LSup_pri.SetState(false)
      controller.Dpad.SetState("None") 
    
  ; =================================
  ; || Right Stick Mapping Primary ||
  ; =================================
    } else if (RS_X <= -RS_Dz) && (RS_Y <= -RS_Dz) {
      RSdl_pri.SetState(RSdl_pri_set)
      RSul_pri.SetState(false), RSur_pri.SetState(false)
      RSdr_pri.SetState(false), RSrht_pri.SetState(false)
      RSlft_pri.SetState(false), RSup_pri.SetState(false)
      RSdwn_pri.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (RS_X <= -RS_Dz) && (RS_Y >= RS_Dz) {
      RSul_pri.SetState(RSul_pri_set)
      RSdl_pri.SetState(false), RSur_pri.SetState(false)
      RSdr_pri.SetState(false), RSrht_pri.SetState(false)
      RSlft_pri.SetState(false), RSup_pri.SetState(false)
      RSdwn_pri.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (RS_X >= RS_Dz) && (RS_Y >= RS_Dz) {
      RSur_pri.SetState(RSur_pri_set) 
      RSdl_pri.SetState(false), RSul_pri.SetState(false)
      RSdr_pri.SetState(false), RSrht_pri.SetState(false)
      RSlft_pri.SetState(false), RSup_pri.SetState(false)
      RSdwn_pri.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (RS_X >= RS_Dz) && (RS_Y <= -RS_Dz) {
      RSdr_pri.SetState(RSdr_pri_set) 
      RSdl_pri.SetState(false), RSul_pri.SetState(false)
      RSur_pri.SetState(false), RSrht_pri.SetState(false)
      RSlft_pri.SetState(false), RSup_pri.SetState(false)
      RSdwn_pri.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (RS_X >= RS_Dz) {
      RSrht_pri.SetState(RSrht_pri_set) 
      RSdl_pri.SetState(false), RSul_pri.SetState(false)
      RSur_pri.SetState(false), RSdr_pri.SetState(false)
      RSlft_pri.SetState(false), RSup_pri.SetState(false)
      RSdwn_pri.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (RS_X <= -RS_Dz) { 
      RSlft_pri.SetState(RSlft_pri_set)
      RSdl_pri.SetState(false), RSul_pri.SetState(false)
      RSur_pri.SetState(false), RSdr_pri.SetState(false)
      RSrht_pri.SetState(false), RSup_pri.SetState(false)
      RSdwn_pri.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (RS_Y >= RS_Dz) {
      RSup_pri.SetState(RSup_pri_set)
      RSdl_pri.SetState(false),RSul_pri.SetState(false)
      RSur_pri.SetState(false), RSdr_pri.SetState(false)
      RSrht_pri.SetState(false), RSlft_pri.SetState(false)
      RSdwn_pri.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (RS_Y <= -RS_Dz) {
      RSdwn_pri.SetState(RSdwn_pri_set)
      RSdl_pri.SetState(false), RSul_pri.SetState(false)
      RSur_pri.SetState(false), RSdr_pri.SetState(false)
      RSrht_pri.SetState(false), RSlft_pri.SetState(false)
      RSup_pri.SetState(false)
      controller.Dpad.SetState("None") 
    } else {
      LSdl_pri.SetState(false), LSul_pri.SetState(false)
      LSur_pri.SetState(false), LSdr_pri.SetState(false)
      LSrht_pri.SetState(false), LSlft_pri.SetState(false)
      LSup_pri.SetState(false), LSdwn_pri.SetState(false)
      
      RSdl_pri.SetState(false), RSul_pri.SetState(false)
      RSur_pri.SetState(false), RSdr_pri.SetState(false)
      RSrht_pri.SetState(false), RSlft_pri.SetState(false)
      RSup_pri.SetState(false), RSdwn_pri.SetState(false)
      
      controller.Dpad.SetState("None") 
      }}
  
  ; ==================================
  ; || Left Stick Mapping ALternate ||
  ; ==================================
  if (Shifter = 1) {
    if (LS_X <= -LS_Dz) && (LS_Y <= -LS_Dz) {
      LSdl_alt.SetState(LSdl_alt_set)
      LSul_alt.SetState(false), LSur_alt.SetState(false)
      LSdr_alt.SetState(false), LSrht_alt.SetState(false)
      LSlft_alt.SetState(false), LSup_alt.SetState(false)
      LSdwn_alt.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (LS_X <= -LS_Dz) && (LS_Y >= LS_Dz) {
      LSul_alt.SetState(LSul_alt_set)
      LSdl_alt.SetState(false), LSur_alt.SetState(false)
      LSdr_alt.SetState(false), LSrht_alt.SetState(false)
      LSlft_alt.SetState(false), LSup_alt.SetState(false)
      LSdwn_alt.SetState(false)
      controller.Dpad.SetState("None") 
    }  else if (LS_X >= LS_Dz) && (LS_Y >= LS_Dz) {
      LSur_alt.SetState(LSur_alt_set) 
      LSdl_alt.SetState(false), LSul_alt.SetState(false)
      LSdr_alt.SetState(false), LSrht_alt.SetState(false)
      LSlft_alt.SetState(false), LSup_alt.SetState(false)
      LSdwn_alt.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (LS_X >= LS_Dz) && (LS_Y <= -LS_Dz) {
      LSdr_alt.SetState(LSdr_alt_set) 
      LSdl_alt.SetState(false), LSul_alt.SetState(false)
      LSur_alt.SetState(false), LSrht_alt.SetState(false)
      LSlft_alt.SetState(false), LSup_alt.SetState(false)
      LSdwn_alt.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (LS_X >= LS_Dz) {
      LSrht_alt.SetState(LSrht_alt_set) 
      LSdl_alt.SetState(false), LSul_alt.SetState(false)
      LSur_alt.SetState(false), LSdr_alt.SetState(false)
      LSlft_alt.SetState(false), LSup_alt.SetState(false)
      LSdwn_alt.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (LS_X <= -LS_Dz) { 
      LSlft_alt.SetState(LSlft_alt_set)
      LSdl_alt.SetState(false), LSul_alt.SetState(false)
      LSur_alt.SetState(false), LSdr_alt.SetState(false)
      LSrht_alt.SetState(false), LSup_alt.SetState(false)
      LSdwn_alt.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (LS_Y >= LS_Dz) {
      LSup_alt.SetState(LSup_alt_set)
      LSdl_alt.SetState(false), LSul_alt.SetState(false)
      LSur_alt.SetState(false), LSdr_alt.SetState(false)
      LSrht_alt.SetState(false), LSlft_alt.SetState(false)
      LSdwn_alt.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (LS_Y <= -LS_Dz) {
      LSdwn_alt.SetState(LSdwn_alt_set)
      LSdl_alt.SetState(false), LSul_alt.SetState(false)
      LSur_alt.SetState(false), LSdr_alt.SetState(false)
      LSrht_alt.SetState(false), LSlft_alt.SetState(false)
      LSup_alt.SetState(false)
      controller.Dpad.SetState("None") 

    
  ; ===================================
  ; || Right Stick Mapping Alternate ||
  ; ===================================
    } else if (RS_X <= -RS_Dz) && (RS_Y <= -RS_Dz) {
      RSdl_alt.SetState(RSdl_alt_set)
      RSul_alt.SetState(false), RSur_alt.SetState(false)
      RSdr_alt.SetState(false), RSrht_alt.SetState(false)
      RSlft_alt.SetState(false), RSup_alt.SetState(false)
      RSdwn_alt.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (RS_X <= -RS_Dz) && (RS_Y >= RS_Dz) {
      RSul_alt.SetState(RSul_alt_set)
      RSdl_alt.SetState(false), RSur_alt.SetState(false)
      RSdr_alt.SetState(false), RSrht_alt.SetState(false)
      RSlft_alt.SetState(false), RSup_alt.SetState(false)
      RSdwn_alt.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (RS_X >= RS_Dz) && (RS_Y >= RS_Dz) {
      RSur_alt.SetState(RSur_alt_set) 
      RSdl_alt.SetState(false), RSul_alt.SetState(false)
      RSdr_alt.SetState(false), RSrht_alt.SetState(false)
      RSlft_alt.SetState(false), RSup_alt.SetState(false)
      RSdwn_alt.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (RS_X >= RS_Dz) && (RS_Y <= -RS_Dz) {
      RSdr_alt.SetState(RSdr_alt_set) 
      RSdl_alt.SetState(false), RSul_alt.SetState(false)
      RSur_alt.SetState(false), RSrht_alt.SetState(false)
      RSlft_alt.SetState(false), RSup_alt.SetState(false)
      RSdwn_alt.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (RS_X >= RS_Dz) {
      RSrht_alt.SetState(RSrht_alt_set) 
      RSdl_alt.SetState(false), RSul_alt.SetState(false)
      RSur_alt.SetState(false), RSdr_alt.SetState(false)
      RSlft_alt.SetState(false), RSup_alt.SetState(false)
      RSdwn_alt.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (RS_X <= -RS_Dz) { 
      RSlft_alt.SetState(RSlft_alt_set)
      RSdl_alt.SetState(false), RSul_alt.SetState(false)
      RSur_alt.SetState(false), RSdr_alt.SetState(false)
      RSrht_alt.SetState(false), RSup_alt.SetState(false)
      RSdwn_alt.SetState(false)
      controller.Dpad.SetState("None") 
    }  else if (RS_Y >= RS_Dz) {
      RSup_alt.SetState(RSup_alt_set)
      RSdl_alt.SetState(false),RSul_alt.SetState(false)
      RSur_alt.SetState(false), RSdr_alt.SetState(false)
      RSrht_alt.SetState(false), RSlft_alt.SetState(false)
      RSdwn_alt.SetState(false)
      controller.Dpad.SetState("None") 
    } else if (RS_Y <= -RS_Dz) {
      RSdwn_alt.SetState(RSdwn_alt_set)
      RSdl_alt.SetState(false), RSul_alt.SetState(false)
      RSur_alt.SetState(false), RSdr_alt.SetState(false)
      RSrht_alt.SetState(false), RSlft_alt.SetState(false)
      RSup_alt.SetState(false)
      controller.Dpad.SetState("None") 
    } else {
      LSdl_alt.SetState(false), LSul_alt.SetState(false)
      LSur_alt.SetState(false), LSdr_alt.SetState(false)
      LSrht_alt.SetState(false), LSlft_alt.SetState(false)
      LSup_alt.SetState(false), LSdwn_alt.SetState(false)
      
      RSdl_alt.SetState(false), RSul_alt.SetState(false)
      RSur_alt.SetState(false), RSdr_alt.SetState(false)
      RSrht_alt.SetState(false), RSlft_alt.SetState(false)
      RSup_alt.SetState(false), RSdwn_alt.SetState(false)
      
      controller.Dpad.SetState("None") 
      }}

 ; ===============================
; :::::::: JoyStick Axis ::::::::
; ===============================
  ; =============================   
  ; || Left Stick Axis Primary ||
  ; =============================
  if !(Shifter = 1)  {  
    if (LSlft = "LS-X")
      (LS_Xa >= LS_Dz) ? controller.Axes.LX.SetState(LS_Xa) : controller.Axes.LX.SetState(false)
    else if (LSlft = "RS-X")
      (LS_Xa >= LS_Dz) ? controller.Axes.RX.SetState(LS_Xa) : controller.Axes.RX.SetState(false)
    
    if (LSup = "LS-Y") 
      (LS_Ya >= LS_Dz) ? controller.Axes.LY.SetState(LS_Ya) : controller.Axes.LY.SetState(false)   
    else if (LSup = "RS-Y") 
      (LS_Ya >= LS_Dz) ? controller.Axes.RY.SetState(LS_Ya) : controller.Axes.RY.SetState(false)
      
  ; ============================== 
  ; || Right Stick Axis Primary ||
  ; ==============================
    if (RSlft = "LS-X")
      (RS_Xa >= RS_Dz) ? controller.Axes.LX.SetState(RS_Xa) : controller.Axes.LX.SetState(false)
    else if (RSlft = "RS-X")
      (RS_Xa >= RS_Dz) ? controller.Axes.RX.SetState(RS_Xa) : controller.Axes.RX.SetState(false)  
    if (RSup = "LS-Y")
      (RS_Ya >= RS_Dz) ? controller.Axes.LY.SetState(RS_Ya) : controller.Axes.LY.SetState(false)
    else if (RSup = "RS-Y")
      (RS_Ya >= RS_Dz) ? controller.Axes.RY.SetState(RS_Ya) : controller.Axes.RY.SetState(false)
    }

  ; ===============================   
  ; || Left Stick Axis Alternate ||
  ; ===============================
  if (Shifter = 1) {  
    if (LSlft1 = "LS-X")
      (LS_Xa >= LS_Dz) ? controller.Axes.LX.SetState(LS_Xa) : controller.Axes.LX.SetState(false)
    else if (LSlft1 = "RS-X")
      (LS_Xa >= LS_Dz) ? controller.Axes.RX.SetState(LS_Xa) : controller.Axes.RX.SetState(false)
    
    if (LSup1 = "LS-Y") 
      (LS_Ya >= LS_Dz) ? controller.Axes.LY.SetState(LS_Ya) : controller.Axes.LY.SetState(false)
    else if (LSup1 = "RS-Y") 
      (LS_Ya >= LS_Dz) ? controller.Axes.RY.SetState(LS_Ya) : controller.Axes.RY.SetState(false)
        
  ; ================================ 
  ; || Right Stick Axis Alternate ||
  ; ================================ 
    if (RSlft1 = "LS-X")
      (RS_Xa >= RS_Dz) ? controller.Axes.LX.SetState(RS_Xa) : controller.Axes.LX.SetState(false)
    else if (RSlft1 = "RS-X")
      (RS_Xa >= RS_Dz) ? controller.Axes.RX.SetState(RS_Xa) : controller.Axes.RX.SetState(false)
    
    if (RSup1 = "LS-Y")
      (RS_Ya >= RS_Dz) ? controller.Axes.LY.SetState(RS_Ya) : controller.Axes.LY.SetState(false)
    else if (RSup1 = "RS-Y")
      (RS_Ya >= RS_Dz) ? controller.Axes.RY.SetState(RS_Ya) : controller.Axes.RY.SetState(false)
    }


; ===================================
; ::::::::: Direectional Pad ::::::::
; ===================================
  ; ========================
  ; || Dpad: Primary Left ||
  ; ======================== 
  if !(Shifter = 1) {
    if (LS_X <= -LS_Dz) && (LS_Y <= -LS_Dz) 
      controller.Dpad.SetState(LSdl_pri_dpad)
    else if (LS_X <= -LS_Dz) &&  (LS_Y >= LS_Dz) 
      controller.Dpad.SetState(LSul_pri_dpad)
    else if (LS_X >= LS_Dz) && (LS_Y >= LS_Dz)
      controller.Dpad.SetState(LSur_pri_dpad)
    else if (LS_X >= LS_Dz) && (LS_Y <= -LS_Dz)
      controller.Dpad.SetState(LSdr_pri_dpad)
    else if (LS_X >= LS_Dz) 
      controller.Dpad.SetState(LSrht_pri_dpad)
    else if (LS_X <= -LS_Dz)
      controller.Dpad.SetState(LSlft_pri_dpad)
    else if (LS_Y >= LS_Dz) 
      controller.Dpad.SetState(LSup_pri_dpad) 
    else if (LS_Y <= -LS_Dz) 
      controller.Dpad.SetState(LSdwn_pri_dpad)
  
  ; =========================
  ; || Dpad: Primary Right ||
  ; ========================= 
   if (RS_X <= -RS_Dz) && (RS_Y <= -RS_Dz) 
      controller.Dpad.SetState(RSdl_pri_dpad)
    else if (RS_X <= -RS_Dz) && (RS_Y >= RS_Dz)
      controller.Dpad.SetState(RSul_pri_dpad)
    else if (RS_X >= RS_Dz) && (RS_Y >= RS_Dz)
      controller.Dpad.SetState(RSur_pri_dpad)
    else if (RS_X >= RS_Dz) && (RS_Y <= -RS_Dz) 
      controller.Dpad.SetState(RSdr_pri_dpad)
    else if (RS_X >= RS_Dz)
      controller.Dpad.SetState(RSrht_pri_dpad)
    else if (RS_X <= -RS_Dz)
      controller.Dpad.SetState(RSlft_pri_dpad) 
    else if (RS_Y >= RS_Dz) 
      controller.Dpad.SetState(RSup_pri_dpad) 
    else if (RS_Y <= -RS_Dz) 
      controller.Dpad.SetState(RSdwn_pri_dpad)
    else controller.Dpad.SetState("None")  
    }
  
  ; ==========================
  ; || Dpad: Alternate Left ||
  ; ==========================
  if (Shifter = 1) {
    if (LS_X <= -LS_Dz) && (LS_Y <= -LS_Dz)
      controller.Dpad.SetState(LSdl_alt_dpad)
    else if (LS_X <= -LS_Dz) && (LS_Y >= LS_Dz)
      controller.Dpad.SetState(LSul_alt_dpad)
    else if (LS_X >= LS_Dz) && (LS_Y >= LS_Dz)
      controller.Dpad.SetState(LSur_alt_dpad)
    else if (LS_X >= LS_Dz) && (LS_Y <= -LS_Dz)
      controller.Dpad.SetState(LSdr_alt_dpad)
    else if (LS_X >= LS_Dz)
      controller.Dpad.SetState(LSrht_alt_dpad)
    else if (LS_X <= -LS_Dz)
      controller.Dpad.SetState(LSlft_alt_dpad) 
    else if (LS_Y >= LS_Dz)
      controller.Dpad.SetState(LSup_alt_dpad)
    else if (LS_Y <= -LS_Dz) 
      controller.Dpad.SetState(LSdwn_alt_dpad)
  
  ; ===========================
  ; || Dpad: Alternate Right ||
  ; ===========================
    else if (RS_X <= -RS_Dz) && (RS_Y <= -RS_Dz)
      controller.Dpad.SetState(RSdl_alt_dpad)
    else if (RS_X <= -RS_Dz) && (RS_Y >= RS_Dz)
      controller.Dpad.SetState(RSul_alt_dpad)
    else if (RS_X >= RS_Dz) && (RS_Y >= RS_Dz)
      controller.Dpad.SetState(RSur_alt_dpad)
    else if (RS_X >= RS_Dz) && (RS_Y <= -RS_Dz)
      controller.Dpad.SetState(RSdr_alt_dpad)
    else if (RS_X >= RS_Dz) 
      controller.Dpad.SetState(RSrht_alt_dpad)
    else if (RS_X <= -RS_Dz)
      controller.Dpad.SetState(RSlft_alt_dpad) 
    else if (RS_Y >= RS_Dz)
      controller.Dpad.SetState(RSup_alt_dpad)
    else if (RS_Y <= -RS_Dz)
      controller.Dpad.SetState(RSdwn_alt_dpad)
    else controller.Dpad.SetState("None")  
    }
  

; ==========================================
; :::::::: Joystick Mouse Emulation ::::::::
; ==========================================
  ; ======================  
  ; || Left Stick Mouse ||
  ; ======================
  if ((Shifter = 1) && (LSrht_alt_mouse = "MouseX")) || (LSrht_pri_mouse = "MouseX")
    if (LS_X > LSms_Dz) || (LS_X < -LSms_Dz) || (LS_Y > LSms_Dz) || (LS_Y < -LSms_Dz)
      SendRawMouseMove(LS_X*sSpeedX,LS_Y*-sSpeedY,0)
  
  if ((Shifter = 1) && (LSup_alt_mouse = "MouseY")) || (LSup_pri_mouse = "MouseY")
    if (LS_X > LSms_Dz) || (LS_X < -LSms_Dz) || (LS_Y > LSms_Dz) || (LS_Y < -LSms_Dz)
      SendRawMouseMove(LS_X*sSpeedX,LS_Y*-sSpeedY,0)

  ; ======================= 
  ; || Rbght Stick Mouse ||
  ; =======================
  if ((Shifter = 1) && (RSrht_alt_mouse = "MouseX")) || (RSrht_pri_mouse = "MouseX")
    if (RS_X > RSms_Dz) || (RS_X < -RSms_Dz) || (RS_Y > RSms_Dz) || (RS_Y < -RSms_Dz)
      SendRawMouseMove(RS_X*sSpeedX,RS_Y*-sSpeedY,0)  
  
  if ((Shifter = 1) && (RSup_alt_mouse = "MouseY")) || (RSup_pri_mouse = "MouseY")
    if (RS_X > RSms_Dz) || (RS_X < -RSms_Dz) || (RS_Y > RSms_Dz) || (RS_Y < -RSms_Dz)
      SendRawMouseMove(RS_X*sSpeedX,RS_Y*-sSpeedY,0)
  
  
; =========================
; :::::::: Buttons ::::::::
; =========================
  ; ============== 
  ; || A Button ||
  ; ==============  
  if !(Shifter) && (Abtn_pri)
    isdown(ovrA) ? Abtn_pri.SetState(Abtn_pri_set)
    : isreleased(ovrA) ? Abtn_pri.SetState(false)
  else if !(Shifter) && (Abtn_pri_dpad)
    isdown(ovrA) ? controller.Dpad.SetState(Abtn_pri_dpad)
    : isreleased(ovrA) ? controller.Dpad.SetState("none")
  
  if (Shifter) && (Abtn_alt)
    isdown(ovrA) ? Abtn_alt.SetState(Abtn_alt_set) 
    : isreleased(ovrA) ? Abtn_alt.SetState(false) 
  else if (Shifter) && (Abtn_alt_dpad)
    isdown(ovrA) ? controller.Dpad.SetState(Abtn_alt_dpad)
    : isreleased(ovrA) ? controller.Dpad.SetState("none")

  ; ============== 
  ; || B Button ||
  ; ============== 
  if !(Shifter) && (Bbtn_pri)
    isdown(ovrB) ? Bbtn_pri.SetState(Bbtn_pri_set)
    : isreleased(ovrB) ? Bbtn_pri.SetState(false)
  else if !(Shifter) && (Bbtn_pri_dpad)
    isdown(ovrB) ? controller.Dpad.SetState(Bbtn_pri_dpad)
    : isreleased(ovrB) ? controller.Dpad.SetState("none")
  
  if (Shifter) && (Bbtn_alt)
    isdown(ovrB) ? Bbtn_alt.SetState(Bbtn_alt_set) 
    : isreleased(ovrB) ? Bbtn_alt.SetState(false) 
  else if (Shifter) && (Bbtn_alt_dpad)
    isdown(ovrB) ? controller.Dpad.SetState(Bbtn_alt_dpad)
    : isreleased(ovrB) ? controller.Dpad.SetState("none")
    
  ; ==============   
  ; || X Button ||
  ; ==============
  if !(Shifter) && (Xbtn_pri)
    isdown(ovrX) ? Xbtn_pri.SetState(Xbtn_pri_set)
    : isreleased(ovrX) ? Xbtn_pri.SetState(false)
  else if !(Shifter) && (Xbtn_pri_dpad)
    isdown(ovrX) ? controller.Dpad.SetState(Xbtn_pri_dpad)
    : isreleased(ovrX) ? controller.Dpad.SetState("none")
  
  if (Shifter) && (Xbtn_alt)
    isdown(ovrX) ? Xbtn_alt.SetState(Xbtn_alt_set) 
    : isreleased(ovrX) ? Xbtn_alt.SetState(false) 
  else if (Shifter) && (Xbtn_alt_dpad)
    isdown(ovrX) ? controller.Dpad.SetState(Xbtn_alt_dpad)
    : isreleased(ovrX) ? controller.Dpad.SetState("none")
    
  ; ==============
  ; || Y Button ||
  ; ==============
  if !(Shifter) && (Ybtn_pri)
    isdown(ovrY) ? Ybtn_pri.SetState(Ybtn_pri_set)
    : isreleased(ovrY) ? Ybtn_pri.SetState(false)
  else if !(Shifter) && (Ybtn_pri_dpad)
    isdown(ovrY) ? controller.Dpad.SetState(Ybtn_pri_dpad)
    : isreleased(ovrY) ? controller.Dpad.SetState("none")
  
  if (Shifter) && (Ybtn_alt)
    isdown(ovrY) ? Ybtn_alt.SetState(Ybtn_alt_set) 
    : isreleased(ovrY) ? Ybtn_alt.SetState(false) 
  else if (Shifter) && (Ybtn_alt_dpad)
    isdown(ovrY) ? controller.Dpad.SetState(Ybtn_alt_dpad)
    : isreleased(ovrY) ? controller.Dpad.SetState("none")
    
  ; ================================
  ; || JoyStick Left Thumb Button ||
  ; ================================
  if !(Shifter) && (LSbtn_pri)
    isdown(ovrLThumb) ? LSbtn_pri.SetState(LSbtn_pri_set)
    : isreleased(ovrLThumb) ? LSbtn_pri.SetState(false)
  else if !(Shifter) && (LSbtn_pri_dpad)
    isdown(ovrLThumb) ? controller.Dpad.SetState(LSbtn_pri_dpad)
    : isreleased(ovrLThumb) ? controller.Dpad.SetState("none")
  
  if (Shifter) && (LSbtn_alt)
    isdown(ovrLThumb) ? LSbtn_alt.SetState(LSbtn_alt_set) 
    : isreleased(ovrLThumb) ? LSbtn_alt.SetState(false) 
  else if (Shifter) && (LSbtn_alt_dpad)
    isdown(ovrLThumb) ? controller.Dpad.SetState(LSbtn_alt_dpad)
    : isreleased(ovrLThumb) ? controller.Dpad.SetState("none")

  ; =================================
  ; || JoyStick Right Thumb Button ||
  ; =================================
  if !(Shifter) && (RSbtn_pri)
    isdown(ovrRThumb) ? RSbtn_pri.SetState(RSbtn_pri_set)
    : isreleased(ovrRThumb) ? RSbtn_pri.SetState(false)
  else if !(Shifter) && (RSbtn_pri_dpad)
    isdown(ovrRThumb) ? controller.Dpad.SetState(RSbtn_pri_dpad)
    : isreleased(ovrRThumb) ? controller.Dpad.SetState("none")
  
  if (Shifter) && (RSbtn_alt)
    isdown(ovrRThumb) ? RSbtn_alt.SetState(RSbtn_alt_set) 
    : isreleased(ovrRThumb) ? RSbtn_alt.SetState(false) 
  else if (Shifter) && (RSbtn_alt_dpad)
    isdown(ovrRThumb) ? controller.Dpad.SetState(RSbtn_alt_dpad)
    : isreleased(ovrRThumb) ? controller.Dpad.SetState("none")

  ; ================== 
  ; || Enter Button ||
  ; ==================
  if !(Shifter) && (Startbtn_pri)
    isdown(ovrEnter) ? Startbtn_pri.SetState(Startbtn_pri_set)
    : isreleased(ovrEnter) ? Startbtn_pri.SetState(false)
  else if !(Shifter) && (Startbtn_pri_dpad)
    isdown(ovrEnter) ? controller.Dpad.SetState(Startbtn_pri_dpad)
    : isreleased(ovrEnter) ? controller.Dpad.SetState("none")
  
  if (Shifter) && (Startbtn_alt)
    isdown(ovrEnter) ? Startbtn_alt.SetState(Startbtn_alt_set) 
    : isreleased(ovrEnter) ? Startbtn_alt.SetState(false) 
  else if (Shifter) && (Startbtn_alt_dpad)
    isdown(ovrEnter) ? controller.Dpad.SetState(Startbtn_alt_dpad)
    : isreleased(ovrEnter) ? controller.Dpad.SetState("none")
        

; =====================================
; ::::::::  Motion Analog Axes ::::::::
; =====================================
  if (Shifter) && !(MotionState = 1) {
    if (oldLGrip = 0) {
      ResetFacing(0)
      ResetFacing(1)
      ResetFacing(2)
      Poll()
      }
    oldLGrip := 1	
    } else oldLGrip := 0

  ; ====================		
  ; || Motion Presets ||
  ; ====================  
  #include aot_files\Presets Motion.ahk
  
  ; =====================
  ; || Hand: Left Roll ||
  ; =====================
 if LRollLeft in %XGroup% 
    if (Shifter) && !(MotionState = 1) {
      if (LeftRoll > motionDegreeRange)
        LeftRoll := motionDegreeRange
      else if (LeftRoll < -motionDegreeRange)
        LeftRoll := -motionDegreeRange
      else if (LeftRoll > -LRollDz) 
      && (LeftRoll < LRollDz)
        LeftRoll := 0
      LeftRoll := LeftRoll + 50
      LRoll_mt.SetState(LeftRoll) 
      } else Goto,motionmode  

  ; ======================
  ; || hand: Right Roll ||
  ; ======================
 if RRollLeft in %XGroup% 
    if (Shifter) && !(MotionState = 1) {
      if (RightRoll > motionDegreeRange)
        RightRoll := motionDegreeRange
      else if (RightRoll < -motionDegreeRange)
        RightRoll := -motionDegreeRange
      else if (RightRoll > -RRollDz) 
      && (RightRoll < RRollDz)
        RightRoll := 0
      RightRoll := RightRoll + 50
      RRoll_mt.SetState(RightRoll) 
      } else Goto,motionmode  
  
  ; ====================
  ; || Hand: Left Yaw ||
  ; ====================
 if LYawLeft in %XGroup%  
    if (Shifter) && !(MotionState = 1) {
      if (LeftYaw > motionDegreeRange)
        LeftYaw := motionDegreeRange
      else if (LeftYaw < -motionDegreeRange)
        LeftYaw := -motionDegreeRange
      else if (LeftYaw > -LYawDz) 
      && (LeftYaw < LYawDz)
        LeftYaw := 0
      LeftYaw := LeftYaw + 50
      LYaw_mt.SetState(LeftYaw) 
      } else Goto,motionmode  
   
  ; =====================
  ; || Hand: Right Yaw ||
  ; =====================
 if RYawLeft in %XGroup%  
    if (Shifter) && !(MotionState = 1) {
      if (RightYaw > motionDegreeRange)
        RightYaw := motionDegreeRange
      else if (RightYaw < -motionDegreeRange)
        RightYaw := -motionDegreeRange
      else if (RightYaw > -RYawDz) 
      && (RightYaw < RYawDz)
        RightYaw := 0
      RightYaw := RightYaw + 50
      RYaw_mt.SetState(RightYaw) 
      } else Goto,motionmode   
    
  ; ======================
  ; || Hand: Left Pitch ||
  ; ======================
  if LPitchUp in %YGroup%  
    if (Shifter) && !(MotionState = 1) {
      if (mLPitch > motionDegreeRange)
        mLPitch := motionDegreeRange
      else if (mLPitch < -motionDegreeRange)
        mLPitch := -motionDegreeRange
      else if (mLPitch > -LPitchDz) 
      && (mLPitch < LPitchDz)
        mLPitch := 0
      mLPitch := mLPitch + 50
      LPitch_mt.SetState(mLPitch) 
      } else Goto,motionmode   

  ; =======================
  ; || Hand: Right Pitch ||
  ; =======================
  if RPitchUp in %YGroup%  
    if (Shifter) && !(MotionState = 1) {
      if (mRPitch > motionDegreeRange)
        mRPitch := motionDegreeRange
      else if (mRPitch < -motionDegreeRange)
        mRPitch := -motionDegreeRange
      else if (mRPitch > -RPitchDz) 
      && (mRPitch < RPitchDz)
        mRPitch := 0
      mRPitch := mRPitch + 50
      RPitch_mt.SetState(mRPitch) 
      } else Goto,motionmode   

  ; ================
  ; || Head: Yaw ||
  ; ===============
  if (Shifter) && (HeadState = 2) && (HeadMode = 2) {
    if (HeadYaw > motionDegreeRange)
      HeadYaw := motionDegreeRange
    else if (HeadYaw < -motionDegreeRange)
      HeadYaw := -motionDegreeRange
    else if (HeadYaw > -hYawDz) 
    && (HeadYaw < hYawDz)
      HeadYaw := 0
    HeadYaw := HeadYaw + 50
    controller.Axes.RX.SetState(HeadYaw)
    } else Goto,motionmode  

 ; =================
  ; || Head: Pitch ||
  ; =================
  if (Shifter) && (HeadState = 2) && (HeadMode = 2) {
    if (HeadPitch > motionDegreeRange)
      HeadPitch := motionDegreeRange
    else if (HeadPitch < -motionDegreeRange)
      HeadPitch := -motionDegreeRange
    else if (HeadPitch > -hPitchDz) 
    && (HeadPitch < hPitchDz)
      HeadPitch := 0
    HeadPitch := HeadPitch + 50
    controller.Axes.RY.SetState(HeadPitch)
    } else Goto,motionmode   

  motionmode:
  { controller.Axes.LX.SetState(50)
    controller.Axes.LY.SetState(50)
    controller.Axes.RX.SetState(50)
    controller.Axes.RY.SetState(50)
    controller1.Axes.LX.SetState(50)
    controller1.Axes.LY.SetState(50)
    controller1.Axes.RX.SetState(50)
    controller1.Axes.RY.SetState(50)
    } 
     

; =================================
; ::::::::  Motion Buttons ::::::::
; ================================= 
  ; ============================
  ; || Hand: Left Yaw Buttons ||
  ; ============================
  if LYawLeft in %BttnGroup%
    if (shifter) && !(MotionState = 1)   
      (LeftYaw >= LYawDz) ? LYawLeft_pri.SetState(LYawLeft_pri_set) : LYawLeft_pri.SetState(false)
  
  if LYawRight in %BttnGroup%
    if (shifter) && !(MotionState = 1)  
      (LeftYaw <= -LYawDz) ? LYawLeft_pri.SetState(LYawLeft_pri_set) : LYawLeft_pri.SetState(false)
      
  ; =============================
  ; || Hand: Right Yaw Buttons ||
  ; =============================
  if RYawLeft  in %BttnGroup%
    if (shifter) && !(MotionState = 1)   
      (RightYaw >= RYawDz) ? RYawLeft_pri.SetState(RYawLeft_pri_set) : RYawLeft_pri.SetState(false)
  
  if RYawRight in %BttnGroup%
    if (shifter) && !(MotionState = 1)  
      (RightYaw <= -RYawDz) ? RYawRight_pri.SetState(RYawRight_pri_set) : RYawRight_pri.SetState(false)
      
  ; =============================
  ; || Hand: Left Roll Buttons ||
  ; =============================
  if LRollLeft in %BttnGroup%
    if (shifter) && !(MotionState = 1)  
      (LeftRoll >= LRollDz) ? LRollLeft_pri.SetState(LRollLeft_pri_set) : LRollLeft_pri.SetState(false)
  
  if LRollRight in %BttnGroup%
    if (shifter) && !(MotionState = 1) 
      (LeftRoll <= -LRollDz) ? LRollLeft_pri.SetState(LRollLeft_pri_set) : LRollLeft_pri.SetState(false)
      
  ; ==============================
  ; || Hand: Right Roll Buttons ||
  ; ==============================
  if RRollLeft in %BttnGroup%
    if (shifter) && !(MotionState = 1)   
      (RightRoll >= RRollDz) ? RRollLeft_pri.SetState(RRollLeft_pri_set) : RRollLeft_pri.SetState(false)
  
  if RRollRight in %BttnGroup%
    if (shifter) && !(MotionState = 1)   
      (RightRoll <= -RRollDz) ? RRollRight_pri.SetState(RRollRight_pri_set) : RRollRight_pri.SetState(false)
    
  ; ==============================
  ; || Hand: Left Pitch Buttons ||
  ; ==============================
  if LPitchUp in %BttnGroup% 
    if (shifter) && !(MotionState = 1)   
      (LeftPitch >= LPitchDz) ? LPitchUp_pri.SetState(LPitchUp_pri_set) : LPitchUp_pri.SetState(false)

  if LPitchDown in %BttnGroup% 
    if (shifter) && !(MotionState = 1)   
      (LeftPitch <= -LPitchDz) ? LPitchDown_pri.SetState(LPitchDown_pri_set) : LPitchDown_pri.SetState(false)

  ; ===============================
  ; || Hand: Right Pitch Buttons ||
  ; ===============================
  if RPitchUp in %BttnGroup%  
    if (shifter) && !(MotionState = 1)   
      (RightPitch >= RPitchDz) ? RPitchUp_pri.SetState(RPitchUp_pri_set) : RPitchUp_pri.SetState(false)
      
   if RPitchDown in %BttnGroup%
    if (shifter) && !(MotionState = 1)   
      (RightPitch <= -RPitchDz) ? RPitchDown_pri.SetState(RPitchDown_pri_set) : RPitchDown_pri.SetState(false)
    
    
; ==============================
; :::::::: Motion Mouse ::::::::
; ==============================   
  ; =======================
  ; || Left Motion Mouse ||
  ; =======================
	if (Shifter = 1) && (LPitchUp_Pri_mouse) 
    SendRawMouseMove((LeftYaw-lYaw)*mSpeedY, (LeftPitch-lPitch)*-mSpeedX, 0)
    
	lYaw := lYaw*0.1 + LeftYaw*0.9
	lPitch := lPitch*0.1 + LeftPitch*0.9
  
  ; ========================
  ; || Right Motion Mouse ||
  ; ========================
	if (Shifter = 1) && (RPitchUp_Pri_mouse) 
    SendRawMouseMove((RightYaw-rYaw)*mSpeedX, (RightPitch-rPitch)*-mSpeedY, 0)
    
	rYaw := rYaw*0.1 + RightYaw*0.9
	rPitch := rPitch*0.1 + RightPitch*0.9
 
  ; =======================
  ; || Head Motion Mouse ||
  ; =======================
	if (Shifter = 1) && (HeadState = 2) && (HeadMode = 1) 
		SendRawMouseMove((HeadYaw-hYaw)*hSpeedX, (HeadPitch-hPitch)*-hSpeedY, 0)
    
	hYaw := hYaw*0.1 + HeadYaw*0.9
	hPitch := hPitch*0.1 + HeadPitch*0.9


  ; ==========================
  ; :::::::: Exit App ::::::::
  ; ==========================
  if (Shifter)
  && IsTouchDown(ovrTouch_A)
  && IsTouchDown(ovrTouch_B)
  && isDown(ovrEnter) 
    ExitApp
  
  Sleep,10
  }
  