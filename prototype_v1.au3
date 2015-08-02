#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>

Connection()
Inventory()  ;Ouvre inventaire et go equipement
Food() ;Donne la bouffe
CloseAutoit()

HotKeySet( "{esc}", "_Exit")

Func _Exit()
    Exit
EndFunc


Func Connection()

Local $PID = ShellExecute("dofus", "", "C:\Users\wawrzy_j\AppData\Local\Ankama\Dofus")

WinWait("[CLASS:Updater Dofus]", "", 10)
Sleep(2000)

WinActivate("Updater Dofus")
Sleep(2000)


MouseClick($MOUSE_CLICK_LEFT, 722, 516)
Sleep(5000)

WinActivate("Dofus")

MouseClick($MOUSE_CLICK_LEFT, 669, 310, 3)
Sleep(500)
Send("trois-pote")

MouseClick($MOUSE_CLICK_LEFT, 657, 349, 2)
Sleep(500)
Send("tageule1")

WinClose("Updater Dofus")

WinActivate("Dofus")
Sleep(2000)
Send("{ESC}")
Sleep(2000)
MouseClick($MOUSE_CLICK_LEFT, 653, 423, 1)
Sleep(10000)
MouseClick($MOUSE_CLICK_LEFT, 645, 635, 1)
Sleep(20000)

EndFunc   ;==>Connection

Func	Inventory()
		WinActivate(" Rasta-Molotov")
		Sleep(500)

		Send("i")
		Sleep(2000)

		MouseClick($MOUSE_CLICK_LEFT, 968, 120, 1)
		Sleep(1000)


		MouseMove(1016, 293)
		Sleep(500)
		MouseWheel($MOUSE_WHEEL_DOWN, 50)
		Sleep(3000)

EndFunc	  ;==>Inventory

Func	Food()
		WinActivate(" Rasta-Molotov")

		For $i = 0 To 40 Step 1

			MouseClick($MOUSE_CLICK_LEFT, 1058, 517, 2)
			Sleep(2000)
			MouseClickDrag($MOUSE_CLICK_LEFT, 777, 650, 888, 324)
			Sleep(2000)
			MouseClick($MOUSE_CLICK_LEFT, 888, 324, 2)
			Sleep(2000)

		Next

			MouseClick($MOUSE_CLICK_LEFT, 888, 324, 2)
			Sleep(2000)

EndFunc

Func	CloseAutoit()
		WinClose("Rasta-Molotov")
EndFunc
; mesfami julien96       (Warakner)
;Msgbox(0,"titre", $test )