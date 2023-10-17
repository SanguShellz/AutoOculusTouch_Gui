; ========================================
; :::::::: JOYSTICK: Primary Left ::::::::
; ========================================
; ========================
; || Pri: L.Joystick Up || 
; ========================
LSup:
  gui,submit,nohide
  if (LSup = "LS-Y") {
    GuiControl,Choose,LSdwn,|2
    gosub, LSud-Sub
  } else if (LSup = "RS-Y") {
    GuiControl,Choose,LSdwn,|3
    gosub, LSud-Sub
  } else if (LSup = "MouseY") {
    GuiControl,Choose,LSdwn,|4
    GuiControl,Choose,LSlft,|4
    GuiControl,Choose,LSrht,|4
    sleep,10
  } else if LSup contains %BttnGroup_sel%
      goto, LSup-Sub
    else if (LSup = " ")
      goto, LSup-Sub
    Return
    
LSup-Sub:
  { if LSdwn contains %YGroup_sel%
      GuiControl,Choose,LSdwn,|1
    if LSdwn contains %MGroup_sel% 
    { GuiControl,Choose,LSdwn,|1
      GuiControl,Choose,LSlft,|1
      GuiControl,Choose,LSrht,|1
      sleep,10 
      }} Return
     
; ==========================
; || Pri: L.Joystick Down || 
; ==========================  
LSdwn:
  gui,submit,nohide
  if (LSdwn = "LS-Y") {
    GuiControl,Choose,LSup,|2
    gosub, LSud-Sub
  } else if (LSdwn = "RS-Y") {
    GuiControl,Choose,LSup,|3
    gosub, LSud-Sub
  } else if (LSdwn = "MouseY") {
    GuiControl,Choose,LSup,|4
    GuiControl,Choose,LSlft,|4
    GuiControl,Choose,LSrht,|4
    sleep,10
  } else if LSdwn contains %BttnGroup_sel%
      goto, LSdwn-Sub
    else if (LSdwn = " ")
      goto, LSdwn-Sub
    Return
    
LSdwn-Sub:
  { if LSup contains %YGroup_sel%
      GuiControl,Choose,LSup,|1
    if LSup contains %MGroup_sel% 
    { GuiControl,Choose,LSup,|1
      GuiControl,Choose,LSlft,|1
      GuiControl,Choose,LSrht,|1
      sleep,10 
    }} Return
  
LSud-Sub:
  if (LSlft = "MouseX") {
    GuiControl,Choose,LSlft,|1
    GuiControl,Choose,LSrht,|1
    } Return
  
; ==========================
; || Pri: L.Joystick Left || 
; ==========================  
LSlft:
  gui,submit,nohide
  if (LSlft = "LS-X") {
    GuiControl,Choose,LSrht,|2
    gosub, LSlr-Sub
  } else if (LSlft = "RS-X") {
    GuiControl,Choose,LSrht,|3
    gosub, LSlr-Sub
  } else if (LSlft = "MouseX") {
    GuiControl,Choose,LSup,|4
    GuiControl,Choose,LSdwn,|4
    GuiControl,Choose,LSrht,|4
    sleep,10
  } else if LSlft contains %BttnGroup_sel%
      goto, LSlft-Sub
    else if (LSlft = " ")
      goto, LSlft-Sub
    Return
    
LSlft-Sub:
  { if LSrht contains %XGroup_sel%
      GuiControl,Choose,LSrht,|1
    if LSrht contains %MGroup_sel% 
    { GuiControl,Choose,LSup,|1
      GuiControl,Choose,LSdwn,|1
      GuiControl,Choose,LSrht,|1
      sleep,10 
      }} Return
 
; ===========================
; || Pri: L.Joystick Right || 
; =========================== 
LSrht:
  gui,submit,nohide
  if (LSrht = "LS-X") {
    GuiControl,Choose,LSlft,|2
    gosub, LSlr-Sub
  } else if (LSrht = "RS-X") {
    GuiControl,Choose,LSlft,|3
    gosub, LSlr-Sub
  } else if (LSrht = "MouseX") {
    GuiControl,Choose,LSup,|4
    GuiControl,Choose,LSdwn,|4
    GuiControl,Choose,LSlft,|4
    sleep,10
  } else if LSrht contains %BttnGroup_sel%
      goto, LSrht-Sub
    else if (LSrht = " ")
      goto, LSrht-Sub
    Return
    
