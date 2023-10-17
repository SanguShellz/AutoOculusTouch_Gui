#Persistent
#SingleInstance Force
#NoTrayIcon
#NoEnv

Menu, Tray, Icon, gui_files\Images\oculus_dk.ico
                 
OnMessage(0x0200, "WM_MOUSEMOVE")
OnMessage(0x102, "WM_Char")

#Include, gui_files\Profile_Manager\LBEX.ahk
#Include, gui_files\Presets.ahk

IniWrite, 1, %Ini_io%, Settings, GUIState

GUI_1 := "NoActivate w250 AutoSize"
GUI_2 := "w250 AutoSize"
GUI_3 := "w230 Autosize"

; ===============================
; :::::::: GUI.1: INPUT  ::::::::
; ===============================
Settimer, Start_Button_Loop, 800

Gui, 1:Margin, 0, 0
Gui, 1:Color, FFFFFF
Gui, 1:Add, Tab2, x0 y2 w250 h20 AltSubmit vtabset gtabsub, General|LeftStick|RightStick|Motion

Gui, 1:Tab, 1 
Gui, 1:Font, Bold, Verdana, s7.5

Gui, 1:Add, Picture, x0 y20 w250 h20, %InputImage%
Gui, 1:Add, Text, x0 y+2 w250 h1 0x10 Horizontal Line

; =============
; || Buttons ||
; =============
Gui, 1:Add, Text, x0 y+0 w250 h1 0x10 ;Horizontal Line

Gui, 1:Add, Text, Section x10 y+1 w44, Buttons:
Gui, 1:Add, Text, x+9 w80, Primary:
Gui, 1:Add, Text, x+6 w80, Shift Mode:

Gui, 1:Add, Text, x0 y+1 w250 h1 0x10 ;Horizontal Line

Gui, 1:Add, Text, x16 y+4 w44, (A):
Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+12 w80 h60 choose%Abtn_ins% vAbtn, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%Abtn1_ins% vAbtn1, %BttnGroup%

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Text, x16 y+2 w44, (B):

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+12 w80 h60 choose%Bbtn_ins% vBbtn, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%Bbtn1_ins% vBbtn1, %BttnGroup%

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Text, x16 y+2 w44, (X):

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+12 w80 h60 choose%Xbtn_ins% vXbtn, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%Xbtn1_ins% vXbtn1, %BttnGroup%

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Text, x16 y+2 w44, (Y):

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+12 w80 h60 choose%Ybtn_ins% vYbtn, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%Ybtn1_ins% vYbtn1, %BttnGroup%

Gui, 1:Font, Bold, Verdana, s7.3
Gui, 1:Add, Text, x15 y+2 w44, (Start):

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+12 w80 h60 choose%Startbtn_ins% vStartbtn, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%Startbtn1_ins% vStartbtn1, %BttnGroup%

; ==============
; || Triggers || 
; ==============
Gui, 1:Add, Text, x0 y+5 w250 h1 0x10 ;Horizontal Line

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Text, Section x10 y+1 w44, Triggers:

Gui, 1:Add, Text, x+6 w80, Primary:
Gui, 1:Add, Text, x+6 w80, Shift Mode
Gui, 1:Add, Text, x0 y+1 w250 h1 0x10 ;Horizontal Line

Gui, 1:Add, Text, x16 y+3 w44, Left:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+12 w80 h60 choose%LTrig_ins% vLTrig, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LTrig1_ins% vLTrig1, %BttnGroup%

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Text, x16 y+2 w44, Right:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+12 w80 h60 choose%RTrig_ins% vRTrig, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RTrig1_ins% vRTrig1, %BttnGroup%

; ===========
; || Grips ||
; ===========
Gui, 1:Font, Bold, Verdana, s8
Gui, 1:Add, Text, x0 y+5 w250 h1 0x10 ;Horizontal Line
Gui, 1:Add, Text, Section x10 y+1 w44, Grips:

Gui, 1:Add, Text, x+18 w80, Left:
Gui, 1:Add, Text, x+6 w80, Right:
Gui, 1:Add, Text, x0 y+1 w250 h1 0x10 ;Horizontal Line

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, Section x70 y+4 w80 choose%LGrip_ins% vLGrip, %BttnGroup%

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 choose%RGrip_ins% vRGrip, %BttnGroup%

Gui, 1:Add, Text, x0 y+6 w250 h1 0x10 ;Horizontal Line

; ===================
; || Bottom Menu 1 || 
; ===================
Gui, 1:Add, Picture, Section x6 y+5 w25 h25 vController_1 gControllersButton, %ControllerImage%
Controller_1_TT := "Open Windows Controller Settings"

Gui, 1:Add, Picture, x+4 ys+0 w25 h25 vtouch_1 gTouchButton, %TouchImage%
Touch_1_TT := "Test Touch Controllers and Headset"

Gui, 1:Add, Picture, x+6 ys+0 w25 h25 vFolder_1 gFolderButton, %FolderImage%
Folder_1_TT := "Open Auto Oculus Touch Directory"

Gui, 1:Add, Picture, x+4 ys+0 w25 h25 vSettings_1 gSettingsButton, %SettingsImage%
Settings_1_TT := "1:Addtional Settings"

Gui, 1:Add, Picture, Section x+42 ys+0 w25 h25 vStart_1 gStart, %StartImage%
Start_1_TT := "Start Auto Oculus Touch"

Gui, 1:Add, Picture, xs+0 ys+0 w25 h25 vStop_1 gStop, %StopImage%
Stop_1_TT := "Stop Auto Oculus Touch"

Gui, 1:Add, Picture, Section x+4 ys+0 w25 h25 vSave_1 gSaveButton, %SaveImage%
Save_1_TT := "Save Changes"

Gui, 1:Add, Picture, xs+0 ys+0 w25 h25 vSaveAlt_1 gSaveButton, %SaveAltImage%
GuiControl, 1:Hide, SaveAlt_1

Gui, 1:Add, Picture, x+5 ys+0 w21 h25 vExit_1 gExitButton, %ExitImage%
Exit_1_TT := "Close Auto Oculus Touch GUI"

