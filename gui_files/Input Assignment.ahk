; =========================
; :::::::: PRESETS ::::::::
; =========================
if (ControllerMode = 1)
{
  BttnGroup_ext := {"A":2, "B":3, "X":4, "Y":5, "LTrigger":6, "RTrigger":7, "LShoulder":8, "RShoulder":9, "LS-Button":10, "RS-Button":11, "Up":12, "Down":13, "Left":14, "Right":15, "UpLeft":16, "UpRight":17, "DownLeft":18, "DownRight":19, "Start":20, "Back":21, "Xbox":22,"Reset":23}

  XGroup_ext := {"LS-X":2, "RS-X":3,"MouseX":4, "A":5, "B":6, "X":7, "Y":8, "LTrigger":9, "RTrigger":10, "LShoulder":11, "RShoulder":12, "LS-Button":13, "RS-Button":14, "Up":15, "Down":16, "Left":17, "Right":18, "UpLeft":19, "UpRight":20, "DownLeft":21, "DownRight":22, "Start":23, "Back":24,"Xbox":25,"Reset":26}

  YGroup_ext := {"LS-Y":2, "RS-Y":3, "MouseY":4, "A":5, "B":6, "X":7, "Y":8, "LTrigger":9, "RTrigger":10, "LShoulder":11, "RShoulder":12, "LS-Button":13, "RS-Button":14, "Up":15, "Down":16, "Left":17, "Right":18, "UpLeft":19, "UpRight":20, "DownLeft":21, "DownRight":22, "Start":23, "Back":24, "Xbox":25,"Reset":26}

  mXZGroup_ext := {"LS-X":2, "RS-X":3, "MouseX":4, "A":5, "B":6, "X":7, "Y":8, "LTrigger":9, "RTrigger":10, "LShoulder":11, "RShoulder":12, "LS-Button":13, "RS-Button":14, "Up":15, "Down":16, "Left":17, "Right":18, "UpLeft":19, "UpRight":20, "DownLeft":21, "DownRight":22, "Start":23, "Back":24, "Xbox":25}

  mYGroup_ext := {"LS-Y":2, "inv_LS-Y":3, "RS-Y":4, "MouseY":5, "A":6, "B":7, "X":8, "Y":9, "LTrigger":10, "RTrigger":11, "LShoulder":12, "RShoulder":13, "LS-Button":14, "RS-Button":15, "Up":16, "Down":17, "Left":18, "Right":19, "UpLeft":20, "UpRight":21, "SownLeft":22, "DownRight":23, "Start":24, "Back":25, "Xbox":26} 
}

if !(ControllerMode = 1)
{
  BttnGroup_ext := {"Circle":2, "Cross":3, "Square":4, "Triangle":5, "LTrigger":6, "RTrigger":7, "L1-Button":8, "L2-Button":9, "R1-Button":10, "R2-Button":11, "LS-Button":12, "RS-Button":13, "Up":14, "Down":15, "Left":16, "Right":17, "UpLeft":18, "UpRight":19, "DownLeft":20, "DownRight":21, "Options":22, "Share":23, "Touch":24, "PS-Button":25,"Reset":26}

  XGroup_ext := {"LS-X":2, "RS-X":3, "MouseX":4, "Circle":5, "Cross":6, "Square":7, "Triangle":8, "LTrigger":9, "RTrigger":10, "L1-Button":11, "L2-Button":12, "R1-Button":13, "R2-Button":14, "LS-Button":15, "RS-Button":16, "Up":17, "Down":18, "Left":19, "Right":20, "UpLeft":21, "UpRight":22, "DownLeft":23, "DownRight":24, "Options":25, "Share":26, "Touch":27, "PS-Button":28,"Reset":29}

  YGroup_ext := {"LS-Y":2, "RS-Y":3, "MouseY":4, "Circle":5, "Cross":6, "Square":7, "Triangle":8, "LTrigger":9, "RTrigger":10, "L1-Button":11, "L2-Button":12, "R1-Button":13, "R2-Button":14, "LS-Button":15, "RS-Button":16, "Up":17, "Down":18, "Left":19, "Right":20, "UpLeft":21, "UpRight":22, "DownLeft":23, "DownRight":24, "Options":25, "Share":26, "Touch":27, "PS-Button":28,"Reset":29}

  mXZGroup_ext := {"LS-X":2, "RS-X":3, "MouseY":4, "Circle":5, "Cross":6, "Square":7, "Triangle":8, "LTrigger":9, "RTrigger":10, "L1-Button":11, "L2-Button":12, "R1-Button":13, "R2-Button":14, "LS-Button":15, "RS-Button":16, "Up":17, "Down":18, "Left":19, "Right":20, "UpLeft":21, "UpRight":22, "DownLeft":23, "DownRight":24, "Options":25, "Share":26, "Touch":27, "PS-Button":28}

  mYGroup_ext := {"LS-Y":2, "inv_LS-Y":3, "RS-Y":4,"MouseY":5, "Circle":6, "Cross":7, "Square":8, "Triangle":9, "LTrigger":10, "RTrigger":11, "L1-Button":12, "L2-Button":13, "R1-Button":14, "R2-Button":15, "LS-Button":16, "RS-Button":17, "Up":18, "Down":19, "Left":20, "Right":21, "UpLeft":22, "UpRight":23, "SownLeft":24, "DownRight":25, "Options":26, "Share":27, "Touch":28, "PS-Button":29} 
}

