/*
{Add}, {Delete}, {CalcIdealWidth}, {Find}, {FindExact}, {GetCount}, {GetCurrentSel}, {GetData}, {GetFocus}, {GetSelCount}, {GetSelItems}, {GetSelStart}, {GetSelState}, {GetText}, {GetTextLen}, {GetTopIndex}, {Insert}, {ItemFromPoint}, {SelectRange}, {SelectString}, {SetColumnTabs}, {SetCurSel}, {SetFocus}, {SetItemData}, {SetItemHeight}, {SetSelt}, {SetSelStart}, {SetTabStops}, {SetTopIndex}
*/


;{Add} - Adds a string to a list box.
;================================
LBEX_Add(HLB, ByRef String) {
   Static LB_ADDSTRING := 0x0180
   SendMessage, % LB_ADDSTRING, 0, % &String, , % "ahk_id " . HLB
   Return (ErrorLevel + 1)
}

;{Delete} - Deletes an item (row) in a list box.
;================================
LBEX_Delete(HLB, Index) {
   Static LB_DELETESTRING := 0x0182
   SendMessage, % LB_DELETESTRING, % (Index - 1), 0, , % "ahk_id " . HLB
   ;Return ErrorLevel
}

;{DeleteAll} - Removes all items from a list box.
;================================
LBEX_DeleteAll(HLB) {
   Static LB_RESETCONTENT := 0x0184
   SendMessage, % LB_RESETCONTENT, 0, 0, , % "ahk_id " . HLB
   Return True
}

;{CalcIdealWidth} - Calculates the ideal width of a list box needed to display the current content.
;================================
LBEX_CalcIdealWidth(HLB, Content := "", Delimiter := "|", FontOptions := "", FontName := "") {
   DestroyGui := MaxW := 0
   If !(HLB) {
      If (Content = "")
         Return -1
      Gui, LB_EX_CalcContentWidthGui: Font, %FontOptions%, %FontName%
      Gui, LB_EX_CalcContentWidthGui: Add, ListBox, hwndHLB, %Content%
      DestroyGui := True
   }
   ControlGet, Content, List, , , ahk_id %HLB%
   Items := StrSplit(Content, "`n")
   SendMessage, 0x0031, 0, 0, , ahk_id %HLB% ; WM_GETFONT
   HFONT := ErrorLevel
   HDC := DllCall("User32.dll\GetDC", "Ptr", HLB, "UPtr")
   DllCall("Gdi32.dll\SelectObject", "Ptr", HDC, "Ptr", HFONT)
   VarSetCapacity(SIZE, 8, 0)
   For Each, Item In Items {
      DllCall("Gdi32.dll\GetTextExtentPoint32", "Ptr", HDC, "Ptr", &Item, "Int", StrLen(Item), "UIntP", Width)
      If (Width > MaxW)
         MaxW := Width
   }
   DllCall("User32.dll\ReleaseDC", "Ptr", HLB, "Ptr", HDC)
   If (DestroyGui)
      Gui, LB_EX_CalcContentWidthGui: Destroy
   Return MaxW + 8 ; + 8 for the margins
}

;{Find} - Finds the first string in a list box that begins with the specified string.
;================================
LBEX_Find(HLB, ByRef String, Index := 0) {
   Static LB_FINDSTRING := 0x018F
   SendMessage, % LB_FINDSTRING, % (Index - 1), % &String, , % "ahk_id " . HLB
   Return (ErrorLevel + 1)
}

;{FindExact} - Finds the first list box string that exactly matches the specified string.
;================================
LBEX_FindExact(HLB, ByRef String, Index := 0) {
   Static LB_FINDSTRINGEXACT := 0x01A2
   SendMessage, % LB_FINDSTRINGEXACT, % (Index - 1), % &String, , % "ahk_id " . HLB
   Return (ErrorLevel + 1)
}

;{GetCount} - Gets the number of items in a list box.
;================================
LBEX_GetCount(HLB) {
   Static LB_GETCOUNT := 0x018B
   SendMessage, % LB_GETCOUNT, 0, 0, , % "ahk_id " . HLB
   Return ErrorLevel
}