LSrht-Sub:
  { if LSlft contains %XGroup_sel%
      GuiControl,Choose,LSlft,|1
    if LSlft contains %MGroup_sel% 
    { GuiControl,Choose,LSup,|1
      GuiControl,Choose,LSdwn,|1
      GuiControl,Choose,LSlft,|1
      sleep,10 
      }} Return
    
LSlr-Sub:
  if (LSup = "MouseY") {
    GuiControl,Choose,LSup,|1
    GuiControl,Choose,LSdwn,|1
    } Return
    

; =========================================
; :::::::: JOYSTICK: Primary Right ::::::::
; =========================================
; ========================
; || Pri: R.Joystick Up || 
; ========================
RSup:
  gui,submit,nohide
  if (RSup = "LS-Y") {
    GuiControl,Choose,RSdwn,|2
    gosub, RS-ud-Sub
  } else if (RSup = "RS-Y") {
    GuiControl,Choose,RSdwn,|3
    gosub, RS-ud-Sub
  } else if (RSup = "MouseY") {
    GuiControl,Choose,RSdwn,|4
    GuiControl,Choose,RSlft,|4
    GuiControl,Choose,RSrht,|4
    sleep,10
  } else if RSup contains %BttnGroup_sel%
      goto, RSup-Sub
    else if (RSup = " ")
      goto, RSup-Sub
    Return
    
RSup-Sub:
  { if RSdwn contains %YGroup_sel%
      GuiControl,Choose,RSdwn,|1
    if RSdwn contains %MGroup_sel% 
    { GuiControl,Choose,RSdwn,|1
      GuiControl,Choose,RSlft,|1
      GuiControl,Choose,RSrht,|1
      sleep,10 
      }} Return
  
; ==========================
; || Pri: R.Joystick Down || 
; ==========================
RSdwn:
  gui,submit,nohide
  if (RSdwn = "LS-Y") {
    GuiControl,Choose,RSup,|2
    gosub, RS-ud-Sub
  } else if (RSdwn = "RS-Y") {
    GuiControl,Choose,RSup,|3
    gosub, RS-ud-Sub
  } else if (RSdwn = "MouseY") {
    GuiControl,Choose,RSup,|4
    GuiControl,Choose,RSlft,|4
    GuiControl,Choose,RSrht,|4
    sleep,10
  } else if RSdwn contains %BttnGroup_sel%
      goto, RSdwn-Sub
    else if (RSdwn = " ")
      goto, RSdwn-Sub
    Return

RSdwn-Sub:
  {  if RSup contains %YGroup_sel%
      GuiControl,Choose,RSup,|1
    if RSup contains %MGroup_sel% 
    { GuiControl,Choose,RSup,|1
      GuiControl,Choose,RSlft,|1
      GuiControl,Choose,RSrht,|1
      sleep,10 
    }} Return
  
RS-ud-Sub:
  if (RSlft = "MouseX") {
    GuiControl,Choose,RSlft,|1
    GuiControl,Choose,RSrht,|1
    sleep,10
    } Return
  
; ==========================
; || Pri: R.Joystick Left || 
; ==========================  
RSlft:
  gui,submit,nohide
  if (RSlft = "LS-X") {
    GuiControl,Choose,RSrht,|2
    gosub, RSlr-Sub
  } else if (RSlft = "RS-X") {
    GuiControl,Choose,RSrht,|3
    gosub, RSlr-Sub
  } else if (RSlft = "MouseX") {
    GuiControl,Choose,RSup,|4
    GuiControl,Choose,RSdwn,|4
    GuiControl,Choose,RSrht,|4
    sleep,10
  } else if RSlft contains %BttnGroup_sel%
      goto, RSlft-Sub
    else if (RSlft = " ")
      goto, RSlft-Sub
    Return
    
RSlft-Sub:
  { if RSrht contains %XGroup_sel%
      GuiControl,Choose,RSrht,|1
    if RSrht contains %MGroup_sel% 
    { GuiControl,Choose,RSup,|1
      GuiControl,Choose,RSdwn,|1
      GuiControl,Choose,RSrht,|1
      sleep,10 
      }} Return
  
; ===========================
; || Pri: R.Joystick Right || 
; =========================== 
RSrht:
  gui,submit,nohide
  if (RSrht = "LS-X") {
    GuiControl,Choose,RSlft,|2
    gosub, RSlr-Sub
  } else if (RSrht = "RS-X") {
    GuiControl,Choose,RSlft,|3
    gosub, RSlr-Sub
  } else if (RSrht = "MouseX") {
    GuiControl,Choose,RSup,|4
    GuiControl,Choose,RSdwn,|4
    GuiControl,Choose,RSlft,|4
    sleep,10
  } else if RSrht contains %BttnGroup_sel%
      goto, RSrht-Sub
    else if (RSrht = " ")
      goto, RSrht-Sub
    Return

