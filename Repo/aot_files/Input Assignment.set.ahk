truelist := "A,B,X,Y,Circle,Cross,Square,Triangle,L1-Button,L2-Button,R1-Button,R2-Button,LShoulder,RShoulder,LS-Button,RS-Button,Start,Xbox,Options,Share,Touch,PS-Button" 
triglist := "LTrigger,RTrigger"

; =========================
; :::::::: PRIMARY ::::::::
; =========================
; ==============
; || A Button ||
; ==============
if ABtn in %truelist% 
  ABtn_pri_set := "true"

if ABtn in %triglist%
  ABtn_pri_set := 100

; ==============
; || B Button ||
; ==============
if BBtn in %truelist% 
  BBtn_pri_set := "true"
 
if BBtn in %triglist%
  BBtn_pri_set := 100

; ==============
; || X Button ||
; ==============
if XBtn in %truelist% 
  XBtn_pri_set := "true"

if XBtn in %triglist%
  XBtn_pri_set := 100

; ==============
; || Y Button ||
; ==============
if YBtn in %truelist% 
  YBtn_pri_set := "true"

if YBtn in %triglist%
  YBtn_pri_set := 100

; ==================
; || Start Button ||
; ==================
if StartBtn in %truelist% 
  StartBtn_pri_set := "true"

if StartBtn in %triglist%
  StartBtn_pri_set := 100

; ===============
; || left Grip ||
; ===============
if LGrip in %truelist% 
  LGrip_pri_set := "true"

if LGrip in %triglist%
  LGrip_pri_set := 100

; ================
; || Right Grip ||
; ================
if RGrip in %truelist% 
  RGrip_pri_set := "true"

if RGrip in %triglist%
  RGrip_pri_set := 100
  

; ==================
; || left Trigger ||
; ==================
if Ltrig in %truelist% 
  Ltrig_pri_set := "true"

if (ControllerMode = 1){
  " " := Ltrig = "Ltrigger" ? Ltrig_pri_set := GetAxis(AxisIndexTriggerLeft) * 0.38986205
    
  " " := Ltrig = "Rtrigger" ? Ltrig_pri_set := GetAxis(AxisIndexTriggerRight) * 0.38986205 
  }

if !(ControllerMode = 1) {
  " " := Ltrig = "Ltrigger" ? Ltrig_pri_set := GetAxis(AxisIndexTriggerLeft) * 50
    
  " " := Ltrig = "Rtrigger" ? Ltrig_pri_set := GetAxis(AxisIndexTriggerRight) * 50
  }


; ===================
; || Right Trigger ||
; ===================
if Rtrig in %truelist% 
  Rtrig_pri_set := "true"

if (ControllerMode = 1) {
  " " := Rtrig = "Ltrigger" ? Rtrig_pri_set := GetAxis(AxisIndexTriggerLeft) * 0.38986205
    
  " " := Rtrig = "Rtrigger" ? Rtrig_pri_set := GetAxis(AxisIndexTriggerRight) * 0.38986205 
  }

if !(ControllerMode = 1) {
  " " := Rtrig = "Ltrigger" ? Rtrig_pri_set := GetAxis(AxisIndexTriggerLeft) * 50
    
  " " := Rtrig = "Rtrigger" ? Rtrig_pri_set := GetAxis(AxisIndexTriggerRight) * 50
  }

; ===================
; || Left Stick Up ||
; ===================
if LSup in %truelist% 
  LSup_pri_set := "true"

if LSup in %triglist%
  LSup_pri_set := 100

; =====================
; || Left Stick Down ||
; =====================
if LSdwn in %truelist% 
  LSdwn_pri_set := "true"

if LSdwn in %triglist%
  LSdwn_pri_set := 100

; =====================
; || Left Stick Left ||
; =====================
if LSlft in %truelist% 
  LSlft_pri_set := "true"

if LSlft in %triglist%
  LSlft_pri_set := 100

; ======================
; || Left Stick Right ||
; ======================
if LSrht in %truelist% 
  LSrht_pri_set := "true"

if LSrht in %triglist%
  LSrht_pri_set := 100
  
; ========================
; || Left Stick Up Left ||
; ========================
if LSul in %truelist% 
  LSul_pri_set := "true"

if LSul in %triglist%
  LSul_pri_set := 100

; =========================
; || Left Stick Up Right ||
; =========================
if LSur in %truelist% 
  LSur_pri_set := "true"

if LSur in %triglist%
  LSur_pri_set := 100

