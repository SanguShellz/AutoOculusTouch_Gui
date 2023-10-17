; =========================
; :::::::: PRIMARY ::::::::
; =========================
; ==============================
; ||  Geneneral Input Primary ||
; ==============================
GuiControlGet, Abtn, 1:,
StringReplace, Abtn, Abtn, %A_Space%, 0, All
IniWrite, %Abtn%, %IniFilePath%, %Controller%, Abtn

GuiControlGet, Bbtn, 1:,
StringReplace, Bbtn, Bbtn, %A_Space%, 0, All
IniWrite, %Bbtn%, %IniFilePath%, %Controller%, Bbtn

GuiControlGet, Xbtn, 1:,
StringReplace, Xbtn, Xbtn, %A_Space%, 0, All
IniWrite, %Xbtn%, %IniFilePath%, %Controller%, Xbtn

GuiControlGet, Ybtn, 1:,
StringReplace, Ybtn, Ybtn, %A_Space%, 0, All
IniWrite, %Ybtn%, %IniFilePath%, %Controller%, Ybtn 

GuiControlGet, Startbtn, 1:,
StringReplace, Startbtn, Startbtn, %A_Space%, 0, All
IniWrite, %Startbtn%, %IniFilePath%, %Controller%, Startbtn

; =================================
; ||  Grips and Triggers Primary ||
; =================================
GuiControlGet, LGrip, 1:,
StringReplace, LGrip, LGrip, %A_Space%, 0, All
IniWrite, %LGrip%, %IniFilePath%, %Controller%, LGrip

GuiControlGet, RGrip, 1:,
StringReplace, RGrip, RGrip, %A_Space%, 0, All
IniWrite, %RGrip%, %IniFilePath%, %Controller%, RGrip

GuiControlGet, LTrig, 1:,
StringReplace, LTrig, LTrig, %A_Space%, 0, All
IniWrite, %LTrig%, %IniFilePath%, %Controller%, LTrig

GuiControlGet, RTrig, 1:,
StringReplace, RTrig, RTrig, %A_Space%, 0, All
IniWrite, %RTrig%, %IniFilePath%, %Controller%, RTrig

; ========================
; || Left Stick Primary ||
; ========================
GuiControlGet, LSup, 1:,
StringReplace, LSup, LSup, %A_Space%, 0, All
IniWrite, %LSup%, %IniFilePath%, %Controller%, LSup

GuiControlGet, LSrht, 1:,
StringReplace, LSrht, LSrht, %A_Space%, 0, All
IniWrite, %LSrht%, %IniFilePath%, %Controller%, LSrht

GuiControlGet, LSdwn, 1:,
StringReplace, LSdwn, LSdwn, %A_Space%, 0, All
IniWrite, %LSdwn%, %IniFilePath%, %Controller%, LSdwn

GuiControlGet, LSlft, 1:,
StringReplace, LSlft, LSlft, %A_Space%, 0, All
IniWrite, %LSlft%, %IniFilePath%, %Controller%, LSlft

GuiControlGet, LSul, 1:,
StringReplace, LSul, LSul, %A_Space%, 0, All
IniWrite, %LSul%, %IniFilePath%, %Controller%, LSul

GuiControlGet, LSur, 1:,
StringReplace, LSur, LSur, %A_Space%, 0, All
IniWrite, %LSur%, %IniFilePath%, %Controller%, LSur

GuiControlGet, LSdl, 1:,
StringReplace, LSdl, LSdl, %A_Space%, 0, All
IniWrite, %LSdl%, %IniFilePath%, %Controller%, LSdl

GuiControlGet, LSdr, 1:,
StringReplace, LSdr, LSdr, %A_Space%, 0, All
IniWrite, %LSdr%, %IniFilePath%, %Controller%, LSdr

GuiControlGet, LSbtn, 1:,
StringReplace, LSbtn, LSbtn, %A_Space%, 0, All
IniWrite, %LSbtn%, %IniFilePath%, %Controller%, LSbtn