RSrht-Sub:
  { if RSlft contains %XGroup_sel%
      GuiControl,Choose,RSlft,|1
    if RSlft contains %MGroup_sel% 
    { GuiControl,Choose,RSup,|1
      GuiControl,Choose,RSdwn,|1
      GuiControl,Choose,RSlft,|1
      sleep,10 
      }} Return
  
RSlr-Sub:
  if (RSup = "MouseY") {
    GuiControl,Choose,RSup,|1
    GuiControl,Choose,RSdwn,|1
    } Return  
    
      
; ==========================================
; :::::::: JOYSTICK: Alternate Left ::::::::
; ==========================================
; ========================
; || Alt: L.Joystick Up || 
; ========================
LSup1:
  gui,submit,nohide
  if (LSup1 = "LS-Y") {
    GuiControl,Choose,LSdwn1,|2
    gosub, LSud1-Sub
  } else if (LSup1 = "RS-Y") {
    GuiControl,Choose,LSdwn1,|3
    gosub, LSud1-Sub
  } else if (LSup1 = "MouseY") {
    GuiControl,Choose,LSdwn1,|4
    GuiControl,Choose,LSlft1,|4
    GuiControl,Choose,LSrht1,|4
    sleep,10
  } else if LSup1 contains %BttnGroup_sel%
      goto, LSup1-Sub
    else if (LSup1 = " ")
      goto, LSup1-Sub
    Return
    
LSup1-Sub:
  { if LSdwn1 contains %YGroup_sel%
      GuiControl,Choose,LSdwn1,|1
    if LSdwn1 contains %MGroup_sel% 
    { GuiControl,Choose,LSdwn1,|1
      GuiControl,Choose,LSlft1,|1
      GuiControl,Choose,LSrht1,|1
      sleep,10 
      }} Return
     
; ==========================
; || Alt: L.Joystick Down || 
; ==========================  
LSdwn1:
  gui,submit,nohide
  if (LSdwn1 = "LS-Y") {
    GuiControl,Choose,LSup1,|2
    gosub, LSud1-Sub
  } else if (LSdwn1 = "RS-Y") {
    GuiControl,Choose,LSup1,|3
    gosub, LSud1-Sub
  } else if (LSdwn1 = "MouseY") {
    GuiControl,Choose,LSup1,|4
    GuiControl,Choose,LSlft1,|4
    GuiControl,Choose,LSrht1,|4
    sleep,10
  } else if LSdwn1 contains %BttnGroup_sel%
      goto, LSdwn1-Sub
    else if (LSdwn1 = " ")
      goto, LSdwn1-Sub
    Return
    
LSdwn1-Sub:
  { if LSup1 contains %YGroup_sel%
      GuiControl,Choose,LSup1,|1
    if LSup1 contains %MGroup_sel% 
    { GuiControl,Choose,LSup1,|1
      GuiControl,Choose,LSlft1,|1
      GuiControl,Choose,LSrht1,|1
      sleep,10 
    }} Return
  
LSud1-Sub:
  if (LSlft1 = "MouseX") {
    GuiControl,Choose,LSlft1,|1
    GuiControl,Choose,LSrht1,|1
    } Return
  
; ==========================
; || Alt: L.Joystick Left || 
; ==========================  
LSlft1:
  gui,submit,nohide
  if (LSlft1 = "LS-X") {
    GuiControl,Choose,LSrht1,|2
    gosub, LSlr1-Sub
  } else if (LSlft1 = "RS-X") {
    GuiControl,Choose,LSrht1,|3
    gosub, LSlr1-Sub
  } else if (LSlft1 = "MouseX") {
    GuiControl,Choose,LSup1,|4
    GuiControl,Choose,LSdwn1,|4
    GuiControl,Choose,LSrht1,|4
    sleep,10
  } else if LSlft1 contains %BttnGroup_sel%
      goto, LSlft1-Sub
    else if (LSlft1 = " ")
      goto, LSlft1-Sub
    Return
    
LSlft1-Sub:
  { if LSrht1 contains %XGroup_sel%
      GuiControl,Choose,LSrht1,|1
    if LSrht1 contains %MGroup_sel% 
    { GuiControl,Choose,LSup1,|1
      GuiControl,Choose,LSdwn1,|1
      GuiControl,Choose,LSrht1,|1
      sleep,10 
      }} Return
 
