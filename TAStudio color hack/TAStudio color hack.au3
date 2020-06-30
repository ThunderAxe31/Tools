#include <GUIConstantsEx.au3>
#include <FileConstants.au3>
#include <Misc.au3>

Local $v2_4_2 = 0xDA7A8

Local $v2_4_2_off_1  = 0
Local $v2_4_2_off_2  = 24
Local $v2_4_2_off_3  = 46
Local $v2_4_2_off_4  = 68
Local $v2_4_2_off_5  = 90
Local $v2_4_2_off_6  = 112
Local $v2_4_2_off_7  = 134
Local $v2_4_2_off_8  = 156
Local $v2_4_2_off_9  = 178
Local $v2_4_2_off_10 = 200
Local $v2_4_2_off_11 = 222
Local $v2_4_2_off_12 = 244

Local $v2_4_2_def_1  = 0xB5E7F7
Local $v2_4_2_def_2  = 0xB5E7F7
Local $v2_4_2_def_3  = 0xDDFFDD
Local $v2_4_2_def_4  = 0xD2F9D3
Local $v2_4_2_def_5  = 0xC4F7C8
Local $v2_4_2_def_6  = 0xE0FBE0
Local $v2_4_2_def_7  = 0xFFDCDD
Local $v2_4_2_def_8  = 0xF4DADA
Local $v2_4_2_def_9  = 0xF0D0D2
Local $v2_4_2_def_10 = 0xF7E5E5
Local $v2_4_2_def_11 = 0xF7FFC9
Local $v2_4_2_def_12 = 0x909070

Local $col_1 = 0
Local $col_2 = 0
Local $col_3 = 0
Local $col_4 = 0
Local $col_5 = 0
Local $col_6 = 0
Local $col_7 = 0
Local $col_8 = 0
Local $col_9 = 0
Local $col_10 = 0
Local $col_11 = 0
Local $col_12 = 0

Local $hGUI = GUICreate("TAStudio colors hack", 365, 455)
Local $open = GUICtrlCreateButton("Open file", 10, 10, 100, 25)
Local $save = GUICtrlCreateButton("Save file", 130, 10, 100, 25)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $reset = GUICtrlCreateButton("Reset to default", 250, 10, 100, 25)
GUICtrlSetState ( -1, $GUI_DISABLE )

Local $file_path = ""
Local $file_handle = 0
Local $data = 0

Local $show_col_1 = GUICtrlCreateGraphic(15, 50, 100, 15)
GUICtrlSetBkColor(-1, 0xffffff)
GUICtrlSetColor(-1, 0)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $show_col_2 = GUICtrlCreateGraphic(15, 80, 100, 15)
GUICtrlSetBkColor(-1, 0xffffff)
GUICtrlSetColor(-1, 0)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $show_col_3 = GUICtrlCreateGraphic(15, 125, 100, 15)
GUICtrlSetBkColor(-1, 0xffffff)
GUICtrlSetColor(-1, 0)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $show_col_4 = GUICtrlCreateGraphic(15, 155, 100, 15)
GUICtrlSetBkColor(-1, 0xffffff)
GUICtrlSetColor(-1, 0)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $show_col_5 = GUICtrlCreateGraphic(15, 185, 100, 15)
GUICtrlSetBkColor(-1, 0xffffff)
GUICtrlSetColor(-1, 0)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $show_col_6 = GUICtrlCreateGraphic(15, 215, 100, 15)
GUICtrlSetBkColor(-1, 0xffffff)
GUICtrlSetColor(-1, 0)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $show_col_7 = GUICtrlCreateGraphic(15, 260, 100, 15)
GUICtrlSetBkColor(-1, 0xffffff)
GUICtrlSetColor(-1, 0)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $show_col_8 = GUICtrlCreateGraphic(15, 290, 100, 15)
GUICtrlSetBkColor(-1, 0xffffff)
GUICtrlSetColor(-1, 0)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $show_col_9 = GUICtrlCreateGraphic(15, 320, 100, 15)
GUICtrlSetBkColor(-1, 0xffffff)
GUICtrlSetColor(-1, 0)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $show_col_10 = GUICtrlCreateGraphic(15, 350, 100, 15)
GUICtrlSetBkColor(-1, 0xffffff)
GUICtrlSetColor(-1, 0)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $show_col_11 = GUICtrlCreateGraphic(15, 392, 100, 15)
GUICtrlSetBkColor(-1, 0xffffff)
GUICtrlSetColor(-1, 0)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $show_col_12 = GUICtrlCreateGraphic(15, 425, 100, 15)
GUICtrlSetBkColor(-1, 0xffffff)
GUICtrlSetColor(-1, 0)
GUICtrlSetState ( -1, $GUI_DISABLE )