Gui, 1:Add, Text, x0 y+5 w250 h0 0x10 ;Horizontal Line

gosub, tabsub

; ===================================
; ::::::::  GUI.1: JOYSTICKS ::::::::
; ===================================
; ===================
; || Left Joystick || 
; ===================
Gui, 1:Tab, 2
Gui, 1:Font, Bold, Verdana, s7.5

Gui, 1:Add, Picture, x0 y20 w250 h20, %LeftStickImage%
Gui, 1:Add, Text, x0 y+2 w250 h1 0x10 Horizontal Line

Gui, 1:Add, Text, x0 y+0 w250 h1 0x10 ;Horizontal Line
Gui, 1:Add, Text, Section x8 y+1 w44, JoyStick:
Gui, 1:Add, Text, x+7 w80, Primary:
Gui, 1:Add, Text, x+6 w80, Shift Mode:

Gui, 1:Add, Text, x0 y+1 w250 h1 0x10 ;Horizontal Line

Gui, 1:Add, Picture, x10 y+4 w12 h12, %ar_u%
Gui, 1:Add, Text, x+3 w40, LS:U:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSup_ins% vLSup gLSup, %YGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSup1_ins% vLSup1 gLSup1, %YGroup%

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Picture, x10 y+2 w12 h12, %ar_d%
Gui, 1:Add, Text, x+3 w40, LS:D:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSdwn_ins% vLSdwn gLSdwn, %YGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSdwn1_ins% vLSdwn1 gLSdwn1, %YGroup%

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Picture, x10 y+2 w12 h12, %ar_l%
Gui, 1:Add, Text, x+3 w40, LS:L:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSlft_ins% vLSlft gLSlft, %XGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSlft1_ins% vLSlft1 gLSlft1, %XGroup%

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Picture, x10 y+2 w12 h12, %ar_r%
Gui, 1:Add, Text, x+3 w40, LS:R:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSrht_ins% vLSrht gLSrht, %XGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSrht1_ins% vLSrht1 gLSrht1, %XGroup%

Gui, 1:Add, Text, x0 y+4 w250 h1 0x10 ;Horizontal Line

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Picture, x10 y+4 w12 h12, %ar_ul%
Gui, 1:Add, Text, x+3 w40, LS:UL:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSul_ins% vLSul, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSul1_ins% vLSul1, %BttnGroup%

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Picture, x10 y+2 w12 h12, %ar_ur%
Gui, 1:Add, Text, x+3 w40, LS:UR:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSur_ins% vLSur, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSur1_ins% vLSur1, %BttnGroup%

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Picture, x10 y+2 w12 h12, %ar_dl%
Gui, 1:Add, Text, x+3 w40, LS:DL:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSdl_ins% vLSdl, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSdl1_ins% vLSdl1, %BttnGroup%

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Picture, x10 y+2 w12 h12, %ar_dr%
Gui, 1:Add, Text, x+3 w40, LS:DR:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSdr_ins% vLSdr, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSdr1_ins% vLSdr1, %BttnGroup%

Gui, 1:Add, Text, x0 y+4 w250 h1 0x10 ;Horizontal Line

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Text, x25 y+4 w40, LS.Bt:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSbtn_ins% vLSbtn, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%LSbtn1_ins% vLSbtn1, %BttnGroup%

Gui, 1:Add, Text, x0 y+6 w250 h1 0x10 ;Horizontal Line

; ===================
; || Bottom Menu 2 ||
; ===================
Gui, 1:Add, Picture, Section x6 y+5 w25 h25 vController_2 gControllersButton, %ControllerImage%
Controller_2_TT := "Open Windows Controller Settings"

Gui, 1:Add, Picture, x+4 ys+0 w25 h25 vtouch_2 gTouchButton, %TouchImage%
Touch_2_TT := "Test Touch Controllers and Headset"

Gui, 1:Add, Picture, x+6 ys+0 w25 h25 vFolder_2 gFolderButton, %FolderImage%
Folder_2_TT := "Open Auto Oculus Touch Directory"

Gui, 1:Add, Picture, x+4 ys+0 w25 h25 vSettings_2 gSettingsButton, %SettingsImage%
Settings_2_TT := "1:Addtional Settings"

Gui, 1:Add, Picture, Section x+42 ys+0 w25 h25 vStart_2 gStart, %StartImage%
Start_2_TT := "Start Auto Oculus Touch"

Gui, 1:Add, Picture, xs+0 ys+0 w25 h25 vStop_2 gStop, %StopImage%
Stop_2_TT := "Stop Auto Oculus Touch"

Gui, 1:Add, Picture, Section x+4 ys+0 w25 h25 vSave_2 gSaveButton, %SaveImage%
Save_2_TT := "Save Changes"

Gui, 1:Add, Picture, xs+0 ys+0 w25 h25 vSaveAlt_2 gSaveButton, %SaveAltImage%
GuiControl, 1:Hide, SaveAlt_2

Gui, 1:Add, Picture, x+5 ys+0 w21 h25 vExit_2 gExitButton, %ExitImage%
Exit_2_TT := "Close Auto Oculus Touch GUI"

Gui, 1:Add, Text, x0 y+5 w250 h0 0x10 ;Horizontal Line

gosub, tabsub


; ====================
; || Right Joystick || 
; ====================
Gui, 1:Tab, 3
Gui, 1:Font, Bold, Verdana, s7.5

Gui, 1:Add, Picture, x0 y20 w250 h20, %RightStickImage%
Gui, 1:Add, Text, x0 y+2 w250 h1 0x10 Horizontal Line

Gui, 1:Add, Text, x0 y+0 w250 h1 0x10 ;Horizontal Line
Gui, 1:Add, Text, Section x8 y+1 w44, JoyStick:
Gui, 1:Add, Text, x+7 w80, Primary:
Gui, 1:Add, Text, x+6 w80, Shift Mode:

Gui, 1:Add, Text, x0 y+1 w250 h1 0x10 ;Horizontal Line