; ===========================
; || Alt: L.Joystick Right || 
; =========================== 
LSrht1:
  gui,submit,nohide
  if (LSrht1 = "LS-X") {
    GuiControl,Choose,LSlft1,|2
    gosub, LSlr1-Sub
  } else if (LSrht1 = "RS-X") {
    GuiControl,Choose,LSlft1,|3
    gosub, LSlr1-Sub
  } else if (LSrht1 = "MouseX") {
    GuiControl,Choose,LSup1,|4
    GuiControl,Choose,LSdwn1,|4
    GuiControl,Choose,LSlft1,|4
    sleep,10
  } else if LSrht1 contains %BttnGroup_sel%
      goto, LSrht1-Sub
    else if (LSrht1 = " ")
      goto, LSrht1-Sub
    Return
    
LSrht1-Sub:
  { if LSlft1 contains %XGroup_sel%
      GuiControl,Choose,LSlft1,|1
    if LSlft1 contains %MGroup_sel% 
    { GuiControl,Choose,LSup1,|1
      GuiControl,Choose,LSdwn1,|1
      GuiControl,Choose,LSlft1,|1
      sleep,10 
      }} Return
    
LSlr1-Sub:
  if (LSup1 = "MouseY") {
    GuiControl,Choose,LSup1,|1
    GuiControl,Choose,LSdwn1,|1
    } Return
    

; ===========================================
; :::::::: JOYSTICK: Alternate Right ::::::::
; ===========================================
; ========================
; || Alt: R.Joystick Up || 
; ========================
RSup1:
  gui,submit,nohide
  if (RSup1 = "LS-Y") {
    GuiControl,Choose,RSdwn1,|2
    gosub, RS-ud1-Sub
  } else if (RSup1 = "RS-Y") {
    GuiControl,Choose,RSdwn1,|3
    gosub, RS-ud1-Sub
  } else if (RSup1 = "MouseY") {
    GuiControl,Choose,RSdwn1,|4
    GuiControl,Choose,RSlft1,|4
    GuiControl,Choose,RSrht1,|4
    sleep,10
  } else if RSup1 contains %BttnGroup_sel%
      goto, RSup1-Sub
    else if (RSup1 = " ")
      goto, RSup1-Sub
    Return
    
RSup1-Sub:
  { if RSdwn1 contains %YGroup_sel%
      GuiControl,Choose,RSdwn1,|1
    if RSdwn1 contains %MGroup_sel% 
    { GuiControl,Choose,RSdwn1,|1
      GuiControl,Choose,RSlft1,|1
      GuiControl,Choose,RSrht1,|1
      sleep,10 
      }} Return
  
; ==========================
; || Alt: R.Joystick Down || 
; ==========================
RSdwn1:
  gui,submit,nohide
  if (RSdwn1 = "LS-Y") {
    GuiControl,Choose,RSup1,|2
    gosub, RS-ud1-Sub
  } else if (RSdwn1 = "RS-Y") {
    GuiControl,Choose,RSup1,|3
    gosub, RS-ud1-Sub
  } else if (RSdwn1 = "MouseY") {
    GuiControl,Choose,RSup1,|4
    GuiControl,Choose,RSlft1,|4
    GuiControl,Choose,RSrht1,|4
    sleep,10
  } else if RSdwn1 contains %BttnGroup_sel%
      goto, RSdwn1-Sub
    else if (RSdwn1 = " ")
      goto, RSdwn1-Sub
    Return

RSdwn1-Sub:
  {  if RSup1 contains %YGroup_sel%
      GuiControl,Choose,RSup1,|1
    if RSup1 contains %MGroup_sel% 
    { GuiControl,Choose,RSup1,|1
      GuiControl,Choose,RSlft1,|1
      GuiControl,Choose,RSrht1,|1
      sleep,10 
    }} Return
  
RS-ud1-Sub:
  if (RSlft1 = "MouseX") {
    GuiControl,Choose,RSlft1,|1
    GuiControl,Choose,RSrht1,|1
    sleep,10
    } Return
  
; ==========================
; || Alt: R.Joystick Left || 
; ==========================  
RSlft1:
  gui,submit,nohide
  if (RSlft1 = "LS-X") {
    GuiControl,Choose,RSrht1,|2
    gosub, RSlr1-Sub
  } else if (RSlft1 = "RS-X") {
    GuiControl,Choose,RSrht1,|3
    gosub, RSlr1-Sub
  } else if (RSlft1 = "MouseX") {
    GuiControl,Choose,RSup1,|4
    GuiControl,Choose,RSdwn1,|4
    GuiControl,Choose,RSrht1,|4
    sleep,10
  } else if RSlft1 contains %BttnGroup_sel%
      goto, RSlft1-Sub
    else if (RSlft1 = " ")
      goto, RSlft1-Sub
    Return
    
