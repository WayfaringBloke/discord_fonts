SendMode Input
Process, Priority, ,High
#NoEnv
#SingleInstance, force
SetWorkingDir %A_ScriptDir% 

TrayTip, FunnyText, Funny text is disabled
mode := "none"


RemoveToolTip:
ToolTip
return 

; changing modes
#IfWinActive, ahk_exe Discord.exe
~^j::
global mode
nums := "0123456789"
Input, num, L1 V T3

; is input a valid number
if InStr(nums, num)
{
	SendInput, {Backspace} ; removes it if it was
}
else 
{
	return
}

if num = 0
{
	mode := "off"
}
else if num = 1
{
	mode := "l33t"
}
else if num = 2
{
	mode := "randcase"
}
else if num = 3
{
	mode := "demon"
}
else if num = 4
{
	mode := "gothic"
}
else if num = 5
{
	mode := "japanese"
}
else if num = 6
{
	mode := "small"
}
else if num = 7
{
	mode := "greek"
}
else if num = 8
{
	mode := "cursive"
}
else if num = 9
{
	mode := "bubble"
}
#Persistent
ToolTip, DiscordText is %mode%
SetTimer, RemoveToolTip, -700
return

; l33t speak
#IfWinActive, ahk_exe Discord.exe
#If, (mode = "l33t") and (WinActive("ahk_exe Discord.exe")!=0)
*o::SendInput, 0 
*i::SendInput, 1 
*e::SendInput, 3 
*a::SendInput, 4 
*s::SendInput, 5 
q::SendInput, 𝚚
w::SendInput, 𝚠
r::SendInput, 𝚛
t::SendInput, 𝚝
y::SendInput, 𝚢
u::SendInput, 𝚞
p::SendInput, 𝚙
d::SendInput, 𝚍
f::SendInput, 𝚏
g::SendInput, 𝚐
h::SendInput, 𝚑
j::SendInput, 𝚓
k::SendInput, 𝚔
l::SendInput, 𝚕
z::SendInput, 𝚣
x::SendInput, 𝚡
c::SendInput, 𝚌
v::SendInput, 𝚟
b::SendInput, 𝚋
n::SendInput, 𝚗
m::SendInput, 𝚖
+q::SendInput, 𝚀
+w::SendInput, 𝚆
+r::SendInput, 𝚁
+t::SendInput, 𝚃
+y::SendInput, 𝚈
+u::SendInput, 𝚄
+p::SendInput, 𝙿
+d::SendInput, 𝙳
+f::SendInput, 𝙵
+g::SendInput, 𝙶
+h::SendInput, 𝙷
+j::SendInput, 𝙹
+k::SendInput, 𝙺
+l::SendInput, 𝙻
+z::SendInput, 𝚉
+x::SendInput, 𝚇
+c::SendInput, 𝙲
+v::SendInput, 𝚅
+b::SendInput, 𝙱
+n::SendInput, 𝙽
+m::SendInput, 𝙼
#If


; random case
randcase(char) {
	Random, is_caps, 0, 1
	if is_caps = 1 
	{
		StringUpper, char, char
	}
	else 
	{
		StringLower, char, char
	}
	SendInput %char%
}

#If, (mode = "randcase") and (WinActive("ahk_exe Discord.exe")!=0)
*q::randcase("q")
*e::randcase("e")
*w::randcase("w")
*r::randcase("r")
*t::randcase("t")
*y::randcase("y")
*u::randcase("u")
*i::randcase("i")
*o::randcase("o")
*p::randcase("p")
*a::randcase("a")
*s::randcase("s")
*d::randcase("d")
*f::randcase("f")
*g::randcase("g")
*h::randcase("h")
*j::randcase("j")
*k::randcase("k")
*l::randcase("l")
*z::randcase("z")
*x::randcase("x")
*c::randcase("c")
*v::randcase("v")
*b::randcase("b")
*n::randcase("n")
*m::randcase("m")