;{GetCurrentSel} - Gets the index of the currently selected item, if any, in a single-selection list box.
;================================
LBEX_GetCurrentSel(HLB) {
   Static LB_GETCURSEL := 0x0188
   SendMessage, % LB_GETCURSEL, 0, 0, , % "ahk_id " . HLB
   Return (ErrorLevel + 1)
}

;{GetData} - Gets the application-defined value associated with the specified list box item. 
;================================
LBEX_GetData(HLB, Index) {
   Static LB_GETITEMDATA := 0x0199
   SendMessage, % LB_GETITEMDATA, % (Index - 1), 0, , % "ahk_id " . HLB
   Return ErrorLevel
}

;{GetFocus} - Retrieves the index of the item that has the focus in a multiple-selection list box.
;================================
LBEX_GetFocus(HLB) {
   Static LB_GETCARETINDEX := 0x019F
   SendMessage, % LB_GETCARETINDEX, 0, 0, , % "ahk_id " . HLB
   Return (ErrorLevel + 1)
}

;{GetItemHeight} - ets the height of items in a list box.
;================================
LBEX_GetItemHeight(HLB) {
   Static LB_GETITEMHEIGHT := 0x01A1
   SendMessage, % LB_GETITEMHEIGHT, 0, 0, , % "ahk_id " . HLB
   Return ErrorLevel
}


;{GetSelCount} - Gets the total number of selected items in a multiple-selection list box
;================================
LBEX_GetSelCount(HLB) {
   Static LB_GETSELCOUNT := 0x0190
   SendMessage, % LB_GETSELCOUNT, 0, 0, , % "ahk_id " . HLB
   Return ErrorLevel
}

;{GetSelItems} - Retrieves an array of selected items in a multiple-selection list box
;================================
LBEX_GetSelItems(HLB, ByRef ItemArray, MaxItems := 0) {
   Static LB_GETSELITEMS := 0x0191
   ItemArray := []
   If (MaxItems = 0)
      MaxItems := LBEX_GetSelCount(HLB)
   If (MaxItems < 1)
      Return MaxItems
   VarSetCapacity(Items, MaxItems * 4, 0)
   SendMessage, % LB_GETSELITEMS, % MaxItems, % &Items, , % "ahk_id " . HLB
   MaxItems := ErrorLevel
   If (MaxItems < 1)
      Return MaxItems
   Loop, % MaxItems
      ItemArray[A_Index] := NumGet(Items, (A_Index - 1) * 4, "UInt") + 1
   Return MaxItems
}

;{GetSelStart} - Gets the index of the anchor item from which a multiple selection starts.
;================================
LBEX_GetSelStart(HLB) {
   Static LB_GETANCHORINDEX := 0x019D
   SendMessage, % LB_GETANCHORINDEX, 0, 0, , % "ahk_id " . HLB
   Return (ErrorLevel + 1)
}

;{GetSelState} - Gets the selection state of an item.
;================================
LBEX_GetSelState(HLB, Index) {
   Static LB_GETSEL := 0x0187
   SendMessage, % LB_GETSEL, % (Index - 1), 0, , % "ahk_id " . HLB
   Return ErrorLevel
}

;{GetText} - Gets a string from a list box.
;================================
LBEX_GetText(HLB, Index) {
   Static LB_GETTEXT := 0x0189
   Len := LBEX_GetTextLen(HLB, Index)
   If (Len = -1)
      Return ""
   VarSetCapacity(Text, Len << !!A_IsUnicode, 0)
   SendMessage, % LB_GETTEXT, % (Index - 1), % &Text, , % "ahk_id " . HLB
   Return StrGet(&Text, Len)
}

;{GetTextLen} - Gets the length of a string in a list box.
;================================
LBEX_GetTextLen(HLB, Index) {
   Static LB_GETTEXTLEN := 0x018A
   SendMessage, % LB_GETTEXTLEN, % (Index - 1), 0, , % "ahk_id " . HLB
   Return ErrorLevel
}

