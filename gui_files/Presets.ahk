; =============================
; :::::::: GUI PRESETS ::::::::
; =============================
FileRead, Ini_io, gui_files\Profile_Manager\last_used_ini_path.txt

IniRead, ControllerMode, %Ini_io%, Settings, ControllerMode, %A_Space%	

if (ControllerMode = 1) {
  Controller := "Controller-x360"
  MotionGestures := "Motion_Gestures-x360"
  }
if !(ControllerMode = 1) {
  Controller := "Controller-DS4"
  MotionGestures := "Motion_Gestures-DS4"
  }
  
#Include, gui_files\Iniread.ahk
#Include, gui_files\Input Assignment.ahk

IniRead, ServiceState, %Ini_io%, Settings, ServiceState, %A_Space%	

if (ControllerMode = 1) {
  BttnGroup := " |A|B|X|Y|LTrigger|RTrigger|LShoulder|RShoulder|LS-Button|RS-Button|Up|Down|Left|Right|UpLeft|UpRight|DownLeft|DownRight|Start|Back|Xbox|Reset"

  XGroup := " |LS-X|RS-X|MouseX|A|B|X|Y|LTrigger|RTrigger|LShoulder|RShoulder|LS-Button|RS-Button|Up|Down|Left|Right|UpLeft|UpRight|DownLeft|DownRight|Start|Back|Xbox|Reset"

  YGroup := " |LS-Y|RS-Y|MouseY|A|B|X|Y|LTrigger|RTrigger|LShoulder|RShoulder|LS-Button|RS-Button|Up|Down|Left|Right|UpLeft|UpRight|DownLeft|DownRight|Start|Back|Xbox|Reset"

  mYGroup := " |LS-Y|inv_LS-Y|RS-Y|MouseY|A|B|X|Y|LTrigger|RTrigger|LShoulder|RShoulder|LS-Button|RS-Button|Up|Down|Left|Right|UpLeft|UpRight|DownLeft|DownRight|Start|Back|Xbox"
  }

if !(ControllerMode = 1) {
  BttnGroup := " |Circle|Cross|Square|Triangle|LTrigger|RTrigger|L1-Button|L2-Button|R1-Button|R2-Button|LS-Button|RS-Button|Up|Down|Left|Right|UpLeft|UpRight|DownLeft|DownRight|Options|Share|Touch|PS-Button|Reset"

  XGroup := " |LS-X|RS-X|MouseX|Circle|Cross|Square|Triangle|LTrigger|RTrigger|L1-Button|L2-Button|R1-Button|R2-Button|LS-Button|RS-Button|Up|Down|Left|Right|UpLeft|UpRight|DownLeft|DownRight|Options|Share|Touch|PS-Button|Reset"

  YGroup := " |LS-Y|RS-Y|MouseY|Circle|Cross|Square|Triangle|LTrigger|RTrigger|L1-Button|L2-Button|R1-Button|R2-Button|LS-Button|RS-Button|Up|Down|Left|Right|UpLeft|UpRight|DownLeft|DownRight|Options|Share|Touch|PS-Button|Reset"

  mYGroup := " |LS-Y|inv_LS-Y|RS-Y|MouseY|Circle|Cross|Square|Triangle|LTrigger|RTrigger|L1-Button|L2-Button|R1-Button|R2-Button|LS-Button|RS-Button|Up|Down|Left|Right|UpLeft|UpRight|DownLeft|DownRight|Options|Share|Touch|PS-Button"
  }

XGroup_sel := "LS-X,RS-X"
YGroup_sel := "LS-Y,inv_LS-Y,RS-Y"
MGroup_sel := "MouseX,MouseY"

BttnGroup_sel := "A,B,X,Y,Circle,Cross,Square,Triangle,LTrigger,RTrigger,LShoulder,RShoulder,L1-Button,L2-Button,R1-Button,R2-Button,LS-Button,RS-Button,Up,Down,Left,Right,UpLeft,UpRight,DownLeft,DownRight,Start,Back,Xbox,Options,Share,Touch,PS-Button"

TouchImage = gui_files\Images\cv1touch.jpg
FolderImage = gui_files\Images\folder.jpg 
SettingsImage = gui_files\Images\cog.jpg 
FindImage = gui_files\Images\search.jpg 
ProfileImage = gui_files\Images\profile.jpg 
LoadImage = gui_files\Images\load.jpg
DeleteImage = gui_files\Images\delete.jpg

StartImage = gui_files\Images\start.jpg
StopImage = gui_files\Images\stop.jpg
SaveImage = gui_files\Images\floppy.jpg
SaveAltImage = gui_files\Images\floppyclick.jpg 
ExitImage = gui_files\Images\exit.jpg 
GenImage = gui_files\Images\general.jpg
MouImage = gui_files\Images\mouse.jpg

if (ControllerMode = 1) {
  ControllerImage = gui_files\Images\x360.jpg
  InputImage = gui_files\Images\x360\input.jpg
  LeftStickImage = gui_files\Images\x360\leftstick.jpg
  RightStickImage = gui_files\Images\x360\rightstick.jpg
  LeftControllerImage = gui_files\Images\x360\Left Controller.jpg
  RightControllerImage = gui_files\Images\x360\Right Controller.jpg
  }

if !(ControllerMode = 1) {
  ControllerImage = gui_files\Images\ds4.jpg
  InputImage = gui_files\Images\DS4\input.jpg
  LeftStickImage = gui_files\Images\DS4\leftstick.jpg
  RightStickImage = gui_files\Images\DS4\rightstick.jpg
  LeftControllerImage = gui_files\Images\DS4\Left Controller.jpg
  RightControllerImage = gui_files\Images\DS4\Right Controller.jpg
  }

ar_l = gui_files\Images\arrows\arrow left.jpg
ar_r = gui_files\Images\arrows\arrow right.jpg
ar_u = gui_files\Images\arrows\arrow up.jpg
ar_d = gui_files\Images\arrows\arrow down.jpg

ar_ul = gui_files\Images\arrows\arrow upleft.jpg
ar_ur = gui_files\Images\arrows\arrow upright.jpg
ar_dl = gui_files\Images\arrows\arrow downleft.jpg
ar_dr = gui_files\Images\arrows\arrow downright.jpg
