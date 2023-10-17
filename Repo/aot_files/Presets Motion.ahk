LeftRoll := GetRoll(LeftHand) 
RightRoll := GetRoll(RightHand)
LeftYaw := GetYaw(LeftHand)
RightYaw := GetYaw(RightHand) 
LeftPitch := GetPitch(LeftHand) 
RightPitch := GetPitch(RightHand) 
HeadYaw := GetYaw(Head)
HeadPitch := GetPitch(Head)

BttnGroup :=  "A,B,X,Y,LTrigger,RTrigger,LShoulder,RShoulder,LS-Button,RS-Button,Up,Down,Left,Right,UpLeft,UpRight,DownLeft,DownRight,Start,Back,Xbox"

XGroup := "LS-X,RS-X"
YGroup := "LS-Y,inv_LS-Y,RS-Y,inv_RS-Y"

" " := LPitchUp = "LS-Y" ? mLPitch := LeftPitch : LPitchUp = "RS-Y" ? mLPitch := LeftPitch : LPitchUp = "inv_LS-Y" ? mLPitch := -LeftPitch : LPitchUp = "inv_RS-Y" ? mLPitch := -LeftPitch

" " := RPitchUp = "LS-Y" ? mRPitch := RightPitch : RPitchUp = "RS-Y" ? mRPitch := RightPitch : RPitchUp = "inv_LS-Y" ? mRPitch := -RightPitch : RPitchUp = "inv_RS-Y" ? mRPitch := -RightPitch

AxisChoice := {"LS-X":controller.Axes.LX, "RS-X":controller.Axes.RX, "LS-Y":controller.Axes.LY, "inv_LS-Y":controller.Axes.LY, "RS-Y":controller.Axes.RY, "inv_RS-Y":controller.Axes.RY}

AxisChoice2 := {"LS-X":mcontroller.Axes.LX, "RS-X":mcontroller.Axes.RX, "LS-Y":mcontroller.Axes.LY, "inv_LS-Y":mcontroller.Axes.LY, "RS-Y":mcontroller.Axes.RY, "inv_RS-Y":mcontroller.Axes.RY}


if (MotionDevide = 0)
{
  LRoll_mt := AxisChoice[LRollLeft]
  RRoll_mt := AxisChoice[RRollLeft]

  LYaw_mt := AxisChoice[LYawLeft]
  RYaw_mt := AxisChoice[RYawLeft]

  LPitch_mt := AxisChoice[LPitchUp]
  RPitch_mt := AxisChoice[RPitchUp]
}
else
{
  LRoll_mt := AxisChoice2[LRollLeft]
  RRoll_mt := AxisChoice[RRollLeft]

  LYaw_mt := AxisChoice2[LYawLeft]
  RYaw_mt := AxisChoice2[RYawLeft]

  LPitch_mt := AxisChoice2[LPitchUp]
  RPitch_mt := AxisChoice2[RPitchUp]
}