Gui, 1:Add, Picture, x10 y+4 w12 h12, %ar_u%
Gui, 1:Add, Text, x+3 w40, RS:U:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSup_ins% vRSup gRSup, %YGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSup1_ins% vRSup1 gRSup1, %YGroup%

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Picture, x10 y+2 w12 h12, %ar_d%
Gui, 1:Add, Text, x+3 w40, RS:D:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSdwn_ins% vRSdwn gRSdwn, %YGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSdwn1_ins% vRSdwn1 gRSdwn1, %YGroup%

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Picture, x10 y+2 w12 h12, %ar_l%
Gui, 1:Add, Text, x+3 w40, RS:L:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSlft_ins% vRSlft gRSlft, %XGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSlft1_ins% vRSlft1 gRSlft1, %XGroup%

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Picture, x10 y+2 w12 h12, %ar_r%
Gui, 1:Add, Text, x+3 w40, RS:R:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSrht_ins% vRSrht gRSrht, %XGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSrht1_ins% vRSrht1 gRSrht1, %XGroup%

Gui, 1:Add, Text, x0 y+4 w250 h1 0x10 ;Horizontal Line

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Picture, x10 y+4 w12 h12, %ar_ul%
Gui, 1:Add, Text, x+3 w40, RS:UL:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSul_ins% vRSul, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSul1_ins% vRSul1, %BttnGroup%

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Picture, x10 y+2 w12 h12, %ar_ur%
Gui, 1:Add, Text, x+2 w40, RS:UR:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSur_ins% vRSur, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSur1_ins% vRSur1, %BttnGroup% 

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Picture, x10 y+2 w12 h12, %ar_dl%
Gui, 1:Add, Text, x+3 w40, RS:DL:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSdl_ins% vRSdl, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSdl1_ins% vRSdl1, %BttnGroup%

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Picture, x10 y+2 w12 h12, %ar_dr%
Gui, 1:Add, Text, x+2 w40, RS:DR:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSdr_ins% vRSdr, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSdr1_ins% vRSdr1, %BttnGroup%

Gui, 1:Add, Text, x0 y+4 w250 h1 0x10 ;Horizontal Line

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Text, x25 y+4 w40, RS.Bt:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSbtn_ins% vRSbtn, %BttnGroup%
Gui, 1:Add, DropDownList, x+6 w80 h60 choose%RSbtn1_ins% vRSbtn1, %BttnGroup%

Gui, 1:Add, Text, x0 y+6 w250 h1 0x10 ;Horizontal Line

; ===================
; || Bottom Menu 3 || 
; ===================
Gui, 1:Add, Picture, Section x6 y+5 w25 h25 vController_3 gControllersButton, %ControllerImage%
Controller_3_TT := "Open Windows Controller Settings"

Gui, 1:Add, Picture, x+4 ys+0 w25 h25 vtouch_3 gTouchButton, %TouchImage%
Touch_3_TT := "Test Touch Controllers and Headset"

Gui, 1:Add, Picture, x+6 ys+0 w25 h25 vFolder_3 gFolderButton, %FolderImage%
Folder_3_TT := "Open Auto Oculus Touch Directory"

Gui, 1:Add, Picture, x+4 ys+0 w25 h25 vSettings_3 gSettingsButton, %SettingsImage%
Settings_3_TT := "1:Addtional Settings"

Gui, 1:Add, Picture, Section x+42 ys+0 w25 h25 vStart_3 gStart, %StartImage%
Start_3_TT := "Start Auto Oculus Touch"

Gui, 1:Add, Picture, xs+0 ys+0 w25 h25 vStop_3 gStop, %StopImage%
Stop_3_TT := "Stop Auto Oculus Touch"

Gui, 1:Add, Picture, Section x+4 ys+0 w25 h25 vSave_3 gSaveButton, %SaveImage%
Save_3_TT := "Save Changes"

Gui, 1:Add, Picture, xs+0 ys+0 w25 h25 vSaveAlt_3 gSaveButton, %SaveAltImage%
GuiControl, 1:Hide, SaveAlt_3

Gui, 1:Add, Picture, x+5 ys+0 w21 h25 vExit_3 gExitButton, %ExitImage%
Exit_3_TT := "Close Auto Oculus Touch GUI"

Gui, 1:Add, Text, x0 y+5 w250 h0 0x10 ;Horizontal Line

gosub, tabsub


; =====================================
; :::::::: GUI.1: MOTION INPUT ::::::::
; =====================================
; =====================
; || Left Controller ||
; =====================
gui, 1:tab, 4
Gui, 1:Font, Bold, Verdana, s7.5

Gui 1:Add, Picture, x0 y20 w250 h20, %LeftControllerImage%

gui, 1:Add, Text, x0 y+2 w250 h1 0x10 ;Horizontal Line
Gui, 1:Add, Text, x24 y+1 w80, Pitch Up:
Gui, 1:Add, Text, x+21 w80, Pitch Down:
Gui, 1:Add, Text, x+6 w30, Dz:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, Picture, x8 y+1 w14 h14, %ar_u%
Gui, 1:Add, DropDownList, x+2 w80 h60 choose%LPitchUp_ins% vLPitchUp gLPitchUp, %mYGroup%

Gui, 1:Add, Picture, x+6 w14 h14, %ar_d%
Gui, 1:Add, DropDownList, x+2 w80 h60 choose%LPitchDown_ins% vLPitchDown gLPitchDown, %mYGroup%

Gui, 1:Add, Edit, x+6 w30 h18 vLPitchDz limit2 Number, %LPitchDz% 

gui, 1:Add, Text, x0 y+4 w250 h1 0x10 ;Horizontal Line

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Text, x24 y+2 w80, Yaw Left:
Gui, 1:Add, Text, x+21 w80, Yaw Right:
Gui, 1:Add, Text, x+6 w30, Dz:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, Picture, x8 y+2 w14 h14, %ar_l%
Gui, 1:Add, DropDownList, x+2 w80 h60 choose%LYawLeft_ins% vLYawLeft gLYawLeft, %XGroup%

