; =========================
; :::::::: PRIMARY ::::::::
; =========================
; ==============================
; ||  Geneneral Input Primary ||
; ==============================
GuiControlGet, Abtn, 1:,
StringReplace, Abtn, Abtn, %A_Space%, 0, All
IniWrite, %Abtn%, %Ini_io%, %Controller%, Abtn

GuiControlGet, Bbtn, 1:,
StringReplace, Bbtn, Bbtn, %A_Space%, 0, All
IniWrite, %Bbtn%, %Ini_io%, %Controller%, Bbtn

GuiControlGet, Xbtn, 1:,
StringReplace, Xbtn, Xbtn, %A_Space%, 0, All
IniWrite, %Xbtn%, %Ini_io%, %Controller%, Xbtn

GuiControlGet, Ybtn, 1:,
StringReplace, Ybtn, Ybtn, %A_Space%, 0, All
IniWrite, %Ybtn%, %Ini_io%, %Controller%, Ybtn 

GuiControlGet, Startbtn, 1:,
StringReplace, Startbtn, Startbtn, %A_Space%, 0, All
IniWrite, %Startbtn%, %Ini_io%, %Controller%, Startbtn

; =================================
; ||  Grips and Triggers Primary ||
; =================================
GuiControlGet, LGrip, 1:,
StringReplace, LGrip, LGrip, %A_Space%, 0, All
IniWrite, %LGrip%, %Ini_io%, %Controller%, LGrip

GuiControlGet, RGrip, 1:,
StringReplace, RGrip, RGrip, %A_Space%, 0, All
IniWrite, %RGrip%, %Ini_io%, %Controller%, RGrip

GuiControlGet, LTrig, 1:,
StringReplace, LTrig, LTrig, %A_Space%, 0, All
IniWrite, %LTrig%, %Ini_io%, %Controller%, LTrig

GuiControlGet, RTrig, 1:,
StringReplace, RTrig, RTrig, %A_Space%, 0, All
IniWrite, %RTrig%, %Ini_io%, %Controller%, RTrig

; ========================
; || Left Stick Primary ||
; ========================
GuiControlGet, LSup, 1:,
StringReplace, LSup, LSup, %A_Space%, 0, All
IniWrite, %LSup%, %Ini_io%, %Controller%, LSup

GuiControlGet, LSrht, 1:,
StringReplace, LSrht, LSrht, %A_Space%, 0, All
IniWrite, %LSrht%, %Ini_io%, %Controller%, LSrht

GuiControlGet, LSdwn, 1:,
StringReplace, LSdwn, LSdwn, %A_Space%, 0, All
IniWrite, %LSdwn%, %Ini_io%, %Controller%, LSdwn

GuiControlGet, LSlft, 1:,
StringReplace, LSlft, LSlft, %A_Space%, 0, All
IniWrite, %LSlft%, %Ini_io%, %Controller%, LSlft

GuiControlGet, LSul, 1:,
StringReplace, LSul, LSul, %A_Space%, 0, All
IniWrite, %LSul%, %Ini_io%, %Controller%, LSul

GuiControlGet, LSur, 1:,
StringReplace, LSur, LSur, %A_Space%, 0, All
IniWrite, %LSur%, %Ini_io%, %Controller%, LSur

GuiControlGet, LSdl, 1:,
StringReplace, LSdl, LSdl, %A_Space%, 0, All
IniWrite, %LSdl%, %Ini_io%, %Controller%, LSdl

GuiControlGet, LSdr, 1:,
StringReplace, LSdr, LSdr, %A_Space%, 0, All
IniWrite, %LSdr%, %Ini_io%, %Controller%, LSdr

GuiControlGet, LSbtn, 1:,
StringReplace, LSbtn, LSbtn, %A_Space%, 0, All
IniWrite, %LSbtn%, %Ini_io%, %Controller%, LSbtn

; =========================
; || Right Stick Primary ||
; =========================
GuiControlGet, RSUp, 1:,
StringReplace, RSUp, RSUp, %A_Space%, 0, All
IniWrite, %RSUp%, %Ini_io%, %Controller%, RSUp