; zalgo text
demon(char, anger) {
	; all the werid unicode chacters all in one place
	; staic is to hopefully save processing power by not recreating these lists on every keypress
	; though im not 100% it does :P 
	static diacrits := ["{U+0300}","{U+0301}","{U+0302}","{U+0303}","{U+0304}","{U+0305}","{U+0306}","{U+0307}","{U+0308}","{U+0309}","{U+030A}","{U+030B}","{U+030C}","{U+030D}","{U+030E}","{U+030F}","{U+0310}","{U+0311}","{U+0312}","{U+0313}","{U+0314}","{U+0315}","{U+0316}","{U+0317}","{U+0318}","{U+0319}","{U+031A}","{U+031B}","{U+031C}","{U+031D}","{U+031E}","{U+031F}","{U+0320}","{U+0321}","{U+0322}","{U+0323}","{U+0324}","{U+0325}","{U+0326}","{U+0327}","{U+0328}","{U+0329}","{U+032A}","{U+032B}","{U+032C}","{U+032D}","{U+032E}","{U+032F}","{U+0330}","{U+0331}","{U+0332}","{U+0333}","{U+0334}","{U+0335}","{U+0336}","{U+0337}","{U+0338}","{U+0339}","{U+033A}","{U+033B}","{U+033C}","{U+033D}","{U+033E}","{U+033F}","{U+0340}","{U+0341}","{U+0342}","{U+0343}","{U+0344}","{U+0345}","{U+0346}","{U+0347}","{U+0348}","{U+0349}","{U+034A}","{U+034B}","{U+034C}","{U+034D}","{U+034E}","{U+034F}","{U+0350}","{U+0351}","{U+0352}","{U+0353}","{U+0354}","{U+0355}","{U+0356}","{U+0357}","{U+0358}","{U+0359}","{U+035A}","{U+035B}","{U+035C}","{U+035D}","{U+035E}","{U+035F}","{U+1DC0}","{U+1DC1}","{U+1DC2}","{U+1DC3}","{U+1DC4}","{U+1DC5}","{U+1DC6}","{U+1DC7}","{U+1DC8}","{U+1DC9}","{U+1DCA}","{U+1DFE}","{U+1DFF}","{U+FE20}","{U+FE21}","{U+FE22}","{U+FE23}"]
	; length of 113
	; adding diacrits
	Random, num_diacrits, %anger%+1, %anger%+5 ; number of diacrits
	Loop, %num_diacrits% {
		Random, index, 0, 112
		diacrit := diacrits[index]
		char = %char%%diacrit%
	}
	SendInput, {Blind}%char%
}

#If, (mode = "demon") and (WinActive("ahk_exe Discord.exe")!=0)
q::demon("q", 3)
w::demon("w", 3)
e::demon("e", 3)
r::demon("r", 3)
t::demon("t", 3)
y::demon("y", 3)
u::demon("u", 3)
i::demon("i", 3)
o::demon("o", 3)
p::demon("p", 3)
a::demon("a", 3)
s::demon("s", 3)
d::demon("d", 3)
f::demon("f", 3)
g::demon("g", 3)
h::demon("h", 3)
j::demon("j", 3)
k::demon("k", 3)
l::demon("l", 3)
z::demon("z", 3)
x::demon("x", 3)
c::demon("c", 3)
v::demon("v", 3)
b::demon("b", 3)
n::demon("n", 3)
m::demon("m", 3)
+q::demon("Q", 6)
+w::demon("W", 6)
+e::demon("E", 6)
+r::demon("R", 6)
+t::demon("T", 6)
+y::demon("Y", 6)
+u::demon("U", 6)
+i::demon("I", 6)
+o::demon("O", 6)
+p::demon("P", 6)
+a::demon("A", 6)
+s::demon("S", 6)
+d::demon("D", 6)
+f::demon("F", 6)
+g::demon("G", 6)
+h::demon("H", 6)
+j::demon("J", 6)
+k::demon("K", 6)
+l::demon("L", 6)
+z::demon("Z", 6)
+x::demon("X", 6)
+c::demon("C", 6)
+v::demon("V", 6)
+b::demon("B", 6)
+n::demon("N", 6)
+m::demon("M", 6)