Gui, 1:Add, Picture, x+6 w14 h14, %ar_r%
Gui, 1:Add, DropDownList, x+2 w80 h60 choose%LYawRight_ins% vLYawRight gLYawRight, %XGroup%

Gui, 1:Add, Edit, x+6 w30 h18 vLYawDz limit2 Number, %LYawDz% 

gui, 1:Add, Text, x0 y+4 w250 h1 0x10 ;Horizontal Line

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Text, x24 y+2 w80, Roll Left:
Gui, 1:Add, Text, x+21 w80, Roll Right:
Gui, 1:Add, Text, x+6 w30, Dz:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, Picture, x8 y+2 w14 h14, %ar_ul%
Gui, 1:Add, DropDownList, x+2 w80 h60 choose%LRollLeft_ins% vLRollLeft gLRollLeft, %XGroup%

Gui, 1:Add, Picture, x+6 w14 h14, %ar_ur%
Gui, 1:Add, DropDownList, x+2 w80 h60 choose%LRollRight_ins% vLRollRight gLRollRight, %XGroup%

Gui, 1:Add, Edit, x+6 w30 h18 vLRollDz limit2 Number, %LRollDz% 

; ======================
; || Right Controller ||
; ======================
Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Picture, x0 y+5 w250 h20, %RightControllerImage%


gui, 1:Add, Text, x0 y+2 w250 h1 0x10 ;Horizontal Line
Gui, 1:Add, Text, x24 y+2 w80, Pitch Up:
Gui, 1:Add, Text, x+21 w80, Pitch Down:
Gui, 1:Add, Text, x+6 w30, Dz:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, Picture, x8 y+2 w14 h14, %ar_u%
Gui, 1:Add, DropDownList, x+2 w80 h60 choose%RPitchUp_ins% vRPitchUp gRPitchUp, %mYGroup%
RPitchUp_TT := "" 
Gui, 1:Add, Picture, x+6 w14 h14, %ar_d%
Gui, 1:Add, DropDownList, x+2 w80 h60 choose%RPitchDown_ins% vRPitchDown gRPitchDown, %mYGroup%
RPitchDown_TT := "" 

Gui, 1:Add, Edit, x+6 w30 h18 vRPitchDz limit2 Number, %RPitchDz% 
RPitchDz_TT := ""

gui, 1:Add, Text, x0 y+4 w250 h1 0x10 ;Horizontal Line

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Text, x24 y+2 w80, Yaw Left:
Gui, 1:Add, Text, x+21 w80, Yaw Right:
Gui, 1:Add, Text, x+6 w30, Dz:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, Picture, x8 y+2 w14 h14, %ar_l%
Gui, 1:Add, DropDownList, x+2 w80 h60 choose%RYawLeft_ins% vRYawLeft gRYawLeft, %XGroup%

Gui, 1:Add, Picture, x+6 w14 h14, %ar_r%
Gui, 1:Add, DropDownList, x+2 w80 h60 choose%RYawRight_ins% vRYawRight gRYawRight, %XGroup%

Gui, 1:Add, Edit, x+6 w30 h18 vRYawDz limit2 Number, %RYawDz% 

gui, 1:Add, Text, x0 y+4 w250 h1 0x10 ;Horizontal Line

Gui, 1:Font, Bold, Verdana, s7.5
Gui, 1:Add, Text, x24 y+2 w80, Roll Left:
Gui, 1:Add, Text, x+21 w80, Roll Right:
Gui, 1:Add, Text, x+6 w30, Dz:

Gui, 1:Font, Normal, Verdana, s8
Gui, 1:Add, Picture, x8 y+2 w14 h14, %ar_ul%
Gui, 1:Add, DropDownList, x+2 w80 h60 choose%RRollLeft_ins% vRRollLeft gRRollLeft, %XGroup%

Gui, 1:Add, Picture, x+6 w14 h14, %ar_ur%
Gui, 1:Add, DropDownList, x+2 w80 h60 choose%RRollRight_ins% vRRollRight gRRollRight, %XGroup%

Gui, 1:Add, Edit, x+6 w30 h18 vRRollDz limit2 Number, %RRollDz% 

Gui, 1:Add, Text, x0 y+4 w250 h1 0x10 ;Horizontal Line

; ===================
; || Bottom Menu 4 || 
; ===================
Gui, 1:Add, Picture, Section x6 y+5 w25 h25 vController_4 gControllersButton, %ControllerImage%
Controller_4_TT := "Open Windows Controller Settings"

Gui, 1:Add, Picture, x+4 ys+0 w25 h25 vtouch_4 gTouchButton, %TouchImage%
Touch_4_TT := "Test Touch Controllers and Headset"

Gui, 1:Add, Picture, x+6 ys+0 w25 h25 vFolder_4 gFolderButton, %FolderImage%
Folder_4_TT := "Open Auto Oculus Touch Directory"

Gui, 1:Add, Picture, x+4 ys+0 w25 h25 vSettings_4 gSettingsButton, %SettingsImage%
Settings_4_TT := "1:Addtional Settings"

Gui, 1:Add, Picture, Section x+42 ys+0 w25 h25 vStart_4 gStart, %StartImage%
Start_4_TT := "Start Auto Oculus Touch"

Gui, 1:Add, Picture, xs+0 ys+0 w25 h25 vStop_4 gStop, %StopImage%
Stop_4_TT := "Stop Auto Oculus Touch"

Gui, 1:Add, Picture, Section x+4 ys+0 w25 h25 vSave_4 gSaveButton, %SaveImage%
Save_4_TT := "Save Changes"

Gui, 1:Add, Picture, xs+0 ys+0 w25 h25 vSaveAlt_4 gSaveButton, %SaveAltImage%
GuiControl, 1:Hide, SaveAlt_4

Gui, 1:Add, Picture, x+5 ys+0 w21 h25 vExit_4 gExitButton, %ExitImage%
Exit_4_TT := "Close Auto Oculus Touch GUI"