GuiControlGet, RSrht, 1:,
StringReplace, RSrht, RSrht, %A_Space%, 0, All
IniWrite, %RSrht%, %Ini_io%, %Controller%, RSrht

GuiControlGet, RSdwn, 1:,
StringReplace, RSdwn, RSdwn, %A_Space%, 0, All
IniWrite, %RSdwn%, %Ini_io%, %Controller%, RSdwn

GuiControlGet, RSlft, 1:,
StringReplace, RSlft, RSlft, %A_Space%, 0, All
IniWrite, %RSlft%, %Ini_io%, %Controller%, RSlft

GuiControlGet, RSul, 1:,
StringReplace, RSul, RSul, %A_Space%, 0, All
IniWrite, %RSul%, %Ini_io%, %Controller%, RSul

GuiControlGet, RSur, 1:,
StringReplace, RSur, RSur, %A_Space%, 0, All
IniWrite, %RSur%, %Ini_io%, %Controller%, RSur

GuiControlGet, RSdl, 1:,
StringReplace, RSdl, RSdl, %A_Space%, 0, All
IniWrite, %RSdl%, %Ini_io%, %Controller%, RSdl

GuiControlGet, RSdr, 1:,
StringReplace, RSdr, RSdr, %A_Space%, 0, All
IniWrite, %RSdr%, %Ini_io%, %Controller%, RSdr

GuiControlGet, RSbtn, 1:,
StringReplace, RSbtn, RSbtn, %A_Space%, 0, All
IniWrite, %RSbtn%, %Ini_io%, %Controller%, RSbtn


; ===========================
; :::::::: ALTERNATE ::::::::
; ===========================
; =======================
; || General Input Alt ||
; =======================
GuiControlGet, Abtn1, 1:,
StringReplace, Abtn1, Abtn1, %A_Space%, 0, All
IniWrite, %Abtn1%, %Ini_io%, %Controller%, Abtn1

GuiControlGet, Bbtn1, 1:,
StringReplace, Bbtn1, Bbtn1, %A_Space%, 0, All
IniWrite, %Bbtn1%, %Ini_io%, %Controller%, Bbtn1

GuiControlGet, Xbtn1, 1:,
StringReplace, Xbtn1, Xbtn1, %A_Space%, 0, All
IniWrite, %Xbtn1%, %Ini_io%, %Controller%, Xbtn1

GuiControlGet, Ybtn1, 1:,
StringReplace, Ybtn1, Ybtn1, %A_Space%, 0, All
IniWrite, %Ybtn1%, %Ini_io%, %Controller%, Ybtn1 

GuiControlGet, Startbtn1, 1:,
StringReplace, Startbtn1, Startbtn1, %A_Space%, 0, All
IniWrite, %Startbtn1%, %Ini_io%, %Controller%, Startbtn1

; =============================
; ||  Grips and Triggers Alt ||
; =============================
GuiControlGet, LGrip1, 1:,
StringReplace, LGrip1, LGrip1, %A_Space%, 0, All
IniWrite, %LGrip1%, %Ini_io%, %Controller%, LGrip1

GuiControlGet, RGrip1, 1:,
StringReplace, RGrip1, RGrip1, %A_Space%, 0, All
IniWrite, %RGrip1%, %Ini_io%, %Controller%, RGrip1

GuiControlGet, Ltrig1, 1:,
StringReplace, Ltrig1, Ltrig1, %A_Space%, 0, All
IniWrite, %Ltrig1%, %Ini_io%, %Controller%, Ltrig1

GuiControlGet, Rtrig1, 1:,
StringReplace, Rtrig1, Rtrig1, %A_Space%, 0, All
IniWrite, %Rtrig1%, %Ini_io%, %Controller%, Rtrig1

; ====================
; || Left Stick Alt ||
; ====================
GuiControlGet, LSup1, 1:,
StringReplace, LSup1, LSup1, %A_Space%, 0, All
IniWrite, %LSup1%, %Ini_io%, %Controller%, LSup1