RSlft1-Sub:
  { if RSrht1 contains %XGroup_sel%
      GuiControl,Choose,RSrht1,|1
    if RSrht1 contains %MGroup_sel% 
    { GuiControl,Choose,RSup1,|1
      GuiControl,Choose,RSdwn1,|1
      GuiControl,Choose,RSrht1,|1
      sleep,10 
      }} Return
  
; ===========================
; || Alt: R.Joystick Right || 
; =========================== 
RSrht1:
  gui,submit,nohide
  if (RSrht1 = "LS-X") {
    GuiControl,Choose,RSlft1,|2
    gosub, RSlr1-Sub
  } else if (RSrht1 = "RS-X") {
    GuiControl,Choose,RSlft1,|3
    gosub, RSlr1-Sub
  } else if (RSrht1 = "MouseX") {
    GuiControl,Choose,RSup1,|4
    GuiControl,Choose,RSdwn1,|4
    GuiControl,Choose,RSlft1,|4
    sleep,10
  } else if RSrht1 contains %BttnGroup_sel%
      goto, RSrht1-Sub
    else if (RSrht1 = " ")
      goto, RSrht1-Sub
    Return

RSrht1-Sub:
  { if RSlft1 contains %XGroup_sel%
      GuiControl,Choose,RSlft1,|1
    if RSlft1 contains %MGroup_sel% 
    { GuiControl,Choose,RSup1,|1
      GuiControl,Choose,RSdwn1,|1
      GuiControl,Choose,RSlft1,|1
      sleep,10 
      }} Return
  
RSlr1-Sub:
  if (RSup1 = "MouseY") {
    GuiControl,Choose,RSup1,|1
    GuiControl,Choose,RSdwn1,|1
    } Return  
    
   
; ===================================
; :::::::: MOTION: Left Hand ::::::::
; ===================================
; ========================
; || L.Hand: Pitch Down ||
; ========================
LPitchUp:
  gui,submit,nohide
  if (LPitchUp = "LS-Y") {
    GuiControl,Choose,LPitchDown,|2
    gosub, LPitch-Sub 
  } else if (LPitchUp = "inv_LS-Y") {
    GuiControl,Choose,LPitchDown,|3
    gosub, LPitch-Sub 
  } else if (LPitchUp = "RS-Y") {
    GuiControl,Choose,LPitchDown,|4
    gosub, LPitch-Sub 
  } else if (LPitchUp = "MouseY") {
    GuiControl,Choose,LPitchDown,|5
    GuiControl,Choose,LYawLeft,|4
    GuiControl,Choose,LYawRight,|4
    GuiControl,Choose,LRollLeft,|1
    GuiControl,Choose,LRollRight,|1
    sleep,10
    } else if LPitchUp contains %BttnGroup_sel% 
        gosub, LPitchUp-Sub   
      else if (LPitchUp = " ")
        gosub, LPitchUp-Sub   
      Return 
    
LPitchUp-Sub:
  { if LPitchDown contains %YGroup_sel%
      GuiControl,Choose,LPitchDown,|1
    if LPitchDown contains %MGroup_sel% 
    { GuiControl,Choose,LPitchDown,|1
      GuiControl,Choose,LYawLeft,|1
      GuiControl,Choose,LYawRight,|1
      sleep,10 
      }} Return
 
; ======================
; || L.Hand: Pitch Up ||
; ======================
LPitchDown:
  gui,submit,nohide
  if (LPitchDown = "LS-Y") {
    GuiControl,Choose,LPitchUp,|2
    gosub, LPitch-Sub 
  } else if (LPitchDown = "inv_LS-Y") {
    GuiControl,Choose,LPitchUp,|3
    gosub, LPitch-Sub 
  } else if (LPitchDown = "RS-Y") {
    GuiControl,Choose,LPitchUp,|4
    gosub, LPitch-Sub 
  } else if (LPitchDown = "MouseY") {
    GuiControl,Choose,LPitchUp,|5
    GuiControl,Choose,LYawLeft,|4
    GuiControl,Choose,LYawRight,|4
    GuiControl,Choose,LRollLeft,|1
    GuiControl,Choose,LRollRight,|1
    sleep,10
  } else if LPitchDown contains %BttnGroup_sel% 
      gosub, LPitchDown-Sub   
    else if (LPitchDown = " ")
      gosub, LPitchDown-Sub   
    Return 
  