Gui, 1:Add, Text, x0 y+5 w250 h0 0x10 ;Horizontal Line

gosub, tabsub

; ==================================
; :::::::: SETTINGS (GUI.1) ::::::::
; ==================================
tabsub:
  GuiControlGet, tabset
  IfEqual, tabset, 1, Gui, 1:Show, %GUI_1%
  IfEqual, tabset, 2, Gui, 1:Show, %GUI_1%
  IfEqual, tabset, 3, Gui, 1:Show, %GUI_1%
  IfEqual, tabset, 4, Gui, 1:Show, %GUI_1%
  ;IfEqual, tabset, 5, Gui, 1:Show, %GUI_1%
  Return
  

#Include gui_files\Input Selection.ahk

Start_Button_Loop:
{ SetTitleMatchMode 2
	DetectHiddenWindows On
	if WinExist("Auto Oculus Touch.ahk ahk_class AutoHotkey") {
    GuiControl, 1:Hide, Start_1
    GuiControl, 1:Hide, Start_2
    GuiControl, 1:Hide, Start_3
    GuiControl, 1:Hide, Start_4
    ;GuiControl, 1:Hide, Start_5
    
		GuiControl, 1:Show, Stop_1
		GuiControl, 1:Show, Stop_2
		GuiControl, 1:Show, Stop_3
		GuiControl, 1:Show, Stop_4
		;GuiControl, 1:Show, Stop_5
    } else {
    GuiControl, 1:Show, Start_1
    GuiControl, 1:Show, Start_2
    GuiControl, 1:Show, Start_3
    GuiControl, 1:Show, Start_4
   ; GuiControl, 1:Show, Start_5
    
    GuiControl, 1:Hide, Stop_1
    GuiControl, 1:Hide, Stop_2
    GuiControl, 1:Hide, Stop_3
    GuiControl, 1:Hide, Stop_4
    ;GuiControl, 1:Hide, Stop_5
    }} 
	DllCall("SetProcessWorkingSetSize", Int, -1, Int, -1, Int, -1 )
  Return

Start:
	Run, Auto Oculus Touch.ahk, Repo/
  GuiControl, 1:Hide, Start_1
  GuiControl, 1:Hide, Start_2
  GuiControl, 1:Hide, Start_3
  GuiControl, 1:Hide, Start_4
  ;GuiControl, 1:Hide, Start_5
  
  GuiControl, 1:Show, Stop_1
  GuiControl, 1:Show, Stop_2
  GuiControl, 1:Show, Stop_3
  GuiControl, 1:Show, Stop_4
  ;GuiControl, 1:Show, Stop_5
  Return

Stop:
	DetectHiddenWindows, On
	SetTitleMatchMode, 2
	WinClose, Auto Oculus Touch.ahk ahk_class AutoHotkey
  GuiControl, 1:Hide, Stop_1
  GuiControl, 1:Hide, Stop_2
  GuiControl, 1:Hide, Stop_3
  GuiControl, 1:Hide, Stop_4
  ;GuiControl, 1:Hide, Stop_5
  
  GuiControl, 1:Show, Start_1
  GuiControl, 1:Show, Start_2
  GuiControl, 1:Show, Start_3
  GuiControl, 1:Show, Start_4
  ;GuiControl, 1:Show, Start_5
  Return
  
ControllersButton:
	Run, rundll32.exe shell32.dll Control_RunDLL joy.cpl, C:\Windows\System32\ 
  Return
  
TouchButton:
 	Run, test.ahk, Repo\ 
  Return 
  
SettingsButton:
  Gui, 1:Hide
  gosub, GUI_2
  Return
  
FolderButton:
	Run, ..\Auto Oculus Touch
  Return 

SaveButton:
/*
{ loop, 3 {
    GuiControl, 1:Hide, Save_1
    GuiControl, 1:Hide, Save_2
    GuiControl, 1:Hide, Save_3
    GuiControl, 1:Hide, Save_4
    ;GuiControl, 1:Hide, Save_5
    GuiControl, 1:Show, SaveAlt_1
    GuiControl, 1:Show, SaveAlt_2
    GuiControl, 1:Show, SaveAlt_3
    GuiControl, 1:Show, SaveAlt_4   
    ;GuiControl, 1:Show, SaveAlt_5    
    sleep, 100
    GuiControl, 1:Show, Save_1
    GuiControl, 1:Show, Save_2
    GuiControl, 1:Show, Save_3
    GuiControl, 1:Show, Save_4
    ;GuiControl, 1:Show, Save_5
    GuiControl, 1:Hide, SaveAlt_1
    GuiControl, 1:Hide, SaveAlt_2
    GuiControl, 1:Hide, SaveAlt_3
    GuiControl, 1:Hide, SaveAlt_4   
    ;GuiControl, 1:Hide, SaveAlt_5 
    sleep, 200
    }
  
  gosub, SaveLocation

  SetTitleMatchMode 2
  DetectHiddenWindows On
  if WinExist("Auto Oculus Touch.ahk ahk_class AutoHotkey")
    Run, Auto Oculus Touch.ahk, Repo/
    }
*/
  Gui, 1:Hide
  gosub, GUI_3
  Return  
  
ExitButton:
GuiEscape:
GuiClose:
  IniWrite, 0, %Ini_io%, Settings, GUIState
  if (ServiceState = 1) 
    gosub, Stop
  ExitApp
  