; =========================
; || Right Stick Primary ||
; =========================
GuiControlGet, RSUp, 1:,
StringReplace, RSUp, RSUp, %A_Space%, 0, All
IniWrite, %RSUp%, %IniFilePath%, %Controller%, RSUp

GuiControlGet, RSrht, 1:,
StringReplace, RSrht, RSrht, %A_Space%, 0, All
IniWrite, %RSrht%, %IniFilePath%, %Controller%, RSrht

GuiControlGet, RSdwn, 1:,
StringReplace, RSdwn, RSdwn, %A_Space%, 0, All
IniWrite, %RSdwn%, %IniFilePath%, %Controller%, RSdwn

GuiControlGet, RSlft, 1:,
StringReplace, RSlft, RSlft, %A_Space%, 0, All
IniWrite, %RSlft%, %IniFilePath%, %Controller%, RSlft

GuiControlGet, RSul, 1:,
StringReplace, RSul, RSul, %A_Space%, 0, All
IniWrite, %RSul%, %IniFilePath%, %Controller%, RSul

GuiControlGet, RSur, 1:,
StringReplace, RSur, RSur, %A_Space%, 0, All
IniWrite, %RSur%, %IniFilePath%, %Controller%, RSur

GuiControlGet, RSdl, 1:,
StringReplace, RSdl, RSdl, %A_Space%, 0, All
IniWrite, %RSdl%, %IniFilePath%, %Controller%, RSdl

GuiControlGet, RSdr, 1:,
StringReplace, RSdr, RSdr, %A_Space%, 0, All
IniWrite, %RSdr%, %IniFilePath%, %Controller%, RSdr

GuiControlGet, RSbtn, 1:,
StringReplace, RSbtn, RSbtn, %A_Space%, 0, All
IniWrite, %RSbtn%, %IniFilePath%, %Controller%, RSbtn


; ===========================
; :::::::: ALTERNATE ::::::::
; ===========================
; =======================
; || General Input Alt ||
; =======================
GuiControlGet, Abtn1, 1:,
StringReplace, Abtn1, Abtn1, %A_Space%, 0, All
IniWrite, %Abtn1%, %IniFilePath%, %Controller%, Abtn1

GuiControlGet, Bbtn1, 1:,
StringReplace, Bbtn1, Bbtn1, %A_Space%, 0, All
IniWrite, %Bbtn1%, %IniFilePath%, %Controller%, Bbtn1

GuiControlGet, Xbtn1, 1:,
StringReplace, Xbtn1, Xbtn1, %A_Space%, 0, All
IniWrite, %Xbtn1%, %IniFilePath%, %Controller%, Xbtn1

GuiControlGet, Ybtn1, 1:,
StringReplace, Ybtn1, Ybtn1, %A_Space%, 0, All
IniWrite, %Ybtn1%, %IniFilePath%, %Controller%, Ybtn1 

GuiControlGet, Startbtn1, 1:,
StringReplace, Startbtn1, Startbtn1, %A_Space%, 0, All
IniWrite, %Startbtn1%, %IniFilePath%, %Controller%, Startbtn1

; =============================
; ||  Grips and Triggers Alt ||
; =============================
GuiControlGet, LGrip1, 1:,
StringReplace, LGrip1, LGrip1, %A_Space%, 0, All
IniWrite, %LGrip1%, %IniFilePath%, %Controller%, LGrip1

GuiControlGet, RGrip1, 1:,
StringReplace, RGrip1, RGrip1, %A_Space%, 0, All
IniWrite, %RGrip1%, %IniFilePath%, %Controller%, RGrip1

GuiControlGet, Ltrig1, 1:,
StringReplace, Ltrig1, Ltrig1, %A_Space%, 0, All
IniWrite, %Ltrig1%, %IniFilePath%, %Controller%, Ltrig1

GuiControlGet, Rtrig1, 1:,
StringReplace, Rtrig1, Rtrig1, %A_Space%, 0, All
IniWrite, %Rtrig1%, %IniFilePath%, %Controller%, Rtrig1

; ====================
; || Left Stick Alt ||
; ====================
GuiControlGet, LSup1, 1:,
StringReplace, LSup1, LSup1, %A_Space%, 0, All
IniWrite, %LSup1%, %IniFilePath%, %Controller%, LSup1

