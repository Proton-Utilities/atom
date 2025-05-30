--!nolint
--!nocheck
--!native
--!optimize 2

--[[
    @author Proton-Utilities
    @name atom

    This file was automatically generated with darklua, it is not intended for manual editing.
--]]

atomicsec = atomicsec or {}

_P = {
    genDate = "2025-05-30T23:01:54.748778200+00:00",
    cfg = "Release",
    vers = "v1.1.2"
}

if not hookfunction or not getrenv or not request then
	game.Player.LocalPlayer:Kick("Your executor is not supported.")
	return
end

local a a={cache={},load=function(b)if not a.cache[b]then a.cache[b]={c=a[b]()}
end return a.cache[b].c end}do function a.a()local b={Version='1.4.4',Author=
'Depso',License='MIT',Repository='https://github.com/depthso/Dear-ReGui/',Debug=
false,PrefabsId=71968920594655,DefaultTitle='ReGui',ContainerName='ReGui',
DoubleClickThreshold=0.3,TooltipOffset=15,IniToSave={'Value'},ClassIgnored={
'Visible'},Container=nil,Prefabs=nil,FocusedWindow=nil,ThemeConfigs={},Elements=
{},Signaling={},Animation={DefaultTweenInfo=TweenInfo.new(0.08)},_FlagCache={},
_ErrorCache={},Windows={},ActiveTooltips={},IniSettings={},AnimationConnections=
{}}b.Icons={Dot='rbxasset://textures/whiteCircle.png',Arrow=
[[rbxasset://textures/DeveloperFramework/button_arrow_right.png]],Close=
'rbxasset://textures/AnimationEditor/icon_close.png',Checkmark=
'rbxasset://textures/AnimationEditor/icon_checkmark.png',Cat=
'rbxassetid://16211812161',Script='rbxassetid://11570895459',Settings=
'rbxassetid://9743465390',Info='rbxassetid://18754976792',Move=
'rbxassetid://6710235139',Roblox='rbxassetid://7414445494',Warning=
'rbxassetid://11745872910',Audio='rbxassetid://302250236',Shop=
'rbxassetid://6473525198',CharacterDance='rbxassetid://11932783331',Pants=
'rbxassetid://10098755331',Home='rbxassetid://4034483344',Robux=
'rbxassetid://5986143282',Badge='rbxassetid://16170504068',SpawnLocation=
'rbxassetid://6400507398',Sword='rbxassetid://7485051715',Clover=
'rbxassetid://11999300014',Star='rbxassetid://3057073083',Code=
'rbxassetid://11348555035',Paw='rbxassetid://13001190533',Shield=
'rbxassetid://7461510428',Shield2='rbxassetid://7169354142',File=
'rbxassetid://7276823330',Book='rbxassetid://16061686835',Location=
'rbxassetid://13549782519',Puzzle='rbxassetid://8898417863',Discord=
'rbxassetid://84828491431270',Premium='rbxassetid://6487178625',Friend=
'rbxassetid://10885655986',User='rbxassetid://18854794412',Duplicate=
'rbxassetid://11833749507',ChatBox='rbxassetid://15839118471',ChatBox2=
'rbxassetid://15839116089',Devices='rbxassetid://4458812712',Weight=
'rbxassetid://9855685269',Image='rbxassetid://123311808092347',Profile=
'rbxassetid://13585614795',Admin='rbxassetid://11656483170',PaintBrush=
'rbxassetid://12111879608',Speed='rbxassetid://12641434961',NoConnection=
'rbxassetid://9795340967',Connection='rbxassetid://119759670842477',Globe=
'rbxassetid://18870359747',Box='rbxassetid://140217940575618',Crown=
'rbxassetid://18826490498',Control='rbxassetid://18979524646',Send=
'rbxassetid://18940312887',FastForward='rbxassetid://112963221295680',Pause=
'rbxassetid://109949100737970',Reload='rbxassetid://11570018242',Joystick=
'rbxassetid://18749336354',Controller='rbxassetid://11894535915',Lock=
'rbxassetid://17783082088',Calculator='rbxassetid://85861816563977',Sun=
'rbxassetid://13492317832',Moon='rbxassetid://8498174594',Prohibited=
'rbxassetid://5248916036',Flag='rbxassetid://251346532',Website=
'rbxassetid://98455290625865',Telegram='rbxassetid://115860270107061',MusicNote=
'rbxassetid://18187351229',Music='rbxassetid://253830398',Headphones=
'rbxassetid://1311321471',Phone='rbxassetid://8411963035',Smartphone=
'rbxassetid://14040313879',Desktop='rbxassetid://3120635703',Desktop2=
'rbxassetid://4728059490',Laptop='rbxassetid://4728059725',Server=
'rbxassetid://9692125126',Wedge='rbxassetid://9086583059',Drill=
'rbxassetid://11959189471',Character='rbxassetid://13285102351'}b.DynamicImages=
{[b.Icons.Arrow]='ImageFollowsText',[b.Icons.Close]='ImageFollowsText',[b.Icons.
Dot]='ImageFollowsText'}b.Accent={Light=Color3.fromRGB(50,150,250),Dark=Color3.
fromRGB(30,66,115),ExtraDark=Color3.fromRGB(28,39,53),White=Color3.fromRGB(240,
240,240),Gray=Color3.fromRGB(172,171,175),Black=Color3.fromRGB(15,19,24),Yellow=
Color3.fromRGB(230,180,0),Orange=Color3.fromRGB(230,150,0),Green=Color3.fromRGB(
130,188,91),Red=Color3.fromRGB(255,69,69),ImGui={Light=Color3.fromRGB(66,150,250
),Dark=Color3.fromRGB(41,74,122),Black=Color3.fromRGB(15,15,15),Gray=Color3.
fromRGB(36,36,36)}}local c=b.ThemeConfigs c.DarkTheme={Values={
AnimationTweenInfo=TweenInfo.new(0.08),TextFont=Font.fromEnum(Enum.Font.
RobotoMono),TextSize=14,Text=b.Accent.White,TextDisabled=b.Accent.Gray,ErrorText
=b.Accent.Red,FrameBg=b.Accent.Dark,FrameBgTransparency=0.4,FrameBgActive=b.
Accent.Light,FrameBgTransparencyActive=0.4,FrameRounding=UDim.new(0,0),
SliderGrab=b.Accent.Light,ButtonsBg=b.Accent.Light,CollapsingHeaderBg=b.Accent.
Light,CollapsingHeaderText=b.Accent.White,CheckMark=b.Accent.Light,ResizeGrab=b.
Accent.Light,HeaderBg=b.Accent.Gray,HeaderBgTransparency=0.7,HistogramBar=b.
Accent.Yellow,ProgressBar=b.Accent.Yellow,RegionBg=b.Accent.Dark,
RegionBgTransparency=0.1,Separator=b.Accent.Gray,SeparatorTransparency=0.5,
ConsoleLineNumbers=b.Accent.White,LabelPaddingTop=UDim.new(0,0),
LabelPaddingBottom=UDim.new(0,0),MenuBar=b.Accent.ExtraDark,MenuBarTransparency=
0.1,PopupCanvas=b.Accent.Black,TabTextPaddingTop=UDim.new(0,3),
TabTextPaddingBottom=UDim.new(0,8),TabText=b.Accent.Gray,TabBg=b.Accent.Dark,
TabTextActive=b.Accent.White,TabBgActive=b.Accent.Light,TabsBarBg=Color3.
fromRGB(36,36,36),TabsBarBgTransparency=1,TabPagePadding=UDim.new(0,8),
ModalWindowDimBg=Color3.fromRGB(230,230,230),ModalWindowDimTweenInfo=TweenInfo.
new(0.2),WindowBg=b.Accent.Black,WindowBgTransparency=0.05,Border=b.Accent.Gray,
BorderTransparency=0.8,BorderTransparencyActive=0.5,Title=b.Accent.White,
TitleAlign=Enum.TextXAlignment.Left,TitleBarBg=b.Accent.Black,
TitleBarTransparency=0,TitleActive=b.Accent.White,TitleBarBgActive=b.Accent.Dark
,TitleBarTransparencyActive=0.05,TitleBarBgCollapsed=Color3.fromRGB(0,0,0),
TitleBarTransparencyCollapsed=0.6}}c.LightTheme={BaseTheme=c.DarkTheme,Values={
Text=b.Accent.Black,TextFont=Font.fromEnum(Enum.Font.Ubuntu),TextSize=14,FrameBg
=b.Accent.Gray,FrameBgTransparency=0.4,FrameBgActive=b.Accent.Light,
FrameBgTransparencyActive=0.6,SliderGrab=b.Accent.Light,ButtonsBg=b.Accent.Light
,CollapsingHeaderText=b.Accent.Black,Separator=b.Accent.Black,ConsoleLineNumbers
=b.Accent.Yellow,MenuBar=Color3.fromRGB(219,219,219),PopupCanvas=b.Accent.White,
TabText=b.Accent.Black,TabTextActive=b.Accent.Black,WindowBg=b.Accent.White,
Border=b.Accent.Gray,ResizeGrab=b.Accent.Gray,Title=b.Accent.Black,TitleAlign=
Enum.TextXAlignment.Center,TitleBarBg=b.Accent.Gray,TitleActive=b.Accent.Black,
TitleBarBgActive=Color3.fromRGB(186,186,186),TitleBarBgCollapsed=b.Accent.Gray}}
c.ImGui={BaseTheme=c.DarkTheme,Values={AnimationTweenInfo=TweenInfo.new(0),Text=
Color3.fromRGB(255,255,255),FrameBg=b.Accent.ImGui.Dark,FrameBgTransparency=0.4,
FrameBgActive=b.Accent.ImGui.Light,FrameBgTransparencyActive=0.5,FrameRounding=
UDim.new(0,0),ButtonsBg=b.Accent.ImGui.Light,CollapsingHeaderBg=b.Accent.ImGui.
Light,CollapsingHeaderText=b.Accent.White,CheckMark=b.Accent.ImGui.Light,
ResizeGrab=b.Accent.ImGui.Light,MenuBar=b.Accent.ImGui.Gray,MenuBarTransparency=
0,PopupCanvas=b.Accent.ImGui.Black,TabText=b.Accent.Gray,TabBg=b.Accent.ImGui.
Dark,TabTextActive=b.Accent.White,TabBgActive=b.Accent.ImGui.Light,WindowBg=b.
Accent.ImGui.Black,WindowBgTransparency=0.05,Border=b.Accent.Gray,
BorderTransparency=0.7,BorderTransparencyActive=0.4,Title=b.Accent.White,
TitleBarBg=b.Accent.ImGui.Black,TitleBarTransparency=0,TitleBarBgActive=b.Accent
.ImGui.Dark,TitleBarTransparencyActive=0}}b.ElementColors={MenuBar={
BackgroundColor3='MenuBar',BackgroundTransparency='MenuBarTransparency'},
FrameRounding={CornerRadius='FrameRounding'},PopupCanvas={BackgroundColor3=
'PopupCanvas'},ModalWindowDim={BackgroundColor3='ModalWindowDimBg'},Selectable=
'Button',MenuButton='Button',Separator={BackgroundColor3='Separator',
BackgroundTransparency='SeparatorTransparency'},Region={BackgroundColor3=
'RegionBg',BackgroundTransparency='RegionBgTransparency'},Label={TextColor3=
'Text',FontFace='TextFont',TextSize='TextSize'},ImageFollowsText={ImageColor3=
'Text'},ConsoleLineNumbers={TextColor3='ConsoleLineNumbers',FontFace='TextFont',
TextSize='TextSize'},ConsoleText='Label',LabelDisabled={TextColor3=
'TextDisabled',FontFace='TextFont',TextSize='TextSize'},Plot={BackgroundColor3=
'HistogramBar'},Header={BackgroundColor3='HeaderBg',BackgroundTransparency=
'HeaderBgTransparency'},WindowTitle={TextXAlignment='TitleAlign',FontFace=
'TextFont',TextSize='TextSize'},TitleBar={BackgroundColor3='TitleBarBgActive'},
Window={BackgroundColor3='WindowBg',BackgroundTransparency=
'WindowBgTransparency'},TitleBarBgCollapsed={BackgroundColor3=
'TitleBarBgCollapsed',BackgroundTransparency='TitleBarTransparencyCollapsed'},
TitleBarBgActive={BackgroundColor3='TitleBarBgActive',BackgroundTransparency=
'TitleBarTransparencyActive'},TitleBarBg={BackgroundColor3='TitleBarBg',
BackgroundTransparency='TitleBarTransparency'},TabsBar={BackgroundColor3=
'TabsBarBg',BackgroundTransparency='TabsBarBgTransparency'},Border={Color=
'Border',Transparency='BorderTransparency'},ResizeGrab={TextColor3='ResizeGrab'}
,BorderActive={Transparency='BorderTransparencyActive'},Frame={BackgroundColor3=
'FrameBg',BackgroundTransparency='FrameBgTransparency',TextColor3='Text',
FontFace='TextFont',TextSize='TextSize'},FrameActive={BackgroundColor3=
'FrameBgActive',BackgroundTransparency='FrameBgTransparencyActive'},SliderGrab={
BackgroundColor3='SliderGrab'},Button={BackgroundColor3='ButtonsBg',TextColor3=
'Text',FontFace='TextFont',TextSize='TextSize'},CollapsingHeader={FontFace=
'TextFont',TextSize='TextSize',TextColor3='CollapsingHeaderText',
BackgroundColor3='CollapsingHeaderBg'},Checkbox={BackgroundColor3='FrameBg'},
CheckMark={ImageColor3='CheckMark',BackgroundColor3='CheckMark'},RadioButton={
BackgroundColor3='ButtonsBg'}}b.Styles={RadioButton={Animation='RadioButtons',
CornerRadius=UDim.new(1,0)},Button={Animation='Buttons'},CollapsingHeader={
Animation='Buttons'},TreeNode={Animation='TransparentButtons'},TransparentButton
={Animation='TransparentButtons'}}b.Animations={Invisible={Connections={
MouseEnter={Visible=true},MouseLeave={Visible=false}},Init='MouseLeave'},Buttons
={Connections={MouseEnter={BackgroundTransparency=0.3},MouseLeave={
BackgroundTransparency=0.7}},Init='MouseLeave'},TextButtons={Connections={
MouseEnter={TextTransparency=0.3},MouseLeave={TextTransparency=0.7}},Init=
'MouseLeave'},TransparentButtons={Connections={MouseEnter={
BackgroundTransparency=0.3},MouseLeave={BackgroundTransparency=1}},Init=
'MouseLeave'},RadioButtons={Connections={MouseEnter={BackgroundTransparency=0.5}
,MouseLeave={BackgroundTransparency=1}},Init='MouseLeave'},Inputs={Connections={
MouseEnter={BackgroundTransparency=0},MouseLeave={BackgroundTransparency=0.5}},
Init='MouseLeave'},Plots={Connections={MouseEnter={BackgroundTransparency=0.3},
MouseLeave={BackgroundTransparency=0}},Init='MouseLeave'},Border={Connections={
Selected={Transparency=0,Thickness=1},Deselected={Transparency=0.7,Thickness=1}}
,Init='Selected'}}b.ElementFlags={{Properties={'Center'},Callback=function(d,e,f
)local g=e.Position b:SetProperties(e,{Position=UDim2.new(f:find'X'and 0.5 or g.
X.Scale,g.X.Offset,f:find'Y'and 0.5 or g.Y.Scale,g.Y.Offset),AnchorPoint=Vector2
.new(f:find'X'and 0.5 or 0,f:find'Y'and 0.5 or 0)})end},{Properties={
'ElementStyle'},Callback=function(d,e,f)b:ApplyStyle(e,f)end},{Properties={
'ColorTag'},Callback=function(d,e,f)local g,h=d.Class,d.WindowClass local i=g.
NoAutoTheme if not h then return end if i then return end b:UpdateColors{Object=
e,Tag=f,NoAnimation=true,Theme=h.Theme}end},{Properties={'Animation'},Callback=
function(d,e,f)local g=d.Class.NoAnimation if g then return end b:SetAnimation(e
,f)end},{Properties={'Image'},Callback=function(d,e,f)local g=d.WindowClass e.
Image=b:CheckAssetUrl(f)b:DynamicImageTag(e,f,g)end},{Properties={'Icon',
'IconSize','IconRotation','IconPadding'},Callback=function(d,e,f)local g=e:
FindFirstChild('Icon',true)if not g then return b:Warn('No icon for',e)end local
h=d.Class b:CheckConfig(h,{Icon='',IconSize=UDim2.fromScale(1,1),IconRotation=0,
IconPadding=UDim2.new(0,2)})local i=g.Parent:FindFirstChild'UIPadding'b:
SetPadding(i,h.IconPadding)local j=h.Icon j=b:CheckAssetUrl(j)local k=d.
WindowClass b:DynamicImageTag(g,j,k)b:SetProperties(g,{Visible=g~='',Image=b:
CheckAssetUrl(j),Size=h.IconSize,Rotation=h.IconRotation})end},{Properties={
'BorderThickness','Border','BorderColor'},Callback=function(d,e,f)local g,h=d.
Class,d.WindowClass local i=g.Border==true b:CheckConfig(g,{BorderTransparency=d
:GetThemeKey'BorderTransparencyActive',BorderColor=d:GetThemeKey'Border',
BorderThickness=1,BorderStrokeMode=Enum.ApplyStrokeMode.Border})local j=b:
GetChildOfClass(e,'UIStroke')b:SetProperties(j,{Transparency=g.
BorderTransparency,Thickness=g.BorderThickness,Color=g.BorderColor,
ApplyStrokeMode=g.BorderStrokeMode,Enabled=i})end},{Properties={'Ratio'},
Callback=function(d,e,f)local g=d.Class b:CheckConfig(g,{Ratio=
1.3333333333333333,RatioAxis=Enum.DominantAxis.Height,RatioAspectType=Enum.
AspectType.ScaleWithParentSize})local h,i,j,k=g.Ratio,g.RatioAxis,g.
RatioAspectType,b:GetChildOfClass(e,'UIAspectRatioConstraint')b:SetProperties(k,
{DominantAxis=i,AspectType=j,AspectRatio=h})end},{Properties={'FlexMode'},
Callback=function(d,e,f)local g=b:GetChildOfClass(e,'UIFlexItem')g.FlexMode=f
end},{Properties={'CornerRadius'},Callback=function(d,e,f)local g=b:
GetChildOfClass(e,'UICorner')g.CornerRadius=f end},{Properties={'Fill'},Callback
=function(d,e,f)if f~=true then return end local g=d.Class b:CheckConfig(g,{Size
=UDim2.fromScale(1,1),UIFlexMode=Enum.UIFlexMode.Fill,AutomaticSize=Enum.
AutomaticSize.None})local h=b:GetChildOfClass(e,'UIFlexItem')h.FlexMode=g.
UIFlexMode e.Size=g.Size e.AutomaticSize=g.AutomaticSize end},{Properties={
'Label'},Callback=function(d,e,f)local g=e:FindFirstChild'Label'if not g then
return end local h=d.Class function h:SetLabel(i)g.Text=i return self end g.Text
=tostring(f)end},{Properties={'NoGradient'},WindowProperties={'NoGradients'},
Callback=function(d,e,f)local g=e:FindFirstChildOfClass'UIGradient'if not g then
return end g.Enabled=f end},{Properties={'UiPadding','PaddingBottom',
'PaddingTop','PaddingRight','PaddingTop'},Callback=function(d,e,f)f=f or 0 if
typeof(f)=='number'then f=UDim.new(0,f)end local g=d.Class local h=g.UiPadding
if h then b:CheckConfig(g,{PaddingBottom=f,PaddingLeft=f,PaddingRight=f,
PaddingTop=f})end local i=b:GetChildOfClass(e,'UIPadding')b:SetProperties(i,{
PaddingBottom=g.PaddingBottom,PaddingLeft=g.PaddingLeft,PaddingRight=g.
PaddingRight,PaddingTop=g.PaddingTop})end},{Properties={'Callback'},Callback=
function(d,e)local f=d.Class function f:SetCallback(g)self.Callback=g return
self end function f:FireCallback(g)self.Callback(e)return self end end},{
Properties={'Value'},Callback=function(d,e)local f=d.Class b:CheckConfig(f,{
GetValue=function(g)return f.Value end})end}}local d,e,f=function()end,
get_hidden_gui or gethui,cloneref or function(d)return d end local g,h=
setmetatable({},{__index=function(g,h)local i=game:GetService(h)return f(i)end})
,game:GetService'HttpService'local i,j,k,l,m=g.Players,g.CoreGui,g.
UserInputService,g.TweenService,g.RunService local n=i.LocalPlayer b.PlayerGui=n
.PlayerGui b.Mouse=n:GetMouse()local o=b.Animation function o:Tween(p)local q,r,
s=self.DefaultTweenInfo,p.Object,p.NoAnimation local t,u,v,w=p.Tweeninfo or q,p.
EndProperties,p.StartProperties,p.Completed if v then b:SetProperties(r,v)end if
s then b:SetProperties(r,u)if w then w()end return end local x for y,z in next,u
do local A={[y]=z}local B,C=pcall(function()return l:Create(r,t,A)end)if not B
then b:SetProperties(r,A)continue end if not x then x=C end C:Play()end if w
then if x then x.Completed:Connect(w)else w()end end return x end function o:
Animate(p)local q,r,s,t,u=p.NoAnimation,p.Objects,p.Tweeninfo,(p.Completed)for v
,w in next,r do local x=self:Tween{NoAnimation=q,Object=v,Tweeninfo=s,
EndProperties=w}if not u then u=x end end if t then u.Completed:Connect(t)end
return u end function o:HeaderCollapseToggle(p)b:CheckConfig(p,{Rotations={Open=
90,Closed=0}})local q,r,s,t,u=p.Toggle,p.NoAnimation,p.Rotations,p.Collapsed,p.
Tweeninfo local v=t and s.Closed or s.Open self:Tween{Tweeninfo=u,NoAnimation=r,
Object=q,EndProperties={Rotation=v}}end function o:HeaderCollapse(p)local q,r,s,
t,u,v,w,x,y,z,A=p.Tweeninfo,p.Collapsed,p.ClosedSize,p.OpenSize,p.Toggle,p.
Resize,p.Hide,p.NoAnimation,p.NoAutomaticSize,p.IconRotations,p.Completed if not
y then v.AutomaticSize=Enum.AutomaticSize.None end if not r then w.Visible=true
end self:HeaderCollapseToggle{Tweeninfo=q,Collapsed=r,NoAnimation=x,Toggle=u,
Rotations=z}local B=self:Tween{Tweeninfo=q,NoAnimation=x,Object=v,
StartProperties={Size=r and t or s},EndProperties={Size=r and s or t},Completed=
function()w.Visible=not r if A then A()end if r then return end if y then return
end v.Size=UDim2.fromScale(1,0)v.AutomaticSize=Enum.AutomaticSize.Y end}return B
end local p,q=b.Signaling,{}q.__index=q function q:Fire(...)local r=self:
GetConnections()if#r<=0 then return end for s,t in next,r do t(...)end end
function q:GetConnections()local r=self.Connections return r end function q:
Connect(r)local s=self:GetConnections()table.insert(s,r)end function q:
DisconnectConnections()local r=self:GetConnections()table.clear(r)end function p
:NewSignal()return NewClass(q,{Connections={}})end function GetAndRemove(r,s)
local t=s[r]if t then s[r]=nil end return t end function MoveTableItem(r,s,t)
local u=table.find(r,s)if not u then return end local v=table.remove(r,u)table.
insert(r,t,v)end function Merge(r,s)for t,u in next,s do r[t]=u end end function
Copy(r,s)local t=table.clone(r)if s then Merge(t,s)end return t end function
NewClass(r,s)s=s or{}r.__index=r return setmetatable(s,r)end function b:Warn(...
)warn('[ReGui]::',...)end function b:Error(...)local r=b:Concat({...},' ')local
s=`\n[ReGui]:: {r}`coroutine.wrap(error)(s)end function b:IsDoubleClick(r)local
s=self.DoubleClickThreshold return r<s end function b:StyleContainers()local r=
self.Container local s,t=r.Overlays,r.Windows self:SetProperties(t,{
OnTopOfCoreBlur=true})self:SetProperties(s,{OnTopOfCoreBlur=true})end function b
:Init(r)r=r or{}if self.Initialised then return end Merge(self,r)Merge(self,{
Initialised=true,HasGamepad=self:IsConsoleDevice(),HasTouchScreen=self:
IsMobileDevice()})self:CheckConfig(self,{ContainerParent=function()return self:
ResolveUIParent()end,Prefabs=function()return self:LoadPrefabs()end},true)self:
CheckConfig(self,{Container=function()return self:InsertPrefab('Container',{
Parent=self.ContainerParent,Name=self.ContainerName})end},true)local s,t,u=self.
Container,self.TooltipOffset,self.ActiveTooltips local v,w,x=s.Overlays,s.
Windows,0 self:StyleContainers()self.TooltipsContainer=b.Elements:Overlay{Parent
=v}k.InputBegan:Connect(function(y)if not self:IsMouseEvent(y,true)then return
end local z=tick()local A=z-x local B=self:IsDoubleClick(A)x=B and 0 or z self:
UpdateWindowFocuses()end)local y=function()local y,z=self.TooltipsContainer,#u>0
y.Visible=z if not z then return end local A,B=b:GetMouseLocation()local C=v.
AbsolutePosition y.Position=UDim2.fromOffset(A-C.X+t,B-C.Y+t)end m:
BindToRenderStep('ReGui_InputUpdate',Enum.RenderPriority.Input.Value,y)end
function b:GetVersion()return self.Version end function b:IsMobileDevice()return
k.TouchEnabled end function b:IsConsoleDevice()return k.GamepadEnabled end
function b:GetScreenSize()return workspace.CurrentCamera.ViewportSize end
function b:LoadPrefabs()local r,s=self.PlayerGui,'ReGui-Prefabs'local t=script:
WaitForChild(s,2)if t then return t end local u=r:WaitForChild(s,2)if u then
return u end return nil end function b:ResolveUIParent()local r,s=self.PlayerGui
,self.Debug local t,u={[1]=function()local t=e()if t.Parent==j then return end
return t end,[2]=function()return j end,[3]=function()return r end},self:
CreateInstance'ScreenGui'for v,w in next,t do local x,y=pcall(w)if not x or not
y then continue end local z=pcall(function()u.Parent=y end)if not z then
continue end if s then self:Warn(`Step: {v} was chosen as the parent!: {y}`)end
return y end self:Warn'The ReGui container does not have a parent defined'return
nil end function b:CheckConfig(r,s,t,u)if not r then return end for v,w in next,
s do if r[v]~=nil then continue end if u then if table.find(u,v)then continue
end end if t then w=w()end r[v]=w end return r end function b:CheckAssetUrl(r)if
tonumber(r)then return`rbxassetid://{r}`end return r end function b:
CreateInstance(r,s,t)local u=Instance.new(r,s)if t then local v=t.
UsePropertiesList if not v then self:SetProperties(u,t)else self:ApplyFlags{
Object=u,Class=t}end end return u end function b:ConnectMouseEvent(r,s)local t,u
,v,w,x=s.Callback,s.DoubleClick,s.OnlyMouseHovering,0 if v then x=self:
DetectHover(v)end r.Activated:Connect(function(...)local y=tick()local z=y-w if
x and not x.Hovering then return end if u then if not b:IsDoubleClick(z)then w=y
return end w=0 end t(...)end)end function b:GetAnimation(r)return r and self.
Animation or TweenInfo.new(0)end function b:DynamicImageTag(r,s,t)local u=self.
DynamicImages local v=u[s]if not v then return end if not t then return end t:
TagElements{[r]=v}end function b:GetDictSize(r)local s=0 for t,u in r do s+=1
end return s end function b:RemoveAnimations(r)local s=self:GetAnimationData(r)
local t=s.Connections for u,v in next,t do v:Disconnect()end end function b:
GetAnimationData(r)local s=self.AnimationConnections local t=s[r]if t then
return t end local u={Connections={}}s[r]=u return u end function b:
AddAnimationSignal(r,s)local t=self:GetAnimationData(r)local u=t.Connections
table.insert(u,s)end function b:SetAnimationsEnabled(r)self.NoAnimations=not r
end function b:SetAnimation(r,s,t)t=t or r local u,v,w=self.Animations,self.
HasTouchScreen,s if typeof(s)~='table'then w=u[s]end assert(w,`No animation data for Class {
s}!`)self:RemoveAnimations(t)local x,y,z,A,B=w.Init,w.Connections,w.Tweeninfo,w.
NoAnimation,self:GetAnimationData(r)local C,D,E,F,G,H=B.State,true,{},{}function
F:Reset(I)if not G then return end G(I)end function F:FireSignal(I,J)E[I](J)end
function F:Refresh(I)if not H then return end E[H](I)end function F:SetEnabled(I
)D=I end for I,J in next,y do local K,L=function(K)K=K==true H=I local L=self.
NoAnimations if L then return end if not D then return end B.State=I o:Tween{
NoAnimation=K or A,Object=r,Tweeninfo=z,EndProperties=J}end,t[I]if not v then
local M=L:Connect(K)self:AddAnimationSignal(t,M)end E[I]=K if I==x then G=K end
end if C then F:FireSignal(C)else F:Reset(true)end return F end function b:
GetChildOfClass(r,s)local t=r:FindFirstChildOfClass(s)if not t then t=self:
CreateInstance(s,r)end return t end function b:SetPadding(r,s)if not r then
return end self:SetProperties(r,{PaddingBottom=s,PaddingLeft=s,PaddingRight=s,
PaddingTop=s})end function b:ConnectDrag(r,s)self:CheckConfig(s,{DragStart=d,
DragEnd=d,DragMovement=d,OnDragStateChange=d})local t,u,v,w,x,y=s.DragStart,s.
DragEnd,s.DragMovement,s.OnDragStateChange,{StartAndEnd={Enum.UserInputType.
MouseButton1,Enum.UserInputType.Touch},Movement={Enum.UserInputType.
MouseMovement,Enum.UserInputType.Touch}},false local z,A,B=function(z,A)local B=
z.UserInputType return table.find(x[A],B)end,function(z)local A=z.Position
return Vector2.new(A.X,A.Y)end,function(z)self._DraggingDisabled=z y=z w(z)end
local C=function(C)local D,E,F=C.IsDragging,C.InputType,C.Callback return
function(G)if C.DraggingRequired~=y then return end if C.CheckDraggingDisabled
and self._DraggingDisabled then return end if not z(G,E)then return end if C.
UpdateState then B(D)end local H=A(G)F(H)end end r.InputBegan:Connect(C{
CheckDraggingDisabled=true,DraggingRequired=false,UpdateState=true,IsDragging=
true,InputType='StartAndEnd',Callback=t})k.InputEnded:Connect(C{DraggingRequired
=true,UpdateState=true,IsDragging=false,InputType='StartAndEnd',Callback=u})k.
InputChanged:Connect(C{DraggingRequired=true,InputType='Movement',Callback=v})
end function b:MakeDraggable(r)local s,t,u,v,w,x=r.Move,r.Grab,r.
OnDragStateChange,{}function v:SetEnabled(y)local z=r.StateChanged self.Enabled=
y if z then z(self)end end function v:CanDrag(y)return self.Enabled end local y,
z,A,B,C=function(y)if not v:CanDrag()then return end local z=r.DragBegin x=y z(x
)end,function(y)if not v:CanDrag()then return end local z,A=y-x,r.OnUpdate A(z)
end,function(y)w=s.Position end,function(y)local z=UDim2.new(w.X.Scale,w.X.
Offset+y.X,w.Y.Scale,w.Y.Offset+y.Y)r:SetPosition(z)end,function(y,z)o:Tween{
Object=s,EndProperties={Position=z}}end self:CheckConfig(r,{Enabled=true,
OnUpdate=B,SetPosition=C,DragBegin=A})self:ConnectDrag(t,{DragStart=y,
DragMovement=z,OnDragStateChange=u})local D=r.Enabled v:SetEnabled(D)return v
end function b:MakeResizable(r)b:CheckConfig(r,{MinimumSize=Vector2.new(160,90),
MaximumSize=Vector2.new(math.huge,math.huge)})local s,t,u,v,w=r.MaximumSize,r.
MinimumSize,r.Resize,(r.OnUpdate)local x=b:InsertPrefab('ResizeGrab',{Parent=u})
local y,z,A=function(y)x.Visible=y.Enabled end,function(y)local z=w+y local A=
UDim2.fromOffset(math.clamp(z.X,t.X,s.X),math.clamp(z.Y,t.Y,s.Y))if v then v(A)
return end o:Tween{Object=u,EndProperties={Size=A}}end,function(y)w=u.
AbsoluteSize end local B=self:MakeDraggable{Grab=x,OnUpdate=z,DragBegin=A,
StateChanged=y}B.Grab=x return B end function b:IsMouseEvent(r,s)local t=r.
UserInputType.Name if s and t:find'Movement'then return end return t:find'Touch'
or t:find'Mouse'end function b:DetectHover(r,s)s=s or{}s.Hovering=false local t,
u,v,w,x,y=s.OnInput,s.OnHoverChange,s.Anykey,s.MouseMove,s.MouseEnter,s.
MouseOnly local z=function(z,A,B)if z and y then if not b:IsMouseEvent(z,true)
then return end end if A~=nil then local C=s.Hovering s.Hovering=A if A~=C and u
then u(A)end end if not x and B then return end if t then local C=s.Hovering
return t(C,z)end end local A={r.MouseEnter:Connect(function()z(nil,true,true)end
),r.MouseLeave:Connect(function()z(nil,false,true)end)}if v or y then table.
insert(A,k.InputBegan:Connect(function(B)z(B)end))end if w then local B=r.
MouseMoved:Connect(function()z()end)table.insert(A,B)end function s:Disconnect()
for B,C in next,A do C:Disconnect()end end return s end function b:StackWindows(
)local r,s=self.Windows,20 for t,u in next,r do local v,w=u.WindowFrame,UDim2.
fromOffset(s*t,s*t)u:Center()v.Position+=w end end function b:GetElementFlags(r)
local s=self._FlagCache return s[r]end function b:UpdateColors(r)local s,t,u,v,w
,x,y,z,A=r.Object,r.Tag,r.NoAnimation,r.TagsList,r.Theme,r.Tweeninfo,self.
ElementColors,self.ThemeConfigs,self.Debug local B,C=self:GetElementFlags(s),y[t
]if typeof(C)=='string'then C=y[C]end if typeof(t)=='table'then C=t elseif v
then v[s]=t end if not C then return end local D={}for E,F in next,C do local G=
self:GetThemeKey(w,F)if B and B[E]then continue end if not G then if A then self
:Warn(`Color: '{F}' does not exist!`)end continue end D[E]=G end o:Tween{
Tweeninfo=x,Object=s,NoAnimation=u,EndProperties=D}end function b:
MultiUpdateColors(r)local s=r.Objects for t,u in next,s do self:UpdateColors{
TagsList=r.TagsList,Theme=r.Theme,NoAnimation=not r.Animate,Tweeninfo=r.
Tweeninfo,Object=t,Tag=u}end end function b:ApplyStyle(r,s)local t=self.Styles
local u=t[s]if not u then return end self:ApplyFlags{Object=r,Class=u}end
function b:ClassIgnores(r)local s=self.ClassIgnored local t=table.find(s,r)
return t and true or false end function b:MergeMetatables(r,s)local t,u,v=self.
Debug,self.NewIndexIgnores,{}v.__index=function(w,x)local y,z=self:ClassIgnores(
x),r[x]if z~=nil and not y then return z end local A,B=pcall(function()local A=s
[x]return self:PatchSelf(s,A)end)return A and B or nil end v.__newindex=function
(w,x,y)local A,B=self:ClassIgnores(x),typeof(y)=='function'local C=r[x]~=nil or
B if C and not A then r[x]=y return end xpcall(function()s[x]=y end,function(D)
if t then self:Warn(`Newindex Error: {s}.{x} = {y}\n{D}`)end r[x]=y end)end
return setmetatable({},v)end function b:Concat(r,s)local t=''for u,v in next,r
do t..=tostring(v)..(u~=#r and s or'')end return t end function b:
GetValueFromAliases(r,s)for t,u in r do local v=s[u]if v~=nil then return v end
end return nil end function b:RecursiveCall(r,s)for t,u in next,r:
GetDescendants()do s(u)end end function b:ApplyFlags(r)local s,t,u,v=self.
ElementFlags,r.Object,r.Class,r.WindowClass function r:GetThemeKey(w)if v then
return v:GetThemeKey(w)else return b:GetThemeKey(nil,w)end end self:
SetProperties(t,u)for w,x in next,s do local y,A,B,C=x.Properties,x.Callback,x.
Recursive,x.WindowProperties local D=self:GetValueFromAliases(y,u)if v and C and
D==nil then D=self:GetValueFromAliases(C,v)end if D==nil then continue end A(r,t
,D)if B then self:RecursiveCall(t,function(E)A(r,E,D)end)end end end function b:
SetProperties(r,s)for t,u in next,s do pcall(function()r[t]=u end)end end
function b:InsertPrefab(r,s)local t=self.Prefabs local u=t.Prefabs local v=u:
WaitForChild(r)local w=v:Clone()if s then local x=s.UsePropertiesList if not x
then self:SetProperties(w,s)else self:ApplyFlags{Object=w,Class=s}end end return
w end function b:GetContentSize(r,s)local t,u,v,w=r:FindFirstChildOfClass
'UIListLayout',r:FindFirstChildOfClass'UIPadding',(r:FindFirstChildOfClass
'UIStroke')if t and not s then w=t.AbsoluteContentSize else w=r.AbsoluteSize end
if u then local x,y,A,B=u.PaddingTop.Offset,u.PaddingBottom.Offset,u.PaddingLeft
.Offset,u.PaddingRight.Offset w+=Vector2.new(A+B,x+y)end if v then local x=v.
Thickness w+=Vector2.new(x/2,x/2)end return w end function b:PatchSelf(r,s)if
typeof(s)~='function'then return s end return function(t,...)return s(r,...)end
end function b:MakeCanvas(r)local s,t,u,v,w,x,y=self.Elements,self.Debug,self.
Signaling,r.Element,r.WindowClass,r.Class,r.OnChildChange local A=u:NewSignal()
if y then A:Connect(y)end if not w and t then self:Warn(`No WindowClass for {v}`
)self:Warn(r)end local B=NewClass(s,{Class=x,RawObject=v,WindowClass=w or false,
OnChildChange=A,Elements={}})local C={__index=function(C,D)local E=B[D]if E~=nil
then return self:PatchSelf(B,E)end local F=x[D]if F~=nil then return self:
PatchSelf(x,F)end local G=v[D]return self:PatchSelf(v,G)end,__newindex=function(
C,D,E)local F=x[D]~=nil if F then x[D]=E else v[D]=E end end}return
setmetatable({},C)end function b:GetIniData(r)local s,t=self.IniToSave,{}for u,v
in next,s do t[v]=r[v]end return t end function b:DumpIni(r)local s,t=self.
IniSettings,{}for u,v in next,s do t[u]=self:GetIniData(v)end if r then return h
:JSONEncode(t)end return t end function b:LoadIniIntoElement(r,s)local t={Value=
function(t)r:SetValue(t)end}for u,v in next,s do local w=t[u]if w then w(v)
continue end r[u]=v end end function b:LoadIni(r,s)local t=self.IniSettings
assert(r,'No Ini configuration was passed')if s then r=h:JSONDecode(r)end for u,
v in next,r do local w=t[u]self:LoadIniIntoElement(w,v)end end function b:
AddIniFlag(r,s)local t=self.IniSettings t[r]=s end function b:OnElementCreate(r)
local s,t,u,v,w=self._FlagCache,r.Flags,r.Object,r.Canvas,r.Class local x,y,A,B,
C,D=v.WindowClass,t.NoAutoTag,t.NoAutoFlags,t.ColorTag,t.NoStyle,t.IniFlag s[u]=
t if D then self:AddIniFlag(D,w)end if C then return end if not y and x then x:
TagElements{[u]=B}end if x then x:LoadStylesIntoElement(r)end if not A then self
:ApplyFlags{Object=u,Class=t,WindowClass=x}end end function b:WrapGeneration(r,s
)local t,u,v=self._ErrorCache,s.Base,s.IgnoreDefaults return function(w,x,...)x=
x or{}self:CheckConfig(x,u)local y=x.CloneTable if y then x=table.clone(x)end
local A,B,C=w.RawObject,w.Elements,w.OnChildChange self:CheckConfig(x,{Parent=A,
Name=x.ColorTag},nil,v)if w==self then w=self.Elements end local D,E,F=pcall(r,w
,x,...)if D==false then if A then if t[A]then return end t[A]=E end if w.Error
then w:Error{Parent=A,Text=E}end self:Error('Class:',E)self:Error(debug.
traceback())end if F==nil then F=E end if C then C:Fire(E)end if F then if B
then table.insert(B,F)end self:OnElementCreate{Object=F,Flags=x,Class=E,Canvas=w
}end return E,F end end function b:DefineElement(r,s)local t,u,v=self.Elements,
self.ThemeConfigs,self.ElementColors local w,x,y,A,B,C=u.DarkTheme,s.Base,s.
Create,s.Export,s.ThemeTags,s.ColorData self:CheckConfig(x,{ColorTag=r,
ElementStyle=r})if B then Merge(w,B)end if C then Merge(v,C)end local D=self:
WrapGeneration(y,s)if A then self[r]=D end t[r]=D return D end function b:
DefineGlobalFlag(r)local s=self.ElementFlags table.insert(s,r)end function b:
DefineTheme(r,s)local t=self.ThemeConfigs self:CheckConfig(s,{BaseTheme=t.
DarkTheme})local u=GetAndRemove('BaseTheme',s)local v={BaseTheme=u,Values=s}t[r]
=v return v end function b:GetMouseLocation()local r=self.Mouse return r.X,r.Y
end function b:SetWindowFocusesEnabled(r)self.WindowFocusesEnabled=r end
function b:UpdateWindowFocuses()local r,s=self.Windows,self.WindowFocusesEnabled
if not s then return end for t,u in r do local v=u.HoverConnection if not v then
continue end local w=v.Hovering if w then self:SetFocusedWindow(u)return end end
self:SetFocusedWindow(nil)end function b:WindowCanFocus(r)if r.NoSelect then
return false end if r.Collapsed then return false end if r._SelectDisabled then
return false end return true end function b:GetFocusedWindow()return self.
FocusedWindow end function b:BringWindowToFront(r)local s,t=self.Windows,r.
NoBringToFrontOnFocus if t then return end MoveTableItem(s,r,1)end function b:
SetFocusedWindow(r)local s,t=self:GetFocusedWindow(),self.Windows if s==r then
return end self.FocusedWindow=r if r then local u=self:WindowCanFocus(r)if not u
then return end self:BringWindowToFront(r)end local u=#t for v,w in t do local x
,y=self:WindowCanFocus(w),w.WindowFrame if not x then continue end u-=1 if u
then y.ZIndex=u end local A=w==r w:SetFocused(A,u)end end function b:
SetItemTooltip(r,s)local t,u,v=self.Elements,self.TooltipsContainer,self.
ActiveTooltips local w,x=u:Canvas{Visible=false,UiPadding=UDim.new()}task.spawn(
s,w)b:DetectHover(r,{MouseMove=true,MouseEnter=true,OnHoverChange=function(y)if
y then table.insert(v,w)return end local A=table.find(v,w)table.remove(v,A)end,
OnInput=function(y,A)x.Visible=y end})end function b:CheckFlags(r,s)for t,u in
next,r do local v=s[t]if not v then continue end u(v)end end function b:
GetThemeKey(r,s)local t=self.ThemeConfigs if typeof(r)=='string'then r=t[r]end
local u=t.DarkTheme r=r or u local v,w=r.BaseTheme,r.Values local x=w[s]if x
then return x end if v then return self:GetThemeKey(v,s)end end function b:
SelectionGroup(r)local s,t,v=false,function(s,t)for v,w in next,r do if typeof(w
)=='Instance'then continue end if w==t then continue end s(w)end end local w=
function(w)if s then return end s=true local x=v v=w:GetValue()if not x then x=v
end t(function(y)y:SetValue(x)end,w)s=false end t(function(x)x.Callback=w end)
end local r=b.Elements r.__index=r function r:GetObject()return self.RawObject
end function r:ApplyFlags(s,t)local v=self.WindowClass b:ApplyFlags{WindowClass=
v,Object=s,Class=t}end function r:Remove()local s,t,v=self.OnChildChange,self:
GetObject(),self.Class local w=v.Remove if w then return w(v)end if s then s:
Fire(v or self)end if v then table.clear(v)end t:Destroy()table.clear(self)end
function r:GetChildElements()local s=self.Elements return s end function r:
ClearChildElements()local s=self:GetChildElements()for t,v in next,s do v:
Destroy()end end function r:TagElements(s)local t,v=self.WindowClass,b.Debug if
not t then if v then b:Warn('No WindowClass for TagElements:',s)end return end t
:TagElements(s)end function r:GetThemeKey(s)local t=self.WindowClass if t then
return t:GetThemeKey(s)end return b:GetThemeKey(nil,s)end function r:
SetColorTags(s,t)local v=self.WindowClass if not v then return end local w,x=v.
TagsList,v.Theme b:MultiUpdateColors{Animate=t,Theme=x,TagsList=w,Objects=s}end
function r:SetElementFocused(s,t)local v,w,x,y=self.WindowClass,b.HasTouchScreen
,t.Focused,t.Animation b:SetAnimationsEnabled(not x)if not x and y then y:
Refresh()end if not v then return end if not w then return end local A=v.
ContentCanvas A.Interactable=not x end b:DefineElement('Dropdown',{Base={
ColorTag='PopupCanvas',Disabled=false,AutoClose=true,OnSelected=d},Create=
function(s,t)t.Parent=b.Container.Overlays local v,w,x,y,A=t.Selected,t.Items,t.
OnSelected,s:PopupCanvas(t)local B,C,D=b:MergeMetatables(t,y),{},function(B)x(B)
end function t:ClearEntries()for E,F in C do F:Remove()end end function t:
SetItems(E,F)local G=E[1]self:ClearEntries()for H,I in E do local J,K=G and I or
H,H==F or I==F local L=y:Selectable{Text=tostring(J),Selected=K,ZIndex=6,
Callback=function()return D(J)end}table.insert(C,L)end end if w then t:SetItems(
w,v)end return B,A end})b:DefineElement('OverlayScroll',{Base={ElementClass=
'OverlayScroll',Spacing=UDim.new(0,4)},Create=function(s,t)local v,w,x=s.
WindowClass,t.ElementClass,t.Spacing local y=b:InsertPrefab(w,t)local A,B=y:
FindFirstChild'ContentFrame'or y,y:FindFirstChild('UIListLayout',true)B.Padding=
x local C=b:MergeMetatables(s,t)local D=b:MakeCanvas{Element=A,WindowClass=v,
Class=C}function t:GetCanvasSize()return A.AbsoluteCanvasSize end return D,y end
})b:DefineElement('Overlay',{Base={ElementClass='Overlay'},Create=r.
OverlayScroll})b:DefineElement('Image',{Base={Image='',Callback=d},Create=
function(s,t)local v=b:InsertPrefab('Image',t)v.Activated:Connect(function(...)
local w=t.Callback return w(v,...)end)return v end})b:DefineElement(
'VideoPlayer',{Base={Video='',Callback=d},Create=function(s,t)local v=t.Video t.
Video=b:CheckAssetUrl(v)local w=b:InsertPrefab('VideoPlayer',t)return w end})b:
DefineElement('Button',{Base={Text='Button',DoubleClick=false,Callback=d},Create
=function(s,t)local v,w=b:InsertPrefab('Button',t),t.DoubleClick b:
ConnectMouseEvent(v,{DoubleClick=w,Callback=function(...)local x=t.Callback
return x(v,...)end})return v end})b:DefineElement('Selectable',{Base={Text=
'Selectable',Callback=d,Selected=false,Disabled=false,Size=UDim2.fromScale(1,0),
AutomaticSize=Enum.AutomaticSize.Y,TextXAlignment=Enum.TextXAlignment.Left,
AnimationTags={Selected='Buttons',Unselected='TransparentButtons'}},Create=
function(s,t)local v,w,x,y=s.Class.AfterClick,t.Selected,t.Disabled,b:
InsertPrefab('Button',t)local A=b:MergeMetatables(t,y)y.Activated:Connect(
function(...)local B=t.Callback B(y,...)if v then v(y,...)end end)function t:
SetSelected(B)local C=self.AnimationTags local D=B and C.Selected or C.
Unselected self.Selected=B b:SetAnimation(y,D)end function t:SetDisabled(B)self.
Disabled=B y.Interactable=not B end t:SetSelected(w)t:SetDisabled(x)return A,y
end})b:DefineElement('ImageButton',{Base={ElementStyle='Button',Callback=d},
Create=r.Image})b:DefineElement('SmallButton',{Base={Text='Button',PaddingTop=
UDim.new(),PaddingBottom=UDim.new(),PaddingLeft=UDim.new(0,2),PaddingRight=UDim.
new(0,2),ColorTag='Button',ElementStyle='Button',Callback=d},Create=r.Button})b:
DefineElement('Keybind',{Base={Label='Keybind',ColorTag='Frame',Value=nil,
DeleteKey=Enum.KeyCode.Backspace,IgnoreGameProcessed=true,Enabled=true,Disabled=
false,Callback=d,OnKeybindSet=d,OnBlacklistedKeybindSet=d,KeyBlacklist={},
UiPadding=UDim.new(),AutomaticSize=Enum.AutomaticSize.None,Size=UDim2.new(0.3,0,
0,19)},Create=function(s,t)local v,w,x,y,A=t.Value,t.Label,t.Disabled,t.
KeyBlacklist,b:InsertPrefab('Button',t)local B,C,D,E=b:MergeMetatables(t,A),s:
Label{Parent=A,Text=w,Position=UDim2.new(1,4,0.5),AnchorPoint=Vector2.new(0,0.5)
},function(B,...)return B(A,...)end,function(B)local C=table.find(y,B)return C
end function t:SetDisabled(F)self.Disabled=F A.Interactable=not F s:
SetColorTags({[C]=F and'LabelDisabled'or'Label'},true)end function t:SetValue(F)
local G,H=self.OnKeybindSet,self.DeleteKey if F==H then F=nil end self.Value=F A
.Text=F and F.Name or'Not set'D(G,F)end function t:WaitForNewKey()self.
_WaitingForNewKey=true A.Text='...'A.Interactable=false end local F=function(F)
local G,H=F.KeyCode,F.UserInputType if H~=Enum.UserInputType.Keyboard then
return H end return G end local G=function(G)local H,I,J=t.
OnBlacklistedKeybindSet,t.Value,F(G)if not k.WindowFocused then return end if E(
J)then D(H,J)return end A.Interactable=true t._WaitingForNewKey=false if J.Name
=='Unknown'then return t:SetValue(I)end t:SetValue(J)end local H=function(H,I)
local J,K,L,M,N,O=t.IgnoreGameProcessed,t.DeleteKey,t.Enabled,t.Value,t.Callback
,F(H)if t._WaitingForNewKey then G(H)return end if not L and A.Interactable then
return end if not J and I then return end if not M then return end if O==K then
return end if O.Name~=M.Name then return end D(N,O)end t:SetValue(v)t:
SetDisabled(x)t.Connection=k.InputBegan:Connect(H)A.Activated:Connect(function()
t:WaitForNewKey()end)b:SetAnimation(A,'Inputs')return B,A end})b:DefineElement(
'ArrowButton',{Base={Direction='Left',ColorTag='Button',Icon=b.Icons.Arrow,Size=
UDim2.fromOffset(21,21),IconSize=UDim2.fromScale(1,1),IconPadding=UDim.new(0,4),
Rotations={Left=180,Right=0}},Create=function(s,t)local v,w=t.Direction,t.
Rotations local x=w[v]t.IconRotation=x local y=b:InsertPrefab('ArrowButton',t)y.
Activated:Connect(function(...)local A=t.Callback return A(y,...)end)return y
end})b:DefineElement('Label',{Base={Font='Inconsolata'},ColorData={LabelPadding=
{PaddingTop='LabelPaddingTop',PaddingBottom='LabelPaddingBottom'}},Create=
function(s,t)local v,w,x,y,A,B,C,D=t.Bold,t.Italic,t.Font,t.FontFace,Enum.
FontWeight.Medium,Enum.FontWeight.Bold,Enum.FontStyle.Normal,Enum.FontStyle.
Italic local E,F,G=v and B or A,w and D or C,v or w if not y and G then t.
FontFace=Font.fromName(x,E,F)end local H=b:InsertPrefab('Label',t)local I=H:
FindFirstChildOfClass'UIPadding's:TagElements{[I]='LabelPadding'}return H end})b
:DefineElement('Error',{Base={RichText=true,TextWrapped=true},ColorData={Error={
TextColor3='ErrorText',FontFace='TextFont'}},Create=function(s,t)local v=t.Text
t.Text=`<b>\u{26d4} Error:</b> {v}`return s:Label(t)end})local s={Engaged=false}
s.__index=s function s:SetEngaged(t)local v,w=self.Object,self.WindowClass self.
Engaged=t if w then w:SetCanvasInteractable(not t)end end function s:IsHovering(
)local t=false self:Foreach(function(v)t=v.Popup:IsMouseHovering()return t end)
return t end function s:Foreach(t)local v=self.Menus for w,x in next,v do local
y=t(x)if y then break end end end function s:SetFocusedMenu(t)self:Foreach(
function(v)local w=v==t v:SetActiveState(w)end)end function s:Close()self:
SetEngaged(false)self:SetFocusedMenu(nil)end function s:MenuItem(t)local v,w=
self.Canvas,self.Menus local x=v:MenuButton(t)local y=v:PopupCanvas{RelativeTo=x
,MaxSizeX=210,Visible=false,AutoClose=false,AfterClick=function()self:Close()end
}local A={Popup=y,Button=x}b:DetectHover(x,{MouseEnter=true,OnInput=function()if
not self.Engaged then return end self:SetFocusedMenu(A)end})function A:
SetActiveState(B)y:SetPopupVisible(B)x:SetSelected(B)end x.Activated:Connect(
function()self:SetFocusedMenu(A)self:SetEngaged(true)end)table.insert(w,A)return
y,A end b:DefineElement('MenuBar',{Base={},Create=function(t,v)local w,x=t.
WindowClass,b:InsertPrefab('MenuBar',v)local y=b:MakeCanvas{Element=x,
WindowClass=w,Class=v}local A=NewClass(s,{WindowClass=w,Canvas=y,Object=x,Menus=
{}})Merge(A,v)b:DetectHover(x,{MouseOnly=true,OnInput=function()if not A.Engaged
then return end if A:IsHovering()then return end A:Close()end})local B=b:
MergeMetatables(A,y)return B,x end})b:DefineElement('MenuButton',{Base={Text=
'MenuButton',PaddingLeft=UDim.new(0,8),PaddingRight=UDim.new(0,8),Size=UDim2.
fromOffset(0,19),AutomaticSize=Enum.AutomaticSize.XY},Create=r.Selectable})local
t={ColorTags={BGSelected={[true]='SelectedTab',[false]='DeselectedTab'},
LabelSelected={[true]='SelectedTabLabel',[false]='DeselectedTabLabel'}}}function
t:SetButtonSelected(v,w)if v.IsSelected==w then return end v.IsSelected=w local
x,y,A=self.NoAnimation,self.WindowClass,self.ColorTags local B,C,D,E,F=y.Theme,y
.TagsList,A.BGSelected,A.LabelSelected,v.TabButton local G=F.Button local H=G.
Label b:MultiUpdateColors{Animate=not x,Theme=B,TagsList=C,Objects={[G]=D[w],[H]
=E[w]}}end function t:CompareTabs(v,w)if not v then return false end return v.
MatchBy==w or v==w end function t:ForEachTab(v,w)local x,y=typeof(v)=='string',
self.Tabs for A,B in y do local C,D=B.Name,false if x then D=C==v else D=self:
CompareTabs(B,v)end w(B,D,A)end end function t:RemoveTab(v)local w,x=self.
OnTabRemove,self.Tabs self:ForEachTab(v,function(y,A,B)if not A then return end
local C,D=y.TabButton,y.OnClosure table.remove(x,B)C:Destroy()w(self,y)D(y)end)
return self end function t:CreateTab(v)v=v or{}b:CheckConfig(v,{Name='Tab',
AutoSize='Y',Focused=false,OnClosure=d})local w,x,y,A,B,C,D,E,F=self.
AutoSelectNewTabs,self.WindowClass,self.ParentCanvas,self.Tabs,self.TabsFrame,
self.OnTabCreate,v.Focused,v.Name,v.Icon local G,H=D or#A<=0 and w,b:
InsertPrefab('TabButton',v)H.Parent=B local I=H.Button local J,K=I:
FindFirstChildOfClass'UIPadding',I.Label K.Text=tostring(E)Merge(v,{TabButton=H}
)local L,M=function()self:SetActiveTab(v)end,{Closeable=function()local L=y:
RadioButton{Parent=I,Visible=not self.NoClose,Icon=b.Icons.Close,IconSize=UDim2.
fromOffset(11,11),LayoutOrder=3,ZIndex=2,UsePropertiesList=true,Callback=
function()self:RemoveTab(v)end}local M=L.Icon b:SetAnimation(M,{Connections={
MouseEnter={ImageTransparency=0},MouseLeave={ImageTransparency=1}},Init=
'MouseLeave'},H)end}I.Activated:Connect(L)b:CheckFlags(M,v)table.insert(A,v)if x
then x:TagElements{[J]='TabPadding'}end b:SetAnimation(I,'Buttons')self:
SetButtonSelected(v,G)y:ApplyFlags(H,v)local N=C(self,v)if G then self:
SetActiveTab(v)end return N or v end function t:SetActiveTab(v)local w,x,y,A,B=
self.Tabs,self.NoAnimation,self.ActiveTab,self.OnActiveTabChange,typeof(v)==
'string'self:ForEachTab(v,function(C,D,E)if D then MatchedTab=C end self:
SetButtonSelected(C,D)end)if not MatchedTab then return self end if self:
CompareTabs(MatchedTab,y)then return self end self.ActiveTab=MatchedTab A(self,
MatchedTab,y)return self end b:DefineElement('TabBar',{Base={AutoSelectNewTabs=
true,OnActiveTabChange=d,OnTabCreate=d,OnTabRemove=d},ColorData={DeselectedTab={
BackgroundColor3='TabBg'},SelectedTab={BackgroundColor3='TabBgActive'},
DeselectedTabLabel={FontFace='TextFont',TextColor3='TabText'},SelectedTabLabel={
FontFace='TextFont',TextColor3='TabTextActive'},TabsBarSeparator={
BackgroundColor3='TabBgActive'},TabPadding={PaddingTop='TabTextPaddingTop',
PaddingBottom='TabTextPaddingBottom'},TabPagePadding={PaddingBottom=
'TabPagePadding',PaddingLeft='TabPagePadding',PaddingRight='TabPagePadding',
PaddingTop='TabPagePadding'}},Create=function(v,w)local x,y,A=v.WindowClass,b:
InsertPrefab('TabsBar',w),NewClass(t)local B,C=y.Separator,y.TabsFrame local D=b
:MakeCanvas{Element=C,WindowClass=x,Class=A}Merge(A,w)Merge(A,{ParentCanvas=v,
Object=y,TabsFrame=C,WindowClass=x,Tabs={}})v:TagElements{[y]='TabsBar',[B]=
'TabsBarSeparator'}local E=b:MergeMetatables(D,y)return E,y end})b:
DefineElement('TabSelector',{Base={NoTabsBar=false,OnActiveTabChange=d,
OnTabCreate=d,OnTabRemove=d},Create=function(v,w)local x,y,A,B=v.WindowClass,w.
NoTabsBar,w.NoAnimation,b:InsertPrefab('TabSelector',w)local C=B.Body local D=C.
PageTemplate D.Visible=false local E,F=function(E,F,...)local G,H,I=F.AutoSize,F
.Name,D:Clone()local J=b:GetChildOfClass(I,'UIPadding')b:SetProperties(I,{Parent
=C,Name=H,AutomaticSize=Enum.AutomaticSize[G],Size=UDim2.fromScale(G=='Y'and 1
or 0,G=='X'and 1 or 0)})v:TagElements{[J]='TabPagePadding'}local K=b:MakeCanvas{
Element=I,WindowClass=x,Class=F}w.OnTabCreate(E,F,...)Merge(F,{Page=I,MatchBy=K}
)return K end,function(E,F,...)E:ForEachTab(F,function(G,H,I)local J=G.Page J.
Visible=H if not H then return end local K=v:GetThemeKey'AnimationTweenInfo'o:
Tween{Object=J,Tweeninfo=K,NoAnimation=A,StartProperties={Position=UDim2.
fromOffset(0,4)},EndProperties={Position=UDim2.fromOffset(0,0)}}end)w.
OnActiveTabChange(E,F,...)end local G=v:TabBar{Parent=B,Visible=not y,
OnTabCreate=E,OnActiveTabChange=F,OnTabRemove=function(G,H,...)H.Page:Remove()w.
OnTabRemove(...)end}local H=b:MergeMetatables(G,B)return H,B end})b:
DefineElement('RadioButton',{Base={Callback=d},Create=function(v,w)local x=b:
InsertPrefab('RadioButton',w)x.Activated:Connect(function(...)local y=w.Callback
return y(x,...)end)return x end})b:DefineElement('Checkbox',{Base={Label=
'Checkbox',IsRadio=false,Value=false,NoAutoTag=true,TickedImageSize=UDim2.
fromScale(1,1),UntickedImageSize=UDim2.fromScale(0,0),Callback=d,Disabled=false}
,Create=function(v,w)local x,y,A,B,C,D,E=w.IsRadio,w.Value,w.Label,w.
TickedImageSize,w.UntickedImageSize,w.Disabled,b:InsertPrefab('CheckBox',w)local
F,G=b:MergeMetatables(w,E),E.Tickbox local H=G.Tick H.Image=b.Icons.Checkmark
local I,J,K,L=G:FindFirstChildOfClass'UIPadding',b:GetChildOfClass(G,'UICorner')
,v:Label{Text=A,Parent=E,LayoutOrder=2},UDim.new(0,3)if x then H.
ImageTransparency=1 H.BackgroundTransparency=0 J.CornerRadius=UDim.new(1,0)else
L=UDim.new(0,2)end b:SetProperties(I,{PaddingBottom=L,PaddingLeft=L,PaddingRight
=L,PaddingTop=L})local M,N=function(...)local M=w.Callback return M(F,...)end,
function(M,N)local O,P=v:GetThemeKey'AnimationTweenInfo',M and B or C o:Tween{
Object=H,Tweeninfo=O,NoAnimation=N,EndProperties={Size=P}}end function w:
SetDisabled(O)self.Disabled=O E.Interactable=not O v:SetColorTags({[K]=O and
'LabelDisabled'or'Label'},true)end function w:SetValue(O,P)self.Value=O N(O,P)M(
O)return self end function w:SetTicked(...)b:Warn
'Checkbox:SetTicked is deprecated, please use :SetValue'return self:SetValue(...
)end function w:Toggle()local O=not self.Value self.Value=O self:SetValue(O)
return self end local O=function()w:Toggle()end E.Activated:Connect(O)G.
Activated:Connect(O)w:SetValue(y,true)w:SetDisabled(D)b:SetAnimation(G,'Buttons'
,E)v:TagElements{[H]='CheckMark',[G]='Checkbox'}return F,E end})b:DefineElement(
'Radiobox',{Base={IsRadio=true,CornerRadius=UDim.new(1,0)},Create=r.Checkbox})b:
DefineElement('PlotHistogram',{Base={ColorTag='Frame',Label='Histogram'},Create=
function(v,w)local x,y,A=w.Label,w.Points,b:InsertPrefab('Histogram',w)local B,C
=b:MergeMetatables(w,A),A.Canvas local D=C.PointTemplate D.Visible=false v:Label
{Text=x,Parent=A,Position=UDim2.new(1,4)}b:SetItemTooltip(A,function(E)
ValueLabel=E:Label()end)Merge(w,{_Plots={},_Cache={}})function w:GetBaseValues()
local E,F=self.Minimum,self.Maximum if E and F then return E,F end local G=self.
_Plots for H,I in G do local J=I.Value if not E or J<E then E=J end if not F or
J>F then F=J end end return E,F end function w:UpdateGraph()local E,F,G=self.
_Plots,self:GetBaseValues()if not F or not G then return end local H=G-F for I,J
in E do local K,L=J.Point,J.Value local M=(L-F)/H M=math.clamp(M,0.05,1)K.Size=
UDim2.fromScale(1,M)end return self end function w:Plot(E)local F,G,H=self.
_Plots,{},D:Clone()local I=H.Bar b:SetProperties(H,{Parent=C,Visible=true})local
J,K=b:DetectHover(H,{MouseEnter=true,OnInput=function()G:UpdateTooltip()end}),{
Object=H,Point=I,Value=E}function G:UpdateTooltip()local L=G:GetPointIndex()
ValueLabel.Text=`{L}:\t{K.Value}`end function G:SetValue(L)K.Value=L w:
UpdateGraph()if J.Hovering then self:UpdateTooltip()end end function G:
GetPointIndex()return table.find(F,K)end function G:Remove(L)table.remove(F,self
:GetPointIndex())H:Remove()w:UpdateGraph()end table.insert(F,K)self:UpdateGraph(
)b:SetAnimation(I,'Plots',H)v:TagElements{[I]='Plot'}return G end function w:
PlotGraph(E)local F=self._Cache local G=#F-#E if G>=1 then for H=1,G do local I=
table.remove(F,H)if I then I:Remove()end end end for H,I in E do local J=F[H]if
J then J:SetValue(I)continue end F[H]=self:Plot(I)end return self end if y then
w:PlotGraph(y)end return B,A end})b:DefineElement('Viewport',{Base={IsRadio=true
},Create=function(v,w)local x,y,A=w.Model,w.Camera,b:InsertPrefab('Viewport',w)
local B,C=b:MergeMetatables(w,A),A.Viewport local D=C.WorldModel if not y then y
=b:CreateInstance('Camera',C)y.CFrame=CFrame.new(0,0,0)end Merge(w,{Camera=y,
WorldModel=D,Viewport=C})function w:SetCamera(E)self.Camera=E C.CurrentCamera=E
return self end function w:SetModel(E,F)local G=self.Clone D:ClearAllChildren()
if G then E=E:Clone()end if F then E:PivotTo(F)end E.Parent=D self.Model=E
return E end if x then w:SetModel(x)end w:SetCamera(y)return B,A end})b:
DefineElement('InputText',{Base={Value='',Placeholder='',Label='Input text',
Callback=d,MultiLine=false,NoAutoTag=true,Disabled=false},Create=function(v,w)
local x,y,A,B,C,D=w.MultiLine,w.Placeholder,w.Label,w.Disabled,w.Value,b:
InsertPrefab('InputBox',w)local E=D.Frame local F,G=E.Input,b:MergeMetatables(w,
D)v:Label{Parent=D,Text=A,AutomaticSize=Enum.AutomaticSize.X,Size=UDim2.
fromOffset(0,19),Position=UDim2.new(1,4),LayoutOrder=2}b:SetProperties(F,{
PlaceholderText=y,MultiLine=x})local H=function(...)local H=w.Callback H(G,...)
end function w:SetValue(I)F.Text=tostring(I)self.Value=I return self end
function w:SetDisabled(I)self.Disabled=I D.Interactable=not I v:SetColorTags({[A
]=I and'LabelDisabled'or'Label'},true)return self end function w:Clear()F.Text=
''return self end local I=function()local I=F.Text w.Value=I H(I)end F:
GetPropertyChangedSignal'Text':Connect(I)w:SetDisabled(B)w:SetValue(C)v:
TagElements{[F]='Frame'}return G,D end})b:DefineElement('InputInt',{Base={Value=
0,Increment=1,Placeholder='',Label='Input Int',Callback=d},Create=function(v,w)
local x,y,A,B,C,D=w.Value,w.Placeholder,w.Label,w.Disabled,w.NoButtons,b:
InsertPrefab('InputBox',w)local E,F=b:MergeMetatables(w,D),D.Frame local G=F.
Input G.PlaceholderText=y local H,I,J,K=v:Button{Text='-',Parent=F,LayoutOrder=2
,Ratio=1,AutomaticSize=Enum.AutomaticSize.None,FlexMode=Enum.UIFlexMode.None,
Size=UDim2.fromScale(1,1),Visible=not C,Callback=function()w:Decrease()end},v:
Button{Text='+',Parent=F,LayoutOrder=3,Ratio=1,AutomaticSize=Enum.AutomaticSize.
None,FlexMode=Enum.UIFlexMode.None,Size=UDim2.fromScale(1,1),Visible=not C,
Callback=function()w:Increase()end},v:Label{Parent=D,Text=A,AutomaticSize=Enum.
AutomaticSize.X,Size=UDim2.fromOffset(0,19),Position=UDim2.new(1,4),LayoutOrder=
4},function(...)local H=w.Callback H(E,...)end function w:Increase()local L,M=
self.Value,self.Increment w:SetValue(L+M)end function w:Decrease()local L,M=self
.Value,self.Increment w:SetValue(L-M)end function w:SetDisabled(L)self.Disabled=
L D.Interactable=not L v:SetColorTags({[J]=L and'LabelDisabled'or'Label'},true)
end function w:SetValue(L)local M,N,O=self.Value,self.Minimum,self.Maximum L=
tonumber(L)if not L then L=M end if N and O then L=math.clamp(L,N,O)end G.Text=L
w.Value=L K(L)return self end local L=function()local L=G.Text w:SetValue(L)end
w:SetValue(x)w:SetDisabled(B)G.FocusLost:Connect(L)v:TagElements{[I]='Button',[H
]='Button',[G]='Frame'}return E,D end})b:DefineElement('InputTextMultiline',{
Base={Label='',Size=UDim2.new(1,0,0,39),Border=false,ColorTag='Frame'},Create=
function(v,w)return v:Console(w)end})b:DefineElement('Console',{Base={Enabled=
true,Value='',TextWrapped=false,Border=true,MaxLines=300,LinesFormat='%s',
Callback=d},Create=function(v,w)local x,y,A,B,C,D=w.ReadOnly,w.LineNumbers,w.
Fill,w.Value,w.Placeholder,b:InsertPrefab('Console',w)local E,F,G=b:
MergeMetatables(w,D),D.Source,D.Lines G.Visible=y function w:CountLines(H)local
I=F.Text:split'\n'local J=#I if J==1 and I[1]==''then return 0 end return J end
function w:UpdateLineNumbers()local H,I=self.LineNumbers,self.LinesFormat if not
H then return end local J=self:CountLines()G.Text=''for K=1,J do local L,M=I:
format(K),K~=J and'\n'or''G.Text..=`{L}{M}`end local K=G.AbsoluteSize.X F.Size=
UDim2.new(1,-K,0,0)return self end function w:CheckLineCount()local H=w.MaxLines
if not H then return end local I=F.Text local J=I:split'\n'if#J>H then local K=`{
J[1]}\\n`local L=I:sub(#K)self:SetValue(L)end return self end function w:
UpdateScroll()local H=D.AbsoluteCanvasSize D.CanvasPosition=Vector2.new(0,H.Y)
return self end function w:SetValue(H)if not self.Enabled then return end F.Text
=tostring(H)self:Update()return self end function w:GetValue()return F.Text end
function w:Clear()F.Text=''self:Update()return self end function w:AppendText(
...)local H,I=self:CountLines(true),b:Concat({...},' ')if H==0 then return self:
SetValue(I)end local J=self:GetValue()local K=`{J}\n{I}`self:SetValue(K)return
self end function w:Update()local H=self.AutoScroll self:CheckLineCount()self:
UpdateLineNumbers()if H then self:UpdateScroll()end end local H=function()local
H=w:GetValue()w:Update()w.Callback(H)end w:SetValue(B)b:SetProperties(F,w)b:
SetProperties(F,{TextEditable=not x,Parent=D,PlaceholderText=C})v:TagElements{[F
]='ConsoleText',[G]='ConsoleLineNumbers'}F:GetPropertyChangedSignal'Text':
Connect(H)return E,D end})b:DefineElement('Table',{Base={VerticalAlignment=Enum.
VerticalAlignment.Top,RowBackground=false,RowBgTransparency=0.87,Border=false,
Spacing=UDim.new(0,4)},Create=function(v,w)local x,y,A,B,C,D,E,F=v.WindowClass,w
.RowBgTransparency,w.RowBackground,w.Border,w.VerticalAlignment,w.MaxColumns,w.
Spacing,b:InsertPrefab('Table',w)local G,H,I,J,K=b:MergeMetatables(w,F),F.
RowTemp,0,{},B and A function w:Row(L)L=L or{}local M,N,O,P=L.IsHeader,0,{},H:
Clone()b:SetProperties(P,{Name='Row',Visible=true,Parent=F})local Q=P:
FindFirstChildOfClass'UIListLayout'b:SetProperties(Q,{VerticalAlignment=C,
Padding=not K and E or UDim.new(0,1)})if M then v:TagElements{[P]='Header'}else
I+=1 end if A and not M then local R=I%2~=1 and y or 1 P.BackgroundTransparency=
R end local R={}local S=b:MergeMetatables(R,P)function R:Column(T)T=T or{}b:
CheckConfig(T,{HorizontalAlign=Enum.HorizontalAlignment.Left,VerticalAlignment=
Enum.VerticalAlignment.Top})local U=P.ColumnTemp:Clone()local V=U:
FindFirstChildOfClass'UIListLayout'b:SetProperties(V,T)local W=U:
FindFirstChildOfClass'UIStroke'W.Enabled=B local X=U:FindFirstChildOfClass
'UIPadding'if not K then X:Destroy()end b:SetProperties(U,{Parent=P,Visible=true
,Name='Column'})return b:MakeCanvas{Element=U,WindowClass=x,Class=S}end function
R:NextColumn()N+=1 local T=N%D+1 local U=O[T]if not U then U=self:Column()O[T]=U
end return U end table.insert(J,R)return S end function w:NextRow()return self:
Row()end function w:HeaderRow()return self:Row{IsHeader=true}end function w:
ClearRows()I=0 for L,M in next,F:GetChildren()do if not M:IsA'Frame'then
continue end if M==H then continue end M:Destroy()end return w end return G,F
end})b:DefineElement('List',{Base={Spacing=4,HorizontalFlex=Enum.UIFlexAlignment
.None,VerticalFlex=Enum.UIFlexAlignment.None,HorizontalAlignment=Enum.
HorizontalAlignment.Left,VerticalAlignment=Enum.VerticalAlignment.Top,
FillDirection=Enum.FillDirection.Horizontal},Create=function(v,w)local x,y,A,B,C
,D,E,F=v.WindowClass,w.Spacing,w.HorizontalFlex,w.VerticalFlex,w.
HorizontalAlignment,w.VerticalAlignment,w.FillDirection,b:InsertPrefab('List',w)
local G,H=b:MergeMetatables(w,F),F.UIListLayout b:SetProperties(H,{Padding=UDim.
new(0,y),HorizontalFlex=A,VerticalFlex=B,HorizontalAlignment=C,VerticalAlignment
=D,FillDirection=E})local I=b:MakeCanvas{Element=F,WindowClass=x,Class=G}return
I,F end})b:DefineElement('CollapsingHeader',{Base={Title='Collapsing Header',
CollapseIcon=b.Icons.Arrow,Collapsed=true,Offset=0,NoAutoTag=true,NoAutoFlags=
true,IconPadding=UDim.new(0,4),Activated=d},Create=function(v,w)local x,y,A,B,C,
D,E,F,G,H,I,J=w.Title,w.Collapsed,w.ElementStyle,w.Offset,w.TitleBarProperties,w
.OpenOnDoubleClick,w.OpenOnArrow,w.CollapseIcon,w.IconPadding,w.Icon,w.NoArrow,b
:InsertPrefab('CollapsingHeader',w)local K=J.TitleBar local L,M=K.Collapse,K.
Icon v:ApplyFlags(M,{Image=H})local N,O=L.CollapseIcon,L.UIPadding b:SetPadding(
O,G)v:ApplyFlags(N,{Image=F})local P,Q,R=v:Label{ColorTag='CollapsingHeader',
Parent=K,LayoutOrder=2},v:Indent{Class=w,Parent=J,Offset=B,LayoutOrder=2,Size=
UDim2.fromScale(1,0),AutomaticSize=Enum.AutomaticSize.None,PaddingTop=UDim.new(0
,4),PaddingBottom=UDim.new(0,1)}local S=function()local S=w.Activated S(Q)end
function w:Remove()J:Destroy()table.clear(self)end function w:SetArrowVisible(T)
N.Visible=T end function w:SetTitle(T)P.Text=T end function w:SetVisible(T)J.
Visible=T end function w:SetIcon(T)local U=T and T~=''M.Visible=U if U then M.
Image=b:CheckAssetUrl(T)end end function w:SetCollapsed(T)self.Collapsed=T local
U,V,W=b:GetContentSize(R),Q:GetThemeKey'AnimationTweenInfo',UDim2.fromScale(1,0)
local X=W+UDim2.fromOffset(0,U.Y)o:HeaderCollapse{Tweeninfo=V,Collapsed=T,Toggle
=N,Resize=R,Hide=R,ClosedSize=W,OpenSize=X}return self end local T=function()w:
SetCollapsed(not w.Collapsed)end if C then Q:ApplyFlags(K,C)end if not E then b:
ConnectMouseEvent(K,{DoubleClick=D,Callback=T})end N.Activated:Connect(T)K.
Activated:Connect(S)w:SetCollapsed(y)w:SetTitle(x)w:SetArrowVisible(not I)b:
ApplyStyle(K,A)Q:TagElements{[K]='CollapsingHeader'}return Q,J end})b:
DefineElement('TreeNode',{Base={Offset=21,IconPadding=UDim.new(0,2),
TitleBarProperties={Size=UDim2.new(1,0,0,13)}},Create=r.CollapsingHeader})b:
DefineElement('Separator',{Base={NoAutoTag=true,NoAutoTheme=true},Create=
function(v,w)local x,y=w.Text,b:InsertPrefab('SeparatorText',w)v:Label{Text=
tostring(x),Visible=x~=nil,Parent=y,LayoutOrder=2,Size=UDim2.new(),PaddingLeft=
UDim.new(0,4),PaddingRight=UDim.new(0,4)}v:TagElements{[y.Left]='Separator',[y.
Right]='Separator'}return y end})b:DefineElement('Canvas',{Base={},Create=
function(v,w)local x,y,A=v.WindowClass,w.Scroll,w.Class or w local B=y and
'ScrollingCanvas'or'Canvas'local C=b:InsertPrefab(B,w)local D=b:MakeCanvas{
Element=C,WindowClass=x,Class=A}return D,C end})b:DefineElement(
'ScrollingCanvas',{Base={Scroll=true},Create=r.Canvas})b:DefineElement('Region',
{Base={Scroll=false,AutomaticSize=Enum.AutomaticSize.Y},Create=function(v,w)
local x,y=v.WindowClass,w.Scroll local A=y and'ScrollingCanvas'or'Canvas'local B
=b:InsertPrefab(A,w)local C=b:MakeCanvas{Element=B,WindowClass=x,Class=w}return
C,B end})b:DefineElement('Group',{Base={Scroll=false,AutomaticSize=Enum.
AutomaticSize.Y},Create=function(v,w)local x,y=v.WindowClass,b:InsertPrefab(
'Group',w)local A=b:MakeCanvas{Element=y,WindowClass=x,Class=w}return A,y end})b
:DefineElement('Indent',{Base={Offset=15,PaddingTop=UDim.new(),PaddingBottom=
UDim.new(),PaddingRight=UDim.new()},Create=function(v,w)local x=w.Offset w.
PaddingLeft=UDim.new(0,x)return v:Canvas(w)end})b:DefineElement('BulletText',{
Base={},Create=function(v,w)local x=w.Rows for y,A in next,x do local B=v:
Bullet(w)B:Label{Text=tostring(A),LayoutOrder=2,Size=UDim2.fromOffset(0,14)}end
end})b:DefineElement('Bullet',{Base={Padding=3,Icon=b.Icons.Dot,IconSize=UDim2.
fromOffset(5,5)},Create=function(v,w)local x,y,A=v.WindowClass,w.Padding,b:
InsertPrefab('Bullet',w)local B,C=b:MakeCanvas{Element=A,WindowClass=x,Class=v},
A.UIListLayout C.Padding=UDim.new(0,y)return B,A end})b:DefineElement('Row',{
Base={Spacing=4,Expanded=false,HorizontalFlex=Enum.UIFlexAlignment.None,
VerticalFlex=Enum.UIFlexAlignment.None},Create=function(v,w)local x,y,A,B,C,D=v.
WindowClass,w.Spacing,w.Expanded,w.HorizontalFlex,w.VerticalFlex,b:InsertPrefab(
'Row',w)local E,F=b:MergeMetatables(w,D),D:FindFirstChildOfClass'UIListLayout'F.
Padding=UDim.new(0,y)F.HorizontalFlex=B F.VerticalFlex=C local G=b:MakeCanvas{
Element=D,WindowClass=x,Class=E}function w:Expand()F.HorizontalFlex=Enum.
UIFlexAlignment.Fill return self end if A then w:Expand()end return G,D end})b:
DefineElement('SliderBase',{Base={Format='%.f',Label='',Type='Slider',Callback=d
,NoGrab=false,NoClick=false,Minimum=0,Maximum=100,ColorTag='Frame',Disabled=
false},Create=function(v,w)local x,y,A,B,C,D,E,F,G=w.Value or w.Minimum,w.Format
,w.Label,w.NoAnimation,w.NoGrab,w.NoClick,w.Type,w.Disabled,b:InsertPrefab
'Slider'local H=G.Track local I,J,K,L=H.Grab,H.ValueText,H:FindFirstChildOfClass
'UIPadding',b:MergeMetatables(w,G)local M,N,O=I.AbsoluteSize,b:SetAnimation(G,
'Inputs'),v:Label{Parent=G,Text=A,Position=UDim2.new(1,4),Size=UDim2.fromScale(0
,1)}Merge(w,{Grab=I,Name=A})if E=='Slider'then H.Position=UDim2.fromOffset(M.X/2
,0)H.Size=UDim2.new(1,-M.X,1,0)end local P,Q={Slider=function(P)return{
AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(P,0.5)}end,Progress=
function(P)return{Size=UDim2.fromScale(P,1)}end,Snap=function(P,Q,R,S)local T=(
math.round(Q)-R)/S return{Size=UDim2.fromScale(1/S,1),Position=UDim2.fromScale(T
,0.5)}end},function(...)local P=w.Callback return P(L,...)end function w:
SetDisabled(R)self.Disabled=R G.Interactable=not R v:SetColorTags({[O]=R and
'LabelDisabled'or'Label'},true)return self end function w:SetValueText(R)J.Text=
tostring(R)end function w:SetValue(R,S)local T,U,V,W=v:GetThemeKey
'AnimationTweenInfo',w.Minimum,w.Maximum,R local X=V-U if not S then W=(R-U)/X
else R=U+(X*W)end W=math.clamp(W,0,1)local Y=P[E](W,R,U,V)o:Tween{Object=I,
Tweeninfo=T,NoAnimation=B,EndProperties=Y}self.Value=R self:SetValueText(y:
format(R,V))Q(R)return self end local R,S=function(R)v:SetColorTags({[G]=R and
'FrameActive'or'Frame'},true)v:SetElementFocused(G,{Focused=R,Animation=N})end,
function()if w.Disabled then return end if w.ReadOnly then return end return
true end local T=function(T)if not S()then return end local U,V,W=H.
AbsolutePosition.X,H.AbsoluteSize.X,T.X local X=W-U local Y=math.clamp(X/V,0,1)w
:SetValue(Y,true)end local U,V=function(...)if not S()then return end R(true)if
not D then T(...)end end,function()R(false)end I.Visible=not C w:SetValue(x)w:
SetDisabled(F)v:TagElements{[J]='Label',[I]='SliderGrab'}b:ConnectDrag(H,{
DragStart=U,DragMovement=T,DragEnd=V})return L,G end})b:DefineElement(
'SliderEnum',{Base={Items={},Label='Slider Enum',Type='Snap',Minimum=1,Maximum=
10,Value=1,Callback=d,ColorTag='Frame'},Create=function(v,w)local x,y=w.Callback
,w.Value local A=function(A,B)B=math.round(B)local C=A.Items A.Maximum=#C return
C[B]end w.Callback=function(B,C,D)local E=A(B,C)B:SetValueText(E)w.Value=E
return x(B,E)end A(w,y)return v:SliderBase(w)end})b:DefineElement('SliderInt',{
Base={Label='Slider Int',ColorTag='Frame'},Create=r.SliderBase})b:DefineElement(
'SliderFloat',{Base={Label='Slider Float',Format='%.3f',ColorTag='Frame'},Create
=r.SliderBase})b:DefineElement('DragInt',{Base={Format='%.f',Label='Drag Int',
Callback=d,Minimum=0,Maximum=100,ColorTag='Frame',Disabled=false},Create=
function(v,w)local x,y,A,B,C=w.Value or w.Minimum,w.Format,w.Label,w.Disabled,b:
InsertPrefab'Slider'local D,E=b:MergeMetatables(w,C),C.Track local F,G=E.
ValueText,E.Grab G.Visible=false local H,I,J,K,L,M=b:GetChildOfClass(E,
'UIDragDetector'),v:Label{Parent=C,Text=A,Position=UDim2.new(1,7),Size=UDim2.
fromScale(0,1)},0,0,b:SetAnimation(C,'Inputs'),function(...)local H=w.Callback
return H(D,...)end function w:SetValue(N,O)local P,Q=self.Minimum,self.Maximum
local R=Q-P if not O then J=((N-P)/R)*100 else N=P+(R*(J/100))end N=math.clamp(N
,P,Q)self.Value=N F.Text=y:format(N,Q)M(N)return self end function w:SetDisabled
(N)self.Disabled=N v:SetColorTags({[I]=N and'LabelDisabled'or'Label'},true)end
local N,O=function(N)v:SetColorTags({[C]=N and'FrameActive'or'Frame'},true)v:
SetElementFocused(C,{Focused=N,Animation=L})end,function()if w.Disabled then
return end if w.ReadOnly then return end return true end local P,Q,R=function(P)
if not O()then return end N(true)InputBeganPosition=P K=J end,function(P)if not
O()then return end local Q=P.X-InputBeganPosition.X local R=K+(Q/2)J=math.clamp(
R,0,100)w:SetValue(J,true)end,function()N(false)end w:SetValue(x)w:SetDisabled(B
)b:ConnectDrag(E,{DragStart=P,DragEnd=R,DragMovement=Q})v:TagElements{[F]=
'Label'}return D,C end})b:DefineElement('DragFloat',{Base={Format='%.3f',Label=
'Drag Float',ColorTag='Frame'},Create=r.DragInt})b:DefineElement('MultiElement',
{Base={Callback=d,Label='',Disabled=false,BaseInputConfig={},InputConfigs={},
Value={},Minimum={},Maximum={},MultiCallback=d},Create=function(v,w)local x,y,A,
B,C,D,E,F=w.Label,w.BaseInputConfig,w.InputConfigs,w.InputType,w.Disabled,w.
Value,w.Minimum,w.Maximum assert(B,'No input type provided for MultiElement')
local G,H=v:Row{Spacing=4}local I,J,K,L,M=G:Row{Size=UDim2.fromScale(0.65,0),
Expanded=true},G:Label{Size=UDim2.fromScale(0.35,0),LayoutOrder=2,Text=x},b:
MergeMetatables(w,G),{},false local N=function()local N={}for O,P in L do N[O]=P
:GetValue()end w.Value=N return N end local function O(...)local P=w.
MultiCallback P(K,...)end local P=function()if#L~=#A then return end if not M
then return end local P=N()O(P)end function w:SetDisabled(Q)self.Disabled=Q v:
SetColorTags({[J]=Q and'LabelDisabled'or'Label'},true)for R,S in L do S:
SetDisabled(Q)end end function w:SetValue(Q)M=false for R,S in Q do local T=L[R]
assert(T,`No input object for index: {R}`)T:SetValue(S)end M=true O(Q)end y=
Copy(y,{Size=UDim2.new(1,0,0,19),Label='',Callback=P})for Q,R in A do local S=
Copy(y,R)b:CheckConfig(S,{Minimum=E[Q],Maximum=F[Q]})local T=I[B](I,S)table.
insert(L,T)end Merge(w,{Row=I,Inputs=L})M=true w:SetDisabled(C)w:SetValue(D)
return K,H end})local v,w,x=function(v,w,x,y)b:DefineElement(v,{Base={Label=v,
Callback=d,InputType=w,InputConfigs=table.create(x,{}),BaseInputConfig={}},
Create=function(A,B)local C=(B.BaseInputConfig)if y then Merge(C,y)end b:
CheckConfig(C,{ReadOnly=B.ReadOnly,Format=B.Format})B.MultiCallback=function(...
)local D=B.Callback D(...)end return A:MultiElement(B)end})end,function(v,w,x,y)
y=y or{}b:DefineElement(v,{Base={Label=v,Callback=d,Value=b.Accent.Light,
Disabled=false,Minimum={0,0,0},Maximum={255,255,255,100},BaseInputConfig={},
InputConfigs={[1]={Format='R: %.f'},[2]={Format='G: %.f'},[3]={Format='B: %.f'}}
},Create=function(A,B)local C,D,E,F=B.BaseInputConfig,B.InputConfigs,B.Value,B.
Disabled if y.Color4 then D[4]={Format='A: %.f'}end local G=Copy(B,{Value={1,1,1
},Callback=function(G,...)if B.ValueChanged then B:ValueChanged(...)end end})
local H,I=A[w](A,G)local J,K=b:MergeMetatables(B,H),H.Row local L,M=K:Button{
BackgroundTransparency=0,Size=UDim2.fromOffset(19,19),UiPadding=0,Text='',Ratio=
1,ColorTag='',ElementStyle=''},function(...)local L=B.Callback return L(J,...)
end local N=function(N)L.BackgroundColor3=N M(N)end function B:ValueChanged(O)
local P,Q,R=O[1],O[2],O[3]local S=Color3.fromRGB(P,Q,R)self.Value=S N(S)end
function B:SetValue(O)self.Value=O N(O)H:SetValue{math.round(O.R*255),math.
round(O.G*255),math.round(O.B*255)}end B:SetValue(E)return J,I end})end,function
(v,w,x,y)b:DefineElement(v,{Base={Label=v,Callback=d,Disabled=false,Value=CFrame
.new(10,10,10),Minimum=CFrame.new(0,0,0),Maximum=CFrame.new(100,100,100),
BaseInputConfig={},InputConfigs={[1]={Format='X: %.f'},[2]={Format='Y: %.f'},[3]
={Format='Z: %.f'}}},Create=function(A,B)local C,D,E,F,G=B.BaseInputConfig,B.
Value,B.Disabled,B.Maximum,B.Minimum local H=Copy(B,{Maximum={F.X,F.Y,F.Z},
Minimum={G.X,G.Y,G.Z},Value={D.X,D.Y,D.Z},Callback=function(H,...)if B.
ValueChanged then B:ValueChanged(...)end end})local I,J=A[w](A,H)local K,L=b:
MergeMetatables(B,I),I.Row local M=function(...)local M=B.Callback return M(K,
...)end function B:ValueChanged(N)local O,P,Q=N[1],N[2],N[3]local R=CFrame.new(O
,P,Q)self.Value=R M(R)end function B:SetValue(N)self.Value=N I:SetValue{math.
round(N.X),math.round(N.Y),math.round(N.Z)}end B:SetValue(D)return K,J end})end
b:DefineElement('SliderProgress',{Base={Label='Slider Progress',Type='Progress',
ColorTag='Frame'},Create=r.SliderBase})b:DefineElement('ProgressBar',{Base={
Label='Progress Bar',Type='Progress',ReadOnly=true,MinValue=0,MaxValue=100,
Format='% i%%',Interactable=false,ColorTag='Frame'},Create=function(y,A)function
A:SetPercentage(B)A:SetValue(B)end local B,C=y:SliderBase(A)local D=B.Grab y:
TagElements{[D]={BackgroundColor3='ProgressBar'}}return B,C end})b:
DefineElement('Combo',{Base={Value='',Placeholder='',Callback=d,Items={},
Disabled=false,WidthFitPreview=false,Label='Combo'},Create=function(y,A)local B,
C,D,E,F,G,H=A.Placeholder,A.NoAnimation,A.Selected,A.Label,A.Disabled,A.
WidthFitPreview,b:InsertPrefab('Combo',A)local I,J,K=b:MergeMetatables(A,H),(H.
Combo)local L,M,N=y:Label{Text=tostring(B),Parent=J,Name='ValueText'},y:
ArrowButton{Parent=J,Interactable=false,Size=UDim2.fromOffset(19,19),LayoutOrder
=2},y:Label{Text=E,Parent=H,LayoutOrder=2}if G then b:SetProperties(H,{
AutomaticSize=Enum.AutomaticSize.XY,Size=UDim2.new(0,0,0,0)})b:SetProperties(J,{
AutomaticSize=Enum.AutomaticSize.XY,Size=UDim2.fromScale(0,1)})end local O,P=
function(O,...)A:SetOpen(false)return A.Callback(I,O,...)end,function(O,P)local
Q=y:GetThemeKey'AnimationTweenInfo'H.Interactable=not O o:HeaderCollapseToggle{
Tweeninfo=Q,NoAnimation=P,Collapsed=not O,Toggle=M.Icon}end local function Q()
local R,S=A.GetItems,A.Items if R then return R()end return S end function A:
SetValueText(R)L.Text=tostring(R)end function A:ClosePopup()if K then K:
ClosePopup(true)end end function A:SetDisabled(R)self.Disabled=R H.Interactable=
not R y:SetColorTags({[N]=R and'LabelDisabled'or'Label'},true)end function A:
SetValue(R)local S=Q()local T=S[R]local U=T or R self.Selected=R self.Value=U
self:ClosePopup()if typeof(R)=='number'then self:SetValueText(U)else self:
SetValueText(R)end return O(R,U)end function A:SetOpen(R)local S=self.Selected
self.Open=R P(R,C)if not R then self:ClosePopup()return end K=y:Dropdown{
RelativeTo=J,Items=Q(),Selected=S,OnSelected=function(...)A:SetValue(...)end,
OnClosed=function()self:SetOpen(false)end}return self end local R=function()
local R=A.Open A:SetOpen(not R)end J.Activated:Connect(R)P(false,true)A:
SetDisabled(F)if D then A:SetValue(D)end b:SetAnimation(J,'Inputs')y:TagElements
{[J]='Frame'}return I,H end})local y={TileBarConfig={Close={Image=b.Icons.Close,
IconPadding=UDim.new(0,3)},Collapse={Image=b.Icons.Arrow,IconPadding=UDim.new(0,
3)}},CloseCallback=d,Collapsible=true,Open=true,Focused=false}function y:Tween(A
)b:CheckConfig(A,{Tweeninfo=self:GetThemeKey'AnimationTweenInfo'})return o:
Tween(A)end function y:TagElements(A)local B,C,D=b.Debug,self.TagsList,self.
Theme b:MultiUpdateColors{Theme=D,TagsList=C,Objects=A}end function y:
MakeTitleBarCanvas()local A=self.TitleBar local B=b:MakeCanvas{WindowClass=self,
Element=A}self.TitleBarCanvas=B return B end function y:AddDefaultTitleButtons()
local A,B=self.TileBarConfig,self.TitleBar local C,D,E=A.Collapse,A.Close,self.
TitleBarCanvas if not E then E=self:MakeTitleBarCanvas()end b:CheckConfig(self,{
Toggle=E:RadioButton{Icon=C.Image,IconPadding=C.IconPadding,LayoutOrder=1,Ratio=
1,Size=UDim2.new(0,0),Callback=function()self:ToggleCollapsed()end},CloseButton=
E:RadioButton{Icon=D.Image,IconPadding=D.IconPadding,LayoutOrder=3,Ratio=1,Size=
UDim2.new(0,0),Callback=function()self:SetVisible(false)end},TitleLabel=E:Label{
ColorTag='Title',LayoutOrder=2,Size=UDim2.new(1,0),Active=false,Fill=true,
ClipsDescendants=true,AutomaticSize=Enum.AutomaticSize.XY}})self:TagElements{[
self.TitleLabel]='WindowTitle'}end function y:Close()local A=self.CloseCallback
if A then local B=A(self)if B==false then return end end self:Remove()end
function y:SetVisible(A)local B,C=self.WindowFrame,self.NoFocusOnAppearing self.
Visible=A B.Visible=A if A and not C then b:SetFocusedWindow(self)end return
self end function y:ToggleVisibility(A)local B=self.Visible self:SetVisible(not
B)end function y:GetWindowSize()return self.WindowFrame.AbsoluteSize end
function y:GetTitleBarSizeY()local A=self.TitleBar return A.Visible and A.
AbsoluteSize.Y or 0 end function y:SetTitle(A)self.TitleLabel.Text=tostring(A)
return self end function y:SetPosition(A)self.WindowFrame.Position=A return self
end function y:SetSize(A,B)local C=self.WindowFrame if typeof(A)=='Vector2'then
A=UDim2.fromOffset(A.X,A.Y)end C.Size=A self.Size=A return self end function y:
SetCanvasInteractable(A)local B=self.Body B.Interactable=A end function y:Center
()local A=self:GetWindowSize()/2 local B=UDim2.new(0.5,-A.X,0.5,-A.Y)self:
SetPosition(B)return self end function y:LoadStylesIntoElement(A)local B,C,D=A.
Flags,A.Object,A.Canvas local E={FrameRounding=function()if B.CornerRadius then
return end if not D then return end local E=C:FindFirstChild('FrameRounding',
true)if not E then return end D:TagElements{[E]='FrameRounding'}end}for F,G in E
do local H=self:GetThemeKey(F)if H==nil then continue end task.spawn(G,H)end end
function y:SetTheme(A)local B,C,D,E=b.ThemeConfigs,self.TagsList,self.Focused,
self.WindowState if not A then A=self.Theme end assert(B[A],`{A} is not a valid theme!`
)self.Theme=A b:MultiUpdateColors{Animate=false,Theme=A,Objects=C}self:
SetFocusedColors(E)return self end function y:SetFocusedColors(A)local B,C,D,E,F
=self.WindowFrame,self.TitleBar,self.Theme,self.TitleLabel,self:GetThemeKey
'AnimationTweenInfo'local G=B:FindFirstChildOfClass'UIStroke'local H={Focused={[
G]='BorderActive',[C]='TitleBarBgActive',[E]={TextColor3='TitleActive'}},
UnFocused={[G]='Border',[C]='TitleBarBg',[E]={TextColor3='Title'}},Collapsed={[G
]='Border',[C]='TitleBarBgCollapsed',[E]={TextColor3='Title'}}}b:
MultiUpdateColors{Tweeninfo=F,Animate=true,Objects=H[A],Theme=D}end function y:
SetFocused(A)A=A==nil and true or A local B,C=self.Collapsed,self.WindowState if
A then b:SetFocusedWindow(self)end local D=B and'Collapsed'or A and'Focused'or
'UnFocused'if D==C then return end self.Focused=A self.WindowState=D self:
SetFocusedColors(D)end function y:GetThemeKey(A)return b:GetThemeKey(self.Theme,
A)end function y:ResetColors()local A,B,C=b.Theme,self.Theme,self.TagsList table
.clear(B)b:MultiUpdateColors{Animate=false,Theme=A,Objects=C}return y end
function y:SetCollapsible(A)self.Collapsible=A return self end function y:
ToggleCollapsed(A)local B,C=self.Collapsed,self.Collapsible if not A and not C
then return self end self:SetCollapsed(not B)return self end function y:
SetCollapsed(A,B)local C,D,E,F,G,H,I,J,K=self.WindowFrame,self.Body,self.Toggle,
self.ResizeGrab,self.Size,self.AutoSize,self:GetThemeKey'AnimationTweenInfo',
self:GetWindowSize(),self:GetTitleBarSizeY()local L,M=E.Icon,UDim2.fromOffset(J.
X,K)self.Collapsed=A self:SetCollapsible(false)self:SetFocused(not A)o:
HeaderCollapse{Tweeninfo=I,NoAnimation=B,Collapsed=A,Toggle=L,Resize=C,
NoAutomaticSize=not H,Hide=D,ClosedSize=M,OpenSize=G,Completed=function()self:
SetCollapsible(true)end}self:Tween{Object=F,NoAnimation=B,EndProperties={
TextTransparency=A and 1 or 0.6,Interactable=not A}}return self end function y:
UpdateConfig(A)local B={NoTitleBar=function(B)local C=self.TitleBar C.Visible=
not B end,NoClose=function(B)local C=self.CloseButton C.Visible=not B end,
NoCollapse=function(B)local C=self.Toggle C.Visible=not B end,NoTabsBar=function
(B)local C=self.WindowTabSelector if not C then return end local D=C.TabsBar D.
Visible=not B end,NoScrollBar=function(B)local C,D,E,F=B and 0 or 9,self.
NoScroll,self.WindowTabSelector,self.ContentCanvas if E then E.Body.
ScrollBarThickness=C end if not D then F.ScrollBarThickness=C end end,
NoScrolling=function(B)local C,D,E=self.NoScroll,self.WindowTabSelector,self.
ContentCanvas if D then D.Body.ScrollingEnabled=not B end if not C then E.
ScrollingEnabled=not B end end,NoMove=function(B)local C=self.DragConnection C:
SetEnabled(not B)end,NoResize=function(B)local C=self.ResizeConnection C:
SetEnabled(not B)end,NoBackground=function(B)local C,D=self:GetThemeKey
'WindowBgTransparency',self.CanvasFrame D.BackgroundTransparency=B and 1 or C
end}Merge(self,A)for C,D in A do local E=B[C]if E then E(D)end end return self
end function y:Remove()local A,B,C=self.WindowFrame,self.WindowClass,b.Windows
local D=table.find(C,B)if D then table.remove(C,D)end A:Destroy()end function y:
MenuBar(A,...)local B,C=self.ContentCanvas,self.ContentFrame A=A or{}Merge(A,{
Parent=C,Layout=-1})return B:MenuBar(A,...)end b:DefineElement('Window',{Export=
true,Base={Theme='DarkTheme',NoSelect=false,NoTabs=true,NoScroll=false,Collapsed
=false,Visible=true,AutoSize=false,MinimumSize=Vector2.new(160,90),
OpenOnDoubleClick=true,NoAutoTheme=true,NoWindowRegistor=false,
NoBringToFrontOnFocus=false,IsDragging=false},Create=function(A,B)local C,D=b.
Windows,b.Container.Windows b:CheckConfig(B,{Parent=D,Title=b.DefaultTitle})
local E,F,G,H,I,J,K,L,M,N,O,P,Q=B.NoDefaultTitleBarButtons,B.Collapsed,B.
MinimumSize,B.Title,B.NoTabs,B.NoScroll,B.Theme,B.AutomaticSize,B.
NoWindowRegistor,B.AutoSelectNewTabs,B.OpenOnDoubleClick,B.NoCollapse,B.Parent~=
D local R={Scroll=not J,Fill=not L and true or nil,UiPadding=UDim.new(0,I and 8
or 0),AutoSelectNewTabs=N}if L then Merge(R,{AutomaticSize=L,Size=UDim2.new(1,0)
})end local S=b:InsertPrefab('Window',B)local T=S.Content local U,V=T.TitleBar,
NewClass(y)local W,X,Y,Z=(b:MakeCanvas{Element=T,WindowClass=V,Class=V})local _,
aa=W:Canvas(Copy(R,{Parent=T,CornerRadius=UDim.new(0,0)}))local ab=b:
MakeResizable{MinimumSize=G,Resize=S,OnUpdate=function(ab)V:SetSize(ab,true)end}
Merge(V,B)Merge(V,{WindowFrame=S,ContentFrame=T,CanvasFrame=aa,ResizeGrab=ab.
Grab,TitleBar=U,Elements=r,TagsList={},_SelectDisabled=Q,ResizeConnection=ab,
HoverConnection=b:DetectHover(T),DragConnection=b:MakeDraggable{Grab=T,Move=S,
SetPosition=function(ac,ad)local ae=X:GetThemeKey'AnimationTweenInfo'o:Tween{
Tweeninfo=ae,Object=ac.Move,EndProperties={Position=ad}}end,OnDragStateChange=
function(ac)V.IsDragging=ac aa.Interactable=not ac if ac then b:
SetFocusedWindow(Z)end b:SetWindowFocusesEnabled(not ac)end}})if I then X,Y=_,aa
else X,Y=_:TabSelector(R)V.WindowTabSelector=X end Z=b:MergeMetatables(V,X)
Merge(V,{ContentCanvas=X,WindowClass=Z,Body=Y})b:ConnectMouseEvent(T,{
DoubleClick=true,OnlyMouseHovering=U,Callback=function(...)if not V.
OpenOnDoubleClick then return end if V.NoCollapse then return end V:
ToggleCollapsed()end})if not E then V:AddDefaultTitleButtons()end V:SetTitle(H)V
:SetCollapsed(F,true)V:SetTheme(K)V:UpdateConfig(B)V:SetFocused()local ac=ab.
Grab b:SetAnimation(ac,'TextButtons')Z:TagElements{[ac]='ResizeGrab',[U]=
'TitleBar',[aa]='Window'}if not M then table.insert(C,Z)end return Z,S end})b:
DefineElement('TabsWindow',{Export=true,Base={NoTabs=false,AutoSelectNewTabs=
true},Create=function(aa,ab)return aa:Window(ab)end})b:DefineElement(
'PopupCanvas',{Base={AutoClose=false,Scroll=false,Visible=true,Spacing=UDim.new(
0,1),AutomaticSize=Enum.AutomaticSize.XY,MaxSizeY=150,MinSizeX=100,MaxSizeX=math
.huge,OnClosed=d},Create=function(aa,ab)ab.Parent=b.Container.Overlays local ac,
ad,ae,A,B,C,D,E,F=ab.RelativeTo,ab.MaxSizeY,ab.MinSizeX,ab.MaxSizeX,ab.Visible,
ab.AutoClose,ab.NoAnimation,aa:OverlayScroll(ab)local G=F.UIStroke local H,I,J,K
,L,M,N=G.Thickness,F.Parent.AbsolutePosition,(b:DetectHover(F,{MouseOnly=true,
OnInput=function(H,I)if H then return end if not F.Visible then return end ab:
OnFocusLost()end}))function ab:FetchScales()local O=E:GetCanvasSize()K=ac.
AbsolutePosition L=ac.AbsoluteSize M=math.clamp(O.Y,L.Y,ad)N=math.clamp(L.X,ae,A
)end function ab:UpdatePosition()F.Position=UDim2.fromOffset(K.X-I.X+H,K.Y-I.Y+L
.Y)end function ab:GetScale(O)local P,Q=UDim2.fromOffset(N,M),UDim2.fromOffset(N
,0)return O and P or Q end function ab:IsMouseHovering()return J.Hovering end
function ab:OnFocusLost()local O=self.OnClosed self:SetPopupVisible(false)O(self
)if C then self:ClosePopup()end end function ab:ClosePopup(O)self:
SetPopupVisible(false,D,O)J:Disconnect()F:Remove()end function ab:
SetPopupVisible(O,P)if F.Visible==O then return end ac.Interactable=not O self:
UpdateScales(O,D,P)self.Visible=O end function ab:UpdateScales(O,P,Q)local R=E:
GetThemeKey'AnimationTweenInfo'if O==nil then O=F.Visible end ab:FetchScales()ab
:UpdatePosition()local S=o:Tween{Tweeninfo=R,Object=F,NoAnimation=P,
EndProperties={Size=ab:GetScale(O),Visible=O}}if S and Q then S.Completed:Wait()
end end ab:UpdateScales(false,true)ab:SetPopupVisible(B)E.OnChildChange:Connect(
ab.UpdateScales)return E,F end})b:DefineElement('PopupModal',{Export=true,Base={
NoAnimation=false,NoCollapse=true,NoClose=true,NoResize=true,NoSelect=true,
NoAutoFlags=true,NoWindowRegistor=true,NoScroll=true},Create=function(aa,ab)ab.
Parent=b.Container.Overlays local ac,ad,ae=aa.WindowClass,(ab.NoAnimation)if ac
then ae=ac:GetThemeKey'ModalWindowDimTweenInfo'ab.Theme=ac.Theme end local A=b:
InsertPrefab('ModalEffect',ab)local B=aa:Window(Copy(ab,{NoAutoFlags=false,
Parent=A,AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Size
=UDim2.fromOffset(372,38),AutomaticSize=Enum.AutomaticSize.Y}))function ab:
ClosePopup()o:Tween{Object=A,Tweeninfo=ae,NoAnimation=ad,EndProperties={
BackgroundTransparency=1},Completed=function()A:Destroy()end}B:Close()end o:
Tween{Object=A,Tweeninfo=ae,NoAnimation=ad,StartProperties={
BackgroundTransparency=1},EndProperties={BackgroundTransparency=0.8}}aa:
TagElements{[A]='ModalWindowDim'}local C=b:MergeMetatables(ab,B)return C,A end})
v('InputInt2','InputInt',2,{NoButtons=true})v('InputInt3','InputInt',3,{
NoButtons=true})v('InputInt4','InputInt',4,{NoButtons=true})v('SliderInt2',
'SliderInt',2)v('SliderInt3','SliderInt',3)v('SliderInt4','SliderInt',4)v(
'SliderFloat2','SliderFloat',2)v('SliderFloat3','SliderFloat',3)v('SliderFloat4'
,'SliderFloat',4)v('DragInt2','DragInt',2)v('DragInt3','DragInt',3)v('DragInt4',
'DragInt',4)v('DragFloat2','DragFloat',2)v('DragFloat3','DragFloat',3)v(
'DragFloat4','DragFloat',4)w('InputColor3','InputInt3')w('SliderColor3',
'SliderInt3')w('DragColor3','DragInt3')x('InputCFrame','InputInt3')x(
'SliderCFrame','SliderInt3')x('DragCFrame','DragInt3')return b end function a.b(
)local aa,ab,ac,ad,ae=game:GetService'RunService',game:GetService'Players',game:
GetService'Workspace',game:GetService'UserInputService',gethui and gethui()or
game:GetService'CoreGui'local b,c=ab.LocalPlayer,ac.CurrentCamera local d,e,f,g,
h,i,j,k,l,m,n,o,p,q,r,s,t,v,w,x,y,A,B,C,D,E,F=c.ViewportSize,math.floor,math.
round,math.sin,math.cos,table.clear,table.unpack,table.find,table.create,CFrame.
fromMatrix,c.WorldToViewportPoint,ac.IsA,ac.GetPivot,ac.FindFirstChild,ac.
FindFirstChildOfClass,ac.GetChildren,CFrame.identity.PointToObjectSpace,Color3.
new().Lerp,Vector2.zero.Min,Vector2.zero.Max,Vector2.zero.Lerp,Vector3.zero.Min,
Vector3.zero.Max,Vector2.new(0,1),Vector2.new(0,2),Vector2.new(5,0),{Vector3.
new(-1,-1,-1),Vector3.new(-1,1,-1),Vector3.new(-1,1,1),Vector3.new(-1,-1,1),
Vector3.new(1,-1,-1),Vector3.new(1,1,-1),Vector3.new(1,1,1),Vector3.new(1,-1,1)}
local G,H=function(G)local H,I for J=1,#G do local K=G[J]local L,M=K.CFrame,K.
Size H=A(H or L.Position,(L-M*0.5).Position)I=B(I or L.Position,(L+M*0.5).
Position)end local J=(H+I)*0.5 local K=Vector3.new(J.X,J.Y,I.Z)return CFrame.
new(J,K),I-H end,function(G)local H,I=n(c,G)return Vector2.new(H.X,H.Y),I,H.Z
end local I,J,K,L=function(I,J)local K=l(#F)for L=1,#F do K[L]=H((I+J*0.5*F[L]).
Position)end local L,M=w(d,j(K)),x(Vector2.zero,j(K))return{Corners=K,TopLeft=
Vector2.new(e(L.X),e(L.Y)),TopRight=Vector2.new(e(M.X),e(L.Y)),BottomLeft=
Vector2.new(e(L.X),e(M.Y)),BottomRight=Vector2.new(e(M.X),e(M.Y))}end,function(I
,J)local K,L,M,N=I.X,I.Y,h(J),g(J)return Vector2.new(K*M-L*N,K*N+L*M)end,
function(I,J,K)if J=='Team Color'or(I.Interface.Shared.UseTeamColor and not K)
then return I.Interface.GetTeamColor(I.Player)or Color3.new(1,1,1)end return J
end,{}L.__index=L function L.New(M,N)local O=setmetatable({},L)O.Player=assert(M
,'Missing argument #1 (Player expected)')O.Interface=assert(N,
'Missing argument #2 (table expected)')O:Construct()return O end function L:
_Create(M,N)local O=Drawing.new(M)for P,Q in next,N do pcall(function()O[P]=Q
end)end self.Bin[#self.Bin+1]=O return O end function L:Construct()self.
CharCache={}self.ChildCount=0 self.Bin={}self.Drawings={Box3d={{self:_Create(
'Line',{Thickness=1,Visible=false}),self:_Create('Line',{Thickness=1,Visible=
false}),self:_Create('Line',{Thickness=1,Visible=false})},{self:_Create('Line',{
Thickness=1,Visible=false}),self:_Create('Line',{Thickness=1,Visible=false}),
self:_Create('Line',{Thickness=1,Visible=false})},{self:_Create('Line',{
Thickness=1,Visible=false}),self:_Create('Line',{Thickness=1,Visible=false}),
self:_Create('Line',{Thickness=1,Visible=false})},{self:_Create('Line',{
Thickness=1,Visible=false}),self:_Create('Line',{Thickness=1,Visible=false}),
self:_Create('Line',{Thickness=1,Visible=false})}},Visible={TracerOutline=self:
_Create('Line',{Thickness=2,Visible=false}),Tracer=self:_Create('Line',{
Thickness=1,Visible=false}),BoxFill=self:_Create('Square',{Filled=true,Visible=
false}),BoxOutline=self:_Create('Square',{Thickness=2,Visible=false}),Box=self:
_Create('Square',{Thickness=1,Visible=false}),CornerBox={},HealthBarOutline=self
:_Create('Line',{Thickness=6,Visible=false}),HealthBar=self:_Create('Line',{
Thickness=4,Visible=false}),HealthText=self:_Create('Text',{Center=true,Visible=
false}),Name=self:_Create('Text',{Text=string.upper(self.Player.DisplayName),
Center=true,Visible=false}),Distance=self:_Create('Text',{Center=true,Visible=
false}),Weapon=self:_Create('Text',{Center=true,Visible=false}),Skeleton={Head=
self:_Create('Circle',{NumSides=30,Thickness=1,Visible=false})}},Hidden={
ArrowOutline=self:_Create('Triangle',{Thickness=3,Visible=false}),Arrow=self:
_Create('Triangle',{Filled=true,Visible=false})}}for M=1,8 do table.insert(self.
Drawings.Visible.CornerBox,self:_Create('Line',{Thickness=2,Visible=false}))end
for M=1,14 do self.Drawings.Visible.Skeleton[M]=self:_Create('Line',{Thickness=1
,Visible=false})end self.RenderConnection=aa.RenderStepped:Connect(function(M)
self:Update(M)self:Render(M)end)end function L:Destruct()self.RenderConnection:
Disconnect()for M=1,#self.Bin do self.Bin[M]:Remove()end i(self)end function L:
Update()local M=self.Interface self.Options=M.Team[M.IsFriendly(self.Player)and
'Friendly'or'Enemy']self.Character=M.GetCharacter(self.Player)self.Health,self.
MaxHealth=M.GetHealth(self.Player)self.Weapon=M.GetWeapon(self.Player)self.
Enabled=self.Options.Enabled and self.Character and not(#M.Whitelist>0 and not
k(M.Whitelist,self.Player.UserId))local N=self.Enabled and q(self.Character,M.
GetRootPart())if not N then self.CharCache={}self.OnScreen=false return end
local O,P,Q=H(N.Position)self.OnScreen=P self.Distance=Q if M.Shared.
LimitDistance and Q>M.Shared.MaxDistance then self.OnScreen=false end if self.
OnScreen then local R,S=self.CharCache,s(self.Character)if not R[1]or self.
ChildCount~=#S then i(R)for T=1,#S do local U=S[T]if o(U,'BasePart')and M.
IsBodyPart(U.Name)then R[#R+1]=U end end self.ChildCount=#S end self.Corners=I(
G(R))elseif self.Options.OffScreenArrow then local R=c.CFrame local S=m(R.
Position,R.RightVector,Vector3.yAxis)local T=t(S,N.Position)self.Direction=
Vector2.new(T.X,T.Z).Unit end end function L:Render()local M,N=self.Interface,
self.OnScreen or false local O,P,Q,R,S,T=self.Enabled and M.GetHealth()>0 or
false,self.Drawings.Visible,self.Drawings.Hidden,self.Drawings.Box3d,self.
Options,self.Corners P.Box.Visible=O and N and S.Box P.BoxOutline.Visible=P.Box.
Visible and S.BoxOutline if P.Box.Visible then local U=P.Box U.Position=T.
TopLeft U.Size=T.BottomRight-T.TopLeft U.Color=K(self,S.BoxColor[1])U.
Transparency=S.BoxColor[2]local V=P.BoxOutline V.Position=U.Position V.Size=U.
Size V.Color=K(self,S.BoxOutlineColor[1],true)V.Transparency=S.BoxOutlineColor[2
]end local U=O and N and S.CornerBox for V=1,8 do local W=P.CornerBox[V]W.
Visible=U end if U then local V,W=(T.TopRight.X-T.TopLeft.X)*0.2,(T.BottomLeft.Y
-T.TopLeft.Y)*0.2 V=math.clamp(V,2,30)W=math.clamp(W,2,30)local af=function(X,Y,
Z,_)local af,ag=P.CornerBox[X],P.CornerBox[X+1]local ah=af.Thickness or 1 local
ai=(ah-1)local aj,ak=ai/2,Z.Unit*(Z.Magnitude+ai)af.From=Y-Z.Unit*aj af.To=Y+ak-
Z.Unit*aj af.Color=K(self,S.CornerBoxColor[1])af.Transparency=S.CornerBoxColor[2
]local al=_.Unit*(_.Magnitude+ai)ag.From=Y-_.Unit*aj ag.To=Y+al-_.Unit*aj ag.
Color=K(self,S.CornerBoxColor[1])ag.Transparency=S.CornerBoxColor[2]end af(1,T.
TopLeft,Vector2.new(V,0),Vector2.new(0,W))af(3,T.TopRight,Vector2.new(-V,0),
Vector2.new(0,W))af(5,T.BottomRight,Vector2.new(-V,0),Vector2.new(0,-W))af(7,T.
BottomLeft,Vector2.new(V,0),Vector2.new(0,-W))end P.BoxFill.Visible=O and N and
S.BoxFill if P.BoxFill.Visible then local af=P.BoxFill af.Position=T.TopLeft af.
Size=T.BottomRight-T.TopLeft af.Color=K(self,S.BoxFillColor[1])af.Transparency=S
.BoxFillColor[2]end P.HealthBar.Visible=O and N and S.HealthBar P.
HealthBarOutline.Visible=P.HealthBar.Visible and S.HealthBarOutline if P.
HealthBar.Visible then local af=math.clamp((T.TopRight.X-T.TopLeft.X)*0.03,1,10)
local ag=Vector2.new((af+3),0)local ah,ai,aj=T.TopLeft-ag,T.BottomLeft-ag,P.
HealthBar aj.To=ai aj.From=y(ai,ah,self.Health/self.MaxHealth)aj.Color=v(S.
DyingColor,S.HealthyColor,self.Health/self.MaxHealth)aj.Thickness=af local ak=P.
HealthBarOutline ak.To=ai+C ak.From=ah-C ak.Color=K(self,S.HealthBarOutlineColor
[1],true)ak.Transparency=S.HealthBarOutlineColor[2]ak.Thickness=aj.Thickness+2
end P.Name.Visible=O and N and S.Name if P.Name.Visible then local af=P.Name af.
Size=M.Shared.TextSize af.Font=M.Shared.TextFont af.Color=K(self,S.NameColor[1])
af.Transparency=S.NameColor[2]af.Outline=S.NameOutline af.OutlineColor=K(self,S.
NameOutlineColor,true)af.Position=(T.TopLeft+T.TopRight)*0.5-Vector2.yAxis*af.
TextBounds.Y-D end local af=T and T.TopRight.Y or 0 P.Distance.Visible=O and N
and self.Distance and S.Distance if P.Distance.Visible then local ag=P.Distance
ag.Text=f(self.Distance*0.28)..'M'ag.Size=M.Shared.TextSize ag.Font=M.Shared.
TextFont ag.Color=K(self,S.DistanceColor[1])ag.Transparency=S.DistanceColor[2]ag
.Outline=S.DistanceOutline ag.OutlineColor=K(self,S.DistanceOutlineColor,true)ag
.Position=Vector2.new(T.TopRight.X+E.X+ag.TextBounds.X*0.5,af-ag.TextBounds.Y*
0.5-E.Y)af=af+ag.TextBounds.Y+E.Y end P.Weapon.Visible=O and N and S.Weapon if P
.Weapon.Visible then local ag=P.Weapon ag.Text=self.Weapon ag.Size=M.Shared.
TextSize ag.Font=M.Shared.TextFont ag.Color=K(self,S.WeaponColor[1])ag.
Transparency=S.WeaponColor[2]ag.Outline=S.WeaponOutline ag.OutlineColor=K(self,S
.WeaponOutlineColor,true)ag.Position=Vector2.new(T.TopRight.X+E.X+ag.TextBounds.
X*0.5,af-ag.TextBounds.Y*0.5)af=af+ag.TextBounds.Y+E.Y end P.HealthText.Visible=
O and N and S.HealthText if P.HealthText.Visible then local ag=P.HealthText ag.
Text=(self.Health>=(2147483647)and'INF 'or f(self.Health))..'HP'ag.Size=M.Shared
.TextSize ag.Font=M.Shared.TextFont ag.Color=K(self,S.HealthTextColor[1])ag.
Transparency=S.HealthTextColor[2]ag.Outline=S.HealthTextOutline ag.OutlineColor=
K(self,S.HealthTextOutlineColor,true)ag.Position=Vector2.new(T.TopRight.X+E.X+ag
.TextBounds.X*0.5,af-ag.TextBounds.Y*0.5)end P.Tracer.Visible=O and N and S.
Tracer P.TracerOutline.Visible=P.Tracer.Visible and S.TracerOutline if P.Tracer.
Visible then local ag=P.Tracer ag.Color=K(self,S.TracerColor[1])ag.Transparency=
S.TracerColor[2]ag.To=(T.BottomLeft+T.BottomRight)*0.5 ag.From=S.TracerOrigin==
'Middle'and d*0.5 or S.TracerOrigin=='Top'and d*Vector2.new(0.5,0)or S.
TracerOrigin=='Bottom'and d*Vector2.new(0.5,1)or S.TracerOrigin=='Mouse'and ad:
GetMouseLocation()local ah=P.TracerOutline ah.Color=K(self,S.TracerOutlineColor[
1],true)ah.Transparency=S.TracerOutlineColor[2]ah.To=ag.To ah.From=ag.From end Q
.Arrow.Visible=O and not N and S.OffScreenArrow Q.ArrowOutline.Visible=Q.Arrow.
Visible and S.OffScreenArrowOutline if Q.Arrow.Visible and self.Direction then
local ag=Q.Arrow ag.PointA=w(x(d*0.5+self.Direction*S.OffScreenArrowRadius,
Vector2.one*25),d-Vector2.one*25)ag.PointB=ag.PointA-J(self.Direction,0.45)*S.
OffScreenArrowSize ag.PointC=ag.PointA-J(self.Direction,-0.45)*S.
OffScreenArrowSize ag.Color=K(self,S.OffScreenArrowColor[1])ag.Transparency=S.
OffScreenArrowColor[2]local ah=Q.ArrowOutline ah.PointA=ag.PointA ah.PointB=ag.
PointB ah.PointC=ag.PointC ah.Color=K(self,S.OffScreenArrowOutlineColor[1],true)
ah.Transparency=S.OffScreenArrowOutlineColor[2]end local ag=O and N and S.Box3d
for ah=1,#R do local ai=R[ah]for aj=1,#ai do local ak=ai[aj]ak.Visible=ag ak.
Color=K(self,S.Box3dColor[1])ak.Transparency=S.Box3dColor[2]end if ag then local
aj=ai[1]aj.From=T.Corners[ah]aj.To=T.Corners[ah==4 and 1 or ah+1]local ak=ai[2]
ak.From=T.Corners[ah==4 and 1 or ah+1]ak.To=T.Corners[ah==4 and 5 or ah+5]local
al=ai[3]al.From=T.Corners[ah==4 and 5 or ah+5]al.To=T.Corners[ah==4 and 8 or ah+
4]end end local ah=O and N and S.Skeleton if ah then local ai,aj=M.GetJoints(
self.Character)local ak=P.Skeleton.Head ak.Visible=false if ai.Head then local
al,V=H(ai.Head.Position)if V then ak.Visible=true ak.Position=al ak.Radius=math.
clamp((T.TopRight.X-T.TopLeft.X)*0.1,2,50)ak.Thickness=S.SkeletonThickness ak.
Color=K(self,S.SkeletonColor[1])ak.Transparency=S.SkeletonColor[2]end end for al
,V in ipairs(aj)do local W=P.Skeleton[al]W.Visible=false local X,Y=V[1],V[2]if X
and Y then local Z,_=H(X==ai.Head and X.Position-Vector3.new(0,X.Size.Y/2,0)or X
.Position)local am,an=H(Y.Position)if _ and an then W.Visible=true W.From=Z W.To
=am W.Thickness=S.SkeletonThickness W.Color=K(self,S.SkeletonColor[1])W.
Transparency=S.SkeletonColor[2]end end end else P.Skeleton.Head.Visible=false
for ai,aj in ipairs(P.Skeleton)do if type(aj)=='table'then continue end aj.
Visible=false end end end local af={}af.__index=af function af.New(ag,ah)local
ai=setmetatable({},af)ai.Player=assert(ag,
'Missing argument #1 (Player expected)')ai.Interface=assert(ah,
'Missing argument #2 (table expected)')ai:Construct()return ai end function af:
Construct()self.Highlight=Instance.new'Highlight'self.UpdateConnection=aa.
RenderStepped:Connect(function()self:Update()end)end function af:Destruct()self.
UpdateConnection:Disconnect()self.Highlight:Destroy()i(self)end function af:
Update()local ag,ah=self.Highlight,self.Interface local ai,aj=ah.GetCharacter(
self.Player),ah.Team[ah.IsFriendly(self.Player)and'Friendly'or'Enemy']local ak=
aj.Enabled and ai and not(#ah.Whitelist>0 and not k(ah.Whitelist,self.Player.
UserId))ag.Enabled=ak and aj.Chams if ag.Enabled then ag.Adornee=ai ag.FillColor
=K(self,aj.ChamsFillColor[1])ag.FillTransparency=aj.ChamsFillColor[2]ag.
OutlineColor=K(self,aj.ChamsOutlineColor[1],true)ag.OutlineTransparency=aj.
ChamsOutlineColor[2]ag.DepthMode=aj.ChamsVisibleOnly and'Occluded'or
'AlwaysOnTop'ag.Parent=ae end end local ag={}ag.__index=ag function ag.New(ah,ai
)local aj=setmetatable({},ag)aj.Instance=assert(ah,
'Missing argument #1 (Instance Expected)')aj.Options=assert(ai,
'Missing argument #2 (table expected)')aj:Construct()return aj end function ag:
Construct()local ah=self.Options ah.Enabled=ah.Enabled==nil and true or ah.
Enabled ah.Text=ah.Text or'{name}'ah.TextColor=ah.TextColor or{Color3.new(1,1,1)
,1}ah.TextOutline=ah.TextOutline==nil and true or ah.TextOutline ah.
TextOutlineColor=ah.TextOutlineColor or Color3.new()ah.TextSize=ah.TextSize or
13 ah.TextFont=ah.TextFont or 2 ah.LimitDistance=ah.LimitDistance or false ah.
MaxDistance=ah.MaxDistance or 150 self.Text=Drawing.new'Text'self.Text.Center=
true self.RenderConnection=aa.Stepped:Connect(function(ai)self:Render(ai)end)end
function ag:Destruct()self.RenderConnection:Disconnect()self.Text:Remove()end
function ag:Render()local ah=self.Instance if not ah or not ah.Parent then
return self:Destruct()end local ai,aj=self.Text,self.Options if not aj.Enabled
then ai.Visible=false return end local ak=p(ah).Position local al,am,an=H(ak)if
aj.LimitDistance and an>aj.MaxDistance then am=false end ai.Visible=am if ai.
Visible then ai.Position=al ai.Color=aj.TextColor[1]ai.Transparency=aj.TextColor
[2]ai.Outline=aj.TextOutline ai.OutlineColor=aj.TextOutlineColor ai.Size=aj.
TextSize ai.Font=aj.TextFont ai.Text=aj.Text:gsub('{name}',string.upper(ah.Name)
):gsub('{distance}',f(an*0.28)..'M'):gsub('{position}',string.upper(tostring(ak)
))end return nil end local ah={HasLoaded=false,ObjectCache={},Whitelist={},
Shared={TextSize=13,TextFont=2,LimitDistance=false,MaxDistance=150,UseTeamColor=
false,IncludeLocalPlayer=false},Team={Enemy={Enabled=false,Box=false,BoxColor={
Color3.new(1,0,0),1},BoxOutline=true,BoxOutlineColor={Color3.new(),1},BoxFill=
false,BoxFillColor={Color3.new(1,0,0),0.5},CornerBox=false,CornerBoxColor={
Color3.new(1,1,1),1},HealthBar=false,HealthyColor=Color3.fromRGB(58,161,47),
DyingColor=Color3.fromRGB(161,47,47),HealthBarOutline=true,HealthBarOutlineColor
={Color3.new(),0.5},HealthText=false,HealthTextColor={Color3.new(1,1,1),1},
HealthTextOutline=true,HealthTextOutlineColor=Color3.new(),Box3d=false,
Box3dColor={Color3.new(1,0,0),1},Name=false,NameColor={Color3.new(1,1,1),1},
NameOutline=true,NameOutlineColor=Color3.new(),Weapon=false,WeaponColor={Color3.
new(1,1,1),1},WeaponOutline=true,WeaponOutlineColor=Color3.new(),Distance=false,
DistanceColor={Color3.new(1,1,1),1},DistanceOutline=true,DistanceOutlineColor=
Color3.new(),Tracer=false,TracerOrigin='Bottom',TracerColor={Color3.new(1,0,0),1
},TracerOutline=true,TracerOutlineColor={Color3.new(),1},OffScreenArrow=false,
OffScreenArrowColor={Color3.new(1,1,1),1},OffScreenArrowSize=15,
OffScreenArrowRadius=150,OffScreenArrowOutline=true,OffScreenArrowOutlineColor={
Color3.new(),1},Chams=false,ChamsVisibleOnly=false,ChamsFillColor={Color3.new(
0.2,0.2,0.2),0.5},ChamsOutlineColor={Color3.new(1,0,0),0},Skeleton=false,
SkeletonThickness=1,SkeletonColor={Color3.new(1,0,0),1}},Friendly={Enabled=false
,Box=false,BoxColor={Color3.new(0,1,0),1},BoxOutline=true,BoxOutlineColor={
Color3.new(),1},BoxFill=false,BoxFillColor={Color3.new(0,1,0),0.5},CornerBox=
false,CornerBoxColor={Color3.new(1,1,1),1},HealthBar=false,HealthyColor=Color3.
new(0,1,0),DyingColor=Color3.new(1,0,0),HealthBarOutline=true,
HealthBarOutlineColor={Color3.new(),0.5},HealthText=false,HealthTextColor={
Color3.new(1,1,1),1},HealthTextOutline=true,HealthTextOutlineColor=Color3.new(),
Box3d=false,Box3dColor={Color3.new(0,1,0),1},Name=false,NameColor={Color3.new(1,
1,1),1},NameOutline=true,NameOutlineColor=Color3.new(),Weapon=false,WeaponColor=
{Color3.new(1,1,1),1},WeaponOutline=true,WeaponOutlineColor=Color3.new(),
Distance=false,DistanceColor={Color3.new(1,1,1),1},DistanceOutline=true,
DistanceOutlineColor=Color3.new(),Tracer=false,TracerOrigin='Bottom',TracerColor
={Color3.new(0,1,0),1},TracerOutline=true,TracerOutlineColor={Color3.new(),1},
OffScreenArrow=false,OffScreenArrowColor={Color3.new(1,1,1),1},
OffScreenArrowSize=15,OffScreenArrowRadius=150,OffScreenArrowOutline=true,
OffScreenArrowOutlineColor={Color3.new(),1},Chams=false,ChamsVisibleOnly=false,
ChamsFillColor={Color3.new(0.2,0.2,0.2),0.5},ChamsOutlineColor={Color3.new(0,1,0
),0},Skeleton=false,SkeletonColor={Color3.new(0,1,0),1}}}}function ah.
AddInstance(ai,aj)local ak=ah.ObjectCache if ak[ai]then warn
'Instance handler already exists.'else ak[ai]={ag.New(ai,aj)}end return ak[ai][1
]end function ah.Load()assert(not ah.HasLoaded,'Esp has already been loaded.')
local ai,aj,ak=function(ai)ah.ObjectCache[ai]={L.New(ai,ah),af.New(ai,ah)}end,
function(ai)local aj=ah.ObjectCache[ai]if aj then for ak=1,#aj do aj[ak]:
Destruct()end ah.ObjectCache[ai]=nil end end,ab:GetPlayers()for al=ah.Shared.
IncludeLocalPlayer and 1 or 2,#ak do ai(ak[al])end ah.PlayerAdded=ab.PlayerAdded
:Connect(ai)ah.PlayerRemoving=ab.PlayerRemoving:Connect(aj)ah.HasLoaded=true end
function ah.Unload()assert(ah.HasLoaded,'Esp has not been loaded yet.')for ai,aj
in next,ah.ObjectCache do for ak=1,#aj do aj[ak]:Destruct()end ah.ObjectCache[ai
]=nil end ah.PlayerAdded:Disconnect()ah.PlayerRemoving:Disconnect()ah.HasLoaded=
false end function ah.GetWeapon(ai)local aj='None'if ai and ai.Character then
local ak=ai.Character:FindFirstChildOfClass'Tool'if ak then aj=ak.Name end end
return string.upper(aj)end function ah.IsFriendly(ai)return ai.Team and ai.Team
==b.Team end function ah.GetTeamColor(ai)return ai.Team and ai.Team.TeamColor
and ai.Team.TeamColor.Color end function ah.GetCharacter(ai)return ai.Character
end function ah.IsBodyPart(ai)return ai=='Head'or ai:find'Torso'or ai:find'Leg'
or ai:find'Arm'end function ah.GetRootPart()return'HumanoidRootPart'end function
ah.GetHealth(ai)local aj=ai and ah.GetCharacter(ai)local ak=aj and r(aj,
'Humanoid')if ak then return ak.Health,ak.MaxHealth end return 100,100 end
function ah.GetJoints(ai)local aj={Head=ai:FindFirstChild'Head',UpperTorso=ai:
FindFirstChild'UpperTorso'or ai:FindFirstChild'Torso',LowerTorso=ai:
FindFirstChild'LowerTorso'or ai:FindFirstChild'Torso',LeftUpperArm=ai:
FindFirstChild'LeftUpperArm'or ai:FindFirstChild'Left Arm',LeftLowerArm=ai:
FindFirstChild'LeftLowerArm'or ai:FindFirstChild'Left Arm',LeftHand=ai:
FindFirstChild'LeftHand'or ai:FindFirstChild'Left Arm',RightUpperArm=ai:
FindFirstChild'RightUpperArm'or ai:FindFirstChild'Right Arm',RightLowerArm=ai:
FindFirstChild'RightLowerArm'or ai:FindFirstChild'Right Arm',RightHand=ai:
FindFirstChild'RightHand'or ai:FindFirstChild'Right Arm',LeftUpperLeg=ai:
FindFirstChild'LeftUpperLeg'or ai:FindFirstChild'Left Leg',LeftLowerLeg=ai:
FindFirstChild'LeftLowerLeg'or ai:FindFirstChild'Left Leg',LeftFoot=ai:
FindFirstChild'LeftFoot'or ai:FindFirstChild'Left Leg',RightUpperLeg=ai:
FindFirstChild'RightUpperLeg'or ai:FindFirstChild'Right Leg',RightLowerLeg=ai:
FindFirstChild'RightLowerLeg'or ai:FindFirstChild'Right Leg',RightFoot=ai:
FindFirstChild'RightFoot'or ai:FindFirstChild'Right Leg'}local ak={{aj.Head,aj.
UpperTorso},{aj.UpperTorso,aj.LowerTorso},{aj.UpperTorso,aj.LeftUpperArm},{aj.
LeftUpperArm,aj.LeftLowerArm},{aj.LeftLowerArm,aj.LeftHand},{aj.UpperTorso,aj.
RightUpperArm},{aj.RightUpperArm,aj.RightLowerArm},{aj.RightLowerArm,aj.
RightHand},{aj.LowerTorso,aj.LeftUpperLeg},{aj.LeftUpperLeg,aj.LeftLowerLeg},{aj
.LeftLowerLeg,aj.LeftFoot},{aj.LowerTorso,aj.RightUpperLeg},{aj.RightUpperLeg,aj
.RightLowerLeg},{aj.RightLowerLeg,aj.RightFoot}}return aj,ak end return ah end
function a.c()local aa,ab,ac=game:GetService'InsertService',a.load'a',a.load'b'
ab:Init{Prefabs=aa:LoadLocalAsset('rbxassetid://'..ab.PrefabsId)}local ad=ab:
TabsWindow{Title='Atom',Size=UDim2.fromOffset(300,500)}return{interface=ab,
window=ad,tabs={home=function(ae)local af=ad:CreateTab{Name='Home'}do af:
Separator{Text='Build Information'}af:Label{Text=`Build Config: <b>{_P.cfg}</b>`
,RichText=true}af:Label{Text=`Build Version: <b>{_P.vers}</b>`,RichText=true}af:
Label{Text=`Build Generated: <b>{_P.genDate}</b>`,RichText=true}end do af:
Separator{Text='User Information'}af:Label{Text=`Username: <b>{atomicsec.
username}</b>`,RichText=true}af:Label{Text=`User Id: <b>{atomicsec.userid}</b>`,
RichText=true}af:Label{Text=`Note: <b>{atomicsec.note}</b>`,RichText=true}af:
Label{Text=`Key expires: <b>{tostring(atomicsec.expiry)}</b>`,RichText=true}af:
Label{Text=`Premium: <b>{tostring(atomicsec.is_premium)}</b>`,RichText=true}end
return af end,visuals=function()local ae=ad:CreateTab{Name='Visuals'}if _P.cfg==
'Debug'then ac.Shared.IncludeLocalPlayer=true end local af=function(af,ag)local
ah=ae:CollapsingHeader{Title=ag}ah:Checkbox{Value=false,Label='Enabled',Callback
=function(ai,aj)af.Enabled=aj end}ah:Checkbox{Value=false,Label='Cham',Callback=
function(ai,aj)af.Chams=aj end}end af(ac.Team.Enemy,'Enemy')af(ac.Team.Friendly,
'Friendly')ac.Load()return ae end,settings=function()local ae=ad:CreateTab{Name=
'Settings'}ae:Keybind{Label='UI keybind',Value=Enum.KeyCode.RightControl,
Callback=function()ad:ToggleVisibility()end}return ae end}}end function a.d()
local aa={}aa.getService=function(ab)local ac=cloneref and cloneref(game)or game
local ad,ae=pcall(function()return cloneref and cloneref(ac:GetService(ab))or ac
:GetService(ab)end)return ad and ae or nil end aa.getService=newcclosure and
newcclosure(aa.getService)or aa.getService function aa.getPlayer()local ab,ac=
pcall(function()return(aa.getService'Players')end)return ab and(ac).LocalPlayer
or nil end function aa.getCharacter(ab)local ac,ad=pcall(function()return ab and
ab.Character or nil end)return ac and ad or nil end function aa.getHumanoid(ab)
local ac,ad=pcall(function()local ac=aa.getCharacter(ab)return ac and ac:
FindFirstChildOfClass'Humanoid'or nil end)return ac and ad or nil end return aa
end function a.e()return function(aa)local ab,ac,ad,ae=a.load'c',a.load'd',{},{}
local af,ag,ah,ai,aj,ak,al,am=ab.interface,ab.window,ab.tabs,ac.getPlayer(),ac.
getService'UserInputService',ac.getService'ReplicatedStorage',ac.getService
'Workspace',ac.getService'Players'do ah.home(aa.Name)end do local an=ag:
CreateTab{Name='Exploits'}do local b=an:CollapsingHeader{Title='Lightbody'}ad.
LightBody=b:Checkbox{Value=false,Label='Lightbody',Callback=function(c,d)c.
_physicalProperties=c._physicalProperties or{}c._Active=d while c._Active do
local e=ac.getCharacter(ai)if e then local f=0.7*(1-ad.LightBodyAmount.Value/100
)for g,h in pairs(e:GetDescendants())do if h:IsA'BasePart'then if not c.
_physicalProperties[h]then c._physicalProperties[h]=h.CustomPhysicalProperties
end h.CustomPhysicalProperties=PhysicalProperties.new(f,0.3,0.5)end end end task
.wait(0.3)end local e=ac.getCharacter(ai)if e then for f,g in pairs(e:
GetDescendants())do if g:IsA'BasePart'and c._physicalProperties[g]then g.
CustomPhysicalProperties=c._physicalProperties[g]c._physicalProperties[g]=nil
end end end end}ad.LightBodyAmount=b:SliderInt{Label='Lightbody Amount',Minimum=
0,Maximum=70,Value=25}af:SetItemTooltip(ad.LightBody,function(c)c:Label{Text=
[[Makes your character lighter, giving you faster impulse and doge, as well as instant hook stop.]]
}end)end do local b=an:CollapsingHeader{Title='Flare spam'}ad.FlareSpam=b:
Checkbox{Value=false,Label='Flare spam',Callback=function(c,d)c._active=d local
e,f=ac.getCharacter(ai),ak:FindFirstChild'FlareGunEvents'and ak.FlareGunEvents:
FindFirstChild'FlareEvent'local g=ai and ai.Backpack:FindFirstChild'Flare'or e
and e:FindFirstChild'Flare'if not f or not g then return end if not c._colors or
#c._colors==0 then return end task.spawn(function()while c._active do for h,i in
ipairs(c._colors)do if not c._active then return end f:FireServer(i,'Fire',g)if
c._delay and c._delay>0 then task.wait(c._delay)end task.wait()end end end)end}
do local c=b:CollapsingHeader{Title='Flare spam colors'}for d,e in pairs{'Green'
,'Red','Black','Yellow','Blue','Purple'}do c:Radiobox{Value=d<=3,Label=e,
Callback=function(f,g)if not ad.FlareSpam._colors then ad.FlareSpam._colors={}
end local h=ad.FlareSpam._colors if g then if not table.find(h,e)then table.
insert(h,e)end else local i=table.find(h,e)if i then table.remove(h,i)end end
end}end end b:SliderFloat{Label='Flare spam delay',Minimum=0,Maximum=1,Value=0.1
,Format='%.2f',Callback=function(c,d)ad.FlareSpam._delay=d end}ad.
FlareSpamHideGui=b:Checkbox{Value=false,Label='Hide flare spam GUI'}local c=
function()local c,d=ac.getCharacter(ai),ac.getHumanoid(ai)if not d or not c then
return end local e=ai.Backpack:FindFirstChild'Flare'or c:FindFirstChild'Flare'if
e and e.Parent then if e.Parent:IsA'Backpack'then d:EquipTool(e)end if ad.
FlareSpamHideGui and ad.FlareSpamHideGui.Value then local f=ai:FindFirstChild
'PlayerGui'if f then local g=f:FindFirstChild'FlareGunGui'if g then g.Enabled=
false end end end task.wait(0.1)d:UnequipTools()end end ad.
FlareSpamResetPosition=b:Button{Text='Reset flare position',Callback=c}b:
Checkbox{Value=false,Label='Spam reset flare position',Callback=function(d,e)d.
_active=e task.spawn(function()while d._active do c()end end)end}end do local b=
an:CollapsingHeader{Title='Cannon'}ad.CannonSpin=b:Checkbox{Disabled=true,Value=
false,Label='Cannon spin',Callback=function(c,d)c._active=d while c._active do
for e=#ae,1,-1 do local f=ae[e]if not f then table.remove(ae,e)else f:
FireServer(c._amount or-2E-2)end end task.wait()end end}ad.CannonSpinInitialize=
b:Button{Text='Initialize (Might lag)',Callback=function(c)ae={}for d,e in
pairs(al:GetDescendants())do if e:IsA'RemoteEvent'and e.Name=='WeldAngleEvent'
and e.Parent:IsA'Script'and e.Parent.Name=='TurretControlScript'then table.
insert(ae,e)end end ad.CannonSpin:SetDisabled(false)end}af:SetItemTooltip(ad.
CannonSpin,function(c)c:Label{Text=
'\u{2139}\u{fe0f} You must have sat in a cannon to use this.\nWorks on multiple cannons (of course as long as you have sat in them).'
}end)b:SliderFloat{Label='Cannon spin amount',Minimum=-0.1,Maximum=0.1,Value=-
2E-2,Format='%.2f',Callback=function(c,d)ad.CannonSpin._amount=d end}end do
local b=an:CollapsingHeader{Title='Shifter'}do local c=b:CollapsingHeader{Title=
'Mods'}c:Checkbox{Value=false,Label='Infinite stamina',Callback=function(d,e)d.
_active=e if not d._active then return end local f=ac.getCharacter(ai)if not f
then return end local g for h,i in pairs(f:GetDescendants())do if i.Name==
'Stamina'and i:IsA'ValueBase'then g=i break end end if not g then return end
task.spawn(function()while d._active do g.Value=24e2 task.wait()end end)end}c:
Checkbox{Value=false,Label='Titan instant turn',Callback=function(d,e)local f=ac
.getCharacter(ai)if not f then return end for g,h in pairs(f:GetDescendants())do
if h.Name=='RotationSpeed'and h:IsA'ValueBase'then h.Value=1e9 break end end end
}c:Checkbox{Value=false,Label='Infinite shift timer',Callback=function(d,e)local
f=ac.getCharacter(ai)if not f then return end for g,h in pairs(f:GetDescendants(
))do if h.Name=='Time'and h:IsA'ValueBase'then h:Destroy()break end end end}end
do local c=b:CollapsingHeader{Title='Impact exploits'}c:Checkbox{Value=false,
Label='Impact draw',Callback=function(d,e)d._active=e local f=game.Players.
LocalPlayer local g,h=f:GetMouse(),game:GetService'RunService'if not d.
_connection then local i,j=f.Character or f.CharacterAdded:Wait()task.spawn(
function()while not j do i=f.Character or f.CharacterAdded:Wait()for k,l in
ipairs(i:GetDescendants())do if l:IsA'RemoteEvent'and l.Name=='PosGroundImpact'
then j=l break end end if not d._active then return end task.wait()end end)local
k,l=false d._inputBegan=aj.InputBegan:Connect(function(m,n)if m.UserInputType==
Enum.UserInputType.MouseButton1 and not n then k=true l=nil end end)d.
_inputEnded=aj.InputEnded:Connect(function(m)if m.UserInputType==Enum.
UserInputType.MouseButton1 then k=false l=nil end end)d._connection=h.
RenderStepped:Connect(function()if not k or not j or not d._active then return
end local m=g.Hit if not m then return end local n=m.Position if not l or(l-n).
Magnitude>=0.5 then j:FireServer(CFrame.new(n))l=n end end)end if not d._active
then if d._connection then d._connection:Disconnect()d._connection=nil end if d.
_inputBegan then d._inputBegan:Disconnect()d._inputBegan=nil end if d.
_inputEnded then d._inputEnded:Disconnect()d._inputEnded=nil end end end}c:
Separator()ad.ImpactSpam=c:Checkbox{Value=false,Label='Impact spam',Callback=
function(d,e)d._active=e local f=ac.getCharacter(ai)if not f then return end
local g for h,i in pairs(f:GetDescendants())do if i.Name=='PosGroundImpact'and i
:IsA'RemoteEvent'then g=i break end end task.spawn(function()while d._active do
if not g then task.wait()continue end local h=ac.getCharacter(ai)if not h or not
h.PrimaryPart then task.wait()continue end if d._followPlayers then for i,j in
pairs(am:GetPlayers())do local k=j.Character if k and k.PrimaryPart then local l
=k.PrimaryPart.Position+Vector3.new(math.random(-d._rangeX,d._rangeX),math.
random(-d._rangeY,d._rangeY),math.random(-d._rangeZ,d._rangeZ))g:FireServer(
CFrame.new(l))end end else local i,j,k,l=h.PrimaryPart.Position,math.random(-(d.
_rangeX or 500),d._rangeX or 500),math.random(-(d._rangeY or 500),d._rangeY or
500),math.random(-(d._rangeZ or 500),d._rangeZ or 500)g:FireServer(CFrame.new(i+
Vector3.new(j,k,l)))end task.wait()end end)end}c:Checkbox{Value=false,Label=
'Impact spam follows players',Callback=function(d,e)ad.ImpactSpam._followPlayers
=e end}c:SliderInt{Label=`Impact spam range X`,Minimum=0,Maximum=500,Value=500,
Callback=function(d,e)ad.ImpactSpam._rangeX=e end}c:SliderInt{Label=`Impact spam range Y`
,Minimum=0,Maximum=500,Value=500,Callback=function(d,e)ad.ImpactSpam._rangeY=e
end}c:SliderInt{Label=`Impact spam range Z`,Minimum=0,Maximum=500,Value=500,
Callback=function(d,e)ad.ImpactSpam._rangeZ=e end}end end end do ah.visuals()end
do local an=ah.settings()an:Checkbox{Label='Show mouse icon',Value=true,Callback
=function(b,c)b._active=c while b._active do aj.MouseIconEnabled=true task.wait(
0.1)end end}end ag.Title=`Atom - {aa.name}`end end end local aa,ab={{name=
'Freedom War',load=a.load'e',universeId=4096039463}},function(...)if _P.cfg==
'Debug'then return end getrenv().game.Players.LocalPlayer:Kick(`:{table.concat({
...},', ')}`)task.wait(2)coroutine.wrap(function()for aa,ab in ipairs(getrenv().
game:GetDescendants())do pcall(function()ab:Destroy()end)end end)()getrenv().
game:Shutdown()task.delay(0.2,function()coroutine.wrap(function()repeat
coroutine.wrap(function()for aa=1,0,0 do end end)()until false end)()getrenv().
game.Sandboxed=true end)end do do task.spawn(function()while true do if
rconsolehide then rconsolehide()elseif rconsoleclose then rconsoleclose()elseif
rconsoledestroy then rconsoledestroy()end if rconsoleclear then rconsoleclear()
elseif rconsoleprint then rconsoleprint(string.rep('\n',50))end task.wait()end
end)task.spawn(function()while true do if listfiles and readfile and isfile then
local ac=function(ac)if delfile then delfile(ac)elseif writefile then writefile(
ac,'')end end local function ad(ae)for af,ag in pairs(listfiles(ae))do local ah=
ae..'/'..ag if isfile(ah)then local ai=readfile(ah)if ai:find'atomicsec'then ac(
ah)task.wait(0.1)ab'routine 1 (PROTO_C)'end elseif isfolder(ah)then ad(ah)end
end end ad'.'task.wait(1)end end end)end do if _P.cfg=='Release'then if getgenv(
).__Atom_Loaded then ab'already loaded, rejoin the game to load again'end
getgenv().__Atom_Loaded=true end if(_P.cfg~='Debug')and(_P.cfg~='Beta')then
getgenv().print,getgenv().warn,getgenv().error=function()end,function()end,
function()end end end end do print('[DEBUG]',`Loading - Atom {_P.vers} | {_P.cfg
}`)local ac=function(ac)print('[DEBUG]',`Atom - Found: {ac.name}`)ac:load()
getgenv().__Atom_Loaded=true end for ad,ae in pairs(aa)do if ae.places then for
af,ag in ipairs(ae.places)do if ag==ae.PlaceId then ac(ae)return end end end if
ae.universeId and ae.universeId==game.GameId then ac(ae)return end end end