; =====================================
; :::::::: GUI.2: GENERAL MENU ::::::::
; ===================================== 
GUI_2:
  Gui, 2:Add, Tab2, x0 y2 w250 h20 AltSubmit vTabSet1 gTabSub1, General|Mouse

  #Include, gui_files\iniread.settings.ahk

  Gui, 2:Margin, 0, 0
  Gui, 2:Color, FFFFFF
  Gui, 2:Font, s9 bold, Verdana
  
  Gui, 2:Tab, 1

  Gui, 2:Add, Picture, section x0 y20 w250 h20, %GenImage%
  Gui, 2:Add, Text, x0 y+3 w250 h1 0x10 Horizontal Line

  Gui, 2:Add, Checkbox, section xs+8 y+6 w12 h12 Checked%Trayico% gTrayico vTrayico
  Gui, 2:Add, Text, xs+20 ys-2, Service Status Tray Icon

  Gui, 2:Add, Checkbox, Section xs+0 y+6 w12 h12 Checked%ServiceState% gServiceState vServiceState
  Gui, 2:Add, Text, xs+20 ys-2, Stop Service on Exit

  Gui, 2:Add, Checkbox, Section xs+0 y+6 w12 h12 Checked%MotionDevide% vMotionDevide
  Gui, 2:Add, Text, xs+20 ys-2, Motion on 2nd Controller

  Gui, 2:Add, Checkbox, Section xs+0 y+6 w12 h12 Checked%MotionState% vMotionState
  Gui, 2:Add, Text, xs+20 ys-2, Disable Motion Input

  Gui, 2:Add, Text, x0 y+4 w250 h1 0x10 ;Horizontal Line

  Gui, 2:Font, s9 bold, Verdana
  Gui, 2:Add, Text, Section xs+3 y+6 w150, Shift Mode:
  Gui, 2:Font, Normal, Verdana, s8
  Gui, 2:Add, DropDownList, x+2 ys-2 w80 choose%ShiftMode% vShiftMode AltSubmit, Hold|Toggle|Disabled

  Gui, 2:Font, s9 bold, Verdana
  Gui, 2:Add, Text, section xs+0 y+6 w150, Shifter Grip:
  Gui, 2:Font, Normal, Verdana, s8
  Gui, 2:Add, DropDownList, x+2 ys-2 w80 choose%ShiftGrip% vShiftGrip AltSubmit, Left|Right

  Gui, 2:Font, s9 bold, Verdana
  Gui, 2:Add, Text, section xs+0 y+6 w150, Controller Mode:
  Gui, 2:Font, Normal, Verdana, s8
  Gui, 2:Add, DropDownList, x+2 ys-2 w80 choose%ControllerMode% vControllerMode gControllerMode AltSubmit, XInput|DS4
  
  Gui, 2:Add, Text, x0 y+5 w250 h1 0x10 ;Horizontal Line
  
  Gui, 2:Font, s9 bold, Verdana
  Gui, 2:Add, Text, section xs+0 y+5 w150, Head TracKing Mode:
  Gui, 2:Font, Normal, Verdana, s8
  Gui, 2:Add, DropDownList, x+2 ys-2 w80 choose%HeadMode% vHeadMode AltSubmit, Mouse|Joystick
  
  Gui, 2:Font, s9 bold, Verdana
  Gui, 2:Add, Text, section xs+0 y+6 w150, Head Tracking State:
  Gui, 2:Font, Normal, Verdana, s8
  Gui, 2:Add, DropDownList, x+2 ys-2 w80 choose%HeadState% vHeadState AltSubmit, AlwaysOn|Shifter|Off

; ==========================
; || Bottom Menu: General ||
; ==========================
  Gui, 2:Add, Text, section x0 y+4 w250 h1 0x10 Horizontal Line

  Gui, 2:Add, Picture, Section x100 y+4 w25 h25 vSave_1 gSaveButton_Settings, %SaveImage%
  Save_1_TT := "Save Changes"

  Gui, 2:Add, Picture, xs+0 ys+0 w25 h25 vSaveAlt_1 gSaveButton_Settings, %SaveAltImage%
  GuiControl, 2:Hide, SaveAlt_1

  Gui, 2:Add, Picture, x+5 ys+0 w21 h25 vExit_1 gExitButton_Settings, %ExitImage%
  Exit_1_TT := "Close Settings GUI"
  
  Gui, 2:Add, Text, x0 y+5 w250 h0 0x10 ;Horizontal Line

  gosub, tabsub1
  
; ===================================
; :::::::: GUI.2: MOUSE MENU ::::::::
; ===================================
  Gui, 2:Tab, 2
  Gui, 2:Font, s9 bold, Verdana
  
  Gui, 2:Add, Picture, section x0 y20 w250 h20, %MouImage%
  Gui, 2:Add, Text, x0 y+3 w250 h1 0x10 Horizontal Line
  
  Gui,2:Add,Text,section x20 y+4 w175,Joystick Speed X
  Gui,2:Add,Edit,x+2 ys+0 w36 h18 vsSpeedX limit2 Number,%sSpeedX%
  
  Gui,2:Add,Text,section x20 y+3 w175,Joystick Speed Y
  Gui,2:Add,Edit,x+2 ys+0 w36 h18 vsSpeedY limit2 Number,%sSpeedY%
  
  Gui,2 :Add,Text,section x20 y+3 w175,Left Stick Deadzone
  Gui,2 :Add,Edit,x+2 ys+0 w36 h18 vLS_Dz limit3 gForceNumber,%LS_Dz%
  
  Gui,2 :Add,Text,section x20 y+3 w175,Right Stick Deadzone
  Gui,2 :Add,Edit,x+2 ys+0 w36 h18 vRS_Dz limit3 gForceNumber,%RS_Dz%
  
  Gui,2 :Add, Text, x0 y+3 w250 h1 0x10 Horizontal Line
  
  Gui,2 :Add,Text,section x20 y+3 w175,Motion Speed X
  Gui,2 :Add,Edit,x+2 ys+0 w36 h18 vmSpeedX limit2 Number,%mSpeedX%
  
  Gui,2 :Add,Text,section x20 y+3 w175,Motion Speed Y
  Gui,2 :Add,Edit,x+2 ys+0 w36 h18 vmSpeedY limit2 Number,%mSpeedY%
  
  Gui, 2:Add, Text, x0 y+3 w250 h1 0x10 Horizontal Line
  
  Gui,2 :Add,Text,section x20 y+3 w175,Head Speed X
  Gui,2 :Add,Edit,x+2 ys+0 w36 h18 vhSpeedX limit2 Number,%hSpeedX%
  
  Gui,2 :Add,Text,section x20 y+3 w175,Head Speed Y
  Gui,2 :Add,Edit,x+2 ys+0 w36 h18 vhSpeedY limit2 Number,%hSpeedY%
 
