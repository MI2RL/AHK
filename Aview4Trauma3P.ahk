;AHK macro. Hot key settings for MIRL. ;ctrl=^, alt=!, shift=+
;���̺�. ���̵���� ���ְ� Ǯ��ũ�� ����� ��Ű. �� ����ũ ���̾���� "C-F, T-F, L-F" �̸����� �����ϴ� ��Ű ��.
zx := 0 	;�۷ι� ���� �ʱ�ȭ. (������ ���� �ʱ�ȭ�� �ʿ䰡 ���⵵ ��.)
zy := 0
zsSavePath := ""
zsMaskFolderName := "Mask_DataSet"

#s::	;���� ������ ��ɿ���, ������Ű�� s�� ������ Search ���� ����� �� ������, �� ��Ű�� ��ä�ϰ� ��.
 ;AHK�� ��ũ�θ� ��� �ߴ��ϰ� AHK���� �޴��� ���. ��ũ�� ������ �߸��ǰ� �ְų� ��ũ�θ� �����Ͽ��� ���� �ַ� Reload�� ������. (��, ��Ű+s������R������)
  Menu, Tray, Show 	;AHK��ɾ� Menu Tray�� ����پ��� �������� ������ �� ������, �ƹ� ���ھ��� show�� �θ��� AHK ��Ű �������� �޴��� ���.
  Return

#IfWinActive, ahk_exe AView2010.exe ; ���� ��Ű���� Aview�� ��Ŀ���� ������ ������.

#1::	;���� ������ ��ɿ���, ������Ű�� ����1�� ������ TaskBar ù° �׸��� Ŭ���ϴ� ����̳�, �� ��Ű�� ��ä�ϰ� ��.
 ;�޴� View���� ���̵���� ����, ���۾�â�� Full, Preset�� Bone, �۾��� ����ũ �̸��� �ڵ� ����.
  BlockInput MouseMove
  WinActivate, ahk_exe AView2010.exe
  CoordMode, Mouse, Window 	;���콺 ���� ������ �������� Aview â ���η� ����.
  Send, {esc}			;�ٸ� ��ȭâ�� ���ְų� ��Ŀ���� ���� ������� �ϴ� ESC Ű�� ���� ������.
  MouseMove, 100, 10, 5		;Aview ���α׷� Ÿ��Ʋ�� ���� ��ġ�� ���콺 Ŀ���� �̵���.
  ;������ MouseMove�� �̾� �Ʒ��� MouseClick�� �ϴ� ������ ���� MouseClick(��ǥ ����) �� �����ε� �����ϳ�, �޸��ۼ��� �� ������� ���Ǽ��� ���� �и�����.
  MouseClick,  left		;Ÿ��Ʋ�ٸ� �ѹ� Ŭ���ϴ� ������, ���θ޴� ����Ű�� Ȯ���ϰ� �Է½�Ű�� ���� ������ġ��.
  Send, !v			;���θ޴��� ����Ű�� Alt+V�� ���� View �׸��� ���.
  Sleep, 100			;0.1�� ���. �ý����� ���� ��� �ణ�� �����̰� �ʿ���.
  Send, g			;View�޴� �ȿ��� GuideLine�� ����ϴ� Ű�� "g"�� ������ ����ǹǷ� gŰ�� ħ.

  ;�Ʒ� ���� ���۾�â�� ��ġ�� ã�� ����.
  WinGetPos, zx, zy, zw, zh, ahk_exe AView2010.exe
  zx := (zw/2)
  ;�Ʒ� ���� ControlGetPos�� Mask Control�� ��ġ�� ã�� ����. ����Ż �۾���.
  ;ControlGetPos, zx, zy, zw, zh, Mask Control, ahk_exe AView2010.exe		; ����Ż �۾���.
  MouseMove, zx-300, zy+300, 5	;ã���� ��ġ���� ���� �ȼ��� �̵��Ͽ� ���۾� ����â�� ���콺�� �̵���.
  Click, right			;���콺 ������ ��ư�� Ŭ���Ͽ� ���ؽ�Ʈ�޴��� ���.
  Send, {down}{right}{enter}	;���ؽ�Ʈ �޴��� ù��°(downŰ) �޴��� ������(right) ���ļ� ���� ù��° �޴��� Full screen�� ����(enter)��.
  BlockInput MouseMoveOff
  Return

