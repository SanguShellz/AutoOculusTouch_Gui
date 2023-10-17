; =========================
; :::::::: PRIMARY ::::::::
; =========================
; ==============================
; ||  Geneneral Input Primary ||
; ==============================
IniRead, Abtn, %Ini_io%, %Controller%, Abtn, %A_Space%
IniRead, Bbtn, %Ini_io%, %Controller%, Bbtn, %A_Space%
IniRead, Xbtn, %Ini_io%, %Controller%, Xbtn, %A_Space%
IniRead, Ybtn, %Ini_io%, %Controller%, Ybtn, %A_Space%

IniRead, Startbtn, %Ini_io%, %Controller%, Startbtn, %A_Space%

; =================================
; ||  Triggers and Grips Primary ||
; =================================
IniRead, LTrig, %Ini_io%, %Controller%, LTrig, %A_Space%
IniRead, RTrig, %Ini_io%, %Controller%, RTrig, %A_Space%

IniRead, LGrip, %Ini_io%, %Controller%, LGrip, %A_Space%
IniRead, RGrip, %Ini_io%, %Controller%, RGrip, %A_Space%

; ========================
; || Left Stick Primary ||
; ========================
IniRead, LSup, %Ini_io%, %Controller%, LSup, %A_Space%
IniRead, LSlft, %Ini_io%, %Controller%, LSlft, %A_Space%
IniRead, LSdwn, %Ini_io%, %Controller%, LSdwn, %A_Space%
IniRead, LSrht, %Ini_io%, %Controller%, LSrht, %A_Space%

IniRead, LSul, %Ini_io%, %Controller%, LSul, %A_Space%
IniRead, LSur, %Ini_io%, %Controller%, LSur, %A_Space%
IniRead, LSdl, %Ini_io%, %Controller%, LSdl, %A_Space%
IniRead, LSdr, %Ini_io%, %Controller%, LSdr, %A_Space%

IniRead, LSbtn, %Ini_io%, %Controller%, LSbtn, %A_Space%

; =========================
; || Right Stick Primary ||
; =========================
IniRead, RSUp, %Ini_io%, %Controller%, RSUp, %A_Space%
IniRead, RSdwn, %Ini_io%, %Controller%, RSdwn, %A_Space%
IniRead, RSlft, %Ini_io%, %Controller%, RSlft, %A_Space%
IniRead, RSrht, %Ini_io%, %Controller%, RSrht, %A_Space%

IniRead, RSul, %Ini_io%, %Controller%, RSul, %A_Space%
IniRead, RSur, %Ini_io%, %Controller%, RSur, %A_Space%
IniRead, RSdl, %Ini_io%, %Controller%, RSdl, %A_Space%
IniRead, RSdr, %Ini_io%, %Controller%, RSdr, %A_Space%

IniRead, RSbtn, %Ini_io%, %Controller%, RSbtn, %A_Space%


; ===========================
; :::::::: ALTERNATE ::::::::
; ===========================
; =======================
; || General Input Alt ||
; =======================
IniRead, Abtn1, %Ini_io%, %Controller%, Abtn1, %A_Space%
IniRead, Bbtn1, %Ini_io%, %Controller%, Bbtn1, %A_Space%
IniRead, Xbtn1, %Ini_io%, %Controller%, Xbtn1, %A_Space%
IniRead, Ybtn1, %Ini_io%, %Controller%, Ybtn1, %A_Space%

IniRead, Startbtn1, %Ini_io%, %Controller%, Startbtn1, %A_Space%

; =============================
; ||  Triggers and Grips Alt ||
; =============================
IniRead, Ltrig1, %Ini_io%, %Controller%, Ltrig1, %A_Space%
IniRead, Rtrig1, %Ini_io%, %Controller%, Rtrig1, %A_Space%

IniRead, LGrip1, %Ini_io%, %Controller%, LGrip1, %A_Space%
IniRead, RGrip1, %Ini_io%, %Controller%, RGrip1, %A_Space%

