;AHK macro. Hot key settings for MIRL. ;ctrl=^, alt=!, shift=+
;���̺�. ���̵���� ���ְ� Ǯ��ũ�� ����� ��Ű. �� ����ũ ���̾���� "C-F, T-F, L-F" �̸����� �����ϴ� ��Ű ��.
zx := 0 	;�۷ι� ���� �ʱ�ȭ. (������ ���� �ʱ�ȭ�� �ʿ䰡 ���⵵ ��.)
zy := 0
zsThisAhkName := "Aview4Trauma"
zsSavePath := ""
zsMaskFolderName := "Mask_DataSet"

#s::	;���� ������ ��ɿ���, ������Ű�� s�� ������ Search ���� ����� �� ������, �� ��Ű�� ��ä�ϰ� ��.
 ;AHK�� ��ũ�θ� ��� �ߴ��ϰ� AHK���� �޴��� ���. ��ũ�� ������ �߸��ǰ� �ְų� ��ũ�θ� �����Ͽ��� ���� �ַ� Reload�� ������. (��, ��Ű+s������R������)
  Menu, Tray, Show 	;AHK��ɾ� Menu Tray�� ����پ��� �������� ������ �� ������, �ƹ� ���ھ��� show�� �θ��� AHK ��Ű �������� �޴��� ���.
  Return

#IfWinActive, ahk_exe AView2010.exe ; ���� ��Ű���� Aview�� ��Ŀ���� ������ ������.

#1::	;���� ������ ��ɿ���, ������Ű�� ����1�� ������ TaskBar ù° �׸��� Ŭ���ϴ� ����̳�, �� ��Ű�� ��ä�ϰ� ��.
 ;�޴� View���� ���̵���� ����, ���۾�â�� Full, Preset�� Bone, �۾��� ����ũ �̸��� �ڵ� ����.
  BlockInput, MouseMove		;��Ű ���� �߿� ���콺�� ���.
  CoordMode, Mouse, Window 	;���콺 ���� ������ �������� Aview â ���η� ����.

  WinActivate, AView		;Aviewâ�� �ֻ������ Ȱ��ȭ.
  Send, {esc}			;�ٸ� ��ȭâ�� ���ְų� ��Ŀ���� ���� ������� �ϴ� ESC Ű�� ���� ������.
  MouseMove, 100, 10, 5		;Aview ���α׷� Ÿ��Ʋ�� ���� ��ġ�� ���콺 Ŀ���� �̵���.
  ;������ MouseMove�� �̾� �Ʒ��� MouseClick�� �ϴ� ������ ���� MouseClick(��ǥ ����) �� �����ε� �����ϳ�, �޸��ۼ��� �� ������� ���Ǽ��� ���� �и�����.
  MouseClick,  left		;Ÿ��Ʋ�ٸ� �ѹ� Ŭ���ϴ� ������, ���θ޴� ����Ű�� Ȯ���ϰ� �Է½�Ű�� ���� ������ġ��.
  Send, !v			;���θ޴��� ����Ű�� Alt+V�� ���� View �׸��� ���.
  Sleep, 100			;0.1�� ���. �ý����� ���� ��� �ణ�� �����̰� �ʿ���.
  Send, g			;View�޴� �ȿ��� GuideLine�� ����ϴ� Ű�� "g"�� ������ ����ǹǷ� gŰ�� ħ.

  WinGetPos, zx, zy, zw, zh, AView	;���۾�â�� ��ġ�� ã��.
  if (zx = "")			;��ã������ ����.
  {
    BlockInput, MouseMoveOff	;������ ���콺 ��� Ǯ��.
    Return
  }
  zx := (zw/2)			;���۾�â ���� Ŭ���� ���� ��� ��ġ�� �߻���.
  ;�Ʒ� ���� ControlGetPos�� Mask Control�� ��ġ�� ã�� ����. ����Ż �۾���. ����Ż �̿� �۾��� AHK������ commentout�Ұ�.
  ControlGetPos, zx, zy, zw, zh, Mask Control, AView	;���� ����ũ��Ʈ�� ��ġ�� ã��.
  if (zx = "")			;��ã������ ����.
  {
    BlockInput, MouseMoveOff	;������ ���콺 ��� Ǯ��.
    Return
  }
  MouseMove, zx-300, zy+300, 5	;ã���� ��ġ���� ���� �ȼ� �����ϴ� �̵��Ͽ� ���۾� ����â�� ���콺�� �̵���.
  Click, right			;���콺 ������ ��ư�� Ŭ���Ͽ� ���ؽ�Ʈ�޴��� ���.
  Send, {down}{right}{enter}	;���ؽ�Ʈ �޴��� ù��°(downŰ) �޴��� ������(right) ���ļ� ���� ù��° �޴��� Full screen�� ����(enter)��.
  BlockInput, MouseMoveOff	;������ ���콺 ��� Ǯ��.
  Return

