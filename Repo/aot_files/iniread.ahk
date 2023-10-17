;INDEX: PRIMARY | SECONDARY | MOTION | DEADZONES 

if (ControllerMode = 1) {
  Controller := "Controller-x360"
  MotionGestures := "Motion_Gestures-x360"
  }
if !(ControllerMode = 1) {
  Controller := "Controller-DS4"
  MotionGestures := "Motion_Gestures-DS4"
  }
  
; =========================
; :::::::: PRIMARY ::::::::
; =========================
; ==============================
; ||  Geneneral Input Primary ||
; ==============================
IniRead, Abtn, %A_WorkingDir%/%Ini_io%, %Controller%, Abtn, %A_Space%
IniRead, Bbtn, %A_WorkingDir%/%Ini_io%, %Controller%, Bbtn, %A_Space%
IniRead, Xbtn, %A_WorkingDir%/%Ini_io%, %Controller%, Xbtn, %A_Space%
IniRead, Ybtn, %A_WorkingDir%/%Ini_io%, %Controller%, Ybtn, %A_Space%

IniRead, Startbtn, %A_WorkingDir%/%Ini_io%, %Controller%, Startbtn, %A_Space%

; =================================
; ||  Triggers and Grips Primary ||
; =================================
IniRead, LGrip, %A_WorkingDir%/%Ini_io%, %Controller%, LGrip, %A_Space%
IniRead, RGrip, %A_WorkingDir%/%Ini_io%, %Controller%, RGrip, %A_Space%

IniRead, LTrig, %A_WorkingDir%/%Ini_io%, %Controller%, LTrig, %A_Space%
IniRead, RTrig, %A_WorkingDir%/%Ini_io%, %Controller%, RTrig, %A_Space%

; ========================
; || Left Stick Primary ||
; ========================
IniRead, LSup, %A_WorkingDir%/%Ini_io%, %Controller%, LSup, %A_Space%
IniRead, LSlft, %A_WorkingDir%/%Ini_io%, %Controller%, LSlft, %A_Space%
IniRead, LSdwn, %A_WorkingDir%/%Ini_io%, %Controller%, LSdwn, %A_Space%
IniRead, LSrht, %A_WorkingDir%/%Ini_io%, %Controller%, LSrht, %A_Space%

IniRead, LSul, %A_WorkingDir%/%Ini_io%, %Controller%, LSul, %A_Space%
IniRead, LSur, %A_WorkingDir%/%Ini_io%, %Controller%, LSur, %A_Space%
IniRead, LSdl, %A_WorkingDir%/%Ini_io%, %Controller%, LSdl, %A_Space%
IniRead, LSdr, %A_WorkingDir%/%Ini_io%, %Controller%, LSdr, %A_Space%

IniRead, LSbtn, %A_WorkingDir%/%Ini_io%, %Controller%, LSbtn, %A_Space%

; =========================
; || Right Stick Primary ||
; =========================
IniRead, RSUp, %A_WorkingDir%/%Ini_io%, %Controller%, RSUp, %A_Space%
IniRead, RSlft, %A_WorkingDir%/%Ini_io%, %Controller%, RSlft, %A_Space%
IniRead, RSdwn, %A_WorkingDir%/%Ini_io%, %Controller%, RSdwn, %A_Space%
IniRead, RSrht, %A_WorkingDir%/%Ini_io%, %Controller%, RSrht, %A_Space%

IniRead, RSul, %A_WorkingDir%/%Ini_io%, %Controller%, RSul, %A_Space%
IniRead, RSur, %A_WorkingDir%/%Ini_io%, %Controller%, RSur, %A_Space%
IniRead, RSdl, %A_WorkingDir%/%Ini_io%, %Controller%, RSdl, %A_Space%
IniRead, RSdr, %A_WorkingDir%/%Ini_io%, %Controller%, RSdr, %A_Space%

IniRead, RSbtn, %A_WorkingDir%/%Ini_io%, %Controller%, RSbtn, %A_Space%