; ====================
; || Left Stick Alt ||
; ====================
IniRead, LSup1, %Ini_io%, %Controller%, LSup1, %A_Space%
IniRead, LSlft1, %Ini_io%, %Controller%, LSlft1, %A_Space%
IniRead, LSdwn1, %Ini_io%, %Controller%, LSdwn1, %A_Space%
IniRead, LSrht1, %Ini_io%, %Controller%, LSrht1, %A_Space%

IniRead, LSul1, %Ini_io%, %Controller%, LSul1, %A_Space%
IniRead, LSur1, %Ini_io%, %Controller%, LSur1, %A_Space%
IniRead, LSdl1, %Ini_io%, %Controller%, LSdl1, %A_Space%
IniRead, LSdr1, %Ini_io%, %Controller%, LSdr1, %A_Space%

IniRead, LSbtn1, %Ini_io%, %Controller%, LSbtn1, %A_Space%

; =====================
; || Right Stick Alt ||
; =====================
IniRead, RSup1, %Ini_io%, %Controller%, RSup1, %A_Space%
IniRead, RSdwn1, %Ini_io%, %Controller%, RSdwn1, %A_Space%
IniRead, RSlft1, %Ini_io%, %Controller%, RSlft1, %A_Space%
IniRead, RSrht1, %Ini_io%, %Controller%, RSrht1, %A_Space%

IniRead, RSul1, %Ini_io%, %Controller%, RSul1, %A_Space%
IniRead, RSur1, %Ini_io%, %Controller%, RSur1, %A_Space%
IniRead, RSdl1, %Ini_io%, %Controller%, RSdl1, %A_Space%
IniRead, RSdr1, %Ini_io%, %Controller%, RSdr1, %A_Space%

IniRead, RSbtn1, %Ini_io%, %Controller%, RSbtn1, %A_Space%

; ========================
; :::::::: MOTION ::::::::
; ========================
; ==============================
; || Motion Input Assignments ||
; ==============================
IniRead, LYawLeft, %Ini_io%, %MotionGestures%, LYawLeft, %A_Space%
IniRead, LYawRight, %Ini_io%, %MotionGestures%, LYawRight, %A_Space%

IniRead, LPitchUp, %Ini_io%, %MotionGestures%, LPitchUp, %A_Space%
IniRead, LPitchDown, %Ini_io%, %MotionGestures%, LPitchDown, %A_Space%

IniRead, LRollLeft, %Ini_io%, %MotionGestures%, LRollLeft, %A_Space%
IniRead, LRollRight, %Ini_io%, %MotionGestures%, LRollRight, %A_Space%

IniRead, RPitchUp, %Ini_io%, %MotionGestures%, RPitchUp, %A_Space%
IniRead, RPitchDown, %Ini_io%, %MotionGestures%, RPitchDown, %A_Space%

IniRead, RYawLeft, %Ini_io%, %MotionGestures%, RYawLeft, %A_Space%
IniRead, RYawRight, %Ini_io%, %MotionGestures%, RYawRight, %A_Space%

IniRead, RRollLeft, %Ini_io%, %MotionGestures%, RRollLeft, %A_Space%
IniRead, RRollRight, %Ini_io%, %MotionGestures%, RRollRight, %A_Space%

; ======================
; || Motion Deadzones ||
; ======================
IniRead, LYawDz, %Ini_io%, Motion Deadzones, LYawDz, %A_Space%
IniRead, LPitchDz, %Ini_io%, Motion Deadzones, LPitchDz, %A_Space%
IniRead, LRollDz, %Ini_io%, Motion Deadzones, LRollDz, %A_Space%

IniRead, RPitchDz, %Ini_io%, Motion Deadzones, RPitchDz, %A_Space%
IniRead, RYawDz, %Ini_io%, Motion Deadzones, RYawDz, %A_Space%
IniRead, RRollDz, %Ini_io%, Motion Deadzones, RRollDz, %A_Space%