Local $text_col_1  = GUICtrlCreateInput("0xFFFFFF", 125,  48, 60, 18)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $text_col_2  = GUICtrlCreateInput("0xFFFFFF", 125,  78, 60, 18)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $text_col_3  = GUICtrlCreateInput("0xFFFFFF", 125, 123, 60, 18)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $text_col_4  = GUICtrlCreateInput("0xFFFFFF", 125, 153, 60, 18)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $text_col_5  = GUICtrlCreateInput("0xFFFFFF", 125, 183, 60, 18)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $text_col_6  = GUICtrlCreateInput("0xFFFFFF", 125, 213, 60, 18)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $text_col_7  = GUICtrlCreateInput("0xFFFFFF", 125, 258, 60, 18)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $text_col_8  = GUICtrlCreateInput("0xFFFFFF", 125, 288, 60, 18)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $text_col_9  = GUICtrlCreateInput("0xFFFFFF", 125, 318, 60, 18)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $text_col_10 = GUICtrlCreateInput("0xFFFFFF", 125, 348, 60, 18)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $text_col_11 = GUICtrlCreateInput("0xFFFFFF", 125, 393, 60, 18)
GUICtrlSetState ( -1, $GUI_DISABLE )
Local $text_col_12 = GUICtrlCreateInput("0xFFFFFF", 125, 423, 60, 18)
GUICtrlSetState ( -1, $GUI_DISABLE )

Local $label_col_1  = GUICtrlCreateLabel("CurrentFrame_InputLog",          195,  50, 160, 18)
Local $label_col_2  = GUICtrlCreateLabel("SeekFrame_InputLog",             195,  80, 160, 18)
Local $label_col_3  = GUICtrlCreateLabel("GreenZone_FrameCol",             195, 125, 160, 18)
Local $label_col_4  = GUICtrlCreateLabel("GreenZone_InputLog",             195, 155, 160, 18)
Local $label_col_5  = GUICtrlCreateLabel("GreenZone_InputLog_Stated",      195, 185, 160, 18)
Local $label_col_6  = GUICtrlCreateLabel("GreenZone_InputLog_Invalidated", 195, 215, 160, 18)
Local $label_col_7  = GUICtrlCreateLabel("LagZone_FrameCol",               195, 260, 160, 18)
Local $label_col_8  = GUICtrlCreateLabel("LagZone_InputLog",               195, 290, 160, 18)
Local $label_col_9  = GUICtrlCreateLabel("LagZone_InputLog_Stated",        195, 320, 160, 18)
Local $label_col_10 = GUICtrlCreateLabel("LagZone_InputLog_Invalidated",   195, 350, 160, 18)
Local $label_col_11 = GUICtrlCreateLabel("Marker_FrameCol",                195, 395, 160, 18)
Local $label_col_12 = GUICtrlCreateLabel("AnalogEdit_Col",                 195, 425, 160, 18)

; Display the GUI.
GUISetState(@SW_SHOW, $hGUI)

