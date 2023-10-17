;INDEX: PRIMARY | SECONDARY | MOTION

Dpadlist := "Up,Down,Left,Right,UpLeft,UpRight,DownLeft,DownRight"

DpadChoice := {"Up":"Up", "Down":"Down", "Left":"Left", "Right":"Right", "UpLeft":"UpLeft", "UpRight":"UpRight", "DownLeft":"DownLeft", "DownRight":"DownRight"}

; =========================
; :::::::: PRIMARY ::::::::
; =========================
; =============
; || Buttons ||
; =============
Abtn_pri_dpad := DpadChoice[Abtn] 
Bbtn_pri_dpad := DpadChoice[Bbtn] 
Xbtn_pri_dpad := DpadChoice[Xbtn] 
Ybtn_pri_dpad := DpadChoice[Ybtn] 
Startbtn_pri_dpad := DpadChoice[Startbtn] 

; ======================
; || Grips | Triggers ||
; ======================
LGrip_pri_dpad := DpadChoice[LGrip] 
RGrip_pri_dpad := DpadChoice[RGrip] 

LTrig_pri_dpad := DpadChoice[LTrig] 
RTrig_pri_dpad := DpadChoice[RTrig] 

; ================
; || Left Stick ||
; ================
if LSup in %Dpadlist%
  LSup_pri_dpad := DpadChoice[LSup] 
else 
  LSup_pri_dpad := "None"

if LSrht in %Dpadlist%
  LSrht_pri_dpad := DpadChoice[LSrht] 
else  
  LSrht_pri_dpad := "None"

if LSdwn in %Dpadlist%
  LSdwn_pri_dpad := DpadChoice[LSdwn] 
else 
  LSdwn_pri_dpad := "None"

if LSlft in %Dpadlist%
  LSlft_pri_dpad := DpadChoice[LSlft] 
else
  LSlft_pri_dpad := "None"

if LSul in %Dpadlist%
  LSul_pri_dpad := DpadChoice[LSul] 
else 
  LSul_pri_dpad := "None"

if  LSur in %Dpadlist%
  LSur_pri_dpad := DpadChoice[LSur] 
else  
  LSur_pri_dpad := "None"

if LSdl in %Dpadlist%
  LSdl_pri_dpad := DpadChoice[LSdl] 
else 
  LSdl_pri_dpad := "None"

if LSdr in %Dpadlist%
  LSdr_pri_dpad := DpadChoice[LSdr] 
else 
  LSdr_pri_dpad := "None"

LSbtn_pri_dpad := DpadChoice[Startbtn] 

; =================
; || Right Stick ||
; =================
if RSup in %Dpadlist%
  RSup_pri_dpad := DpadChoice[RSup] 
else 
  RSup_pri_dpad := "None"

if RSrht in %Dpadlist%
  RSrht_pri_dpad := DpadChoice[RSrht] 
else  
  RSrht_pri_dpad := "None"

if RSdwn in %Dpadlist%
  RSdwn_pri_dpad := DpadChoice[RSdwn] 
else 
  RSdwn_pri_dpad := "None"

if RSlft in %Dpadlist%
  RSlft_pri_dpad := DpadChoice[RSlft] 
else 
  RSlft_pri_dpad := "None"

if RSul in %Dpadlist%
  RSul_pri_dpad := DpadChoice[RSul] 
else
  RSul_pri_dpad := "None"

if RSur in %Dpadlist%
  RSur_pri_dpad := DpadChoice[RSur] 
else  
  RSur_pri_dpad := "None"

if RSdl in %Dpadlist%
  RSdl_pri_dpad := DpadChoice[RSdl] 
else 
  RSdl_pri_dpad := "None"

if RSdr in %Dpadlist%
  RSdr_pri_dpad := DpadChoice[RSdr] 
else 
  RSdr_pri_dpad := "None"

RSbtn_pri_dpad := DpadChoice[RSbtn] 


; ===========================
; :::::::: ALTERNATE ::::::::
; ===========================
; =============
; || Buttons ||
; =============
Abtn_alt_dpad := DpadChoice[Abtn1] 
Bbtn_alt_dpad := DpadChoice[Bbtn1] 
Xbtn_alt_dpad := DpadChoice[Xbtn1] 
Ybtn_alt_dpad := DpadChoice[Ybtn1] 
Startbtn_alt_dpad := DpadChoice[Startbtn1] 

