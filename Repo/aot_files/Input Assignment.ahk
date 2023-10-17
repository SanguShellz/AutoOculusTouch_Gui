;INDEX: PRIMARY | SECONDARY | MOTION

if (ControllerMode = 1)
{
  Choice := {"A":controller.Buttons.A, "B":controller.Buttons.B, "X":controller.Buttons.X, "Y":controller.Buttons.Y, "LShoulder":controller.Buttons.LB, "RShoulder":controller.Buttons.RB, "LS-Button":controller.Buttons.LS, "RS-Button":controller.Buttons.RS, "Start":controller.Buttons.Start,"Back":controller.Buttons.Back, "Xbox":controller.Buttons.Xbox, "LTrigger":controller.Axes.LT, "RTrigger":controller.Axes.RT}
}
else if !(ControllerMode = 1)
{
  Choice := {"Circle":controller.Buttons.Circle, "Cross":controller.Buttons.Cross, "Square":controller.Buttons.Square, "Triangle":controller.Buttons.Triangle, "L1-Button":controller.Buttons.L1, "L2-Button":controller.Buttons.L2, "R1-Button":controller.Buttons.R1, "R2-Button":controller.Buttons.R2, "LS-Button":controller.Buttons.LS, "RS-Button":controller.Buttons.RS, "Share":controller.Buttons.Share, "Touch":controller.Buttons.Touch, "Options":controller.Buttons.Options, "PS-Button":controller.Buttons.Ps, "LTrigger":controller.Axes.LT, "RTrigger":controller.Axes.RT} 
}


; =========================
; :::::::: PRIMARY ::::::::
; =========================
; =============
; || Buttons ||
; =============
Abtn_pri := Choice[Abtn] 
Bbtn_pri := Choice[Bbtn] 
Xbtn_pri := Choice[Xbtn] 
Ybtn_pri := Choice[Ybtn] 
Startbtn_pri := Choice[Startbtn] 

; ======================
; || Grips | Triggers ||
; ======================
LGrip_pri := Choice[LGrip] 
RGrip_pri := Choice[RGrip] 

LTrig_pri := Choice[LTrig] 
RTrig_pri := Choice[RTrig] 


; ================
; || Left Stick ||
; ================
LSup_pri := Choice[LSup] 
LSrht_pri := Choice[LSrht] 
LSdwn_pri := Choice[LSdwn] 
LSlft_pri := Choice[LSlft] 

LSul_pri := Choice[LSul] 
LSur_pri := Choice[LSur] 
LSdl_pri := Choice[LSdl] 
LSdr_pri := Choice[LSdr] 

LSbtn_pri := Choice[LSbtn] 

; =================
; || Right Stick ||
; =================
RSup_pri := Choice[RSup] 
RSrht_pri := Choice[RSrht] 
RSdwn_pri := Choice[RSdwn] 
RSlft_pri := Choice[RSlft] 

RSul_pri := Choice[RSul] 
RSur_pri := Choice[RSur] 
RSdl_pri := Choice[RSdl] 
RSdr_pri := Choice[RSdr] 

RSbtn_pri := Choice[RSbtn] 


; ===========================
; :::::::: ALTERNATE ::::::::
; ===========================
; =============
; || Buttons ||
; =============
Abtn_alt := Choice[Abtn1] 
Bbtn_alt := Choice[Bbtn1] 
Xbtn_alt := Choice[Xbtn1] 
Ybtn_alt := Choice[Ybtn1] 
Startbtn_alt := Choice[Startbtn1] 

; ======================
; || Grips | Triggers ||
; ======================
LGrip_alt := Choice[LGrip1] 
RGrip_alt := Choice[RGrip1] 

LTrig_alt := Choice[LTrig1] 
RTrig_alt := Choice[RTrig1] 

; ================
; || Left Stick ||
; ================
LSup_alt := Choice[LSup1] 
LSrht_alt := Choice[LSrht1] 
LSdwn_alt := Choice[LSdwn1] 
LSlft_alt := Choice[LSlft1] 

LSul_alt := Choice[LSul1] 
LSur_alt := Choice[LSur1] 
LSdl_alt := Choice[LSdl1] 
LSdr_alt := Choice[LSdr1] 

LSbtn_alt := Choice[LSbtn1] 

; =================
; || Right Stick ||
; =================
RSup_alt := Choice[RSup1] 
RSrht_alt := Choice[RSrht1] 
RSdwn_alt := Choice[RSdwn1] 
RSlft_alt := Choice[RSlft1] 

RSul_alt := Choice[RSul1] 
RSur_alt := Choice[RSur1] 
RSdl_alt := Choice[RSdl1] 
RSdr_alt := Choice[RSdr1] 

RSbtn_alt := Choice[RSbtn1] 


; ========================
; :::::::: MOTION ::::::::
; ========================
; =========================
; || Left Controller Yaw ||
; =========================
LYawLeft_pri := Choice[LYawLeft]
LYawRight_pri := Choice[LYawRight]

; ===========================
; || Left Controller Pitch ||
; ===========================
LPitchUp_pri := Choice[LPitchUp]
LPitchDown_pri := Choice[LPitchDown]

; ==========================
; || Left Controller Roll ||
; ==========================
LRollLeft_pri := Choice[LRollLeft]
LRollRight_pri := Choice[LRollRight]

; ==========================
; || Right Controller Yaw ||
; ==========================
RYawLeft_pri := Choice[RYawRight]
RYawRight_pri := Choice[RYawLeft]

; ============================
; || Right Controller Pitch ||
; ============================
RPitchUp_pri := Choice[RPitchUp]
RPitchDown_pri := Choice[RPitchDown]

; ===========================
; || Right Controller Roll ||
; ===========================
RRollLeft_pri := Choice[RRollLeft]
RRollRight_pri := Choice[RRollRight]  