#2::
  BlockInput MouseMove
  CoordMode, Mouse, Window 	;���콺 ���� ������ �������� Aview â ���η� ����.
  Send, {esc}			;�ٸ� ��ȭâ�� ���ְų� ��Ŀ���� ���� ������� �ϴ� ESC Ű�� ���� ������.
  ;�Ʒ� ���� ���۾�â�� ��ġ�� ã�� ����.
  WinGetPos, zx, zy, zw, zh, ahk_exe AView2010.exe
  zx := (zw/2)
  MouseMove, zx-300, zy+300, 5	;ã���� ��ġ���� ���� �ȼ��� �̵��Ͽ� ���۾� ����â�� ���콺�� �̵���.
  Click, right			;���콺 ������ ��ư�� Ŭ���Ͽ� ���ؽ�Ʈ�޴��� ���.
  Sleep, 100			;0.1�� ���. �ý����� ���� ��� �ణ�� �����̰� �ʿ���.
  Send, {up}{up}{up}{right}	;���ؽ�Ʈ �޴����� preset
  Sleep, 100			;0.1�� ���. �ý����� ���� ��� �ణ�� �����̰� �ʿ���.
  Send, {up}{up}{enter}		;���ؽ�Ʈ �޴����� bone

  ControlGetPos, zx, zy, zw, zh, Mask Control, ahk_exe AView2010.exe
  if zx = ""
  {
    Return
  }		;����ũ��Ʈ���� ã�ƺ�. ������ ����.
  MouseMove, zx+10, zy+10, 5	;ã���� ����ũ��Ʈ���� �Ѹ���ġ(�»�� �ڳ�)���� 10 �ȼ��� �����ϴ��� ��� Ŭ���ϱ� ���� �̵���.
  MouseClick,  left		;Ŭ���Ͽ� ��Ŀ���� ��

  WinGetClass, zClass, A
  MouseGetPos, zx, zy, zWin, zControl, 1
  ControlGetText, zText, %zControl%, ahk_class %zClass%
  if (zText <> "Mask Control")	;Mask control�� �ֻ� ��Ʈ���� �ƴϸ� ����
  {
    Return
  }
  ;�Ʒ� ���� ControlGetPos ������ �ΰ��� ���ڴ� AView ȭ�� ���� title label�� &(���ۼ��忡 ���� ������ ����)Create�� ��ư�� ��ġ�� ã�� ����.
  ControlGetPos, zx, zy, zw, zh, &Create, ahk_exe AView2010.exe
  if (zx = "")			;��ư�� ��ã������ ����.
  {
    Return
  }
  MouseMove, zx+10, zy+10, 5	;ã���� Create ��ư �Ѹ���ġ(�»�� �ڳ�)���� 10 �ȼ��� �����ϴ��� ��� Ŭ���ϱ� ���� �̵���.
  MouseClick,  left		;��ư�� ����. (���� ���ߵ���, MouseClick(��ǥ) 1������ �ذ� �����ϳ�, � ���Ǽ��� ���� 2������ �ڵ���.)
  Sleep, 500			;����ũ�� �����ϴ� ��ȭâ�� �߱⸦ ��� ��ٷ� ��.
  Send, 10000{tab}	;Ű�����Է� ��Ŀ���� �� �ִ� LowerBound �Է¶��� ���� �ϸ��� �Է��ϰ� tabŰ�� ���� ���� �Է�ĭ���� �̵���.
  Sleep, 300
  Send, 10000{tab}	;UpperBound �Է¶��� ���� �ϸ��� �Է��ϰ� tabŰ�� ���� ���� �Է�ĭ���� �̵���.
  Sleep, 300
;  Send, C-F{enter}	;����ũ �̸� �Է¶��� ������ �̸��� �Է��ϰ� enter�� ������ ��ȭâ�� �����鼭 ����ũ�� ������.
;  Send, Th{enter}	;����ũ �̸� �Է¶��� ������ �̸��� �Է��ϰ� enter�� ������ ��ȭâ�� �����鼭 ����ũ�� ������.
  Send, P{enter}	;����ũ �̸� �Է¶��� ������ �̸��� �Է��ϰ� enter�� ������ ��ȭâ�� �����鼭 ����ũ�� ������.
  Sleep, 500
  
  ControlGetPos, zx, zy, zw, zh, Mask Control, ahk_exe AView2010.exe
  MouseClick,  left, zx+40, zy+75	;�ʿ��� ����ũ�� ���������, MaskControl ��ġ���� ����Ʈ �� ù��° ����ũ�� Ŭ���Ͽ� ������.
  BlockInput MouseMoveOff
  Return

#IfWinActive ; ���� ��Ű���� AView�Ӹ� �ƴ϶� ������ �������� ������.


#m::
 ;To disable "global minimize key" and replace with "mouse click" on current position.
  Click
  Return