; ======================
; || Grips | Triggers ||
; ======================
LGrip_alt_dpad := DpadChoice[LGrip1] 
RGrip_alt_dpad := DpadChoice[RGrip1] 

LTrig_alt_dpad := DpadChoice[LTrig1] 
RTrig_alt_dpad := DpadChoice[RTrig1] 

; ================
; || Left Stick ||
; ================
if LSup1 in %Dpadlist%
  LSup_alt_dpad := DpadChoice[LSup1] 
else 
  LSup_alt_dpad := "None"

if LSrht1 in %Dpadlist%
  LSrht_alt_dpad := DpadChoice[LSrht1] 
else  
  LSrht_alt_dpad := "None"

if LSdwn1 in %Dpadlist%
  LSdwn_alt_dpad := DpadChoice[LSdwn1] 
else 
  LSdwn_alt_dpad := "None"

if LSlft1 in %Dpadlist%
  LSlft_alt_dpad := DpadChoice[LSlft1] 
else 
  LSlft_alt_dpad := "None"

if LSul1 in %Dpadlist%
  LSul_alt_dpad := DpadChoice[LSul1] 
else 
  LSul_alt_dpad := "None"

if  LSur1 in %Dpadlist%
  LSur_alt_dpad := DpadChoice[LSur1] 
else  
  LSur_alt_dpad := "None"

if LSdl1 in %Dpadlist%
  LSdl_alt_dpad := DpadChoice[LSdl1] 
else 
  LSdl_alt_dpad := "None"

if LSdr1 in %Dpadlist%
  LSdr_alt_dpad := DpadChoice[LSdr1] 
else 
  LSdr_alt_dpad := "None"

LSbtn_alt_dpad := DpadChoice[Startbtn1] 

; =================
; || Right Stick ||
; =================
if RSup1 in %Dpadlist%
  RSup_alt_dpad := DpadChoice[RSup1] 
else 
  RSup_alt_dpad := "None"

if RSrht1 in %Dpadlist%
  RSrht_alt_dpad := DpadChoice[RSrht1] 
else  
  RSrht_alt_dpad := "None"

if RSdwn1 in %Dpadlist%
  RSdwn_alt_dpad := DpadChoice[RSdwn1] 
else 
  RSdwn_alt_dpad := "None"

if RSlft1 in %Dpadlist%
  RSlft_alt_dpad := DpadChoice[RSlft1] 
else 
  RSlft_alt_dpad := "None"

if RSul1 in %Dpadlist%
  RSul_alt_dpad := DpadChoice[RSul1] 
else
  RSul_alt_dpad := "None"

if RSur1 in %Dpadlist%
  RSur_alt_dpad := DpadChoice[RSur1] 
else  
  RSur_alt_dpad := "None"

if RSdl1 in %Dpadlist%
  RSdl_alt_dpad := DpadChoice[RSdl1] 
else 
  RSdl_alt_dpad := "None"

if RSdr1 in %Dpadlist%
  RSdr_alt_dpad := DpadChoice[RSdr1] 
else 
  RSdr_alt_dpad := "None"

RSbtn_alt_dpad := DpadChoice[RSbtn1] 


; ========================
; :::::::: MOTION ::::::::
; ========================
LYawLeft_pri_dpad := DpadChoice[LYawLeft]
LYawRight_pri_dpad := DpadChoice[LYawRight]

LPitchUp_pri_dpad := DpadChoice[LPitchUp]
LPitchDown_pri_dpad := DpadChoice[LPitchDown]

LRollLeft_pri_dpad := DpadChoice[LRollLeft]
LRollRight_pri_dpad := DpadChoice[LRollRight]

RYawLeft_pri_dpad := DpadChoice[RYawLeft]
RYawRight_pri_dpad := DpadChoice[RYawRight]

RPitchUp_pri_dpad := DpadChoice[RPitchUp]
RPitchDown_pri_dpad := DpadChoice[RPitchDown]

RRollLeft_pri_dpad := DpadChoice[RRollLeft]
RRollRight_pri_dpad := DpadChoice[RRollRight]
