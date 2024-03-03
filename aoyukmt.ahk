 ;防止影响原来的功能
 $Space::Space
 {
     return
 }
 $Tab::Tab
 {
     return
 }
 $Ctrl::Ctrl
 {
     return
 }
 $#::#
 {
     return
 }


 ;窗口操作:
 ;关闭窗口
 !z::!F4

 ;最小化当前窗口
 !;::
 {
     WinActivate("A")
     WinMinimize("A")
     return
 }

 ;最大化当前窗口
 !'::
 {
     WinActivate("A")
     WinMaximize("A")
     return
 }

 ;切换窗口
 ; REMOVED: #NoEnv
 SendMode("Input")
 SetWorkingDir(A_ScriptDir)

 Tab & q:: Send("#1")
 Tab & w:: Send("#2")
 Tab & e:: Send("#3")
 Tab & r:: Send("#4")
 Tab & t:: Send("#5")
 Tab & y:: Send("#6")


 ;文本填充操作
 ;邮箱填充
 :*:mailaoy::339983216@qq.com
 :*:mailyu::3256515381@qq.com
 :*:gmailaoy::aoyu3399@gmail.com
 ;手机号填充
 :*:telaoy::15527287795
 ;密码填充

 ;文本操作
 ;选中当前内容
 ; 映射 space + [ 为选择当前光标位置的内容
 ;  Space & [::
 ;  {
 ;      Send("{Shift Down}{Left 2}{Shift Up}")
 ;      return
 ;  }

 ;  ; 映射 space + [ 为选择当前光标位置的内容
 ;  Space & ]::
 ;  {
 ;      Send("{Shift Down}{Right 3}{Shift Up}")
 ;      return
 ;  }

 ;映射 space + enter 为选择当前行的内容
 Space & Enter::
 {
     Send("{Home}{Shift Down}{End}{Shift Up}")
     return
 }

 ;按键操作
 ;Home键
 Space & o::
 {
     Send("{HOME}")
     return
 }

 ;End 键
 Space & p::
 {
     Send("{End}")
     return
 }

 ;Delete键
 Space & `;::
 {
     Send("{BackSpace}")
     return
 }

 ;撤销CTRL + Z
 Space & z::
 {
     Send("^z")
     return
 }

 ;~
 Space & \::
 {
     Send("~")
     return
 }

 ;!w
 Space & 1::
 {
     Send("{!}")
     return
 }

 ;@
 Space & 2::
 {
     Send("{@}")
     return
 }

 Space & 3::
 {
     Send("{#}")
     return
 }

 ;$
 Space & 4::
 {
     Send("{$}")
     return
 }

 ;%
 Space & 5::
 {
     Send("{%}")
     return
 }

 ;^
 space & 6::
 {
     Send("{^}")
     return
 }

 ;~
 Space & 7::
 {
     Send("{&}")
     return
 }

 Space & 8::
 {
     Send("{*}")
     return
 }
 ;#

 ;向上滑动
 Space & k::
 {
     Send("{WheelUp}")
     return
 }

 ;向下滑动
 Space & l::
 {
     Send("{WheelDown}")
     return
 }

 ;方向键
 ;左
 Space & a::
 {
     Send("{Left}")
     return
 }
 ;右
 Space & d::
 {
     Send("{Right}")
     return
 }
 ;上
 Space & w::
 {
     Send("{Up}")
     return
 }
 ;下
 Space & s::
 {
     Send("{Down}")
     return
 }

 ; 方向键组合映射数字0~9
 Up::
 {
     Send("0")
     return
 }

 Left::
 {
     Send("1")
     return
 }

 Down::
 {
     Send("2")
     return
 }

 Right::
 {
     Send("3")
     return
 }

 Left & Down::
 {
     Send("4")
     return
 }

 Down & Left::
 {
     Send("5")
     return
 }

 Down & Right::
 {
     Send("6")
     return
 }

 Right & Down::
 {
     Send("7")
     return
 }

 Left & Up::
 {
     Send("8")
     return
 }

 Left & Right::
 {
     Send("9")
     return
 }


 ;鼠标操作
 ;右键点击
 Space & .::
 {
     Click("Right")
     return
 }


 ;程序启动操作
 ;程序快捷键
 !1:: Run("H:\a.listary\p.listary\Listary\Listary.exe")
 !2:: Run("C:\Program Files\Google\Chrome\Application\chrome.exe")
 !4:: Run("C:\Users\AOYU\AppData\Local\Programs\utools\uTools.exe")
 !5:: Run("H:\a.pot\p.pot\pot.exe")
 !6:: Run("H:\a.snipaste\p.snipaste\Snipaste-2.7.3-Beta-x64\Snipaste.exe")
 !7:: Run("H:\a.geek\p.geek\Uninstall Tool\UninstallTool.exe")
 !8:: Run("H:\a.qq\p.qqnt\QQ.exe")
 !9:: Run("H:\a.wechat\p.wechat\WeChat\WeChat.exe")
 !0:: Run("C:\Users\AOYU\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\me.lnk")
 !d:: Run("H:\a.douying\p.douying\douyin\douyin_launcher.exe")
 !f:: Run("H:\a.vscode\p.vscode\Microsoft VS Code\Code.exe")
 !g:: Run("H:\a.visualstudio\p.vstudio\vstudio.ide\Common7\IDE\devenv.exe")
 !h:: Run("H:\a.idea\p.idea\IntelliJ IDEA 2023.1.1\bin\idea64.exe")
 !j:: Run("H:\a.typora\p.typora\Typora\Typora.exe")
 !k:: Run("C:\Program Files\XMind\XMind.exe")
 !c:: Run("explorer.exe")
 !v:: Run("C:\Windows\System32\cmd.exe")
 !p:: Run("H:\a.lxmusic\p.lxmusic\lx-music-desktop\lx-music-desktop.exe")

 ;网址快捷操作
 !b:: Run("https://www.bilibili.com/")
 !n:: Run("https://www.csdn.net/")
 !m:: Run("https://chat.openai.com/chat")

 ;资源管理器操作
 ;创建文件夹
 !,::
 {
     Send("^+n")
     return
 }

 ; 使用Alt+，组合键来转到父文件夹
 ^,::
 {
     Send("!{Left}")
     return
 }


 ;系统功能操作
 ;减声音
 !-::
 {
     Send ("{Volume_Down 3}")
     return
 }
 ;加声音
 !=::
 {
     Send ("{Volume_Up 3}")
     return
 }

 ;切换输入法
 Space & i::
 {
     Send("{Shift}")
     return
 }

 ;切换输入法
 Space & e::
 { ; V1toV2: Added bracket
     currentLayout := DllCall("GetKeyboardLayout", "UInt", 0, "UInt")
     if (currentLayout != 0x0409) ; 英文布局的标识为 0x0409
     {
         PostMessage(0x50, 0, 0x0409, , "A") ; 发送切换到英文布局的消息
     }
     return
 } ; V1toV2: Added Bracket before hotkey or Hotstring

 Space & c::
 { ; V1toV2: Added bracket

     currentLayout := DllCall("GetKeyboardLayout", "UInt", 0, "UInt")

     if (currentLayout != 0x0804) ; 中文布局的标识为 0x0804
     {
         PostMessage(0x50, 0, 0x0804, , "A") ; 发送切换到中文布局的消息
     }
     return
 } ; V1toV2: Added bracket in the end


 ;大小写切换
 Space & m::
 {
     SetCapsLockState !GetKeyState("CapsLock", "T")
 }

 ;软件快捷键操作
 ;Typora按键映射
 #HotIf WinActive("ahk_exe Typora.exe",)
 {

     ;改变字体颜色
     ; alt+1 红色
     !1::
     {
         addFontColor("red")
         return
     }
     ; alt+2 橙色
     !2::
     {
         addFontColor("orange")
         return
     }
     ; alt+3 黄色
     !3::
     {
         addFontColor("yellow")
         return
     }
     ; alt+4 绿色
     !4::
     {
         addFontColor("green")
         return
     }
     ; alt+5 浅蓝色
     !5::
     {
         addFontColor("cornflowerblue")
         return
     }
     ; alt+6 青色
     !6::
     {
         addFontColor("cyan")
         return
     }
     ; alt+7 紫色
     !7::
     {
         addFontColor("purple")
         return
     }
     ; alt+8 浅红色
     !8::
     {
         addFontColor("#dc3545")
         return
     }

     ;字体加粗
     +8::
     {
         Send("****")
         Loop 2 {
             Send("{Left}")
         }
         return
     }


     ;1~6级标题
     Tab & 1::
     {
         Send("{#}{Space}")
         return
     }
     Tab & 2::
     {
         Send("{#}{#}{Space}")
         return
     }

     Tab & 3::
     {
         Send("{#}{#}{#}{Space}")
         return
     }

     Tab & 4::
     {
         Send("{#}{#}{#}{#}{Space}")
         return
     }

     Tab & 5::
     {
         Send("{#}{#}{#}{#}{#}{Space}")
         return
     }

     Tab & 6::
     {
         Send("{#}{#}{#}{#}{#}{#}{Space}")
         return
     }


     ;快捷序号(1.0、~ 7.0、)
     Capslock & 1::
     {
         Send("1.0、")
         return
     }

     Capslock & 2::
     {
         Send("2.0、")
         return
     }

     Capslock & 3::
     {
         Send("3.0、")
         return
     }

     Capslock & 4::
     {
         Send("4.0、")
         return
     }

     Capslock & 5::
     {
         Send("5.0、")
         return
     }

     Capslock & 6::
     {
         Send("6.0、")
         return
     }

     Capslock & 7::
     {
         Send("7.0、")
         return
     }

     ;快捷序号(（1）~（7）)
     ^1::
     {
         Send("（1）")
         return
     }

     ^2::
     {
         Send("（2）")
         return
     }

     ^3::
     {
         Send("（3）")
         return
     }

     ^4::
     {
         Send("（4）")
         return
     }

     ^5::
     {
         Send("（5）")
         return
     }

     ^6::
     {
         Send("（6）")
         return
     }

     ^7::
     {
         Send("（7）")
         return
     }


     ; 快捷增加字体颜色
     addFontColor(color) {
         ; 清空剪切板
         A_Clipboard := ""
         ; 复制
         Send("{ctrl down}c{ctrl up}")
         SendInput("{TEXT}<font color='" color "'>")
         ; 粘贴
         SendInput("{ctrl down}v{ctrl up}")
         If (A_Clipboard = "") {
             ; Typora 在这不会自动补充
             SendInput("{TEXT}</font>")
             Loop 7
             {
                 Send("{Left}")
             }
         } else {
             ; Typora中自动补全标签
             SendInput("{TEXT}</")
         }
     }
 }