GuiControlGet, LSrht1, 1:,
StringReplace, LSrht1, LSrht1, %A_Space%, 0, All
IniWrite, %LSrht1%, %Ini_io%, %Controller%, LSrht1

GuiControlGet, LSdwn1, 1:,
StringReplace, LSdwn1, LSdwn1, %A_Space%, 0, All
IniWrite, %LSdwn1%, %Ini_io%, %Controller%, LSdwn1

GuiControlGet, LSlft1, 1:,
StringReplace, LSlft1, LSlft1, %A_Space%, 0, All
IniWrite, %LSlft1%, %Ini_io%, %Controller%, LSlft1

GuiControlGet, LSul1, 1:,
StringReplace, LSul1, LSul1, %A_Space%, 0, All
IniWrite, %LSul1%, %Ini_io%, %Controller%, LSul1

GuiControlGet, LSur1, 1:,
StringReplace, LSur1, LSur1, %A_Space%, 0, All
IniWrite, %LSur1%, %Ini_io%, %Controller%, LSur1

GuiControlGet, LSdl1, 1:,
StringReplace, LSdl1, LSdl1, %A_Space%, 0, All
IniWrite, %LSdl1%, %Ini_io%, %Controller%, LSdl1

GuiControlGet, LSdr1, 1:,
StringReplace, LSdr1, LSdr1, %A_Space%, 0, All
IniWrite, %LSdr1%, %Ini_io%, %Controller%, LSdr1

GuiControlGet, LSbtn1, 1:,
StringReplace, LSbtn1, LSbtn1, %A_Space%, 0, All
IniWrite, %LSbtn1%, %Ini_io%, %Controller%, LSbtn1

; =====================
; || Right Stick Alt ||
; =====================
GuiControlGet, RSup1, 1:,
StringReplace, RSup1, RSup1, %A_Space%, 0, All
IniWrite, %RSup1%, %Ini_io%, %Controller%, RSup1

GuiControlGet, RSrht1, 1:,
StringReplace, RSrht1, RSrht1, %A_Space%, 0, All
IniWrite, %RSrht1%, %Ini_io%, %Controller%, RSrht1

GuiControlGet, RSdwn1, 1:,
StringReplace, RSdwn1, RSdwn1, %A_Space%, 0, All
IniWrite, %RSdwn1%, %Ini_io%, %Controller%, RSdwn1

GuiControlGet, RSlft1, 1:,
StringReplace, RSlft1, RSlft1, %A_Space%, 0, All
IniWrite, %RSlft1%, %Ini_io%, %Controller%, RSlft1

GuiControlGet, RSul1, 1:,
StringReplace, RSul1, RSul1, %A_Space%, 0, All
IniWrite, %RSul1%, %Ini_io%, %Controller%, RSul1

GuiControlGet, RSur1, 1:,
StringReplace, RSur1, RSur1, %A_Space%, 0, All
IniWrite, %RSur1%, %Ini_io%, %Controller%, RSur1

GuiControlGet, RSdl1, 1:,
StringReplace, RSdl1, RSdl1, %A_Space%, 0, All
IniWrite, %RSdl1%, %Ini_io%, %Controller%, RSdl1

GuiControlGet, RSdr1, 1:,
StringReplace, RSdr1, RSdr1, %A_Space%, 0, All
IniWrite, %RSdr1%, %Ini_io%, %Controller%, RSdr1

GuiControlGet, RSbtn1, 1:,
StringReplace, RSbtn1, RSbtn1, %A_Space%, 0, All
IniWrite, %RSbtn1%, %Ini_io%, %Controller%, RSbtn1


; ========================
; :::::::: MOTION ::::::::
; ========================
; ==============================
; || Motion Input Assignments ||
; ==============================
GuiControlGet, LPitchUp, 1:,
StringReplace, LPitchUp, LPitchUp, `n, ``n, All
IniWrite, %LPitchUp%, %Ini_io%, %MotionGestures%, LPitchUp

GuiControlGet, LPitchDown, 1:,
StringReplace, LPitchDown, LPitchDown, `n, ``n, All
IniWrite, %LPitchDown%, %Ini_io%, %MotionGestures%, LPitchDown