GuiControlGet, LSrht1, 1:,
StringReplace, LSrht1, LSrht1, %A_Space%, 0, All
IniWrite, %LSrht1%, %IniFilePath%, %Controller%, LSrht1

GuiControlGet, LSdwn1, 1:,
StringReplace, LSdwn1, LSdwn1, %A_Space%, 0, All
IniWrite, %LSdwn1%, %IniFilePath%, %Controller%, LSdwn1

GuiControlGet, LSlft1, 1:,
StringReplace, LSlft1, LSlft1, %A_Space%, 0, All
IniWrite, %LSlft1%, %IniFilePath%, %Controller%, LSlft1

GuiControlGet, LSul1, 1:,
StringReplace, LSul1, LSul1, %A_Space%, 0, All
IniWrite, %LSul1%, %IniFilePath%, %Controller%, LSul1

GuiControlGet, LSur1, 1:,
StringReplace, LSur1, LSur1, %A_Space%, 0, All
IniWrite, %LSur1%, %IniFilePath%, %Controller%, LSur1

GuiControlGet, LSdl1, 1:,
StringReplace, LSdl1, LSdl1, %A_Space%, 0, All
IniWrite, %LSdl1%, %IniFilePath%, %Controller%, LSdl1

GuiControlGet, LSdr1, 1:,
StringReplace, LSdr1, LSdr1, %A_Space%, 0, All
IniWrite, %LSdr1%, %IniFilePath%, %Controller%, LSdr1

GuiControlGet, LSbtn1, 1:,
StringReplace, LSbtn1, LSbtn1, %A_Space%, 0, All
IniWrite, %LSbtn1%, %IniFilePath%, %Controller%, LSbtn1

; =====================
; || Right Stick Alt ||
; =====================
GuiControlGet, RSup1, 1:,
StringReplace, RSup1, RSup1, %A_Space%, 0, All
IniWrite, %RSup1%, %IniFilePath%, %Controller%, RSup1

GuiControlGet, RSrht1, 1:,
StringReplace, RSrht1, RSrht1, %A_Space%, 0, All
IniWrite, %RSrht1%, %IniFilePath%, %Controller%, RSrht1

GuiControlGet, RSdwn1, 1:,
StringReplace, RSdwn1, RSdwn1, %A_Space%, 0, All
IniWrite, %RSdwn1%, %IniFilePath%, %Controller%, RSdwn1

GuiControlGet, RSlft1, 1:,
StringReplace, RSlft1, RSlft1, %A_Space%, 0, All
IniWrite, %RSlft1%, %IniFilePath%, %Controller%, RSlft1

GuiControlGet, RSul1, 1:,
StringReplace, RSul1, RSul1, %A_Space%, 0, All
IniWrite, %RSul1%, %IniFilePath%, %Controller%, RSul1

GuiControlGet, RSur1, 1:,
StringReplace, RSur1, RSur1, %A_Space%, 0, All
IniWrite, %RSur1%, %IniFilePath%, %Controller%, RSur1

GuiControlGet, RSdl1, 1:,
StringReplace, RSdl1, RSdl1, %A_Space%, 0, All
IniWrite, %RSdl1%, %IniFilePath%, %Controller%, RSdl1

GuiControlGet, RSdr1, 1:,
StringReplace, RSdr1, RSdr1, %A_Space%, 0, All
IniWrite, %RSdr1%, %IniFilePath%, %Controller%, RSdr1

GuiControlGet, RSbtn1, 1:,
StringReplace, RSbtn1, RSbtn1, %A_Space%, 0, All
IniWrite, %RSbtn1%, %IniFilePath%, %Controller%, RSbtn1


; ========================
; :::::::: MOTION ::::::::
; ========================
; ==============================
; || Motion Input Assignments ||
; ==============================
GuiControlGet, LPitchUp, 1:,
StringReplace, LPitchUp, LPitchUp, `n, ``n, All
IniWrite, %LPitchUp%, %IniFilePath%, %MotionGestures%, LPitchUp

GuiControlGet, LPitchDown, 1:,
StringReplace, LPitchDown, LPitchDown, `n, ``n, All
IniWrite, %LPitchDown%, %IniFilePath%, %MotionGestures%, LPitchDown