; ==========================
; :::::::: PRIRMARY ::::::::
; ==========================
; =============
; || Buttons ||
; =============
Abtn_ins := BttnGroup_ext[Abtn] 
Bbtn_ins := BttnGroup_ext[Bbtn] 
Xbtn_ins := BttnGroup_ext[Xbtn] 
Ybtn_ins := BttnGroup_ext[Ybtn] 
Startbtn_ins := BttnGroup_ext[Startbtn] 

; ======================
; || Grips | Triggers ||
; ======================
LGrip_ins := BttnGroup_ext[LGrip] 
RGrip_ins := BttnGroup_ext[RGrip] 

LTrig_ins := BttnGroup_ext[LTrig] 
RTrig_ins := BttnGroup_ext[RTrig] 

; ================
; || Left Stick ||
; ================
LSup_ins := YGroup_ext[LSup] 
LSrht_ins := XGroup_ext[LSrht] 
LSdwn_ins := YGroup_ext[LSdwn] 
LSlft_ins := XGroup_ext[LSlft] 

LSul_ins := BttnGroup_ext[LSul] 
LSur_ins := BttnGroup_ext[LSur] 
LSdl_ins := BttnGroup_ext[LSdl] 
LSdr_ins := BttnGroup_ext[LSdr] 

LSbtn_ins := BttnGroup_ext[LSbtn] 


; =================
; || Right Stick ||
; =================
RSup_ins := YGroup_ext[RSup] 
RSrht_ins := XGroup_ext[RSrht] 
RSdwn_ins := YGroup_ext[RSdwn] 
RSlft_ins := XGroup_ext[RSlft] 

RSul_ins := BttnGroup_ext[RSul] 
RSur_ins := BttnGroup_ext[RSur] 
RSdl_ins := BttnGroup_ext[RSdl] 
RSdr_ins := BttnGroup_ext[RSdr] 

RSbtn_ins := BttnGroup_ext[RSbtn] 


; ===========================
; :::::::: ALTERNATE ::::::::
; ===========================
; =============
; || Buttons ||
; =============
Abtn1_ins := BttnGroup_ext[Abtn1] 
Bbtn1_ins := BttnGroup_ext[Bbtn1] 
Xbtn1_ins := BttnGroup_ext[Xbtn1] 
Ybtn1_ins := BttnGroup_ext[Ybtn1] 
Startbtn1_ins := BttnGroup_ext[Startbtn1] 

; ======================
; || Grips | Triggers ||
; ======================
LGrip1_ins := BttnGroup_ext[LGrip1] 
RGrip1_ins := BttnGroup_ext[RGrip1] 

LTrig1_ins := BttnGroup_ext[LTrig1] 
RTrig1_ins := BttnGroup_ext[RTrig1] 

; ================
; || Left Stick ||
; ================
LSup1_ins := YGroup_ext[LSup1] 
LSrht1_ins := XGroup_ext[LSrht1] 
LSdwn1_ins := YGroup_ext[LSdwn1] 
LSlft1_ins := XGroup_ext[LSlft1] 

LSul1_ins := BttnGroup_ext[LSul1] 
LSur1_ins := BttnGroup_ext[LSur1] 
LSdl1_ins := BttnGroup_ext[LSdl1] 
LSdr1_ins := BttnGroup_ext[LSdr1] 

LSbtn1_ins := BttnGroup_ext[LSbtn1] 


; =================
; || Right Stick ||
; =================
RSup1_ins := YGroup_ext[RSup1] 
RSrht1_ins := XGroup_ext[RSrht1] 
RSdwn1_ins := YGroup_ext[RSdwn1] 
RSlft1_ins := XGroup_ext[RSlft1] 

RSul1_ins := BttnGroup_ext[RSul1] 
RSur1_ins := BttnGroup_ext[RSur1] 
RSdl1_ins := BttnGroup_ext[RSdl1] 
RSdr1_ins := BttnGroup_ext[RSdr1] 

RSbtn1_ins := BttnGroup_ext[RSbtn1] 


; ========================
; :::::::: MOTION ::::::::
; ========================

; ==============
; || Left Yaw ||
; ==============
LYawLeft_ins := mXZGroup_ext[LYawLeft]
LYawRight_ins := mXZGroup_ext[LYawRight]

; ================
; || Left Pitch ||
; ================
LPitchUp_ins := mYGroup_ext[LPitchUp]
LPitchDown_ins := mYGroup_ext[LPitchDown]

; ===============
; || left Roll ||
; ===============
LRollLeft_ins := mXZGroup_ext[LRollLeft]
LRollRight_ins := mXZGroup_ext[LRollRight]

; ===============
; || Right Yaw ||
; ===============
RYawLeft_ins := mXZGroup_ext[RYawLeft]
RYawRight_ins := mXZGroup_ext[RYawRight]

; =================
; || Right Pitch ||
; =================
RPitchUp_ins := mYGroup_ext[RPitchUp]
RPitchDown_ins := mYGroup_ext[RPitchDown]

; ================
; || Right Roll ||
; ================
RRollLeft_ins := mXZGroup_ext[RRollLeft]
RRollRight_ins := mXZGroup_ext[RRollRight]