; ==========================
; || Bottom Menu: Presets ||
; ==========================
  Gui, 2:Add, Text, section x0 y+4 w250 h1 0x10 Horizontal Line

  Gui, 2:Add, Picture, Section x100 y+5 w25 h25 vSave_2 gSaveButton_Settings, %SaveImage%
  Save_2_TT := "Save Changes"

  Gui, 2:Add, Picture, xs+0 ys+0 w25 h25 vSaveAlt_2 gSaveButton_Settings, %SaveAltImage%
  GuiControl, 2:Hide, SaveAlt_2

  Gui, 2:Add, Picture, x+5 ys+0 w21 h25 vExit_2 gExitButton_Settings, %ExitImage%
  Exit_2_TT := "Close Auto Oculus Touch GUI"
  
  Gui, 2:Add, Text, x0 y+5 w250 h0 0x10 ;Horizontal Line
  
  gosub, tabsub1
  
  
; ==================================
; :::::::: SETTINGS (GUI.2) ::::::::
; ==================================
  tabsub1:
    GuiControlGet, tabset1, 2:
    IfEqual, tabset1, 1, Gui, 2:Show, %GUI_2%, %A_Space%
    IfEqual, tabset1, 2, Gui, 2:Show, %GUI_2%, %A_Space%
    Return
  
  ControllerChange := !ControllerChange
  ControllerChangeReload := !ControllerChangeReload 
  
  ControllerMode:
    ControllerChange := 1
    Return

  SaveButton_Settings:
  { loop, 3 {
      GuiControl, 2:Hide, Save_1
      GuiControl, 2:Hide, Save_2
      GuiControl, 2:Show, SaveAlt_1 
      GuiControl, 2:Show, SaveAlt_2
      sleep, 100
      GuiControl, 2:Show, Save_1
      GuiControl, 2:Show, Save_2
      GuiControl, 2:Hide, SaveAlt_1
      GuiControl, 2:Hide, SaveAlt_2     
      sleep, 200
      }
    
    SetTitleMatchMode 2
    DetectHiddenWindows On
    if WinExist("Auto Oculus Touch.ahk ahk_class AutoHotkey")
      Run, Auto Oculus Touch.ahk, Repo/
    
    if (ControllerChange = 1)
      ControllerChangeReload := 1
    
    #Include, gui_files\iniwrite.ahk
    }
    Return

  ExitButton_Settings:
  2GuiEscape:
  2GuiClose:
  { if (ControllerChangeReload = 1) {
      ControllerChangeReload := 0
      Reload
    } else {
      Gui, 2:Destroy
      Gui, 1:Show
      } 
    ControllerChange := 0
    }
  Return