#2::
  BlockInput, MouseMove		;��Ű ���� �߿� ���콺�� ���.
  SetTitleMatchMode, 1		;WinGetPos �� ã�� ���� ���� ���ڿ� ���� ���.
  CoordMode, Mouse, Window 	;���콺 ���� ������ �������� Aview â ���η� ����.
  Send, {esc}			;�ٸ� ��ȭâ�� ���ְų� ��Ŀ���� ���� ������� �ϴ� ESC Ű�� ���� ������.
  WinGetPos, zx, zy, zw, zh, AView	;Aview ���α׷� â�� ��ġ�� ã�Ƴ�.
  if (zx = "")			;��ã������ ����.
  {
    BlockInput, MouseMoveOff	;������ ���콺 ��� Ǯ��.
    Return
  }
;msgbox,1:%zx%,%zy%,%zw%,%zh%
  zx := (zw/2)			;���۾�â ��ġ�� �߻��ϱ� ���� â ũ���� ������ �����.
  MouseMove, zx-300, zy+300, 5	;���� �ȼ��� �̵��Ͽ� ���۾� ����â�� ���콺�� �̵���.
  Click, right			;���콺 ������ ��ư�� Ŭ���Ͽ� ���ؽ�Ʈ�޴��� ���.
  Sleep, 100			;0.1�� ���. �ý����� ���� ��� �ణ�� �����̰� �ʿ���.
  Send, {up}{up}{up}{right}	;���ؽ�Ʈ �޴����� preset
  Sleep, 100			;0.1�� ���. �ý����� ���� ��� �ణ�� �����̰� �ʿ���.
  Send, {up}{up}{enter}		;���ؽ�Ʈ �޴����� bone

  ControlGetPos, zx, zy, zw, zh, Mask Control, AView
  if (zx = "")			;����ũ��Ʈ���� ã��. ������ ����.
  {
    MsgBox, Can't find mask control window.
    BlockInput, MouseMoveOff	;������ ���콺 ��� Ǯ��.
    Return
  }
  MouseMove, zx+10, zy+10, 5	;ã���� ����ũ��Ʈ���� �Ѹ���ġ(�»�� �ڳ�)���� 10 �ȼ��� �����ϴ��� ��� Ŭ���ϱ� ���� �̵���.
  MouseClick,  left		;Ŭ���Ͽ� ��Ŀ���� ��

  WinGetClass, zClass, A	;Ȱ��ȭ�� �������� Ŭ�������� �˾Ƴ�.
  MouseGetPos, zx, zy, zWin, zControl, 1	;���콺 ��ġ�� ��Ʈ���� �˾Ƴ�.
  ControlGetText, zText, %zControl%, ahk_class %zClass%	;��Ʈ���� �̸��� �˾Ƴ�.
  if (zText <> "Mask Control")	;Mask control�� �ֻ� ��Ʈ���� �ƴϸ� ����
  {
    MsgBox, Can't find mask control window.
    BlockInput, MouseMoveOff	;������ ���콺 ��� Ǯ��.
    Return
  }
  ;�Ʒ� ���� ControlGetPos ������ �ΰ��� ���ڴ� AView ȭ�� ���� title label�� &(���ۼ��忡 ���� ������ ����)Create�� ��ư�� ��ġ�� ã�� ����.
  ControlGetPos, zx, zy, zw, zh, &Create, AView
  if (zx = "")			;��ã������ ����.
  {
    BlockInput, MouseMoveOff	;������ ���콺 ��� Ǯ��.
    Return
  }
  MouseMove, zx+10, zy+10, 5	;ã���� Create ��ư �Ѹ���ġ(�»�� �ڳ�)���� 10 �ȼ��� �����ϴ��� ��� Ŭ���ϱ� ���� �̵���.
  MouseClick,  left		;��ư�� ����. (���� ���ߵ���, MouseClick(��ǥ) 1������ �ذ� �����ϳ�, � ���Ǽ��� ���� 2������ �ڵ���.)
  Sleep, 500			;����ũ�� �����ϴ� ��ȭâ�� �߱⸦ ��� ��ٷ� ��.
  Send, 10000{tab}	;Ű�����Է� ��Ŀ���� �� �ִ� LowerBound �Է¶��� ���� �ϸ��� �Է��ϰ� tabŰ�� ���� ���� �Է�ĭ���� �̵���.
  Sleep, 300
  Send, 10000{tab}	;UpperBound �Է¶��� ���� �ϸ��� �Է��ϰ� tabŰ�� ���� ���� �Է�ĭ���� �̵���.
  Sleep, 300
  Send, C-F{enter}	;����ũ �̸� �Է¶��� ������ �̸��� �Է��ϰ� enter�� ������ ��ȭâ�� �����鼭 ����ũ�� ������.