#If, (mode = "gothic") and (WinActive("ahk_exe Discord.exe")!=0)
q::SendInput, 𝔮
w::SendInput, 𝔴
e::SendInput, 𝔢
r::SendInput, 𝔯
t::SendInput, 𝔱
y::SendInput, 𝔶
u::SendInput, 𝔲
i::SendInput, 𝔦
o::SendInput, 𝔬
p::SendInput, 𝔭
a::SendInput, 𝔞
s::SendInput, 𝔰
d::SendInput, 𝔡
f::SendInput, 𝔣
g::SendInput, 𝔤
h::SendInput, 𝔥
j::SendInput, 𝔧
k::SendInput, 𝔨
l::SendInput, 𝔩
z::SendInput, 𝔷
x::SendInput, 𝔵
c::SendInput, 𝔠
v::SendInput, 𝔳
b::SendInput, 𝔟
n::SendInput, 𝔫
m::SendInput, 𝔪
+q::SendInput, 𝖖
+w::SendInput, 𝖜
+e::SendInput, 𝖊
+r::SendInput, 𝖗
+t::SendInput, 𝖙
+y::SendInput, 𝖞
+u::SendInput, 𝖚
+i::SendInput, 𝖎
+o::SendInput, 𝖔
+p::SendInput, 𝖕
+a::SendInput, 𝖆
+s::SendInput, 𝖘
+d::SendInput, 𝖉
+f::SendInput, 𝖋
+g::SendInput, 𝖌
+h::SendInput, 𝖍
+j::SendInput, 𝖏
+k::SendInput, 𝖐
+l::SendInput, 𝖑
+z::SendInput, 𝖟
+x::SendInput, 𝖝
+c::SendInput, 𝖈
+v::SendInput, 𝖛
+b::SendInput, 𝖇
+n::SendInput, 𝖓
+m::SendInput, 𝖒


#If, (mode = "japanese") and (WinActive("ahk_exe Discord.exe")!=0)
q::SendInput, Ɋ
w::SendInput, 山
e::SendInput, 乇
r::SendInput, 尺
t::SendInput, ㄒ
y::SendInput, ㄚ
u::SendInput, ㄩ
i::SendInput, 丨
o::SendInput, ㄖ
p::SendInput, 卩
a::SendInput, 卂
s::SendInput, 丂
d::SendInput, ᗪ
f::SendInput, 千
g::SendInput, Ꮆ
h::SendInput, 卄
j::SendInput, ﾌ
k::SendInput, Ҝ
l::SendInput, ㄥ
z::SendInput, 乙
x::SendInput, 乂
c::SendInput, 匚
v::SendInput, ᐯ
b::SendInput, 乃
n::SendInput, 几
m::SendInput, 爪


#If, (mode = "small") and (WinActive("ahk_exe Discord.exe")!=0)
q::SendInput, ᵠ
w::SendInput, ʷ
e::SendInput, ᵉ
r::SendInput, ʳ
t::SendInput, ᵗ
y::SendInput, ʸ
u::SendInput, ᵘ
i::SendInput, ᶦ
o::SendInput, ᵒ
p::SendInput, ᵖ
a::SendInput, ᵃ
s::SendInput, ˢ
d::SendInput, ᵈ
f::SendInput, ᶠ
g::SendInput, ᵍ
h::SendInput, ʰ
j::SendInput, ʲ
k::SendInput, ᵏ
l::SendInput, ˡ
z::SendInput, ᶻ
x::SendInput, ˣ
c::SendInput, ᶜ
v::SendInput, ᵛ
b::SendInput, ᵇ
n::SendInput, ⁿ
m::SendInput, ᵐ
+q::SendInput, ǫ
+w::SendInput, ᴡ
+e::SendInput, ᴇ
+r::SendInput, ʀ
+t::SendInput, ᴛ
+y::SendInput, ʏ
+u::SendInput, ᴜ
+i::SendInput, ɪ
+o::SendInput, ᴏ
+p::SendInput, ᴘ
+a::SendInput, ᴀ
+s::SendInput, s
+d::SendInput, ᴅ
+f::SendInput, ғ
+g::SendInput, ɢ
+h::SendInput, ʜ
+j::SendInput, ᴊ
+k::SendInput, ᴋ
+l::SendInput, ʟ
+z::SendInput, ᴢ
+x::SendInput, x
+c::SendInput, ᴄ
+v::SendInput, ᴠ
+b::SendInput, ʙ
+n::SendInput, ɴ
+m::SendInput, ᴍ


#If, (mode = "greek") and (WinActive("ahk_exe Discord.exe")!=0)
q::SendInput, ϙ
w::SendInput, ɯ
e::SendInput, ҽ
r::SendInput, ɾ
t::SendInput, ƚ
y::SendInput, ყ
u::SendInput, υ
i::SendInput, ι
o::SendInput, σ
p::SendInput, ρ
a::SendInput, α
s::SendInput, ʂ
d::SendInput, ԃ
f::SendInput, ϝ
g::SendInput, ɠ
h::SendInput, ԋ
j::SendInput, ʝ
k::SendInput, ƙ
l::SendInput, ʅ
z::SendInput, ȥ
x::SendInput, x
c::SendInput, ƈ
v::SendInput, ʋ
b::SendInput, Ⴆ
n::SendInput, ɳ
m::SendInput, ɱ
+q::SendInput, Ꭴ
+w::SendInput, Ꮗ
+e::SendInput, Ꮛ
+r::SendInput, Ꮢ
+t::SendInput, Ꮦ
+y::SendInput, Ꭹ
+u::SendInput, Ꮼ
+i::SendInput, Ꭵ
+o::SendInput, Ꭷ
+p::SendInput, Ꭾ
+a::SendInput, Ꮧ
+s::SendInput, Ꮥ
+d::SendInput, Ꮄ
+f::SendInput, Ꭶ
+g::SendInput, Ꮆ
+h::SendInput, Ꮒ
+j::SendInput, Ꮰ
+k::SendInput, Ꮶ
+l::SendInput, Ꮭ
+z::SendInput, ፚ
+x::SendInput, ጀ
+c::SendInput, ፈ
+v::SendInput, Ꮙ
+b::SendInput, Ᏸ
+n::SendInput, Ꮑ
+m::SendInput, Ꮇ