; ========================================
; :::::::: GUI.3: PROFILE MANAGER ::::::::
; ========================================
GUI_3:
  MainPath := "gui_files\Profile_Manager\"

  FileRead, LastUsedIniFilePath, %MainPath%last_used_ini_path.txt

  CommonIniFilePath := ""
  CommonConfigSettings := ""
  
  Gui, 3:Margin, 0, 0
  Gui, 3:Color, FFFFFF, e9ecf4
  
  Gui, 3:Add, Picture, x0 y0 w230 h20, %ProfileImage%
  Gui, 3:Add, Text, x0 y+3 w230 h1 0x10 Horizontal Line

  Gui, 3:Font, Bold, Verdana, s9
  Gui, 3:Add, Text, Section x10 y+3, Save\Find\Create Profile:
  
  Gui, 3:Font, Normal, Verdana, s7.5
  Gui, 3:Add, Edit, vIniFilePath xs+0 y+2 w210
  Gui, 3:Add, Picture, section xs+0 y+3 w20 h20 vSave_1 gButtonSave, %SaveImage%
  Save_1_TT := "Save|Create Profile"

  Gui, 3:Add, Picture, xs+0 ys+0 w20 h20 vSaveAlt_1 gButtonSave, %SaveAltImage%
  GuiControl, 3:Hide, SaveAlt_1

  Gui, 3:Add, Picture, x+4 ys+0 w20 h20 vButtonSearch gButtonSearch, %FindImage%
  ButtonSearch_TT := "Find a Profile"
  
  Gui, 3:Font, Bold, Verdana, s9
  Gui, 3:Add, Text, Section x10 y+7, Profile List:
  
  Gui, 3:Font, Normal, Verdana, s7.5
  Gui, 3:Add, ListBox, +HwndPLIST vProfileList xs+0 y+2 w210 h70,
  
  Gui, 3:Add, Picture,section x10 y+2 w22 h22 vButtonLoad gButtonLoad, %LoadImage%
  ButtonLoad_TT := "Load Profile from List"

  Gui, 3:Add, Picture, x+2 ys+0 w22 h22 vButtonDelete gButtonDelete, %DeleteImage%
  ButtonDelete_TT := "Delete Profile From List"
  
  Gui, 3:Add, Picture, x+145 ys+0 w21 h25 vButtonExit gButtonExit, %ExitImage%
  ButtonExit_TT := "Exit Profile Manager"

  Gui, 3:Add, Text, x0 y+5 w30 h0 0x10 ;Horizontal Line
  Gui, 3:Show, %GUI_3%,

  IniFilePath := "%MainPath%\default.ini"
  GuiControl, , IniFilePath, % ExtractIniFileName(IniFilePath)

  ListItems := ""

  FileRead, ListItemsFromFile, %MainPath%list_box_items.txt
  Loop, Parse, ListItemsFromFile, `n
  { TrimmedLine := Trim(A_LoopField)  
    if (TrimmedLine != "") {
      ListItems .= TrimmedLine "`n"
      GuiControl, 3:, ProfileList, % ExtractIniFileName(TrimmedLine)
      }}

  LastUsedIniFilePath := FileExist(LastUsedIniFilePath) ? LastUsedIniFilePath : ""

  if (LastUsedIniFilePath != "") {
    IniFileName := ExtractIniFileName(LastUsedIniFilePath)
    GuiControl, 3:, IniFilePath, % IniFileName
    CommonIniFilePath := LastUsedIniFilePath
    }
    Return

  ButtonSave:
  { loop, 3 {
      GuiControl, 3:Hide, Save_1
      GuiControl, 3:Show, SaveAlt_1 
      sleep, 100
      GuiControl, 3:Show, Save_1
      GuiControl, 3:Hide, SaveAlt_1    
      sleep, 200
      }
  
    GuiControlGet, IniFileName, , IniFilePath

    IniFilePath :=  MainPath . "Profiles" . "\" . IniFileName . ".ini"

    if (IniFileName = "") {
      MsgBox, Please enter a profile name.
      Return
      }

    if (FileExist(IniFilePath)) {
      gosub, Save_ext
    } else {
      gosub, Save_ext
      LastUsedIniFilePath := IniFilePath
      FileDelete, %MainPath%last_used_ini_path.txt 
      FileAppend, % LastUsedIniFilePath, %MainPath%last_used_ini_path.txt
      ListItems .= IniFilePath "`n"
      GuiControl, 3:, ProfileList, % IniFileName
      }
    }
    Return
    
  Save_ext:
    #Include, gui_files\IniWriteGui3.ahk
    Return

  ExtractIniFileName(FilePath) {
    SplitPath, FilePath, FileName
    IniFileName := SubStr(FileName, 1, InStr(FileName, ".") - 1)
    Return IniFileName
    }

  ButtonSearch:
    GuiControlGet, IniFileName, , IniFilePath

    ; Find and select the matching profile name in the list box
    FoundIndex := LBEX_SelectString(PLIST, IniFileName)

    if (FoundIndex >= 1) {
      ; Get the selected item's text
      SelectedItem := LBEX_GetText(PLIST, FoundIndex)
      ; Update the IniFilePath control with the selected item (profile name)
      GuiControl, 3:, IniFilePath, % SelectedItem
    } else {
      MsgBox, Profile not found in the list.
      }

    ; Make sure the ListBox gets focus to display the selection
    ControlFocus, % "ahk_id " . PLIST
    Return

  ButtonLoad:
    GuiControlGet, SelectedProfile, , ProfileList
    IniFilePath :=  MainPath . "Profiles" . "\" . SelectedProfile . ".ini"
    GuiControl, 3:, IniFilePath, % SelectedProfile
    LastUsedIniFilePath := IniFilePath
    FileDelete, %MainPath%last_used_ini_path.txt 
    FileAppend, % LastUsedIniFilePath, %MainPath%last_used_ini_path.txt
    Return

  ButtonDelete:
    SelectedIndex := LBEX_GetCurrentSel(PLIST) 
    if (SelectedIndex > 0) {
      GuiControlGet, SelectedProfile, , ProfileList 
      IniFileName :=  MainPath . "Profiles\" . SelectedProfile . ".ini" 

      if (FileExist(IniFileName)) {
        FileDelete, %IniFileName%
        }

      if (IniFileName = LastUsedIniFilePath) {
        LastUsedIniFilePath := ""
        GuiControl, 3:, IniFilePath, ; Clear vIniFilePath
        }

      GuiControl, 3:, ProfileList, % LBEX_Delete(PLIST, SelectedIndex)
      ListItems := ""
      Loop, % LBEX_GetCount(PLIST) {
        ItemText := LBEX_GetText(PLIST, A_Index)
        ListItems .= ItemText "`n"
        }

      FileDelete, %MainPath%last_used_ini_path.txt
      FileAppend, % LastUsedIniFilePath, %MainPath%last_used_ini_path.txt
    }
    Return
  
  ButtonExit:  
  3GuiEscape:
  3GuiClose:
    FileDelete, %MainPath%list_box_items.txt
    FileAppend, % ListItems, %MainPath%\list_box_items.txt
    Reload
    SetTitleMatchMode 2
    DetectHiddenWindows On
      if WinExist("Auto Oculus Touch.ahk ahk_class AutoHotkey")
        Run, Auto Oculus Touch.ahk, Repo/
  Return
  
; =============================
; :::::::: SUBROUTINES ::::::::
; =============================
Trayico: 
  GuiControlGet, Trayico
  if !Trayico
    GuiControl, , ServiceState, 1
    Return
     
ServiceState:
  GuiControlGet, ServiceState
  if !ServiceState
    GuiControl, , Trayico, 1 
  Return

SaveLocation:
  Return

  
; ===========================
; :::::::: FUNCTIONS ::::::::
; ===========================  
ForceNumber(hEdit) 
{ local
  static BadNeedle := "[^\d\.-]|^.+-",maxDecimals := 2,PrevNumber := []

  ControlGet,Pos,CurrentCol,,,ahk_id %hEdit%
  GuiControlGet,NewNumber,,%hEdit%
  StrReplace(NewNumber,".",,DotCount)
  Decimals := StrLen(StrSplit(NewNumber,".").2)

  BAD := (NewNumber ~= BadNeedle)
	Or (DotCount > 1)
  Or (Decimals > maxDecimals)

  If (BAD) {
    ControlGetPos,x,y,,,,ahk_id %hEdit%
    GuiControl,,%hEdit%,% PrevNumber[hEdit]
    SendMessage,0xB1,% Pos-2,% Pos-2,,ahk_id %hEdit%
    } else PrevNumber[hEdit] := NewNumber
    Return
  }
  
WM_MOUSEMOVE() 
{	static CurrControl,PrevControl,_TT 
  CurrControl := A_GuiControl
  
  If (CurrControl <> PrevControl and not InStr(CurrControl," ")) 
		ToolTip  ; Turn off any previous tooltip.
    SetTimer,DisplayToolTip,200
    PrevControl := CurrControl
    Return

	DisplayToolTip:
		SetTimer,DisplayToolTip,Off
		ToolTip % %CurrControl%_TT 
		SetTimer,RemoveToolTip,3500
    Return

  RemoveToolTip:
		SetTimer,RemoveToolTip,Off
		ToolTip
    Return
  }