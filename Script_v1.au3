#cs ----------------------------------------------------------------------------
 AutoIt Version: 3.3.14.1
 Author:         myName
 Script Function:
	Template AutoIt script.
#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
#include <GUIConstantsEx.au3>

; GUI Init

#cs

GUICreate("Bot_V1", 400, 400)
; GUICtrlCreateInput("", 424, 232, 145, 21)
GUISetState(@SW_SHOW)


Sleep 2000
Exit 1

#ce

; End GUI Inir

; Init Variables

Global $iTime_Wait_Action = 2000 , $iTime_Wait_Execute = 13200000
Global $sPseudo = "Rasta-Molotov"
Global $sName_Account = "trois-pote", $sPassword = "tageule1"
Global $iNumberPet = 40

; End Init Variables

While 1 > 0

		Connection()
		Inventory()  ;Ouvre inventaire et go equipement
		Food() ;Donne la bouffe
		CloseAutoit()
		Sleep($iTime_Wait_Execute)

WEnd


Func Connection()

		Local $PID = ShellExecute("dofus", "", "C:\Users\wawrzy_j\AppData\Local\Ankama\Dofus")

		WinWait("[CLASS:Updater Dofus]", "", 10)
		Sleep($iTime_Wait_Action)

		WinActivate("Updater Dofus")
		Sleep($iTime_Wait_Action)

		; Check Button Play Visible or not

		MouseClick($MOUSE_CLICK_LEFT, 722, 516)
		Sleep(5000)

		WinActivate("Dofus")

		MouseClick($MOUSE_CLICK_LEFT, 669, 310, 3)
		Sleep(500)
		Send($sName_Account)

		MouseClick($MOUSE_CLICK_LEFT, 657, 349, 2)
		Sleep(500)
		Send($sPassword)

		WinClose("Updater Dofus")

		WinActivate("Dofus")
		Sleep($iTime_Wait_Action)
		Send("{ESC}")
		Sleep($iTime_Wait_Action)
		MouseClick($MOUSE_CLICK_LEFT, 653, 423, 1)
		Sleep(10000)
		MouseClick($MOUSE_CLICK_LEFT, 645, 635, 1)
		Sleep($iTime_Wait_Action0)

EndFunc   ;==>Connection

Func	Inventory()
		WinActivate($sPseudo)
		Sleep(500)

		Send("i")
		Sleep($iTime_Wait_Action)

		MouseClick($MOUSE_CLICK_LEFT, 968, 120, 1)
		Sleep(1000)


		MouseMove(1016, 293)
		Sleep(500)
		MouseWheel($MOUSE_WHEEL_DOWN, 50)
		Sleep(3000)

		; Check Foods Enabed

EndFunc	  ;==>Inventory

Func	Food()
		WinActivate($sPseudo)

		For $i = 0 To 40 Step 1

			MouseClick($MOUSE_CLICK_LEFT, 1058, 517, 2)
			Sleep($iTime_Wait_Action)
			MouseClickDrag($MOUSE_CLICK_LEFT, 777, 650, 888, 324)
			Sleep($iTime_Wait_Action)
			MouseClick($MOUSE_CLICK_LEFT, 888, 324, 2)
			Sleep($iTime_Wait_Action)

		Next

			MouseClick($MOUSE_CLICK_LEFT, 888, 324, 2)
			Sleep($iTime_Wait_Action)

EndFunc

Func	CloseAutoit()
		If WinActivate($sPseudo)	Then
			WinClose($sPseudo)

		If WinActivate("Dofus")	Then
			WinClose("Dofus")	
EndFunc