LPitchDown-Sub:
  { if LPitchUp contains %YGroup_sel%
      GuiControl,Choose,LPitchUp,|1
    if LPitchUp contains %MGroup_sel% 
    { GuiControl,Choose,LPitchup,|1
      GuiControl,Choose,LYawLeft,|1
      GuiControl,Choose,LYawRight,|1
      sleep,10 
      }} Return
    
LPitch-Sub:
  if (LYawLeft = "MouseX") {
    GuiControl,Choose,LYawLeft,|1
    GuiControl,Choose,LYawRight,|1
    }  Return
 
; ======================
; || L.Hand: Yaw Left ||
; ======================
LYawLeft:
  gui,submit,nohide
  if (LYawLeft = "LS-X") {
    GuiControl,Choose,LYawRight,|2
    gosub, LYaw-Sub 
  } else if (LYawLeft = "RS-X") {
    GuiControl,Choose,LYawRight,|3
    gosub, LYaw-Sub
  } else if (LYawLeft = "MouseX") {
    GuiControl,Choose,LPitchUp,|5
    GuiControl,Choose,LPitchDown,|5
    GuiControl,Choose,LYawRight,|4
    GuiControl,Choose,LRollLeft,|1
    GuiControl,Choose,LRollRight,|1
    sleep,10
  } else if LYawLeft contains %BttnGroup_sel% 
      gosub, LYawLeft-Sub   
    else if (LYawLeft = " ")
      gosub, LYawLeft-Sub   
    Return 
    
LYawLeft-Sub:
  { if LYawRight contains %XGroup_sel%
      GuiControl,Choose,LYawRight,|1
    if LYawRight contains %MGroup_sel% 
    { GuiControl,Choose,LPitchUp,|1
      GuiControl,Choose,LPitchDown,|1
      GuiControl,Choose,LYawRight,|1
      sleep,10 
      }} Return

; =======================
; || L.Hand: Yaw Right ||
; =======================
LYawRight:
  gui,submit,nohide
  if (LYawRight = "LS-X") {
    GuiControl,Choose,LYawLeft,|2
    gosub, LYaw-Sub 
    } else if (LYawRight = "RS-X") {
    GuiControl,Choose,LYawLeft,|3
    gosub, LYaw-Sub 
    } else if (LYawRight = "MouseX") {
    GuiControl,Choose,LPitchUp,|5
    GuiControl,Choose,LPitchDown,|5
    GuiControl,Choose,LYawLeft,|4
    GuiControl,Choose,LRollLeft,|1
    GuiControl,Choose,LRollRight,|1
    sleep,10
    } else if LYawRight contains %BttnGroup_sel% 
        gosub, LYawRight-Sub   
      else if (LYawRight = " ")
        gosub, LYawRight-Sub   
      Return 
    
LYawRight-Sub:
  { if LYawLeft contains %XGroup_sel%
      GuiControl,Choose,LYawLeft,|1
    if LYawLeft contains %MGroup_sel% 
    { GuiControl,Choose,LPitchUp,|1
      GuiControl,Choose,LPitchDown,|1
      GuiControl,Choose,LYawLeft,|1
      sleep,10 
      }} Return
    
 LYaw-Sub:
 { if (LPitchUp = "MouseY") {
   GuiControl,Choose,LPitchUp,|1
   GuiControl,Choose,LPitchDown,|1
   } 
 if LRollLeft contains %XGroup_sel%
 { GuiControl,Choose,LRollLeft,|1
   GuiControl,Choose,LRollRight,|1
   }} Return
 
; =======================
; || L.Hand: Roll Left ||
; =======================
LRollLeft:
  gui,submit,nohide
  if (LRollLeft = "LS-X") {
    GuiControl,Choose,LRollRight,|2
    gosub, LRoll-Sub
  } else if (LRollLeft = "RS-X") {
    GuiControl,Choose,LRollRight,|3
    gosub, LRoll-Sub  
  } else if LRollLeft contains %BttnGroup_sel%
      gosub, LRollLeft-Sub
    else if (LRollLeft = " ")
      gosub, LRollLeft-Sub
    Return
  
LRollLeft-Sub: 
  if LRollRight contains %XGroup_sel%
    GuiControl,Choose,LRollRight,|1
    Return
    