#If, (mode = "cursive") and (WinActive("ahk_exe Discord.exe")!=0)
q::SendInput, 𝓆
w::SendInput, 𝓌
e::SendInput, 𝑒
r::SendInput, 𝓇
t::SendInput, 𝓉
y::SendInput, 𝓎
u::SendInput, 𝓊
i::SendInput, 𝒾
o::SendInput, 𝑜
p::SendInput, 𝓅
a::SendInput, 𝒶
s::SendInput, 𝓈
d::SendInput, 𝒹
f::SendInput, 𝒻
g::SendInput, 𝑔
h::SendInput, 𝒽
j::SendInput, 𝒿
k::SendInput, 𝓀
l::SendInput, 𝓁
z::SendInput, 𝓏
x::SendInput, 𝓍
c::SendInput, 𝒸
v::SendInput, 𝓋
b::SendInput, 𝒷
n::SendInput, 𝓃
m::SendInput, 𝓂
+q::SendInput, 𝓺
+w::SendInput, 𝔀
+e::SendInput, 𝓮
+r::SendInput, 𝓻
+t::SendInput, 𝓽
+y::SendInput, 𝔂
+u::SendInput, 𝓾
+i::SendInput, 𝓲
+o::SendInput, 𝓸
+p::SendInput, 𝓹
+a::SendInput, 𝓪
+s::SendInput, 𝓼
+d::SendInput, 𝓭
+f::SendInput, 𝓯
+g::SendInput, 𝓰
+h::SendInput, 𝓱
+j::SendInput, 𝓳
+k::SendInput, 𝓴
+l::SendInput, 𝓵
+z::SendInput, 𝔃
+x::SendInput, 𝔁
+c::SendInput, 𝓬
+v::SendInput, 𝓿
+b::SendInput, 𝓫
+n::SendInput, 𝓷
+m::SendInput, 𝓶

#If, (mode = "bubble") and (WinActive("ahk_exe Discord.exe")!=0)
q::SendInput, ⓠ
w::SendInput, ⓦ
e::SendInput, ⓔ
r::SendInput, ⓡ
t::SendInput, ⓣ
y::SendInput, ⓨ
u::SendInput, ⓤ
i::SendInput, ⓘ
o::SendInput, ⓞ
p::SendInput, ⓟ
a::SendInput, ⓐ
s::SendInput, ⓢ
d::SendInput, ⓓ
f::SendInput, ⓕ
g::SendInput, ⓖ
h::SendInput, ⓗ
j::SendInput, ⓙ
k::SendInput, ⓚ
l::SendInput, ⓛ
z::SendInput, ⓩ
x::SendInput, ⓧ
c::SendInput, ⓒ
v::SendInput, ⓥ
b::SendInput, ⓑ
n::SendInput, ⓝ
m::SendInput, ⓜ
+q::SendInput, 🅀
+w::SendInput, 🅆
+e::SendInput, 🄴
+r::SendInput, 🅁
+t::SendInput, 🅃
+y::SendInput, 🅈
+u::SendInput, 🅄
+i::SendInput, 🄸
+o::SendInput, 🄾
+p::SendInput, 🄿
+a::SendInput, 🄰
+s::SendInput, 🅂
+d::SendInput, 🄳
+f::SendInput, 🄵
+g::SendInput, 🄶
+h::SendInput, 🄷
+j::SendInput, 🄹
+k::SendInput, 🄺
+l::SendInput, 🄻
+z::SendInput, 🅉
+x::SendInput, 🅇
+c::SendInput, 🄲
+v::SendInput, 🅅
+b::SendInput, 🄱
+n::SendInput, 🄽
+m::SendInput, 🄼