; ==========================
; || Left Stick Down Left ||
; ==========================
if LSdl in %truelist% 
  LSdl_pri_set := "true"

if LSdl in %triglist%
  LSdl_pri_set := 100

; ===========================
; || Left Stick Down Right ||
; ===========================
if LSdr in %truelist% 
  LSdr_pri_set := "true"

if LSdr in %triglist%
  LSdr_pri_set := 100

; =======================
; || Left Stick Button ||
; =======================
if LSbtn in %100list%
  LSbtn_pri_set := 100

if LSbtn in %truelist% 
  LSbtn_pri_set := "true"

; ====================
; || Right Stick Up ||
; ====================
if RSup in %truelist% 
  RSup_pri_set := "true"

if RSup in %triglist%
  RSup_pri_set := 100

; ======================
; || Right Stick Down ||
; ======================
if RSdwn in %truelist% 
  RSdwn_pri_set := "true"

if RSdwn in %triglist%
  RSdwn_pri_set := 100

; ======================
; || Right Stick Left ||
; ======================
if RSlft in %truelist% 
  RSlft_pri_set := "true"

if RSlft in %triglist%
  RSlft_pri_set := 100

; =======================
; || Right Stick Right ||
; =======================
if RSrht in %truelist% 
  RSrht_pri_set := "true"

if RSrht in %triglist%
  RSrht_pri_set := 100
  
; =========================
; || Right Stick Up Left ||
; =========================
if RSul in %truelist% 
  RSul_pri_set := "true"

if RSul in %triglist%
  RSul_pri_set := 100

; ==========================
; || Right Stick Up Right ||
; ==========================
if RSur in %truelist% 
  RSur_pri_set := "true"

if RSur in %triglist%
  RSur_pri_set := 100

; ===========================
; || Right Stick Down Left ||
; ===========================
if RSdl in %truelist% 
  RSdl_pri_set := "true"

if RSdl in %triglist%
  RSdl_pri_set := 100

; ============================
; || Right Stick Down Right ||
; ============================
if RSdr in %truelist% 
  RSdr_pri_set := "true"

if RSdr in %triglist%
  RSdr_pri_set := 100

; ========================
; || Right Stick Button ||
; ========================
if RSbtn in %truelist% 
  RSbtn_pri_set := "true"

if RSbtn in %triglist%
  RSbtn_pri_set := 100


; ===========================
; :::::::: ALTERNATE ::::::::
; ===========================
; ==============
; || A Button ||
; ==============
if ABtn1 in %truelist% 
  ABtn_alt_set := "true"

if ABtn1 in %triglist%
  ABtn_alt_set := 100

; ==============
; || B Button ||
; ==============
if BBtn1 in %truelist% 
  BBtn_alt_set := "true"
 
if BBtn1 in %triglist%
  BBtn_alt_set := 100

; ==============
; || X Button ||
; ==============
if XBtn1 in %truelist% 
  XBtn_alt_set := "true"

if XBtn1 in %triglist%
  XBtn_alt_set := 100

; ==============
; || Y Button ||
; ==============
if YBtn1 in %truelist% 
  YBtn_alt_set := "true"

if YBtn1 in %triglist%
  YBtn_alt_set := 100

; ==================
; || Start Button ||
; ==================
if StartBtn1 in %truelist% 
  StartBtn_alt_set := "true"

if StartBtn1 in %triglist%
  StartBtn_alt_set := 100

; ===============
; || left Grip ||
; ===============
if LGrip1 in %truelist% 
  LGrip_alt_set := "true"

if LGrip1 in %triglist%
  LGrip_alt_set := 100

; ================
; || Right Grip ||
; ================
if RGrip1 in %truelist% 
  RGrip_alt_set := "true"

if RGrip1 in %triglist%
  RGrip_alt_set := 100
  
; ==================
; || left Trigger ||
; ==================
if Ltrig1 in %truelist% 
  Ltrig_alt_set := "true"

if (ControllerMode = 1) {
  " " := Ltrig1 = "Ltrigger" ? Ltrig_pri_set := GetAxis(AxisIndexTriggerLeft) * 0.38986205
    
  " " := Ltrig1 = "Rtrigger" ? Ltrig_pri_set := GetAxis(AxisIndexTriggerRight) * 0.38986205 
  }
  
if !(ControllerMode = 1) {
  " " := Ltrig1 = "Ltrigger" ? Ltrig_pri_set := GetAxis(AxisIndexTriggerLeft) * 50
    
  " " := Ltrig1 = "Rtrigger" ? Ltrig_pri_set := GetAxis(AxisIndexTriggerRight) * 50
  }