; ===========================
; :::::::: ALTERNATE ::::::::
; ===========================
; =======================
; || General Input Alt ||
; =======================
IniRead, Abtn1, %A_WorkingDir%/%Ini_io%, %Controller%, Abtn1, %A_Space%
IniRead, Bbtn1, %A_WorkingDir%/%Ini_io%, %Controller%, Bbtn1, %A_Space%
IniRead, Xbtn1, %A_WorkingDir%/%Ini_io%, %Controller%, Xbtn1, %A_Space%
IniRead, Ybtn1, %A_WorkingDir%/%Ini_io%, %Controller%, Ybtn1, %A_Space%

IniRead, Startbtn1, %A_WorkingDir%/%Ini_io%, %Controller%, Startbtn1, %A_Space%

; =============================
; ||  Triggers and Grips Alt ||
; =============================
IniRead, LGrip1, %A_WorkingDir%/%Ini_io%, %Controller%, LGrip1, %A_Space%
IniRead, RGrip1, %A_WorkingDir%/%Ini_io%, %Controller%, RGrip1, %A_Space%

IniRead, Ltrig1, %A_WorkingDir%/%Ini_io%, %Controller%, Ltrig1, %A_Space%
IniRead, Rtrig1, %A_WorkingDir%/%Ini_io%, %Controller%, Rtrig1, %A_Space%

; ====================
; || Left Stick Alt ||
; ====================
IniRead, LSup1, %A_WorkingDir%/%Ini_io%, %Controller%, LSup1, %A_Space%
IniRead, LSlft1, %A_WorkingDir%/%Ini_io%, %Controller%, LSlft1, %A_Space%
IniRead, LSdwn1, %A_WorkingDir%/%Ini_io%, %Controller%, LSdwn1, %A_Space%
IniRead, LSrht1, %A_WorkingDir%/%Ini_io%, %Controller%, LSrht1, %A_Space%

IniRead, LSul1, %A_WorkingDir%/%Ini_io%, %Controller%, LSul1, %A_Space%
IniRead, LSur1, %A_WorkingDir%/%Ini_io%, %Controller%, LSur1, %A_Space%
IniRead, LSdl1, %A_WorkingDir%/%Ini_io%, %Controller%, LSdl1, %A_Space%
IniRead, LSdr1, %A_WorkingDir%/%Ini_io%, %Controller%, LSdr1, %A_Space%

IniRead, LSbtn1, %A_WorkingDir%/%Ini_io%, %Controller%, LSbtn1, %A_Space%

; =====================
; || Right Stick Alt ||
; =====================
IniRead, RSup1, %A_WorkingDir%/%Ini_io%, %Controller%, RSup1, %A_Space%
IniRead, RSdwn1, %A_WorkingDir%/%Ini_io%, %Controller%, RSdwn1, %A_Space%
IniRead, RSlft1, %A_WorkingDir%/%Ini_io%, %Controller%, RSlft1, %A_Space%
IniRead, RSrht1, %A_WorkingDir%/%Ini_io%, %Controller%, RSrht1, %A_Space%

IniRead, RSul1, %A_WorkingDir%/%Ini_io%, %Controller%, RSul1, %A_Space%
IniRead, RSur1, %A_WorkingDir%/%Ini_io%, %Controller%, RSur1, %A_Space%
IniRead, RSdl1, %A_WorkingDir%/%Ini_io%, %Controller%, RSdl1, %A_Space%
IniRead, RSdr1, %A_WorkingDir%/%Ini_io%, %Controller%, RSdr1, %A_Space%

IniRead, RSbtn1, %A_WorkingDir%/%Ini_io%, %Controller%, RSbtn1, %A_Space%


; ========================
; :::::::: MOTION ::::::::
; ========================
; ==============================
; || Motion Input Assignments ||
; ==============================
IniRead, LYawLeft, %A_WorkingDir%/%Ini_io%, %MotionGestures%, LYawLeft, %A_Space%
IniRead, LYawRight, %A_WorkingDir%/%Ini_io%, %MotionGestures%, LYawRight, %A_Space%