GuiControlGet, LYawLeft, 1:,
StringReplace, LYawLeft, LYawLeft, `n, ``n, All
IniWrite, %LYawLeft%, %Ini_io%, %MotionGestures%, LYawLeft

GuiControlGet, LYawRight, 1:,
StringReplace, LYawRight, LYawRight, `n, ``n, All
IniWrite, %LYawRight%, %Ini_io%, %MotionGestures%, LYawRight

GuiControlGet, LRollLeft, 1:,
StringReplace, LRollLeft, LRollLeft, `n, ``n, All
IniWrite, %LRollLeft%, %Ini_io%, %MotionGestures%, LRollLeft

GuiControlGet, LRollRight, 1:,
StringReplace, LRollRight, LRollRight, `n, ``n, All
IniWrite, %LRollRight%, %Ini_io%, %MotionGestures%, LRollRight

GuiControlGet, RPitchUp, 1:,
StringReplace, RPitchUp, RPitchUp, `n, ``n, All
IniWrite, %RPitchUp%, %Ini_io%, %MotionGestures%, RPitchUp

GuiControlGet, RPitchDown, 1:,
StringReplace, RPitchDown, RPitchDown, `n, ``n, All
IniWrite, %RPitchDown%, %Ini_io%, %MotionGestures%, RPitchDown

GuiControlGet, RYawLeft, 1:,
StringReplace, RYawLeft, RYawLeft, `n, ``n, All
IniWrite, %RYawLeft%, %Ini_io%, %MotionGestures%, RYawLeft

GuiControlGet, RYawRight, 1:,
StringReplace, RYawRight, RYawRight, `n, ``n, All
IniWrite, %RYawRight%, %Ini_io%, %MotionGestures%, RYawRight

GuiControlGet, RRollLeft, 1:,
StringReplace, RRollLeft, RRollLeft, `n, ``n, All
IniWrite, %RRollLeft%, %Ini_io%, %MotionGestures%, RRollLeft

GuiControlGet, RRollRight, 1:,
StringReplace, RRollRight, RRollRight, `n, ``n, All
IniWrite, %RRollRight%, %Ini_io%, %MotionGestures%, RRollRight

; ======================
; || Motion Deadzones ||
; ======================
GuiControlGet, LPitchDz, 1:,
StringReplace, LPitchDz, LPitchDz, `n, ``n, All
IniWrite, %LPitchDz%, %Ini_io%, Motion Deadzones, LPitchDz

GuiControlGet, LYawDz, 1:,
StringReplace, LYawDz, LYawDz, `n, ``n, All
IniWrite, %LYawDz%, %Ini_io%, Motion Deadzones, LYawDz

GuiControlGet, LRollDz, 1:,
StringReplace, LRollDz, LRollDz, `n, ``n, All
IniWrite, %LRollDz%, %Ini_io%, Motion Deadzones, LRollDz

GuiControlGet, RPitchDz, 1:,
StringReplace, RPitchDz, RPitchDz, `n, ``n, All
IniWrite, %RPitchDz%, %Ini_io%, Motion Deadzones, RPitchDz

GuiControlGet, RYawDz, 1:,
StringReplace, RYawDz, RYawDz, `n, ``n, All
IniWrite, %RYawDz%, %Ini_io%, Motion Deadzones, RYawDz

GuiControlGet, RRollDz, 1:,
StringReplace, RRollDz, RRollDz, `n, ``n, All
IniWrite, %RRollDz%, %Ini_io%, Motion Deadzones, RRollDz

; ==================================
; :::::::: GENERAL SETTINGS ::::::::
; ==================================
GuiControlGet, Trayico, 2:,
StringReplace, Trayico, Trayico, `n, ``n, All
IniWrite, %Trayico%, %Ini_io%, Settings, Trayico

GuiControlGet, ServiceState, 2:,
StringReplace, ServiceState, ServiceState, `n, ``n, All
IniWrite, %ServiceState%, %Ini_io%, Settings, ServiceState