; ===================
; || Right Trigger ||
; ===================
if Rtrig1 in %truelist% 
  Rtrig_alt_set := "true"

if (ControllerMode = 1) {
  " " := Rtrig1 = "Ltrigger" ? Rtrig_pri_set := GetAxis(AxisIndexTriggerLeft) * 0.38986205
    
  " " := Rtrig1 = "Rtrigger" ? Rtrig_pri_set := GetAxis(AxisIndexTriggerRight) * 0.38986205 
  }

if !(ControllerMode = 1) {
  " " := Rtrig1 = "Ltrigger" ? Rtrig_pri_set := GetAxis(AxisIndexTriggerLeft) * 50
    
  " " := Rtrig1 = "Rtrigger" ? Rtrig_pri_set := GetAxis(AxisIndexTriggerRight) * 50
  }

; ===================
; || Left Stick Up ||
; ===================
if LSup1 in %truelist% 
  LSup_alt_set := "true"

if LSup1 in %triglist%
  LSup_alt_set := 100

; =====================
; || Left Stick Down ||
; =====================
if LSdwn1 in %truelist% 
  LSdwn_alt_set := "true"

if LSdwn1 in %triglist%
  LSdwn_alt_set := 100

; =====================
; || Left Stick Left ||
; =====================
if LSlft1 in %truelist% 
  LSlft_alt_set := "true"

if LSlft1 in %triglist%
  LSlft_alt_set := 100

; ======================
; || Left Stick Right ||
; ======================
if LSrht1 in %truelist% 
  LSrht_alt_set := "true"

if LSrht1 in %triglist%
  LSrht_alt_set := 100
  
; ========================
; || Left Stick Up Left ||
; ========================
if LSul1 in %truelist% 
  LSul_alt_set := "true"

if LSul1 in %triglist%
  LSul_alt_set := 100

; =========================
; || Left Stick Up Right ||
; =========================
if LSur1 in %truelist% 
  LSur_alt_set := "true"

if LSur1 in %triglist%
  LSur_alt_set := 100

; ==========================
; || Left Stick Down Left ||
; ==========================
if LSdl1 in %truelist% 
  LSdl_alt_set := "true"
  
if LSdl1 in %triglist%
  LSdl_alt_set := 100

; ===========================
; || Left Stick Down Right ||
; ===========================
if LSdr1 in %truelist% 
  LSdr_alt_set := "true"

if LSdr1 in %triglist%
  LSdr_alt_set := 100

; =======================
; || Left Stick Button ||
; =======================
if LSbtn1 in %100list%
  LSbtn_alt_set := 100

if LSbtn1 in %truelist% 
  LSbtn_alt_set := "true"

; ====================
; || Right Stick Up ||
; ====================
if RSup1 in %truelist% 
  RSup_alt_set := "true"

if RSup1 in %triglist%
  RSup_alt_set := 100

; ======================
; || Right Stick Down ||
; ======================
if RSdwn1 in %truelist% 
  RSdwn_alt_set := "true"

if RSdwn1 in %triglist%
  RSdwn_alt_set := 100

; ======================
; || Right Stick Left ||
; ======================
if RSlft1 in %truelist% 
  RSlft_alt_set := "true"

if RSlft1 in %triglist%
  RSlft_alt_set := 100

; =======================
; || Right Stick Right ||
; =======================
if RSrht1 in %truelist% 
  RSrht_alt_set := "true"

if RSrht1 in %triglist%
  RSrht_alt_set := 100
  
; =========================
; || Right Stick Up Left ||
; =========================
if RSul1 in %truelist% 
  RSul_alt_set := "true"

if RSul1 in %triglist%
  RSul_alt_set := 100

; ==========================
; || Right Stick Up Right ||
; ==========================
if RSur1 in %truelist% 
  RSur_alt_set := "true"

if RSur1 in %triglist%
  RSur_alt_set := 100

; ===========================
; || Right Stick Down Left ||
; ===========================
if RSdl1 in %truelist% 
  RSdl_alt_set := "true"

if RSdl1 in %triglist%
  RSdl_alt_set := 100

; ============================
; || Right Stick Down Right ||
; ============================
if RSdr1 in %truelist% 
  RSdr_alt_set := "true"

if RSdr1 in %triglist%
  RSdr_alt_set := 100

; ========================
; || Right Stick Button ||
; ========================
if RSbtn1 in %truelist% 
  RSbtn_alt_set := "true"

if RSbtn1 in %triglist%
  RSbtn_alt_set := 100