IniRead, LPitchUp, %A_WorkingDir%/%Ini_io%, %MotionGestures%, LPitchUp, %A_Space%
IniRead, LPitchDown, %A_WorkingDir%/%Ini_io%, %MotionGestures%, LPitchDown, %A_Space%

IniRead, LRollLeft, %A_WorkingDir%/%Ini_io%, %MotionGestures%, LRollLeft, %A_Space%
IniRead, LRollRight, %A_WorkingDir%/%Ini_io%, %MotionGestures%, LRollRight, %A_Space%

IniRead, RPitchUp, %A_WorkingDir%/%Ini_io%, %MotionGestures%, RPitchUp, %A_Space%
IniRead, RPitchDown, %A_WorkingDir%/%Ini_io%, %MotionGestures%, RPitchDown, %A_Space%

IniRead, RYawLeft, %A_WorkingDir%/%Ini_io%, %MotionGestures%, RYawLeft, %A_Space%
IniRead, RYawRight, %A_WorkingDir%/%Ini_io%, %MotionGestures%, RYawRight, %A_Space%

IniRead, RRollLeft, %A_WorkingDir%/%Ini_io%, %MotionGestures%, RRollLeft, %A_Space%
IniRead, RRollRight, %A_WorkingDir%/%Ini_io%, %MotionGestures%, RRollRight, %A_Space%

; ======================
; || Motion Deadzones ||
; ======================
IniRead, LYawDz, %A_WorkingDir%/%Ini_io%, Motion Deadzones, LYawDz, %A_Space%
IniRead, LPitchDz, %A_WorkingDir%/%Ini_io%, Motion Deadzones, LPitchDz, %A_Space%
IniRead, LRollDz, %A_WorkingDir%/%Ini_io%, Motion Deadzones, LRollDz, %A_Space%

IniRead, RPitchDz, %A_WorkingDir%/%Ini_io%, Motion Deadzones, RPitchDz, %A_Space%
IniRead, RYawDz, %A_WorkingDir%/%Ini_io%, Motion Deadzones, RYawDz, %A_Space%
IniRead, RRollDz, %A_WorkingDir%/%Ini_io%, Motion Deadzones, RRollDz, %A_Space%


; =======================
; :::::::: MOUSE ::::::::
; =======================
; ============================
; || Mouse Speed Adjustment ||
; ============================
IniRead, mSpeedX, %A_WorkingDir%/%Ini_io%, Mouse_Speed, mSpeedX, %A_Space%
IniRead, mSpeedY, %A_WorkingDir%/%Ini_io%, Mouse_Speed, mSpeedY, %A_Space%
IniRead, sSpeedX, %A_WorkingDir%/%Ini_io%, Mouse_Speed, sSpeedX, %A_Space%
IniRead, sSpeedY, %A_WorkingDir%/%Ini_io%, Mouse_Speed, sSpeedY, %A_Space%
IniRead, hSpeedX, %A_WorkingDir%/%Ini_io%, Mouse_Speed, hSpeedX, %A_Space%
IniRead, hSpeedY, %A_WorkingDir%/%Ini_io%, Mouse_Speed, hSpeedY, %A_Space%


; ============================
; || Mouse Motion Deadzones ||
; ============================
IniRead, LS_Dz, %A_WorkingDir%/%Ini_io%, Mouse_Deadzones, LS_Dz, %A_Space%
IniRead, RS_Dz, %A_WorkingDir%/%Ini_io%, Mouse_Deadzones, RS_Dz, %A_Space%

IniRead, LSms_Dz, %A_WorkingDir%/%Ini_io%, Mouse_Deadzones, LSms_Dz, %A_Space%
IniRead, RSms_Dz, %A_WorkingDir%/%Ini_io%, Mouse_Deadzones, RSms_Dz, %A_Space%