; =======================
; || L.Hand: Roll Right ||
; ======================= 
LRollRight:
  gui,submit,nohide
  if (LRollRight = "LS-X") {
    GuiControl,Choose,LRollLeft,|2
    gosub, LRoll-Sub
  } else if (LRollRight = "RS-X") {
    GuiControl,Choose,LRollLeft,|3 
    gosub, LRoll-Sub
  } else if LRollRight contains %BttnGroup_sel%
      gosub, LRollRight-Sub
    else if LRollRight = " "
      gosub, LRollRight-Sub
    Return
    
LRollRight-Sub:  
  if LRollLeft contains %XGroup_sel%
    GuiControl,Choose,LRollLeft,|1
    Return
    
LRoll-Sub:
{ if LYawLeft contains %XGroup_sel% 
  { GuiControl,Choose,LYawLeft,|1
    GuiControl,Choose,LYawRight,|1
    }
  if LPitchUp contains %MGroup_sel% 
  { GuiControl,Choose,LPitchUp,|1
    GuiControl,Choose,LPitchDown,|1
    GuiControl,Choose,LYawLeft,|1
    GuiControl,Choose,LYawRight,|1
    }} Return
    
      
; ====================================
; :::::::: MOTION: Right hand ::::::::
; ====================================   
; ======================
; || R.Hand: Pitch Up ||
; ======================
RPitchUp:
  gui,submit,nohide
  if (RPitchUp = "LS-Y") {
    GuiControl,Choose,RPitchDown,|2
    gosub, RPitch-Sub 
  } else if (RPitchUp = "inv_LS-Y") {
    GuiControl,Choose,RPitchDown,|3
    gosub, RPitch-Sub 
  } else if (RPitchUp = "RS-Y") {
    GuiControl,Choose,RPitchDown,|4
    gosub, RPitch-Sub 
  } else if (RPitchUp = "MouseY") {
    GuiControl,Choose,RPitchDown,|5
    GuiControl,Choose,RYawLeft,|4
    GuiControl,Choose,RYawRight,|4
    GuiControl,Choose,RRollLeft,|1
    GuiControl,Choose,RRollRight,|1
    sleep,10
    } else if RPitchUp contains %BttnGroup_sel% 
        gosub, RPitchUp-Sub   
      else if (RPitchUp = " ")
        gosub, RPitchUp-Sub   
        Return 
    
RPitchUp-Sub:
  { if RPitchDown contains %YGroup_sel%
      GuiControl,Choose,RPitchDown,|1
    if RPitchDown contains %MGroup_sel% 
    { GuiControl,Choose,RPitchDown,|1
      GuiControl,Choose,RYawLeft,|1
      GuiControl,Choose,RYawRight,|1
      sleep,10 
      }} Return
 
 ; =======================
; || R.Hand: Pitch Down ||
; ========================
RPitchDown:
  gui,submit,nohide
  if (RPitchDown = "LS-Y") {
    GuiControl,Choose,RPitchUp,|2
    gosub, RPitch-Sub 
  } else if (RPitchDown = "inv_LS-Y") {
    GuiControl,Choose,RPitchUp,|3
    gosub, RPitch-Sub 
  } else if (RPitchDown = "RS-Y") {
    GuiControl,Choose,RPitchUp,|4
    gosub, RPitch-Sub 
  } else if (RPitchDown = "MouseY") {
    GuiControl,Choose,RPitchUp,|5
    GuiControl,Choose,RYawLeft,|4
    GuiControl,Choose,RYawRight,|4
    GuiControl,Choose,RRollLeft,|1
    GuiControl,Choose,RRollRight,|1
    sleep,10
    } else if RPitchDown contains %BttnGroup_sel% 
        gosub, RPitchDown-Sub   
      else if (RPitchDown = " ")
        gosub, RPitchDown-Sub   
      Return 
    
RPitchDown-Sub:
{ if RPitchUp contains %YGroup_sel%
    GuiControl,Choose,RPitchUp,|1
  if RPitchUp contains %MGroup_sel% 
  { GuiControl,Choose,RPitchup,|1
    GuiControl,Choose,RYawLeft,|1
    GuiControl,Choose,RYawRight,|1
    sleep,10 
    }} Return
      
 RPitch-Sub:
  if (RYawLeft = "MouseX") {
    GuiControl,Choose,RYawLeft,|1
    GuiControl,Choose,RYawRight,|1
    } Return  
    