;  Send, Th{enter}	;����ũ �̸� �Է¶��� ������ �̸��� �Է��ϰ� enter�� ������ ��ȭâ�� �����鼭 ����ũ�� ������.
;  Send, P{enter}	;����ũ �̸� �Է¶��� ������ �̸��� �Է��ϰ� enter�� ������ ��ȭâ�� �����鼭 ����ũ�� ������.
  Sleep, 500
  
  MouseClick,  left
  Sleep, 500
  Send, 10000{tab}	;Ű�����Է� ��Ŀ���� �� �ִ� LowerBound �Է¶��� ���� �ϸ��� �Է��ϰ� tabŰ�� ���� ���� �Է�ĭ���� �̵���.
  Sleep, 300
  Send, 10000{tab}	;UpperBound �Է¶��� ���� �ϸ��� �Է��ϰ� tabŰ�� ���� ���� �Է�ĭ���� �̵���.
  Sleep, 300
  Send, T-F{enter}	;����ũ �̸� �Է¶��� ������ �̸��� �Է��ϰ� enter�� ������ ��ȭâ�� �����鼭 ����ũ�� ������.
  Sleep, 500
  
  MouseClick,  left
  Sleep, 500
  Send, 10000{tab}	;Ű�����Է� ��Ŀ���� �� �ִ� LowerBound �Է¶��� ���� �ϸ��� �Է��ϰ� tabŰ�� ���� ���� �Է�ĭ���� �̵���.
  Sleep, 300
  Send, 10000{tab}	;UpperBound �Է¶��� ���� �ϸ��� �Է��ϰ� tabŰ�� ���� ���� �Է�ĭ���� �̵���.
  Sleep, 300
  Send, L-F{enter}	;����ũ �̸� �Է¶��� ������ �̸��� �Է��ϰ� enter�� ������ ��ȭâ�� �����鼭 ����ũ�� ������.
  Sleep, 500
  
  ControlGetPos, zx, zy, zw, zh, Mask Control, AView
  MouseClick,  left, zx+40, zy+75	;�ʿ��� ����ũ�� ���������, MaskControl ��ġ���� ����Ʈ �� ù��° ����ũ�� Ŭ���Ͽ� ������.
  BlockInput, MouseMoveOff	;������ ���콺 ��� Ǯ��.
  Return

!0::	;Save to path ������ ���� ��Ű
 ;Save to current path ����� ahk�� �����غ�
  ;InputBox, zsSavePath, Path setting, Enter save path
  CoordMode, Mouse, Window 	;���콺 ���� ������ �������� Aview â ���η� ����.
  Send, {esc}			;�ٸ� ��ȭâ�� ���ְų� ��Ŀ���� ���� ������� �ϴ� ESC Ű�� ���� ������.
  MouseMove, 100, 10, 5		;Aview ���α׷� Ÿ��Ʋ�� ���� ��ġ�� ���콺 Ŀ���� �̵���.
  ;������ MouseMove�� �̾� �Ʒ��� MouseClick�� �ϴ� ������ ���� MouseClick(��ǥ ����) �� �����ε� �����ϳ�, �޸��ۼ��� �� ������� ���Ǽ��� ���� �и�����.
  MouseClick,  left		;Ÿ��Ʋ�ٸ� �ѹ� Ŭ���ϴ� ������, ���θ޴� ����Ű�� Ȯ���ϰ� �Է½�Ű�� ���� ������ġ��.
  Send, !f			;���θ޴��� ����Ű�� Alt+F�� ���� File �׸��� ���.
  Sleep, 100			;0.1�� ���.
  Send, l			;load ����
  Sleep, 500			;0.5�� ���.
  Send, {esc}			;
  Sleep, 100			;0.1�� ���.
  Send, ^c			;
  zsSavePath := clipboard

  zsSavePath := zsSavePath . "\" . zsMaskFolderName	;"\Mask_DataSet"
  if !FileExist(zsSavePath)
  {
MsgBox, make: %zsSavePath%
    FileCreateDir, zsSavePath
MsgBox, %ErrorLevel%
  }
  if !InStr(FileExist(zsSavePath), "D")
  {
    MsgBox, Path unavailable
  }

  BlockInput, MouseMoveOff	;������ ���콺 ��� Ǯ��.
  Return

!9::	;Save to path Ȱ���� ���� ��Ű
  if !InStr(FileExist(zsSavePath), "D")
  {
    MsgBox, Path unavailable
    Return
  }		;����ũ��Ʈ���� ã�ƺ�. ������ ����.
  Sleep, 300
  Send, !d
  Sleep, 300
  Send, %zsSavePath%{enter}
  Sleep, 300
  Send, {tab}{tab}{tab}!n
  BlockInput, MouseMoveOff	;������ ���콺 ��� Ǯ��.
  Return

#IfWinActive ; ���� ��Ű���� AView�Ӹ� �ƴ϶� ������ �������� ������.


#m::
 ;To disable "global minimize key" and replace with "mouse click" on current position.
  Click
  Return