Func open_file()
	$file_path = FileOpenDialog ( "Select EmuHawk.exe", @WorkingDir & "\", "EmuHawk.exe (*.exe)" , BitOR($FD_FILEMUSTEXIST, $FD_PATHMUSTEXIST ), "EmuHawk.exe" ,$hGUI)
	If @error = 0 Then

		Local $file_handle = FileOpen($file_path, $FO_READ + $FO_BINARY)
		if $file_handle then

			$data = FileRead($file_handle)
			$data = StringToASCIIArray(BinaryToString($data),0,StringLen($data),0)
			FileClose($file_path)

			Local $col_1 =  $data[$v2_4_2+$v2_4_2_off_1] *65536 +$data[$v2_4_2+$v2_4_2_off_1+5] *256 +$data[$v2_4_2+$v2_4_2_off_1+10]
			Local $col_2 =  $data[$v2_4_2+$v2_4_2_off_2] *65536 +$data[$v2_4_2+$v2_4_2_off_2+5] *256 +$data[$v2_4_2+$v2_4_2_off_2+10]
			Local $col_3 =  $data[$v2_4_2+$v2_4_2_off_3] *65536 +$data[$v2_4_2+$v2_4_2_off_3+5] *256 +$data[$v2_4_2+$v2_4_2_off_3+10]
			Local $col_4 =  $data[$v2_4_2+$v2_4_2_off_4] *65536 +$data[$v2_4_2+$v2_4_2_off_4+5] *256 +$data[$v2_4_2+$v2_4_2_off_4+10]
			Local $col_5 =  $data[$v2_4_2+$v2_4_2_off_5] *65536 +$data[$v2_4_2+$v2_4_2_off_5+5] *256 +$data[$v2_4_2+$v2_4_2_off_5+10]
			Local $col_6 =  $data[$v2_4_2+$v2_4_2_off_6] *65536 +$data[$v2_4_2+$v2_4_2_off_6+5] *256 +$data[$v2_4_2+$v2_4_2_off_6+10]
			Local $col_7 =  $data[$v2_4_2+$v2_4_2_off_7] *65536 +$data[$v2_4_2+$v2_4_2_off_7+5] *256 +$data[$v2_4_2+$v2_4_2_off_7+10]
			Local $col_8 =  $data[$v2_4_2+$v2_4_2_off_8] *65536 +$data[$v2_4_2+$v2_4_2_off_8+5] *256 +$data[$v2_4_2+$v2_4_2_off_8+10]
			Local $col_9 =  $data[$v2_4_2+$v2_4_2_off_9] *65536 +$data[$v2_4_2+$v2_4_2_off_9+5] *256 +$data[$v2_4_2+$v2_4_2_off_9+10]
			Local $col_10 = $data[$v2_4_2+$v2_4_2_off_10]*65536 +$data[$v2_4_2+$v2_4_2_off_10+5]*256 +$data[$v2_4_2+$v2_4_2_off_10+10]
			Local $col_11 = $data[$v2_4_2+$v2_4_2_off_11]*65536 +$data[$v2_4_2+$v2_4_2_off_11+5]*256 +$data[$v2_4_2+$v2_4_2_off_11+10]
			Local $col_12 = $data[$v2_4_2+$v2_4_2_off_12]*65536 +$data[$v2_4_2+$v2_4_2_off_12+5]*256 +$data[$v2_4_2+$v2_4_2_off_12+10]

			GUICtrlSetBkColor($show_col_1,  $col_1)
			GUICtrlSetBkColor($show_col_2,  $col_2)
			GUICtrlSetBkColor($show_col_3,  $col_3)
			GUICtrlSetBkColor($show_col_4,  $col_4)
			GUICtrlSetBkColor($show_col_5,  $col_5)
			GUICtrlSetBkColor($show_col_6,  $col_6)
			GUICtrlSetBkColor($show_col_7,  $col_7)
			GUICtrlSetBkColor($show_col_8,  $col_8)
			GUICtrlSetBkColor($show_col_9,  $col_9)
			GUICtrlSetBkColor($show_col_10, $col_10)
			GUICtrlSetBkColor($show_col_11, $col_11)
			GUICtrlSetBkColor($show_col_12, $col_12)

			GUICtrlSetData($text_col_1,  "0x" & Hex($col_1,  6))
			GUICtrlSetData($text_col_2,  "0x" & Hex($col_2,  6))
			GUICtrlSetData($text_col_3,  "0x" & Hex($col_3,  6))
			GUICtrlSetData($text_col_4,  "0x" & Hex($col_4,  6))
			GUICtrlSetData($text_col_5,  "0x" & Hex($col_5,  6))
			GUICtrlSetData($text_col_6,  "0x" & Hex($col_6,  6))
			GUICtrlSetData($text_col_7,  "0x" & Hex($col_7,  6))
			GUICtrlSetData($text_col_8,  "0x" & Hex($col_8,  6))
			GUICtrlSetData($text_col_9,  "0x" & Hex($col_9,  6))
			GUICtrlSetData($text_col_10, "0x" & Hex($col_10, 6))
			GUICtrlSetData($text_col_11, "0x" & Hex($col_11, 6))
			GUICtrlSetData($text_col_12, "0x" & Hex($col_12, 6))

			GUICtrlSetState ( $show_col_1,  $GUI_ENABLE )
			GUICtrlSetState ( $show_col_2,  $GUI_ENABLE )
			GUICtrlSetState ( $show_col_3,  $GUI_ENABLE )
			GUICtrlSetState ( $show_col_4,  $GUI_ENABLE )
			GUICtrlSetState ( $show_col_5,  $GUI_ENABLE )
			GUICtrlSetState ( $show_col_6,  $GUI_ENABLE )
			GUICtrlSetState ( $show_col_7,  $GUI_ENABLE )
			GUICtrlSetState ( $show_col_8,  $GUI_ENABLE )
			GUICtrlSetState ( $show_col_9,  $GUI_ENABLE )
			GUICtrlSetState ( $show_col_10, $GUI_ENABLE )
			GUICtrlSetState ( $show_col_11, $GUI_ENABLE )
			GUICtrlSetState ( $show_col_12, $GUI_ENABLE )

			GUICtrlSetCursor ( $show_col_1, 0 )
			GUICtrlSetCursor ( $show_col_2, 0 )
			GUICtrlSetCursor ( $show_col_3, 0 )
			GUICtrlSetCursor ( $show_col_4, 0 )
			GUICtrlSetCursor ( $show_col_5, 0 )
			GUICtrlSetCursor ( $show_col_6, 0 )
			GUICtrlSetCursor ( $show_col_7, 0 )
			GUICtrlSetCursor ( $show_col_8, 0 )
			GUICtrlSetCursor ( $show_col_9, 0 )
			GUICtrlSetCursor ( $show_col_10, 0 )
			GUICtrlSetCursor ( $show_col_11, 0 )
			GUICtrlSetCursor ( $show_col_12, 0 )

			GUICtrlSetState ( $text_col_1,  $GUI_ENABLE )
			GUICtrlSetState ( $text_col_2,  $GUI_ENABLE )
			GUICtrlSetState ( $text_col_3,  $GUI_ENABLE )
			GUICtrlSetState ( $text_col_4,  $GUI_ENABLE )
			GUICtrlSetState ( $text_col_5,  $GUI_ENABLE )
			GUICtrlSetState ( $text_col_6,  $GUI_ENABLE )
			GUICtrlSetState ( $text_col_7,  $GUI_ENABLE )
			GUICtrlSetState ( $text_col_8,  $GUI_ENABLE )
			GUICtrlSetState ( $text_col_9,  $GUI_ENABLE )
			GUICtrlSetState ( $text_col_10, $GUI_ENABLE )
			GUICtrlSetState ( $text_col_11, $GUI_ENABLE )
			GUICtrlSetState ( $text_col_12, $GUI_ENABLE )

			GUICtrlSetState ( $save, $GUI_ENABLE )
			GUICtrlSetState ( $reset, $GUI_ENABLE )
		else
			MsgBox(48,"Error","Unable to open the file.")
		EndIf
	endif
EndFunc

; Loop until the user exits.
While 1
	Switch GUIGetMsg()
		Case $GUI_EVENT_CLOSE
			ExitLoop
		Case $open
			if $file_path <> "" then
				if MsgBox(292,"Confirmation","There is a file already open. Are you sure you want to lose current edits and open a new file?") = 6 then
					open_file()
				endif
			else
				open_file()
			endif
		Case $save

			Local $save_path = FileSaveDialog ("Save modified EmuHawk.exe", $file_path, "EmuHawk.exe (*.exe)" , $FD_PATHMUSTEXIST + $FD_PROMPTOVERWRITE , "EmuHawk.exe", $hGUI)
			if @error = 0 Then
				Local $new_file = FileOpen($save_path,$FO_OVERWRITE +$FO_BINARY +$FO_ANSI)

				$data[$v2_4_2+$v2_4_2_off_1]=BitAND(GUICtrlRead($text_col_1),16711680)/65536
				$data[$v2_4_2+$v2_4_2_off_1+5]=BitAND(GUICtrlRead($text_col_1),65280)/256
				$data[$v2_4_2+$v2_4_2_off_1+10]=BitAND(GUICtrlRead($text_col_1),255)
				$data[$v2_4_2+$v2_4_2_off_2]=BitAND(GUICtrlRead($text_col_2),16711680)/65536
				$data[$v2_4_2+$v2_4_2_off_2+5]=BitAND(GUICtrlRead($text_col_2),65280)/256
				$data[$v2_4_2+$v2_4_2_off_2+10]=BitAND(GUICtrlRead($text_col_2),255)
				$data[$v2_4_2+$v2_4_2_off_3]=BitAND(GUICtrlRead($text_col_3),16711680)/65536
				$data[$v2_4_2+$v2_4_2_off_3+5]=BitAND(GUICtrlRead($text_col_3),65280)/256
				$data[$v2_4_2+$v2_4_2_off_3+10]=BitAND(GUICtrlRead($text_col_3),255)
				$data[$v2_4_2+$v2_4_2_off_4]=BitAND(GUICtrlRead($text_col_4),16711680)/65536
				$data[$v2_4_2+$v2_4_2_off_4+5]=BitAND(GUICtrlRead($text_col_4),65280)/256
				$data[$v2_4_2+$v2_4_2_off_4+10]=BitAND(GUICtrlRead($text_col_4),255)
				$data[$v2_4_2+$v2_4_2_off_5]=BitAND(GUICtrlRead($text_col_5),16711680)/65536
				$data[$v2_4_2+$v2_4_2_off_5+5]=BitAND(GUICtrlRead($text_col_5),65280)/256
				$data[$v2_4_2+$v2_4_2_off_5+10]=BitAND(GUICtrlRead($text_col_5),255)
				$data[$v2_4_2+$v2_4_2_off_6]=BitAND(GUICtrlRead($text_col_6),16711680)/65536
				$data[$v2_4_2+$v2_4_2_off_6+5]=BitAND(GUICtrlRead($text_col_6),65280)/256
				$data[$v2_4_2+$v2_4_2_off_6+10]=BitAND(GUICtrlRead($text_col_6),255)
				$data[$v2_4_2+$v2_4_2_off_7]=BitAND(GUICtrlRead($text_col_7),16711680)/65536
				$data[$v2_4_2+$v2_4_2_off_7+5]=BitAND(GUICtrlRead($text_col_7),65280)/256
				$data[$v2_4_2+$v2_4_2_off_7+10]=BitAND(GUICtrlRead($text_col_7),255)
				$data[$v2_4_2+$v2_4_2_off_8]=BitAND(GUICtrlRead($text_col_8),16711680)/65536
				$data[$v2_4_2+$v2_4_2_off_8+5]=BitAND(GUICtrlRead($text_col_8),65280)/256
				$data[$v2_4_2+$v2_4_2_off_8+10]=BitAND(GUICtrlRead($text_col_8),255)
				$data[$v2_4_2+$v2_4_2_off_9]=BitAND(GUICtrlRead($text_col_9),16711680)/65536
				$data[$v2_4_2+$v2_4_2_off_9+5]=BitAND(GUICtrlRead($text_col_9),65280)/256
				$data[$v2_4_2+$v2_4_2_off_9+10]=BitAND(GUICtrlRead($text_col_9),255)
				$data[$v2_4_2+$v2_4_2_off_10]=BitAND(GUICtrlRead($text_col_10),16711680)/65536
				$data[$v2_4_2+$v2_4_2_off_10+5]=BitAND(GUICtrlRead($text_col_10),65280)/256
				$data[$v2_4_2+$v2_4_2_off_10+10]=BitAND(GUICtrlRead($text_col_10),255)
				$data[$v2_4_2+$v2_4_2_off_11]=BitAND(GUICtrlRead($text_col_11),16711680)/65536
				$data[$v2_4_2+$v2_4_2_off_11+5]=BitAND(GUICtrlRead($text_col_11),65280)/256
				$data[$v2_4_2+$v2_4_2_off_11+10]=BitAND(GUICtrlRead($text_col_11),255)
				$data[$v2_4_2+$v2_4_2_off_12]=BitAND(GUICtrlRead($text_col_12),16711680)/65536
				$data[$v2_4_2+$v2_4_2_off_12+5]=BitAND(GUICtrlRead($text_col_12),65280)/256
				$data[$v2_4_2+$v2_4_2_off_12+10]=BitAND(GUICtrlRead($text_col_12),255)

				FileWrite($new_file, StringFromASCIIArray($data))
				FileClose($new_file)
			EndIf
		Case $reset
			if MsgBox(292,"Confirmation","Are you sure you want to reset all colors to their default values?") = 6 then
				GUICtrlSetBkColor($show_col_1, $v2_4_2_def_1)
				GUICtrlSetData($text_col_1, StringReplace(Hex($v2_4_2_def_1),2,"x"))
				GUICtrlSetBkColor($show_col_2, $v2_4_2_def_2)
				GUICtrlSetData($text_col_2, StringReplace(Hex($v2_4_2_def_2),2,"x"))
				GUICtrlSetBkColor($show_col_3, $v2_4_2_def_3)
				GUICtrlSetData($text_col_3, StringReplace(Hex($v2_4_2_def_3),2,"x"))
				GUICtrlSetBkColor($show_col_4, $v2_4_2_def_4)
				GUICtrlSetData($text_col_4, StringReplace(Hex($v2_4_2_def_4),2,"x"))
				GUICtrlSetBkColor($show_col_5, $v2_4_2_def_5)
				GUICtrlSetData($text_col_5, StringReplace(Hex($v2_4_2_def_5),2,"x"))
				GUICtrlSetBkColor($show_col_6, $v2_4_2_def_6)
				GUICtrlSetData($text_col_6, StringReplace(Hex($v2_4_2_def_6),2,"x"))
				GUICtrlSetBkColor($show_col_7, $v2_4_2_def_7)
				GUICtrlSetData($text_col_7, StringReplace(Hex($v2_4_2_def_7),2,"x"))
				GUICtrlSetBkColor($show_col_8, $v2_4_2_def_8)
				GUICtrlSetData($text_col_8, StringReplace(Hex($v2_4_2_def_8),2,"x"))
				GUICtrlSetBkColor($show_col_9, $v2_4_2_def_9)
				GUICtrlSetData($text_col_9, StringReplace(Hex($v2_4_2_def_9),2,"x"))
				GUICtrlSetBkColor($show_col_10, $v2_4_2_def_10)
				GUICtrlSetData($text_col_10, StringReplace(Hex($v2_4_2_def_10),2,"x"))
				GUICtrlSetBkColor($show_col_11, $v2_4_2_def_11)
				GUICtrlSetData($text_col_11, StringReplace(Hex($v2_4_2_def_11),2,"x"))
				GUICtrlSetBkColor($show_col_12, $v2_4_2_def_12)
				GUICtrlSetData($text_col_12, StringReplace(Hex($v2_4_2_def_12),2,"x"))
			endif

		Case $show_col_1
			Local $col = _ChooseColor (2)
			if $col <> -1 then
				GUICtrlSetBkColor($show_col_1, $col )
				GUICtrlSetData($text_col_1, $col)
				$col_1 = Int($col)
			endif
		Case $text_col_1
			Local $col = GUICtrlRead($text_col_1)
			GUICtrlSetBkColor($show_col_1, $col )
			$col_1 = Int($col)

		Case $show_col_2
			Local $col = _ChooseColor (2)
			if $col <> -1 then
				GUICtrlSetBkColor($show_col_2, $col )
				GUICtrlSetData($text_col_2, $col)
				$col_2 = Int($col)
			endif
		Case $text_col_2
			Local $col = GUICtrlRead($text_col_2)
			GUICtrlSetBkColor($show_col_2, $col )
			$col_2 = Int($col)

		Case $show_col_3
			Local $col = _ChooseColor (2)
			if $col <> -1 then
				GUICtrlSetBkColor($show_col_3, $col )
				GUICtrlSetData($text_col_3, $col)
				$col_3 = Int($col)
			endif
		Case $text_col_3
			Local $col = GUICtrlRead($text_col_3)
			GUICtrlSetBkColor($show_col_3, $col )
			$col_3 = Int($col)

		Case $show_col_4
			Local $col = _ChooseColor (2)
			if $col <> -1 then
				GUICtrlSetBkColor($show_col_4, $col )
				GUICtrlSetData($text_col_4, $col)
				$col_4 = Int($col)
			EndIf
		Case $text_col_4
			Local $col = GUICtrlRead($text_col_4)
			GUICtrlSetBkColor($show_col_4, $col )
			$col_4 = Int($col)

		Case $show_col_5
			Local $col = _ChooseColor (2)
			if $col <> -1 then
				GUICtrlSetBkColor($show_col_5, $col )
				GUICtrlSetData($text_col_5, $col)
				$col_5 = Int($col)
			EndIf
		Case $text_col_5
			Local $col = GUICtrlRead($text_col_5)
			GUICtrlSetBkColor($show_col_5, $col )
			$col_5 = Int($col)

		Case $show_col_6
			Local $col = _ChooseColor (2)
			if $col <> -1 then
				GUICtrlSetBkColor($show_col_6, $col )
				GUICtrlSetData($text_col_6, $col)
				$col_6 = Int($col)
			EndIf
		Case $text_col_6
			Local $col = GUICtrlRead($text_col_6)
			GUICtrlSetBkColor($show_col_6, $col )
			$col_6 = Int($col)

		Case $show_col_7
			Local $col = _ChooseColor (2)
			if $col <> -1 then
				GUICtrlSetBkColor($show_col_7, $col )
				GUICtrlSetData($text_col_7, $col)
				$col_7 = Int($col)
			EndIf
		Case $text_col_7
			Local $col = GUICtrlRead($text_col_7)
			GUICtrlSetBkColor($show_col_7, $col )
			$col_7 = Int($col)

		Case $show_col_8
			Local $col = _ChooseColor (2)
			if $col <> -1 then
				GUICtrlSetBkColor($show_col_8, $col )
				GUICtrlSetData($text_col_8, $col)
				$col_8 = Int($col)
			EndIf
		Case $text_col_8
			Local $col = GUICtrlRead($text_col_8)
			GUICtrlSetBkColor($show_col_8, $col )
			$col_8 = Int($col)

		Case $show_col_9
			Local $col = _ChooseColor (2)
			if $col <> -1 then
				GUICtrlSetBkColor($show_col_9, $col )
				GUICtrlSetData($text_col_9, $col)
				$col_9 = Int($col)
			EndIf
		Case $text_col_9
			Local $col = GUICtrlRead($text_col_9)
			GUICtrlSetBkColor($show_col_9, $col )
			$col_9 = Int($col)

		Case $show_col_10
			Local $col = _ChooseColor (2)
			if $col <> -1 then
				GUICtrlSetBkColor($show_col_10, $col )
				GUICtrlSetData($text_col_10, $col)
				$col_10 = Int($col)
			EndIf
		Case $text_col_10
			Local $col = GUICtrlRead($text_col_10)
			GUICtrlSetBkColor($show_col_10, $col )
			$col_10 = Int($col)

		Case $show_col_11
			Local $col = _ChooseColor (2)
			if $col <> -1 then
				GUICtrlSetBkColor($show_col_11, $col )
				GUICtrlSetData($text_col_11, $col)
				$col_11 = Int($col)
			EndIf
		Case $text_col_11
			Local $col = GUICtrlRead($text_col_11)
			GUICtrlSetBkColor($show_col_11, $col )
			$col_11 = Int($col)

		Case $show_col_12
			Local $col = _ChooseColor (2)
			if $col <> -1 then
				GUICtrlSetBkColor($show_col_12, $col )
				GUICtrlSetData($text_col_12, $col)
				$col_12 = Int($col)
			EndIf
		Case $text_col_12
			Local $col = GUICtrlRead($text_col_12)
			GUICtrlSetBkColor($show_col_12, $col )
			$col_12 = Int($col)

	EndSwitch
WEnd

; Delete the previous GUI and all controls.
GUIDelete($hGUI)