GuiControlGet, LYawLeft, 1:,
StringReplace, LYawLeft, LYawLeft, `n, ``n, All
IniWrite, %LYawLeft%, %IniFilePath%, %MotionGestures%, LYawLeft

GuiControlGet, LYawRight, 1:,
StringReplace, LYawRight, LYawRight, `n, ``n, All
IniWrite, %LYawRight%, %IniFilePath%, %MotionGestures%, LYawRight

GuiControlGet, LRollLeft, 1:,
StringReplace, LRollLeft, LRollLeft, `n, ``n, All
IniWrite, %LRollLeft%, %IniFilePath%, %MotionGestures%, LRollLeft

GuiControlGet, LRollRight, 1:,
StringReplace, LRollRight, LRollRight, `n, ``n, All
IniWrite, %LRollRight%, %IniFilePath%, %MotionGestures%, LRollRight

GuiControlGet, RPitchUp, 1:,
StringReplace, RPitchUp, RPitchUp, `n, ``n, All
IniWrite, %RPitchUp%, %IniFilePath%, %MotionGestures%, RPitchUp

GuiControlGet, RPitchDown, 1:,
StringReplace, RPitchDown, RPitchDown, `n, ``n, All
IniWrite, %RPitchDown%, %IniFilePath%, %MotionGestures%, RPitchDown

GuiControlGet, RYawLeft, 1:,
StringReplace, RYawLeft, RYawLeft, `n, ``n, All
IniWrite, %RYawLeft%, %IniFilePath%, %MotionGestures%, RYawLeft

GuiControlGet, RYawRight, 1:,
StringReplace, RYawRight, RYawRight, `n, ``n, All
IniWrite, %RYawRight%, %IniFilePath%, %MotionGestures%, RYawRight

GuiControlGet, RRollLeft, 1:,
StringReplace, RRollLeft, RRollLeft, `n, ``n, All
IniWrite, %RRollLeft%, %IniFilePath%, %MotionGestures%, RRollLeft

GuiControlGet, RRollRight, 1:,
StringReplace, RRollRight, RRollRight, `n, ``n, All
IniWrite, %RRollRight%, %IniFilePath%, %MotionGestures%, RRollRight

; ======================
; || Motion Deadzones ||
; ======================
GuiControlGet, LPitchDz, 1:,
StringReplace, LPitchDz, LPitchDz, `n, ``n, All
IniWrite, %LPitchDz%, %IniFilePath%, Motion Deadzones, LPitchDz

GuiControlGet, LYawDz, 1:,
StringReplace, LYawDz, LYawDz, `n, ``n, All
IniWrite, %LYawDz%, %IniFilePath%, Motion Deadzones, LYawDz

GuiControlGet, LRollDz, 1:,
StringReplace, LRollDz, LRollDz, `n, ``n, All
IniWrite, %LRollDz%, %IniFilePath%, Motion Deadzones, LRollDz

GuiControlGet, RPitchDz, 1:,
StringReplace, RPitchDz, RPitchDz, `n, ``n, All
IniWrite, %RPitchDz%, %IniFilePath%, Motion Deadzones, RPitchDz

GuiControlGet, RYawDz, 1:,
StringReplace, RYawDz, RYawDz, `n, ``n, All
IniWrite, %RYawDz%, %IniFilePath%, Motion Deadzones, RYawDz

GuiControlGet, RRollDz, 1:,
StringReplace, RRollDz, RRollDz, `n, ``n, All
IniWrite, %RRollDz%, %IniFilePath%, Motion Deadzones, RRollDz

; ==================================
; :::::::: GENERAL SETTINGS ::::::::
; ==================================
GuiControlGet, Trayico, 2:,
StringReplace, Trayico, Trayico, `n, ``n, All
IniWrite, %Trayico%, %IniFilePath%, Settings, Trayico

GuiControlGet, ServiceState, 2:,
StringReplace, ServiceState, ServiceState, `n, ``n, All
IniWrite, %ServiceState%, %IniFilePath%, Settings, ServiceState