; ======================
; || R.Hand: Yaw Left ||
; ======================
RYawLeft:
  gui,submit,nohide
  if (RYawLeft = "LS-X") {
    GuiControl,Choose,RYawRight,|2
    gosub, RYaw-Sub 
  } else if (RYawLeft = "RS-X") {
    GuiControl,Choose,RYawRight,|3
    gosub, RYaw-Sub 
  } else if (RYawLeft = "MouseX") {
    GuiControl,Choose,RPitchUp,|5
    GuiControl,Choose,RPitchDown,|5
    GuiControl,Choose,RYawRight,|4
    GuiControl,Choose,RRollLeft,|1
    GuiControl,Choose,RRollRight,|1
    sleep,10
  } else if RYawLeft contains %BttnGroup_sel% 
      gosub, RYawLeft-Sub   
    else if (RYawLeft = " ")
      gosub, RYawLeft-Sub   
    Return 
    
RYawLeft-Sub:
  { if RYawRight contains %XGroup_sel%
      GuiControl,Choose,RYawRight,|1
    if RYawRight contains %MGroup_sel% 
    { GuiControl,Choose,RPitchUp,|1
      GuiControl,Choose,RPitchDown,|1
      GuiControl,Choose,RYawRight,|1
      sleep,10 
      }} Return

RYawRight:
  gui,submit,nohide
  if (RYawRight = "LS-X") {
    GuiControl,Choose,RYawLeft,|2
    gosub, RYaw-Sub 
  } else if (RYawRight = "RS-X") {
    GuiControl,Choose,RYawLeft,|3
    gosub, RYaw-Sub 
  } else if (RYawRight = "MouseX") {
    GuiControl,Choose,RPitchUp,|5
    GuiControl,Choose,RPitchDown,|5
    GuiControl,Choose,RYawLeft,|4
    GuiControl,Choose,RRollLeft,|1
    GuiControl,Choose,RRollRight,|1
    sleep,10
  } else if RYawRight contains %BttnGroup_sel% 
      gosub, RYawRight-Sub   
    else if (RYawRight = " ")
      gosub, RYawRight-Sub   
      Return 
    
RYawRight-Sub:
  { if RYawLeft contains %XGroup_sel%
      GuiControl,Choose,RYawLeft,|1
    if RYawLeft contains %MGroup_sel% 
    { GuiControl,Choose,RPitchUp,|1
      GuiControl,Choose,RPitchDown,|1
      GuiControl,Choose,RYawLeft,|1
      sleep,10 
      }} Return
    
 RYaw-Sub:
  if (RPitchUp = "MouseY") {
    GuiControl,Choose,RPitchUp,|1
    GuiControl,Choose,RPitchDown,|1
    }
    Return

; =======================
; || R.Hand: Roll Left ||
; =======================
RRollLeft:
  gui,submit,nohide
  if (RRollLeft = "LS-X") {
    GuiControl,Choose,RRollRight,|2
    gosub, RRoll-Sub
  } else if (RRollLeft = "RS-X") {
    GuiControl,Choose,RRollRight,|3
    gosub, RRoll-Sub  
  } else if RRollLeft contains %BttnGroup_sel%
      gosub, RRollLeft-Sub
    else if (RRollLeft = " ")
      gosub, RRollLeft-Sub
    Return
    
RRollLeft-Sub: 
  if RRollRight contains %XGroup_sel%
    GuiControl,Choose,RRollRight,|1
    Return
    
; =======================
; || R.Hand: Roll Right ||
; ======================= 
RRollRight:
  gui,submit,nohide
  if (RRollRight = "LS-X") {
    GuiControl,Choose,RRollLeft,|2
    gosub, RRoll-Sub
  } else if (RRollRight = "RS-X") {
    GuiControl,Choose,RRollLeft,|3 
    gosub, RRoll-Sub
  } else if RRollRight contains %BttnGroup_sel%
      gosub, RRollRight-Sub
    else if RRollRight = " "
      gosub, RRollRight-Sub
    Return
    
RRollRight-Sub:  
  if RRollLeft contains %XGroup_sel%
    GuiControl,Choose,RRollLeft,|1
    Return
    
RRoll-Sub:
{ if RYawLeft contains %XGroup_sel% 
  { GuiControl,Choose,RYawLeft,|1
    GuiControl,Choose,RYawRight,|1
    }
  if LPitchUp contains %MGroup_sel% 
  { GuiControl,Choose,RPitchUp,|1
    GuiControl,Choose,RPitchDown,|1
    GuiControl,Choose,RYawLeft,|1
    GuiControl,Choose,RYawRight,|1
    }} Return