;{GetTopIndex} - Gets the index of the first visible item in a list box.
;================================
LBEX_GetTopIndex(HLB) {
   Static LB_GETTOPINDEX := 0x018E
   SendMessage, % LB_GETTOPINDEX, 0, 0, , % "ahk_id " . HLB
   Return (ErrorLevel + 1)
}

;{Insert} - Inserts a string into a list box.  Unlike LV_EX_Add(), this function does not cause a list box with the LBS_SORT style to be sorted
;================================
LBEX_Insert(HLB, Index, ByRef String) {
   Static LB_INSERTSTRING := 0x0181
   SendMessage, % LB_INSERTSTRING, % (Index - 1), % &String, , % "ahk_id " . HLB
   Return (ErrorLevel + 1)
}

;{ItemFromPoint} - Gets the index of the item nearest the specified point in a list box.
;===============================
LBEX_ItemFromPoint(HLB, X, Y) {
   Static LB_ITEMFROMPOINT := 0x01A9
   X &= 0xFFFF
   Y &= 0xFFFF
   SendMessage, % LB_ITEMFROMPOINT, 0, % (X | (Y << 16)), , % "ahk_id " . HLB
   Return ((ErrorLevel & 0xFFFF) + 1) | (ErrorLevel & 0xFFFF0000)
}

;{SelectRange} - Selects or deselects one or more consecutive items in a multiple-selection list box.
;===============================
LBEX_SelectRange(HLB, First, Last, Select := True) {
   Static LB_SELITEMRANGE := 0x019B
   First &= 0xFFFF
   Last &= 0xFFFF
   SendMessage, % LB_SELITEMRANGE, % !!Select, % (First - 1) | ((Last - 1) << 16), , % "ahk_id " . HLB
   Return (ErrorLevel > 0x7FFFFFFF ? False : True)
}

;{SelectString} - Searches a list box for an item that begins with the characters in a specified string.
;===============================
LBEX_SelectString(HLB, ByRef String, Index := 0) {
   Static LB_SELECTSTRING := 0x018C
   SendMessage, % LB_SELECTSTRING, % (Index - 1), % &String, , % "ahk_id " . HLB
   Return (ErrorLevel + 1)
}

;{SetColumnTabs} - Sets the tab stop positions according to the columns of a list box.
;===============================
LBEX_SetColumnTabs(HLB, ColGap := 2) {
   Static StrDBU := "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
   Static LenDBU := StrLen(StrDBU)
   ; Get the items
   ControlGet, Items, List, , , ahk_id %HLB%
   If (Items = "") ; error or empty list box
      Return False
   ; Check ColGap parameter
   If ((ColGap + 0) < 1)
      ColGap := 1
   ; Get the font
   HFONT := DllCall("SendMessage", "Ptr", HLB, "UInt", 0x0031, "Ptr", 0, "Ptr", 0, "UPtr")
   ; Get the DC
   HDC := DllCall("GetDC", "Ptr", HLB, "UPtr")
   ; Select the font
   DllCall("SelectObject", "Ptr", HDC, "Ptr", HFONT)
   ; Get the horizontal dialog base units
   VarSetCapacity(SIZE, 8, 0)
   DllCall("GetTextExtentPoint32", "Ptr", HDC, "Str", StrDBU, "Int", LenDBU, "Ptr", &SIZE)
   HDBU := Round(NumGet(SIZE, "Int") / LenDBU)
   ; Calculate the tab stop units per column
   ColUnits := []
   Loop, Parse, Items, `n
   {
      Loop, Parse, A_LoopField, `t
      {
         If (ColUnits[A_Index] = "")
            ColUnits[A_Index] := 0
         If !(Len := StrLen(A_LoopField))
            Continue
         DllCall("GetTextExtentPoint32", "Ptr", HDC, "Str", A_LoopField, "Int", Len, "Ptr", &SIZE)
         Units := Round((NumGet(SIZE, 0, "Int") / HDBU * 4) + (4 * ColGap))
         If (Units > ColUnits[A_Index])
            ColUnits[A_Index] := Units
      }
   }
   ; Release the DC
   DllCall("ReleaseDC", "Ptr", HLB, "Ptr", HDC)
   ; If less than two columns were found, reset the tab stops to their default
   TabCount := ColUnits.Length()
   If (TabCount < 2)
      Return LBEX_SetTabStops(HLB, 0)
   ; Build the LB_SETTABSTOPS message array parameter
   VarSetCapacity(TabArray, TabCount * 4, 0)
   TabAddr := &TabArray
   TabPos := 0
   For Index, Units In ColUnits
      TabAddr := NumPut(TabPos += Units, TabAddr + 0, "UInt")
   ; Set the tab stops - LB_SETTABSTOPS = 0x0192
   Return DllCall("SendMessage", "Ptr", HLB, "UInt", 0x0192, "Ptr", TabCount, "Ptr", &TabArray, "UInt")
}