; ========================
; :::::::: MOTION ::::::::
; ========================
; ==============================
; || left Controller Yaw Left ||
; ==============================
if LYawLeft in %truelist% 
  LYawLeft_pri_set := "true"
  
if LYawLeft in %100list%
  LYawLeft_pri_set := 100

if LYawLeft in %0list%
  LYawLeft_pri_set := 0
  
if LYawLeft in %triglist%
  LYawLeft_pri_set := 100

; ===============================
; || left Controller Yaw Right ||
; ===============================
if LYawRight in %truelist% 
  LYawRight_pri_set := "true"
  
if LYawRight in %100list%
  LYawRight_pri_set := 100

if LYawRight in %0list%
  LYawRight_pri_set := 0
  
if LYawRight in %triglist%
  LYawRight_pri_set := 100

; ==============================
; || left Controller Pitch Up ||
; ==============================
if LPitchUp in %truelist% 
  LPitchUp_pri_set := "true"
  
if LPitchUp in %100list%
  LPitchUp_pri_set := 100

if LPitchUp in %0list%
  LPitchUp_pri_set := 0
  
if LPitchUp in %triglist%
  LPitchUp_pri_set := 100

; ================================
; || left Controller Pitch Down ||
; ================================
if LPitchDown in %truelist% 
  LPitchDown_pri_set := "true"
  
if LPitchDown in %100list%
  LPitchDown_pri_set := 100

if LPitchDown in %0list%
  LPitchDown_pri_set := 0
  
if LPitchDown in %triglist%
  LPitchDown_pri_set := 100

; ===============================
; || left Controller Roll Left ||
; ===============================
if LRollLeft in %truelist% 
  LRollLeft_pri_set := "true"
  
if LRollLeft in %100list%
  LRollLeft_pri_set := 100

if LRollLeft in %0list%
  LRollLeft_pri_set := 0
  
if LRollLeft in %triglist%
  LRollLeft_pri_set := 100

; ================================
; || left Controller Roll Right ||
; ================================
if LRollRight in %truelist% 
  LRollRight_pri_set := "true"
  
if LRollRight in %100list%
  LRollRight_pri_set := 100

if LRollRight in %0list%
  LRollRight_pri_set := 0
  
if LRollRight in %triglist%
  LRollRight_pri_set := 100

; ===============================
; || Right Controller Yaw Left ||
; ===============================
if RYawLeft in %truelist% 
  RYawLeft_pri_set := "true"
  
if RYawLeft in %100list%
  RYawLeft_pri_set := 100

if RYawLeft in %0list%
  RYawLeft_pri_set := 0
  
if RYawLeft in %triglist%
  RYawLeft_pri_set := 100

; ================================
; || Right Controller Yaw Right ||
; ================================
if RYawRight in %truelist% 
  RYawRight_pri_set := "true"
  
if RYawRight in %100list%
  RYawRight_pri_set := 100

if RYawRight in %0list%
  RYawRight_pri_set := 0
  
if RYawRight in %triglist%
  RYawRight_pri_set := 100

; ===============================
; || Right Controller Pitch Up ||
; ===============================
if RPitchUp in %truelist% 
  RPitchUp_pri_set := "true"
  
if RPitchUp in %100list%
  RPitchUp_pri_set := 100

if RPitchUp in %0list%
  RPitchUp_pri_set := 0
  
if RPitchUp in %triglist%
  RPitchUp_pri_set := 100

; =================================
; || Right Controller Pitch Down ||
; =================================
if RPitchDown in %truelist% 
  RPitchDown_pri_set := "true"
  
if RPitchDown in %100list%
  RPitchDown_pri_set := 100

if RPitchDown in %0list%
  RPitchDown_pri_set := 0
  
if RPitchDown in %triglist%
  RPitchDown_pri_set := 100

; ================================
; || Right Controller Roll Left ||
; ================================
if RRollLeft in %truelist% 
  RRollLeft_pri_set := "true"
  
if RRollLeft in %100list%
  RRollLeft_pri_set := 100

if RRollLeft in %0list%
  RRollLeft_pri_set := 0
  
if RRollLeft in %triglist%
  RRollLeft_pri_set := 100

; =================================
; || Right Controller Roll Right ||
; =================================
if RRollRight in %truelist% 
  RRollRight_pri_set := "true"
  
if RRollRight in %100list%
  RRollRight_pri_set := 100

if RRollRight in %0list%
  RRollRight_pri_set := 0
  
if RRollRight in %triglist%
  RRollRight_pri_set := 100
  