GuiControlGet, MotionDevide, 2:,
StringReplace, MotionDevide, MotionDevide, `n, ``n, All
IniWrite, %MotionDevide%, %Ini_io%, Settings, MotionDevide

GuiControlGet, MotionState, 2:,
StringReplace, MotionState, MotionState, `n, ``n, All
IniWrite, %MotionState%, %Ini_io%, Settings, MotionState

GuiControlGet, ControllerMode, 2:,
StringReplace, ControllerMode, ControllerMode, `n, ``n, All
IniWrite, %ControllerMode%, %Ini_io%, Settings, ControllerMode

GuiControlGet, ShiftMode, 2:,
StringReplace, ShiftMode, ShiftMode, `n, ``n, All
IniWrite, %ShiftMode%, %Ini_io%, Settings, ShiftMode

GuiControlGet, ShiftGrip, 2:,
StringReplace, ShiftGrip, ShiftGrip, `n, ``n, All
IniWrite, %ShiftGrip%, %Ini_io%, Settings, ShiftGrip

GuiControlGet, HeadState, 2:,
StringReplace, HeadState, HeadState, `n, ``n, All
IniWrite, %HeadState%, %Ini_io%, Settings, HeadState

GuiControlGet, HeadMode, 2:,
StringReplace, HeadMode, HeadMode, `n, ``n, All
IniWrite, %HeadMode%, %Ini_io%, Settings, HeadMode

; =======================
; :::::::: MOUSE ::::::::
; =======================
; ======================
; || Speed Adjustment ||
; ======================
GuiControlGet, mSpeedX, 2:,
StringReplace, mSpeedX, mSpeedX, %A_Space%, 0, All
IniWrite, %mSpeedX%, %Ini_io%, MouseSettings, mSpeedX

GuiControlGet, mSpeedY, 2:,
StringReplace, mSpeedY, mSpeedY, %A_Space%, 0, All
IniWrite, %mSpeedY%, %Ini_io%, MouseSettings, mSpeedY

GuiControlGet, sSpeedX, 2:,
StringReplace, sSpeedX, sSpeedX, %A_Space%, 0, All
IniWrite, %sSpeedX%, %Ini_io%, MouseSettings, sSpeedX

GuiControlGet, sSpeedY, 2:,
StringReplace, sSpeedY, sSpeedY, %A_Space%, 0, All
IniWrite, %sSpeedY%, %Ini_io%, MouseSettings, sSpeedY

GuiControlGet, hSpeedX, 2:,
StringReplace, hSpeedX, hSpeedX, %A_Space%, 0, All
IniWrite, %hSpeedX%, %Ini_io%, MouseSettings, hSpeedX

GuiControlGet, hSpeedY, 2:,
StringReplace, hSpeedY, hSpeedY, %A_Space%, 0, All
IniWrite, %hSpeedY%, %Ini_io%, MouseSettings, hSpeedY

; ============================
; || Mouse Motion Deadzones ||
; ============================
GuiControlGet, LS_Dz, 2:,
StringReplace, LS_Dz, LS_Dz, `n, ``n, All
IniWrite, %LS_Dz%, %Ini_io%, MouseSettings, LS_Dz

GuiControlGet, RS_Dz, 2:,
StringReplace, RS_Dz, RS_Dz, `n, ``n, All
IniWrite, %RS_Dz%, %Ini_io%, MouseSettings, RS_Dz

GuiControlGet, LSms_Dz, 2:,
StringReplace, LSms_Dz, LSms_Dz, `n, ``n, All
IniWrite, %LSms_Dz%, %Ini_io%, MouseSettings, LSms_Dz

GuiControlGet, RSms_Dz, 2:,
StringReplace, RSms_Dz, RSms_Dz, `n, ``n, All
IniWrite, %RSms_Dz%, %Ini_io%, MouseSettings, RSms_Dz

Return
  