;{SetCurSel} - Selects an item and scrolls it into view, if necessary.
;===============================
LBEX_SetCurSel(HLB, Index) {
   Static LB_SETCURSEL := 0x0186
   SendMessage, % LB_SETCURSEL, % (Index - 1), 0, , % "ahk_id " . HLB
   Return (Index = 0 ? True : ErrorLevel + 1)
}

;{SetFocus} - Sets the focus rectangle to the specified item in a multiple-selection list box.
;===============================
LBEX_SetFocus(HLB, Index) {
   Static LB_SETCARETINDEX := 0x019E
   SendMessage, % LB_SETCARETINDEX, % (Index - 1), 0, , % "ahk_id " . HLB
   Return (ErrorLevel + 1)
}


;{SetItemData} - Sets a value associated with the specified item in a list box.
;===============================
LBEX_SetItemData(HLB, Index, Data) {
   Static LB_SETITEMDATA := 0x019A
   SendMessage, % LB_SETITEMDATA, % (Index - 1), % Data, , % "ahk_id " . HLB
   Return (ErrorLevel + 1)
}

;{SetItemHeight} - Sets the height, in pixels, of items in a list box.
;===============================
LBEX_SetItemHeight(HLB, Index, Height) {
   Static LB_SETITEMHEIGHT := 0x01A0
   SendMessage, % LB_SETITEMHEIGHT, % (Index - 1), % Height, , % "ahk_id " . HLB
   Return (ErrorLevel + 1)
}

;{SetSelt} = Selects an item in a multiple-selection list box and scrolls the item into view, if necessary.
;===============================
LBEX_SetSel(HLB, Index, Select := True) {
   Static LB_SETSEL := 0x0185
   SendMessage, % LB_SETSEL, % Select, % (Index - 1), , % "ahk_id " . HLB
   Return (ErrorLevel + 1)
}

;{SetSelStart} - Sets the anchor item, that is, the item from which a multiple selection starts.
;===============================
LBEX_SetSelStart(HLB, Index) {
   Static LB_SETANCHORINDEX := 0x019C
   SendMessage, % LB_SETANCHORINDEX, % (Index - 1), 0, , % "ahk_id " . HLB
   Return (ErrorLevel + 1)
}

;{SetTabStops} - ets the tab-stop positions in a list box.
;===============================
LBEX_SetTabStops(HLB, TabArray) {
   Static LB_SETTABSTOPS := 0x0192
   If (TabArray = 0) {
      TabCount := 0
      TabsAddr := 0
   }
   Else {
      TabCount := TabArray.MaxIndex()
      VarSetCapacity(Tabs, TabCount * 4, 0)
      For Each, TabPos in TabArray
         NumPut(TabPos * 4, Tabs, (A_Index - 1) * 4, "UInt")
      TabsAddr := &Tabs
   }
   SendMessage, % LB_SETTABSTOPS, % TabCount, % TabsAddr, , % "ahk_id " . HLB
   Return ErrorLevel
}

;{SetTopIndex} - Ensures that the specified item in a list box is visible.
;===============================
LBEX_SetTopIndex(HLB, Index) {
   Static LB_SETTOPINDEX := 0x0197
   SendMessage, % LB_SETTOPINDEX, % (Index - 1), 0, , % "ahk_id " . HLB
   Return (ErrorLevel + 1)
}