GuiControlGet, MotionDevide, 2:,
StringReplace, MotionDevide, MotionDevide, `n, ``n, All
IniWrite, %MotionDevide%, %IniFilePath%, Settings, MotionDevide

GuiControlGet, MotionState, 2:,
StringReplace, MotionState, MotionState, `n, ``n, All
IniWrite, %MotionState%, %IniFilePath%, Settings, MotionState

GuiControlGet, ControllerMode, 2:,
StringReplace, ControllerMode, ControllerMode, `n, ``n, All
IniWrite, %ControllerMode%, %IniFilePath%, Settings, ControllerMode

GuiControlGet, ShiftMode, 2:,
StringReplace, ShiftMode, ShiftMode, `n, ``n, All
IniWrite, %ShiftMode%, %IniFilePath%, Settings, ShiftMode

GuiControlGet, ShiftGrip, 2:,
StringReplace, ShiftGrip, ShiftGrip, `n, ``n, All
IniWrite, %ShiftGrip%, %IniFilePath%, Settings, ShiftGrip

GuiControlGet, HeadState, 2:,
StringReplace, HeadState, HeadState, `n, ``n, All
IniWrite, %HeadState%, %IniFilePath%, Settings, HeadState

GuiControlGet, HeadMode, 2:,
StringReplace, HeadMode, HeadMode, `n, ``n, All
IniWrite, %HeadMode%, %IniFilePath%, Settings, HeadMode

; =======================
; :::::::: MOUSE ::::::::
; =======================
; ======================
; || Speed Adjustment ||
; ======================
GuiControlGet, mSpeedX, 2:,
StringReplace, mSpeedX, mSpeedX, %A_Space%, 0, All
IniWrite, %mSpeedX%, %IniFilePath%, MouseSettings, mSpeedX

GuiControlGet, mSpeedY, 2:,
StringReplace, mSpeedY, mSpeedY, %A_Space%, 0, All
IniWrite, %mSpeedY%, %IniFilePath%, MouseSettings, mSpeedY

GuiControlGet, sSpeedX, 2:,
StringReplace, sSpeedX, sSpeedX, %A_Space%, 0, All
IniWrite, %sSpeedX%, %IniFilePath%, MouseSettings, sSpeedX

GuiControlGet, sSpeedY, 2:,
StringReplace, sSpeedY, sSpeedY, %A_Space%, 0, All
IniWrite, %sSpeedY%, %IniFilePath%, MouseSettings, sSpeedY

GuiControlGet, hSpeedX, 2:,
StringReplace, hSpeedX, hSpeedX, %A_Space%, 0, All
IniWrite, %hSpeedX%, %IniFilePath%, MouseSettings, hSpeedX

GuiControlGet, hSpeedY, 2:,
StringReplace, hSpeedY, hSpeedY, %A_Space%, 0, All
IniWrite, %hSpeedY%, %IniFilePath%, MouseSettings, hSpeedY

; ============================
; || Mouse Motion Deadzones ||
; ============================
GuiControlGet, LS_Dz, 2:,
StringReplace, LS_Dz, LS_Dz, `n, ``n, All
IniWrite, %LS_Dz%, %IniFilePath%, MouseSettings, LS_Dz

GuiControlGet, RS_Dz, 2:,
StringReplace, RS_Dz, RS_Dz, `n, ``n, All
IniWrite, %RS_Dz%, %IniFilePath%, MouseSettings, RS_Dz

GuiControlGet, LSms_Dz, 2:,
StringReplace, LSms_Dz, LSms_Dz, `n, ``n, All
IniWrite, %LSms_Dz%, %IniFilePath%, MouseSettings, LSms_Dz

GuiControlGet, RSms_Dz, 2:,
StringReplace, RSms_Dz, RSms_Dz, `n, ``n, All
IniWrite, %RSms_Dz%, %IniFilePath%, MouseSettings, RSms_Dz

Return  
  
