--!nocheck
--!nolint

--[[
    @author Proton-Utilities
    @name atom

    This file was automatically generated with darklua, it is not intended for manual editing.
--]]

if not hookfunction or not getrenv or not request then
	game.Player.LocalPlayer:Kick("Your executor is not supported.")
	return
end

local function push(file)
    loadstring(file)()

    if queue_on_teleport then
        queue_on_teleport(file)
    end
end

push([==[
    local Players = game:GetService("Players")
    repeat task.wait() until Players.LocalPlayer and game:IsLoaded()
    
    local LocalPlayer = Players.LocalPlayer

    local function WaitForChildOfPlayer(name)
        while not LocalPlayer:FindFirstChild(name) do
            LocalPlayer.ChildAdded:Wait()
        end
        return LocalPlayer[name]
    end

    local function WaitForPlayerLoad()
        LocalPlayer.Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        WaitForChildOfPlayer("Backpack")
        WaitForChildOfPlayer("PlayerGui")
        WaitForChildOfPlayer("PlayerScripts")
    end

    WaitForPlayerLoad()

    atomicsec = atomicsec or {}

    _P = {
        genDate = "2025-06-11T05:41:57.642444100+00:00",
        cfg = "Debug",
        vers = "v0.0.0"
    }

    type ThemeData__DARKLUA_TYPE_a={
[string]:any
}

type FlagFunc__DARKLUA_TYPE_b={
Data:{
Class:{},
WindowClass:table__DARKLUA_TYPE_c?
},
Object:GuiObject
}

type table__DARKLUA_TYPE_c={
[any]:any
}

type ObjectTable__DARKLUA_TYPE_d={
[GuiObject]:any
}

type TagsList__DARKLUA_TYPE_e={
[GuiObject]:string
}

type AnimationTween__DARKLUA_TYPE_f={
Object:Instance,
NoAnimation:boolean?,
Tweeninfo:TweenInfo?,
EndProperties:{},
Completed:(()->any?)?
}

type Animate__DARKLUA_TYPE_g={
NoAnimation:boolean?,
Objects:ObjectTable__DARKLUA_TYPE_d,
Tweeninfo:TweenInfo?,
Completed:()->any
}

type HeaderCollapseToggle__DARKLUA_TYPE_h={
Rotations:{
Open:number?,
Closed:number?
},
Toggle:GuiObject,
NoAnimation:boolean?,
Collapsed:boolean,
Tweeninfo:TweenInfo?
}

type HeaderCollapse__DARKLUA_TYPE_i={
Collapsed:boolean,
ClosedSize:UDim2,
OpenSize:UDim2,
Toggle:Instance,
Resize:Instance?,
Hide:Instance?,
NoAnimation:boolean?,
NoAutomaticSize:boolean?,
IconOnly:boolean?,
Completed:(()->any)?,
IconRotations:{
Open:number?,
Closed:number?
}
}

type SignalClass__DARKLUA_TYPE_j={
Connections:{
[number]:(...any)->nil
},
Fire:(SignalClass__DARKLUA_TYPE_j,...any)->nil,
GetConnections:(SignalClass__DARKLUA_TYPE_j)->table__DARKLUA_TYPE_c,
Connect:(SignalClass__DARKLUA_TYPE_j,(...any)->nil)->table__DARKLUA_TYPE_c,
DisconnectConnections:(SignalClass__DARKLUA_TYPE_j)->nil
}

type ConnectDrag__DARKLUA_TYPE_k={
DragStart:()->nil,
DragEnd:()->nil,
DragMovement:()->nil
}

type MakeDraggableFlags__DARKLUA_TYPE_l={
Move:Instance,
Grab:Instance,
Enabled:boolean?,
OnUpdate:((Vector2)->...any)?,
DragBegin:((InputObject)->...any)?,
StateChanged:((MakeDraggableFlags__DARKLUA_TYPE_l)->any)?
}

type MakeResizableFlags__DARKLUA_TYPE_m={
MinimumSize:Vector2,
MaximumSize:Vector2?,

Resize:Instance,
OnUpdate:(UDim2)->...any
}

type DetectHover__DARKLUA_TYPE_n={
OnInput:((boolean,InputObject?)->...any?)?,
Anykey:boolean?,
MouseMove:boolean?,
MouseOnly:boolean?,
MouseEnter:boolean?,
Hovering:boolean?
}

type UpdateColors__DARKLUA_TYPE_o={
Object:GuiObject,
Tag:(string|table__DARKLUA_TYPE_c),
NoAnimation:boolean?,
Theme:string?,
TagsList:TagsList__DARKLUA_TYPE_e?,
Tweeninfo:TweenInfo?
}

type MultiUpdateColorsConfig__DARKLUA_TYPE_p={
Objects:ObjectsTable,
TagsList:TagsList__DARKLUA_TYPE_e?,
Theme:string?,
Animate:boolean?,
Tweeninfo:TweenInfo?
}

type ApplyFlags__DARKLUA_TYPE_q={
Object:Instance,
Class:table__DARKLUA_TYPE_c,
WindowClass:table__DARKLUA_TYPE_c?
}

type MakeCanvas__DARKLUA_TYPE_r={
Element:Instance,
WindowClass:WindowClass?,
Class:{}?
}

type OnElementCreateData__DARKLUA_TYPE_s={
Flags:table__DARKLUA_TYPE_c,
Object:GuiObject,
Canvas:table__DARKLUA_TYPE_c
}

type Image__DARKLUA_TYPE_t={
Image:(string|number),
Callback:((...any)->unknown)?
}

type VideoPlayer__DARKLUA_TYPE_u={
Video:(string|number),
Callback:((...any)->unknown)?
}

type Button__DARKLUA_TYPE_v={
Text:string?,
DoubleClick:boolean?,
Callback:((...any)->unknown)?
}

type Selectable__DARKLUA_TYPE_w={
Text:string?,
Selected:boolean?,
Disabled:boolean?,
Callback:((...any)->unknown)?
}

type ImageButton__DARKLUA_TYPE_x={
Image:(string|number),
Callback:((...any)->unknown)?
}

type KeyId__DARKLUA_TYPE_y=(Enum.UserInputType|Enum.KeyCode)

type Keybind__DARKLUA_TYPE_z={
Value:Enum.KeyCode?,
DeleteKey:Enum.KeyCode?,
Enabled:boolean?,
IgnoreGameProcessed:boolean?,
Callback:((KeyId__DARKLUA_TYPE_y)->any)?,
OnKeybindSet:((KeyId__DARKLUA_TYPE_y)->any)?,
OnBlacklistedKeybindSet:((KeyId__DARKLUA_TYPE_y)->any)?,
KeyBlacklist:{
[number]:KeyId__DARKLUA_TYPE_y
},

SetValue:((Keybind__DARKLUA_TYPE_z,New:Enum.KeyCode)->any)?,
WaitForNewKey:((Keybind__DARKLUA_TYPE_z)->any)?
}

type Label__DARKLUA_TYPE_A={
Text:string,
Bold:boolean?,
Italic:boolean?,
Font:string?
}

type Tab__DARKLUA_TYPE_B={
Name:string,
Focused:boolean?,
TabButton:boolean?,
Closeable:boolean?,
OnClosure:(Tab__DARKLUA_TYPE_B)->nil,
Icon:(string|number)?
}

type TabBar__DARKLUA_TYPE_C={
AutoSelectNewTabs:boolean,
OnActiveTabChange:((TabBar__DARKLUA_TYPE_C,Tab:Tab__DARKLUA_TYPE_B,Previous:Tab__DARKLUA_TYPE_B)->nil)?,
OnTabCreate:((TabBar__DARKLUA_TYPE_C,Tab:Tab__DARKLUA_TYPE_B)->nil)?,
OnTabRemove:((TabBar__DARKLUA_TYPE_C,Tab:Tab__DARKLUA_TYPE_B)->nil)?
}

type TabSelector__DARKLUA_TYPE_D={
NoTabsBar:boolean?,
NoAnimation:boolean?
}&TabBar__DARKLUA_TYPE_C

type RadioButton__DARKLUA_TYPE_E={
Icon:string?,
IconRotation:number?,
Callback:((...any)->unknown)?
}

type Checkbox__DARKLUA_TYPE_F={
Label:string?,
IsRadio:boolean?,
Value:boolean,
NoAnimation:boolean?,
Callback:((...any)->unknown)?,
SetValue:(self:Checkbox__DARKLUA_TYPE_F,Value:boolean,NoAnimation:boolean)->...any,
Toggle:(self:Checkbox__DARKLUA_TYPE_F)->...any,
TickedImageSize:UDim2,
UntickedImageSize:UDim2
}

type PlotHistogram__DARKLUA_TYPE_G={
Label:string?,
Points:{
[number]:number
},
Minimum:number?,
Maximum:number?,
GetBaseValues:(PlotHistogram__DARKLUA_TYPE_G)->(number,number),
UpdateGraph:(PlotHistogram__DARKLUA_TYPE_G)->PlotHistogram__DARKLUA_TYPE_G,
PlotGraph:(PlotHistogram__DARKLUA_TYPE_G,Points:{
[number]:number
})->PlotHistogram__DARKLUA_TYPE_G,
Plot:(PlotHistogram__DARKLUA_TYPE_G,Value:number)->{
SetValue:(Plot,Value:number)->nil,
GetPointIndex:(Plot)->number,
Remove:(Plot,Value:number)->nil
}
}

type Viewport__DARKLUA_TYPE_H={
Model:Instance,
WorldModel:WorldModel?,
Viewport:ViewportFrame?,
Camera:Camera?,
Clone:boolean?,

SetCamera:(self:Viewport__DARKLUA_TYPE_H,Camera:Camera)->Viewport__DARKLUA_TYPE_H,
SetModel:(self:Viewport__DARKLUA_TYPE_H,Model:Model,PivotTo:CFrame?)->Model
}

type InputText__DARKLUA_TYPE_I={
Value:string,
Placeholder:string?,
MultiLine:boolean?,
Label:string?,
Disabled:boolean?,

Callback:((string,...any)->unknown)?,
Clear:(InputText__DARKLUA_TYPE_I)->InputText__DARKLUA_TYPE_I,
SetValue:(InputText__DARKLUA_TYPE_I,Value:string)->InputText__DARKLUA_TYPE_I,
SetDisabled:(InputText__DARKLUA_TYPE_I,Disabled:boolean)->InputText__DARKLUA_TYPE_I
}

type InputInt__DARKLUA_TYPE_J={
Value:number,
Maximum:number?,
Minimum:number?,
Placeholder:string?,
MultiLine:boolean?,
NoButtons:boolean?,
Label:string?,
Increment:number?,
Callback:((string,...any)->unknown)?,
SetValue:(InputInt__DARKLUA_TYPE_J,Value:number,NoTextUpdate:boolean?)->InputInt__DARKLUA_TYPE_J,
Decrease:(InputInt__DARKLUA_TYPE_J)->nil,
Increase:(InputInt__DARKLUA_TYPE_J)->nil
}

type Console__DARKLUA_TYPE_K={
Enabled:boolean?,
ReadOnly:boolean?,
Value:string?,
RichText:boolean?,
TextWrapped:boolean?,
LineNumbers:boolean?,
AutoScroll:boolean,
LinesFormat:string,
MaxLines:number,

CountLines:(Console__DARKLUA_TYPE_K)->number,
UpdateLineNumbers:(Console__DARKLUA_TYPE_K)->Console__DARKLUA_TYPE_K,
UpdateScroll:(Console__DARKLUA_TYPE_K)->Console__DARKLUA_TYPE_K,
SetValue:(Console__DARKLUA_TYPE_K,Value:string)->Console__DARKLUA_TYPE_K,
GetValue:(Console__DARKLUA_TYPE_K)->string,
Clear:(Console__DARKLUA_TYPE_K)->Console__DARKLUA_TYPE_K,
AppendText:(Console__DARKLUA_TYPE_K,...string)->Console__DARKLUA_TYPE_K,
CheckLineCount:(Console__DARKLUA_TYPE_K)->Console__DARKLUA_TYPE_K
}

type Table__DARKLUA_TYPE_L={
Align:string?,
Border:boolean?,
RowBackground:boolean?,
RowBgTransparency:number?,
MaxColumns:number?,

Row:(Table__DARKLUA_TYPE_L)->{
Column:(Row__DARKLUA_TYPE_U)->Elements
},
ClearRows:(Table__DARKLUA_TYPE_L)->unknown
}

type List__DARKLUA_TYPE_M={
Spacing:number?
}

type CollapsingHeader__DARKLUA_TYPE_N={
Title:string,
CollapseIcon:string?,
Icon:string?,
NoAnimation:boolean?,
Collapsed:boolean?,
Offset:number?,
NoArrow:boolean?,
OpenOnDoubleClick:boolean?,
OpenOnArrow:boolean?,
Activated:(CollapsingHeader__DARKLUA_TYPE_N)->nil,

Remove:(CollapsingHeader__DARKLUA_TYPE_N)->nil,
SetArrowVisible:(CollapsingHeader__DARKLUA_TYPE_N,Visible:boolean)->nil,
SetTitle:(CollapsingHeader__DARKLUA_TYPE_N,Title:string)->nil,
SetIcon:(CollapsingHeader__DARKLUA_TYPE_N,Icon:string)->nil,
SetVisible:(CollapsingHeader__DARKLUA_TYPE_N,Visible:boolean)->nil,
SetCollapsed:(CollapsingHeader__DARKLUA_TYPE_N,Open:boolean)->CollapsingHeader__DARKLUA_TYPE_N
}

type Separator__DARKLUA_TYPE_O={
Text:string?
}

type Canvas__DARKLUA_TYPE_P={
Scroll:boolean?,
Class:table__DARKLUA_TYPE_c?
}

type Region__DARKLUA_TYPE_Q={
Scroll:boolean?
}

type Indent__DARKLUA_TYPE_R={
Offset:number?
}

type BulletText__DARKLUA_TYPE_S={
Padding:number,
Icon:(string|number)?,
Rows:{
[number]:string?
}
}

type Bullet__DARKLUA_TYPE_T={
Padding:number?
}

type Row__DARKLUA_TYPE_U={
Spacing:number?,
Expanded:boolean?,
HorizontalFlex:Enum.UIFlexAlignmen?,
VerticalFlex:Enum.UIFlexAlignmen?,
Expand:(Row__DARKLUA_TYPE_U)->Row__DARKLUA_TYPE_U
}

type SliderIntFlags__DARKLUA_TYPE_V={
Value:number?,
Format:string?,
Label:string?,
Progress:boolean?,
NoGrab:boolean?,
Minimum:number,
Maximum:number,
NoAnimation:boolean?,
Callback:(number)->any?,
ReadOnly:boolean?,
SetValue:(SliderInt,Value:number,IsSlider:boolean?)->SliderInt?,
SetDisabled:(SliderInt,Disabled:boolean)->SliderInt,
MakeProgress:(SliderInt)->nil?
}

type SliderEnumFlags__DARKLUA_TYPE_W={
Items:{
[number]:any
},
Label:string,
Value:number
}&SliderIntFlags__DARKLUA_TYPE_V

type DragIntFlags__DARKLUA_TYPE_X={
Format:string?,
Label:string?,
Callback:(DragIntFlags__DARKLUA_TYPE_X,number)->any,
Minimum:number?,
Maximum:number?,
Value:number?,
ReadOnly:boolean?,

SetValue:(DragIntFlags__DARKLUA_TYPE_X,number)->DragIntFlags__DARKLUA_TYPE_X
}

type InputColor3Flags__DARKLUA_TYPE_Y={
Label:string?,
Value:Color3?,
Callback:(InputColor3Flags__DARKLUA_TYPE_Y,Value:Color3)->any,

ValueChanged:(InputColor3Flags__DARKLUA_TYPE_Y)->nil,
SetValue:(InputColor3Flags__DARKLUA_TYPE_Y,Value:Color3)->InputColor3Flags__DARKLUA_TYPE_Y
}

type InputCFrameFlags__DARKLUA_TYPE_Z={
Label:string?,
Value:CFrame?,
Callback:(InputCFrameFlags__DARKLUA_TYPE_Z,Value:CFrame)->any,

ValueChanged:(InputCFrameFlags__DARKLUA_TYPE_Z)->nil,
SetValue:(InputCFrameFlags__DARKLUA_TYPE_Z,Value:CFrame)->InputCFrameFlags__DARKLUA_TYPE_Z
}

type ProgressBar__DARKLUA_TYPE__={
SetPercentage:(ProgressBar__DARKLUA_TYPE__,Value:number)->nil
}

type Combo__DARKLUA_TYPE_0={
Label:string?,
Placeholder:string?,
Callback:((Combo__DARKLUA_TYPE_0,Value:any)->any)?,
Items:{[(number?)]:any}?,
GetItems:(()->table__DARKLUA_TYPE_c)?
}

type TitleBarCanvas__DARKLUA_TYPE_1={
Right:table__DARKLUA_TYPE_c,
Left:table__DARKLUA_TYPE_c
}

type WindowFlags__DARKLUA_TYPE_2={
AutoSize:string?,
CloseCallback:(Window)->boolean?,
Collapsed:boolean?,
IsDragging:boolean?,
MinSize:Vector2?,
Theme:any?,
Title:string?,
NoTabs:boolean?,
NoMove:boolean?,
NoResize:boolean?,
NoTitleBar:boolean?,
NoClose:boolean?,
NoCollapse:boolean?,
NoScrollBar:boolean?,
NoSelectEffect:boolean?,
NoFocusOnAppearing:boolean?,
NoDefaultTitleBarButtons:boolean?,
NoWindowRegistor:boolean?,
OpenOnDoubleClick:boolean?,
SetTheme:(Window,ThemeName:string)->Window,
SetTitle:(Window,Title:string)->Window,
UpdateConfig:(Window,Config:table__DARKLUA_TYPE_c)->Window,
SetCollapsed:(Window,Collapsed:boolean,NoAnimation:boolean?)->Window,
SetCollapsible:(Window,Collapsible:boolean)->Window,
SetFocused:(Window,Focused:boolean)->Window,
Center:(Window)->Window,
SetVisible:(Window,Visible:boolean)->Window,
TagElements:(Window,Objects:{
[GuiObject]:string
})->nil,
Close:(Window)->nil
}

type TabsWindowFlags__DARKLUA_TYPE_3={
AutoSelectNewTabs:boolean?
}&WindowFlags__DARKLUA_TYPE_2

type PopupCanvas__DARKLUA_TYPE_4={
Scroll:boolean?,
AutoClose:boolean?,
RelativeTo:GuiObject,
MaxSizeY:number?,
MinSizeX:number?,
MaxSizeX:number?,

UpdateScale:(PopupCanvas__DARKLUA_TYPE_4)->nil,
UpdatePosition:(PopupCanvas__DARKLUA_TYPE_4)->nil,
ClosePopup:(PopupCanvas__DARKLUA_TYPE_4)->nil,
SetPopupVisible:(PopupCanvas__DARKLUA_TYPE_4,Visible:boolean)->nil
}local a a={cache={}, load=function(b)if not a.cache[b]then a.cache[b]={c=a[b]()}end return a.cache[b].c end}do function a.a()

local b={}

function b.Export(c)
local d={}

for e,f in pairs(c)do
if typeof(f)=="Instance"or type(f)=="table"then
local g,h=pcall(function()
return f.Value
end)

if g and h~=nil then
d[e]=h
end
end
end

return d
end

function b.Import(c,d)
for e,f in pairs(d)do
local g=c[e]

if g and g.Value~=nil then
local h=pcall(function()
g:SetValue(f)
end)

if not h then
warn(`Failed to import value for flag "{e}"`)
end
end
end
end

function b.Reset(c)
for d in pairs(c)do
c[d]=nil
end
end

return b end function a.b()
















local b={

Version="1.4.4",
Author="Depso",
License="MIT",
Repository="https://github.com/depthso/Dear-ReGui/",


Debug=false,
PrefabsId=71968920594655,
DefaultTitle="ReGui",
ContainerName="ReGui",
DoubleClickThreshold=0.3,
TooltipOffset=15,
IniToSave={
"Value"
},
ClassIgnored={
"Visible"
},


Container=nil,
Prefabs=nil,
FocusedWindow=nil,


ThemeConfigs={},
Elements={},
Signaling={},
Animation={
DefaultTweenInfo=TweenInfo.new(0.08),
},


_FlagCache={},
_ErrorCache={},
Windows={},
ActiveTooltips={},
IniSettings={},
AnimationConnections={}
}

b.Icons={
Dot="rbxasset://textures/whiteCircle.png",
Arrow="rbxasset://textures/DeveloperFramework/button_arrow_right.png",
Close="rbxasset://textures/AnimationEditor/icon_close.png",
Checkmark="rbxasset://textures/AnimationEditor/icon_checkmark.png",
Cat="rbxassetid://16211812161",
Script="rbxassetid://11570895459",
Settings="rbxassetid://9743465390",
Info="rbxassetid://18754976792",
Move="rbxassetid://6710235139",
Roblox="rbxassetid://7414445494",
Warning="rbxassetid://11745872910",
Audio="rbxassetid://302250236",
Shop="rbxassetid://6473525198",
CharacterDance="rbxassetid://11932783331",
Pants="rbxassetid://10098755331",
Home="rbxassetid://4034483344",
Robux="rbxassetid://5986143282",
Badge="rbxassetid://16170504068",
SpawnLocation="rbxassetid://6400507398",
Sword="rbxassetid://7485051715",
Clover="rbxassetid://11999300014",
Star="rbxassetid://3057073083",
Code="rbxassetid://11348555035",
Paw="rbxassetid://13001190533",
Shield="rbxassetid://7461510428",
Shield2="rbxassetid://7169354142",
File="rbxassetid://7276823330",
Book="rbxassetid://16061686835",
Location="rbxassetid://13549782519",
Puzzle="rbxassetid://8898417863",
Discord="rbxassetid://84828491431270",
Premium="rbxassetid://6487178625",
Friend="rbxassetid://10885655986",
User="rbxassetid://18854794412",
Duplicate="rbxassetid://11833749507",
ChatBox="rbxassetid://15839118471",
ChatBox2="rbxassetid://15839116089",
Devices="rbxassetid://4458812712",
Weight="rbxassetid://9855685269",
Image="rbxassetid://123311808092347",
Profile="rbxassetid://13585614795",
Admin="rbxassetid://11656483170",
PaintBrush="rbxassetid://12111879608",
Speed="rbxassetid://12641434961",
NoConnection="rbxassetid://9795340967",
Connection="rbxassetid://119759670842477",
Globe="rbxassetid://18870359747",
Box="rbxassetid://140217940575618",
Crown="rbxassetid://18826490498",
Control="rbxassetid://18979524646",
Send="rbxassetid://18940312887",
FastForward="rbxassetid://112963221295680",
Pause="rbxassetid://109949100737970",
Reload="rbxassetid://11570018242",
Joystick="rbxassetid://18749336354",
Controller="rbxassetid://11894535915",
Lock="rbxassetid://17783082088",
Calculator="rbxassetid://85861816563977",
Sun="rbxassetid://13492317832",
Moon="rbxassetid://8498174594",
Prohibited="rbxassetid://5248916036",
Flag="rbxassetid://251346532",
Website="rbxassetid://98455290625865",
Telegram="rbxassetid://115860270107061",
MusicNote="rbxassetid://18187351229",
Music="rbxassetid://253830398",
Headphones="rbxassetid://1311321471",
Phone="rbxassetid://8411963035",
Smartphone="rbxassetid://14040313879",
Desktop="rbxassetid://3120635703",
Desktop2="rbxassetid://4728059490",
Laptop="rbxassetid://4728059725",
Server="rbxassetid://9692125126",
Wedge="rbxassetid://9086583059",
Drill="rbxassetid://11959189471",
Character="rbxassetid://13285102351",
}

b.DynamicImages={
[b.Icons.Arrow]="ImageFollowsText",
[b.Icons.Close]="ImageFollowsText",
[b.Icons.Dot]="ImageFollowsText",
}

b.Accent={

Light=Color3.fromRGB(50,150,250),
Dark=Color3.fromRGB(30,66,115),
ExtraDark=Color3.fromRGB(28,39,53),
White=Color3.fromRGB(240,240,240),
Gray=Color3.fromRGB(172,171,175),
Black=Color3.fromRGB(15,19,24),
Yellow=Color3.fromRGB(230,180,0),
Orange=Color3.fromRGB(230,150,0),
Green=Color3.fromRGB(130,188,91),
Red=Color3.fromRGB(255,69,69),


ImGui={
Light=Color3.fromRGB(66,150,250),
Dark=Color3.fromRGB(41,74,122),
Black=Color3.fromRGB(15,15,15),
Gray=Color3.fromRGB(36,36,36)
}
}





local c=b.ThemeConfigs
c.DarkTheme={
Values={
AnimationTweenInfo=TweenInfo.new(0.08),
TextFont=Font.fromEnum(Enum.Font.RobotoMono),
TextSize=14,
Text=b.Accent.White,
TextDisabled=b.Accent.Gray,
ErrorText=b.Accent.Red,

FrameBg=b.Accent.Dark,
FrameBgTransparency=0.4,
FrameBgActive=b.Accent.Light,
FrameBgTransparencyActive=0.4,
FrameRounding=UDim.new(0,0),


SliderGrab=b.Accent.Light,
ButtonsBg=b.Accent.Light,
CollapsingHeaderBg=b.Accent.Light,
CollapsingHeaderText=b.Accent.White,
CheckMark=b.Accent.Light,
ResizeGrab=b.Accent.Light,
HeaderBg=b.Accent.Gray,
HeaderBgTransparency=0.7,
HistogramBar=b.Accent.Yellow,
ProgressBar=b.Accent.Yellow,
RegionBg=b.Accent.Dark,
RegionBgTransparency=0.1,
Separator=b.Accent.Gray,
SeparatorTransparency=0.5,
ConsoleLineNumbers=b.Accent.White,
LabelPaddingTop=UDim.new(0,0),
LabelPaddingBottom=UDim.new(0,0),
MenuBar=b.Accent.ExtraDark,
MenuBarTransparency=0.1,
PopupCanvas=b.Accent.Black,


TabTextPaddingTop=UDim.new(0,3),
TabTextPaddingBottom=UDim.new(0,8),
TabText=b.Accent.Gray,
TabBg=b.Accent.Dark,
TabTextActive=b.Accent.White,
TabBgActive=b.Accent.Light,
TabsBarBg=Color3.fromRGB(36,36,36),
TabsBarBgTransparency=1,
TabPagePadding=UDim.new(0,8),


ModalWindowDimBg=Color3.fromRGB(230,230,230),
ModalWindowDimTweenInfo=TweenInfo.new(0.2),

WindowBg=b.Accent.Black,
WindowBgTransparency=0.05,

Border=b.Accent.Gray,
BorderTransparency=0.8,
BorderTransparencyActive=0.5,

Title=b.Accent.White,
TitleAlign=Enum.TextXAlignment.Left,
TitleBarBg=b.Accent.Black,
TitleBarTransparency=0,
TitleActive=b.Accent.White,
TitleBarBgActive=b.Accent.Dark,
TitleBarTransparencyActive=0.05,
TitleBarBgCollapsed=Color3.fromRGB(0,0,0),
TitleBarTransparencyCollapsed=0.6,
}
}
c.LightTheme={
BaseTheme=c.DarkTheme,
Values={
Text=b.Accent.Black,
TextFont=Font.fromEnum(Enum.Font.Ubuntu),
TextSize=14,

FrameBg=b.Accent.Gray,
FrameBgTransparency=0.4,
FrameBgActive=b.Accent.Light,
FrameBgTransparencyActive=0.6,

SliderGrab=b.Accent.Light,
ButtonsBg=b.Accent.Light,
CollapsingHeaderText=b.Accent.Black,
Separator=b.Accent.Black,
ConsoleLineNumbers=b.Accent.Yellow,
MenuBar=Color3.fromRGB(219,219,219),
PopupCanvas=b.Accent.White,

TabText=b.Accent.Black,
TabTextActive=b.Accent.Black,

WindowBg=b.Accent.White,
Border=b.Accent.Gray,
ResizeGrab=b.Accent.Gray,

Title=b.Accent.Black,
TitleAlign=Enum.TextXAlignment.Center,
TitleBarBg=b.Accent.Gray,
TitleActive=b.Accent.Black,
TitleBarBgActive=Color3.fromRGB(186,186,186),
TitleBarBgCollapsed=b.Accent.Gray
}
}
c.ImGui={
BaseTheme=c.DarkTheme,
Values={
AnimationTweenInfo=TweenInfo.new(0),
Text=Color3.fromRGB(255,255,255),

FrameBg=b.Accent.ImGui.Dark,
FrameBgTransparency=0.4,
FrameBgActive=b.Accent.ImGui.Light,
FrameBgTransparencyActive=0.5,
FrameRounding=UDim.new(0,0),

ButtonsBg=b.Accent.ImGui.Light,
CollapsingHeaderBg=b.Accent.ImGui.Light,
CollapsingHeaderText=b.Accent.White,
CheckMark=b.Accent.ImGui.Light,
ResizeGrab=b.Accent.ImGui.Light,
MenuBar=b.Accent.ImGui.Gray,
MenuBarTransparency=0,
PopupCanvas=b.Accent.ImGui.Black,

TabText=b.Accent.Gray,
TabBg=b.Accent.ImGui.Dark,
TabTextActive=b.Accent.White,
TabBgActive=b.Accent.ImGui.Light,

WindowBg=b.Accent.ImGui.Black,
WindowBgTransparency=0.05,
Border=b.Accent.Gray,
BorderTransparency=0.7,
BorderTransparencyActive=0.4,

Title=b.Accent.White,
TitleBarBg=b.Accent.ImGui.Black,
TitleBarTransparency=0,
TitleBarBgActive=b.Accent.ImGui.Dark,
TitleBarTransparencyActive=0,
}
}

b.ElementColors={MenuBar=
{
BackgroundColor3="MenuBar",
BackgroundTransparency="MenuBarTransparency",
},FrameRounding=
{
CornerRadius="FrameRounding"
},PopupCanvas=
{
BackgroundColor3="PopupCanvas"
},ModalWindowDim=
{
BackgroundColor3="ModalWindowDimBg"
},Selectable=
"Button",MenuButton=
"Button",Separator=
{
BackgroundColor3="Separator",
BackgroundTransparency="SeparatorTransparency",
},Region=
{
BackgroundColor3="RegionBg",
BackgroundTransparency="RegionBgTransparency",
},Label=
{
TextColor3="Text",
FontFace="TextFont",
TextSize="TextSize",
},ImageFollowsText=
{
ImageColor3="Text",
},ConsoleLineNumbers=
{
TextColor3="ConsoleLineNumbers",
FontFace="TextFont",
TextSize="TextSize",
},ConsoleText=
"Label",LabelDisabled=
{
TextColor3="TextDisabled",
FontFace="TextFont",
TextSize="TextSize",
},Plot=
{
BackgroundColor3="HistogramBar",
},Header=
{
BackgroundColor3="HeaderBg",
BackgroundTransparency="HeaderBgTransparency",
},WindowTitle=
{
TextXAlignment="TitleAlign",
FontFace="TextFont",
TextSize="TextSize",
},TitleBar=
{
BackgroundColor3="TitleBarBgActive"
},Window=
{
BackgroundColor3="WindowBg",
BackgroundTransparency="WindowBgTransparency"
},TitleBarBgCollapsed=
{
BackgroundColor3="TitleBarBgCollapsed",
BackgroundTransparency="TitleBarTransparencyCollapsed"
},TitleBarBgActive=
{
BackgroundColor3="TitleBarBgActive",
BackgroundTransparency="TitleBarTransparencyActive"
},TitleBarBg=
{
BackgroundColor3="TitleBarBg",
BackgroundTransparency="TitleBarTransparency"
},TabsBar=
{
BackgroundColor3="TabsBarBg",
BackgroundTransparency="TabsBarBgTransparency",
},Border=
{
Color="Border",
Transparency="BorderTransparency"
},ResizeGrab=
{
TextColor3="ResizeGrab"
},BorderActive=
{
Transparency="BorderTransparencyActive"
},Frame=
{
BackgroundColor3="FrameBg",
BackgroundTransparency="FrameBgTransparency",
TextColor3="Text",
FontFace="TextFont",
TextSize="TextSize",
},FrameActive=
{
BackgroundColor3="FrameBgActive",
BackgroundTransparency="FrameBgTransparencyActive"
},SliderGrab=
{
BackgroundColor3="SliderGrab"
},Button=
{
BackgroundColor3="ButtonsBg",
TextColor3="Text",
FontFace="TextFont",
TextSize="TextSize",
},CollapsingHeader=
{
FontFace="TextFont",
TextSize="TextSize",
TextColor3="CollapsingHeaderText",
BackgroundColor3="CollapsingHeaderBg",
},Checkbox=
{
BackgroundColor3="FrameBg",
},CheckMark=
{
ImageColor3="CheckMark",
BackgroundColor3="CheckMark",
},RadioButton=
{
BackgroundColor3="ButtonsBg",
}
}

b.Styles={
RadioButton={
Animation="RadioButtons",
CornerRadius=UDim.new(1,0),
},
Button={
Animation="Buttons"
},
CollapsingHeader={
Animation="Buttons"
},
TreeNode={
Animation="TransparentButtons"
},
TransparentButton={
Animation="TransparentButtons"
}
}

b.Animations={Invisible=
{
Connections={
MouseEnter={
Visible=true,
},
MouseLeave={
Visible=false,
}
},
Init="MouseLeave"
},Buttons=
{
Connections={
MouseEnter={
BackgroundTransparency=0.3,
},
MouseLeave={
BackgroundTransparency=0.7,
}
},
Init="MouseLeave"
},TextButtons=
{
Connections={
MouseEnter={
TextTransparency=0.3,
},
MouseLeave={
TextTransparency=0.7,
}
},
Init="MouseLeave"
},TransparentButtons=
{
Connections={
MouseEnter={
BackgroundTransparency=0.3,
},
MouseLeave={
BackgroundTransparency=1,
}
},
Init="MouseLeave"
},RadioButtons=
{
Connections={
MouseEnter={
BackgroundTransparency=0.5,
},
MouseLeave={
BackgroundTransparency=1,
}
},
Init="MouseLeave"
},Inputs=
{
Connections={
MouseEnter={
BackgroundTransparency=0,
},
MouseLeave={
BackgroundTransparency=0.5,
},
},
Init="MouseLeave"
},Plots=
{
Connections={
MouseEnter={
BackgroundTransparency=0.3,
},
MouseLeave={
BackgroundTransparency=0,
},
},
Init="MouseLeave"
},Border=
{
Connections={
Selected={
Transparency=0,
Thickness=1
},
Deselected={
Transparency=0.7,
Thickness=1
}
},
Init="Selected"
},
}









b.ElementFlags={
{
Properties={"Center"},
Callback=function<FlagFunc>(d,e,f)
local g=e.Position
b:SetProperties(e,{
Position=UDim2.new(
f:find"X"and 0.5 or g.X.Scale,
g.X.Offset,
f:find"Y"and 0.5 or g.Y.Scale,
g.Y.Offset
),
AnchorPoint=Vector2.new(
f:find"X"and 0.5 or 0,
f:find"Y"and 0.5 or 0
)
})
end,
},
{
Properties={"ElementStyle"},
Callback=function<StyleFunc>(d,e,f)
b:ApplyStyle(e,f)
end,
},
{
Properties={"ColorTag"},
Callback=function<StyleFunc>(d,e,f)
local g=d.Class
local h=d.WindowClass
local i=g.NoAutoTheme


if not h then return end
if i then return end

b:UpdateColors{
Object=e,
Tag=f,
NoAnimation=true,
Theme=h.Theme,
}
end,
},
{
Properties={"Animation"},
Callback=function<StyleFunc>(d,e,f)

local g=d.Class.NoAnimation
if g then return end

b:SetAnimation(e,f)
end,
},
{
Properties={"Image"},
Callback=function<StyleFunc>(d,e,f)
local g=d.WindowClass
e.Image=b:CheckAssetUrl(f)
b:DynamicImageTag(e,f,g)
end,
},
{
Properties={"Icon","IconSize","IconRotation","IconPadding"},
Callback=function<StyleFunc>(d,e,f)

local g=e:FindFirstChild("Icon",true)
if not g then
return b:Warn("No icon for",e)
end


local h=d.Class
b:CheckConfig(h,{
Icon="",
IconSize=UDim2.fromScale(1,1),
IconRotation=0,
IconPadding=UDim2.new(0,2)
})


local i=g.Parent:FindFirstChild"UIPadding"
b:SetPadding(i,h.IconPadding)


local j=h.Icon
j=b:CheckAssetUrl(j)


local k=d.WindowClass
b:DynamicImageTag(g,j,k)
b:SetProperties(g,{
Visible=g~="",
Image=b:CheckAssetUrl(j),
Size=h.IconSize,
Rotation=h.IconRotation
})
end,
},
{
Properties={"BorderThickness","Border","BorderColor"},
Callback=function<StyleFunc>(d,e,f)
local g=d.Class local h=
d.WindowClass
local i=g.Border==true

b:CheckConfig(g,{
BorderTransparency=d:GetThemeKey"BorderTransparencyActive",
BorderColor=d:GetThemeKey"Border",
BorderThickness=1,
BorderStrokeMode=Enum.ApplyStrokeMode.Border,
})


local j=b:GetChildOfClass(e,"UIStroke")
b:SetProperties(j,{
Transparency=g.BorderTransparency,
Thickness=g.BorderThickness,
Color=g.BorderColor,
ApplyStrokeMode=g.BorderStrokeMode,
Enabled=i
})
end,
},
{
Properties={"Ratio"},
Callback=function<StyleFunc>(d,e,f)
local g=d.Class

b:CheckConfig(g,{
Ratio=1.3333333333333333,
RatioAxis=Enum.DominantAxis.Height,
RatioAspectType=Enum.AspectType.ScaleWithParentSize
})


local h=g.Ratio
local i=g.RatioAxis
local j=g.RatioAspectType

local k=b:GetChildOfClass(e,"UIAspectRatioConstraint")
b:SetProperties(k,{
DominantAxis=i,
AspectType=j,
AspectRatio=h
})
end,
},
{
Properties={"FlexMode"},
Callback=function<StyleFunc>(d,e,f)
local g=b:GetChildOfClass(e,"UIFlexItem")
g.FlexMode=f
end,
},
{

Properties={"CornerRadius"},
Callback=function<StyleFunc>(d,e,f)
local g=b:GetChildOfClass(e,"UICorner")
g.CornerRadius=f
end,
},
{
Properties={"Fill"},
Callback=function<StyleFunc>(d,e,f)
if f~=true then return end

local g=d.Class

b:CheckConfig(g,{
Size=UDim2.fromScale(1,1),
UIFlexMode=Enum.UIFlexMode.Fill,
AutomaticSize=Enum.AutomaticSize.None
})


local h=b:GetChildOfClass(e,"UIFlexItem")
h.FlexMode=g.UIFlexMode

e.Size=g.Size
e.AutomaticSize=g.AutomaticSize
end,
},
{
Properties={"Label"},
Callback=function<StyleFunc>(d,e,f)
local g=e:FindFirstChild"Label"
if not g then return end

local h=d.Class
function h.SetLabel(i,j)
g.Text=j
return i
end

g.Text=tostring(f)
end,
},
{
Properties={"NoGradient"},
WindowProperties={"NoGradients"},
Callback=function<StyleFunc>(d,e,f)
local g=e:FindFirstChildOfClass"UIGradient"
if not g then return end

g.Enabled=f
end,
},
{
Properties={
"UiPadding",
"PaddingBottom",
"PaddingTop",
"PaddingRight",
"PaddingTop"
},
Callback=function<StyleFunc>(d,e,f)
f=f or 0


if typeof(f)=="number"then
f=UDim.new(0,f)
end

local g=d.Class

local h=g.UiPadding
if h then
b:CheckConfig(g,{
PaddingBottom=f,
PaddingLeft=f,
PaddingRight=f,
PaddingTop=f,
})
end

local i=b:GetChildOfClass(e,"UIPadding")
b:SetProperties(i,{
PaddingBottom=g.PaddingBottom,
PaddingLeft=g.PaddingLeft,
PaddingRight=g.PaddingRight,
PaddingTop=g.PaddingTop,
})
end,
},
{
Properties={"Callback"},
Callback=function<StyleFunc>(d,e)
local f=d.Class

function f.SetCallback(g,h)
g.Callback=h
return g
end
function f.FireCallback(g,h)
g.Callback(e)
return g
end
end,
},
{
Properties={"Value"},
Callback=function<StyleFunc>(d,e)
local f=d.Class
b:CheckConfig(f,{
GetValue=function(g)
return f.Value
end,
})
end,
}
}












local d=function()end
local e=get_hidden_gui or gethui
local f=cloneref or function(f):Instance
return f
end


local g=setmetatable({},{
__index=function(g,h:string)
local i=game:GetService(h)
return f(i)
end,
})



local h=game:GetService"HttpService"
local i:Players=g.Players
local j=g.CoreGui
local k=g.UserInputService
local l=g.TweenService
local m=g.RunService


local n=i.LocalPlayer
b.PlayerGui=n.PlayerGui
b.Mouse=n:GetMouse()


local o=b.Animation








function o.Tween(p,q:AnimationTween__DARKLUA_TYPE_f):Tween?
local r=p.DefaultTweenInfo


local s=q.Object
local t=q.NoAnimation
local u=q.Tweeninfo or r
local v=q.EndProperties
local w=q.StartProperties
local x=q.Completed


if w then
b:SetProperties(s,w)
end


if t then
b:SetProperties(s,v)


if x then
x()
end
return
end


local y
for z,A in next,v do
local B={
[z]=A
}


local C,D=pcall(function()
return l:Create(s,u,B)
end)


if not C then
b:SetProperties(s,B)
continue
end


if not y then
y=D
end

D:Play()
end


if x then
if y then
y.Completed:Connect(x)
else
x()
end
end

return y
end







function o.Animate(p,q:Animate__DARKLUA_TYPE_g):Tween
local r=q.NoAnimation
local s=q.Objects
local t=q.Tweeninfo
local u=q.Completed

local v


for w,x in next,s do
local y=p:Tween{
NoAnimation=r,
Object=w,
Tweeninfo=t,
EndProperties=x
}

if not v then
v=y
end
end


if u then
v.Completed:Connect(u)
end

return v
end











function o.HeaderCollapseToggle(p,q:HeaderCollapseToggle__DARKLUA_TYPE_h)

b:CheckConfig(q,{
Rotations={
Open=90,
Closed=0
}
})


local r=q.Toggle
local s=q.NoAnimation
local t=q.Rotations
local u=q.Collapsed
local v=q.Tweeninfo

local w=u and t.Closed or t.Open


p:Tween{
Tweeninfo=v,
NoAnimation=s,
Object=r,
EndProperties={
Rotation=w,
}
}
end

















function o.HeaderCollapse(p,q:HeaderCollapse__DARKLUA_TYPE_i):Tween

local r=q.Tweeninfo
local s=q.Collapsed
local t=q.ClosedSize
local u:UDim2=q.OpenSize
local v=q.Toggle
local w=q.Resize
local x=q.Hide
local y=q.NoAnimation
local z=q.NoAutomaticSize
local A=q.IconRotations
local B=q.Completed


if not z then
w.AutomaticSize=Enum.AutomaticSize.None
end
if not s then
x.Visible=true
end


p:HeaderCollapseToggle{
Tweeninfo=r,
Collapsed=s,
NoAnimation=y,
Toggle=v,
Rotations=A
}

local C=p:Tween{
Tweeninfo=r,
NoAnimation=y,
Object=w,
StartProperties={
Size=s and u or t
},
EndProperties={
Size=s and t or u
},
Completed=function()
x.Visible=not s


if B then
B()
end


if s then return end
if z then return end


w.Size=UDim2.fromScale(1,0)
w.AutomaticSize=Enum.AutomaticSize.Y
end,
}

return C
end












local p=b.Signaling

local q:SignalClass__DARKLUA_TYPE_j={}
q.__index=q

function q.Fire(r,...)
local s=r:GetConnections()
if#s<=0 then return end

for t,u in next,s do
u(...)
end
end
function q.GetConnections(r):table__DARKLUA_TYPE_c
local s=r.Connections
return s
end
function q.Connect(r,s:(...any)->nil)
local t=r:GetConnections()
table.insert(t,s)
end
function q.DisconnectConnections(r)
local s=r:GetConnections()
table.clear(s)
end

function p.NewSignal(r):SignalClass__DARKLUA_TYPE_j
return NewClass(q,{
Connections={}
})
end

function GetAndRemove(r:string,s:table__DARKLUA_TYPE_c)
local t=s[r]
if t then
s[r]=nil
end
return t
end

function MoveTableItem(r:table__DARKLUA_TYPE_c,s,t:number)
local u=table.find(r,s)
if not u then return end

local v=table.remove(r,u)
table.insert(r,t,v)
end

function Merge(r,s)
for t,u in next,s do
r[t]=u
end
end

function Copy(r:table__DARKLUA_TYPE_c,s:table__DARKLUA_TYPE_c?)
local t=table.clone(r)


if s then
Merge(t,s)
end

return t
end





































function NewClass(r,s)
s=s or{}
r.__index=r
return setmetatable(s,r)
end

function b.Warn(r,...:string?)
warn("[ReGui]::",...)
end

function b.Error(r,...:string?)
local s=b:Concat({...}," ")
local t=`\n[ReGui]:: {s}`
coroutine.wrap(error)(t)
end

function b.IsDoubleClick(r,s:number):boolean
local t=r.DoubleClickThreshold
return s<t
end

function b.StyleContainers(r)
local s=r.Container
local t=s.Overlays
local u=s.Windows

r:SetProperties(u,{
OnTopOfCoreBlur=true
})
r:SetProperties(t,{
OnTopOfCoreBlur=true
})
end

function b.Init(r,s)
s=s or{}


if r.Initialised then return end


Merge(r,s)
Merge(r,{
Initialised=true,
HasGamepad=r:IsConsoleDevice(),
HasTouchScreen=r:IsMobileDevice(),
})


r:CheckConfig(r,{
ContainerParent=function()
return r:ResolveUIParent()
end,
Prefabs=function()
return r:LoadPrefabs()
end,
},true)


r:CheckConfig(r,{
Container=function()
return r:InsertPrefab("Container",{
Parent=r.ContainerParent,
Name=r.ContainerName
})
end,
},true)


local t=r.Container
local u=r.TooltipOffset
local v=r.ActiveTooltips
local w=t.Overlays local x=
t.Windows
local y=0

r:StyleContainers()


r.TooltipsContainer=b.Elements:Overlay{
Parent=w
}


k.InputBegan:Connect(function(z:InputObject)
if not r:IsMouseEvent(z,true)then return end

local A=tick()
local B=A-y
local C=r:IsDoubleClick(B)


y=C and 0 or A


r:UpdateWindowFocuses()
end)

local function InputUpdate()
local z=r.TooltipsContainer
local A=#v>0
z.Visible=A

if not A then return end


local B,C=b:GetMouseLocation()
local D=w.AbsolutePosition

z.Position=UDim2.fromOffset(
B-D.X+u,
C-D.Y+u
)
end


m:BindToRenderStep("ReGui_InputUpdate",Enum.RenderPriority.Input.Value,InputUpdate)
end

function b.GetVersion(r):string
return r.Version
end

function b.IsMobileDevice(r):boolean
return k.TouchEnabled
end

function b.IsConsoleDevice(r):boolean
return k.GamepadEnabled
end

function b.GetScreenSize(r):Vector2
return workspace.CurrentCamera.ViewportSize
end

function b.LoadPrefabs(r):Folder?
local s=r.PlayerGui
local t="ReGui-Prefabs"


local u=script:WaitForChild(t,2)
if u then return u end


local v=s:WaitForChild(t,2)
if v then return v end

return nil
end

function b.ResolveUIParent(r):GuiObject?
local s=r.PlayerGui
local t=r.Debug

local u={
[1]=function()
local u=e()
if u.Parent==j then return end

return u
end,
[2]=function()
return j
end,
[3]=function()
return s
end
}

local v=r:CreateInstance"ScreenGui"


for w,x in next,u do

local y,z=pcall(x)
if not y or not z then continue end


local A=pcall(function()
v.Parent=z
end)
if not A then continue end

if t then
r:Warn(`Step: {w} was chosen as the parent!: {z}`)
end

return z
end


r:Warn"The ReGui container does not have a parent defined"

return nil
end

function b.CheckConfig(r,s:table__DARKLUA_TYPE_c,t:table__DARKLUA_TYPE_c,u:boolean?,v:table__DARKLUA_TYPE_c?)
if not s then return end

for w:string?,x in next,t do
if s[w]~=nil then continue end


if v then
if table.find(v,w)then continue end
end


if u then
x=x()
end


s[w]=x
end

return s
end

function b.CheckAssetUrl(r,s:(string|number)):string

if tonumber(s)then
return`rbxassetid://{s}`
end
return s
end

function b.CreateInstance(r,s,t,u):Instance
local v=Instance.new(s,t)


if u then
local w=u.UsePropertiesList

if not w then
r:SetProperties(v,u)
else
r:ApplyFlags{
Object=v,
Class=u
}
end
end

return v
end

function b.ConnectMouseEvent(r,s:GuiObject,t)
local u=t.Callback
local v=t.DoubleClick
local w=t.OnlyMouseHovering

local x=0
local y

if w then
y=r:DetectHover(w)
end

s.Activated:Connect(function(...)
local z=tick()
local A=z-x


if y and not y.Hovering then return end


if v then
if not b:IsDoubleClick(A)then
x=z
return
end
x=0
end

u(...)
end)
end

function b.GetAnimation(r,s:boolean?)
return s and r.Animation or TweenInfo.new(0)
end

function b.DynamicImageTag(r,s:Instance,t:string,u:table__DARKLUA_TYPE_c)
local v=r.DynamicImages
local w=v[t]

if not w then return end
if not u then return end

u:TagElements{
[s]=w
}
end

function b.GetDictSize(r,s:table__DARKLUA_TYPE_c):number
local t=0
for u,v in s do
t+=1
end
return t
end

function b.RemoveAnimations(r,s:GuiObject)
local t=r:GetAnimationData(s)
local u=t.Connections


for v,w in next,u do
w:Disconnect()
end
end

function b.GetAnimationData(r,s:GuiObject):table__DARKLUA_TYPE_c
local t=r.AnimationConnections
local u=t[s]


if u then return u end

local v={
Connections={}
}

t[s]=v
return v
end

function b.AddAnimationSignal(r,s:GuiObject,t:RBXScriptSignal)
local u=r:GetAnimationData(s)
local v=u.Connections

table.insert(v,t)
end

function b.SetAnimationsEnabled(r,s:boolean)
r.NoAnimations=not s
end

function b.SetAnimation(r,s:GuiObject,t:(string|table__DARKLUA_TYPE_c),u:GuiObject?)
u=u or s

local v=r.Animations
local w=r.HasTouchScreen


local x=t
if typeof(t)~="table"then
x=v[t]
end

assert(x,`No animation data for Class {t}!`)


r:RemoveAnimations(u)


local y=x.Init
local z=x.Connections
local A=x.Tweeninfo
local B=x.NoAnimation


local C=r:GetAnimationData(s)
local D=C.State


local E
local F=true
local G
local H={}


local I={}
function I.Reset(J,K:boolean?)
if not E then return end
E(K)
end
function I.FireSignal(J,K:string,L:boolean?)
H[K](L)
end
function I.Refresh(J,K:boolean?)
if not G then return end
H[G](K)
end
function I.SetEnabled(J,K:boolean)
F=K
end

for J:string,K in next,z do
local function OnSignal(L:boolean?)
L=L==true
G=J


local M=r.NoAnimations
if M then return end


if not F then return end

C.State=J

o:Tween{
NoAnimation=L or B,
Object=s,
Tweeninfo=A,
EndProperties=K
}
end


local L=u[J]


if not w then
local M=L:Connect(OnSignal)
r:AddAnimationSignal(u,M)
end

H[J]=OnSignal


if J==y then
E=OnSignal
end
end

if D then

I:FireSignal(D)
else

I:Reset(true)
end

return I
end

function b.GetChildOfClass(r,s:GuiObject,t:string):GuiObject
local u=s:FindFirstChildOfClass(t)


if not u then
u=r:CreateInstance(t,s)
end

return u
end

function b.SetPadding(r,s:UIPadding,t:UDim)
if not s then return end

r:SetProperties(s,{
PaddingBottom=t,
PaddingLeft=t,
PaddingRight=t,
PaddingTop=t
})
end






function b.ConnectDrag(r,s:GuiObject,t)
r:CheckConfig(t,{
DragStart=d,
DragEnd=d,
DragMovement=d,
OnDragStateChange=d,
})


local u=t.DragStart
local v=t.DragEnd
local w=t.DragMovement
local x=t.OnDragStateChange


local y={
StartAndEnd={
Enum.UserInputType.MouseButton1,
Enum.UserInputType.Touch
},
Movement={
Enum.UserInputType.MouseMovement,
Enum.UserInputType.Touch
}
}

local z=false

local function InputTypeAllowed(A,B:string)
local C=A.UserInputType
return table.find(y[B],C)
end
local function KeyToVector(A):Vector2
local B=A.Position
return Vector2.new(B.X,B.Y)
end
local function SetIsDragging(A:boolean)

r._DraggingDisabled=A

z=A
x(A)
end
local function MakeSignal(A)
local B=A.IsDragging
local C=A.InputType
local D=A.Callback

return function(E)
if A.DraggingRequired~=z then return end
if A.CheckDraggingDisabled and r._DraggingDisabled then return end
if not InputTypeAllowed(E,C)then return end


if A.UpdateState then
SetIsDragging(B)
end

local F=KeyToVector(E)
D(F)
end
end


s.InputBegan:Connect(MakeSignal{
CheckDraggingDisabled=true,
DraggingRequired=false,
UpdateState=true,
IsDragging=true,
InputType="StartAndEnd",
Callback=u,
})
k.InputEnded:Connect(MakeSignal{
DraggingRequired=true,
UpdateState=true,
IsDragging=false,
InputType="StartAndEnd",
Callback=v,
})
k.InputChanged:Connect(MakeSignal{
DraggingRequired=true,
InputType="Movement",
Callback=w,
})
end









function b.MakeDraggable(r,s:MakeDraggableFlags__DARKLUA_TYPE_l)

local t=s.Move
local u=s.Grab
local v=s.OnDragStateChange

local w
local x


local y={}
function y.SetEnabled(z,A:boolean)
local B=s.StateChanged
z.Enabled=A



if B then
B(z)
end
end
function y.CanDrag(z,A):boolean
return z.Enabled
end


local function DragStart(z)
if not y:CanDrag()then return end
local A=s.DragBegin

x=z
A(x)
end

local function DragMovement(z)
if not y:CanDrag()then return end

local A=z-x
local B=s.OnUpdate

B(A)
end


local function PositionBegan(z)
w=t.Position
end
local function UpdatePosition(z:number)
local A=UDim2.new(
w.X.Scale,
w.X.Offset+z.X,
w.Y.Scale,
w.Y.Offset+z.Y
)
s:SetPosition(A)
end
local function SetPosition(z,A:UDim2)

o:Tween{
Object=t,
EndProperties={
Position=A
}
}
end


r:CheckConfig(s,{
Enabled=true,
OnUpdate=UpdatePosition,
SetPosition=SetPosition,
DragBegin=PositionBegan
})


r:ConnectDrag(u,{
DragStart=DragStart,
DragMovement=DragMovement,
OnDragStateChange=v
})


local z=s.Enabled
y:SetEnabled(z)

return y
end








function b.MakeResizable(r,s:MakeResizableFlags__DARKLUA_TYPE_m)
b:CheckConfig(s,{
MinimumSize=Vector2.new(160,90),
MaximumSize=Vector2.new(math.huge,math.huge)
})


local t=s.MaximumSize
local u=s.MinimumSize
local v=s.Resize
local w=s.OnUpdate

local x


local y=b:InsertPrefab("ResizeGrab",{
Parent=v
})

local function StateChanged(z)
y.Visible=z.Enabled
end


local function UpdateSize(z)
local A=x+z


local B=UDim2.fromOffset(
math.clamp(A.X,u.X,t.X),
math.clamp(A.Y,u.Y,t.Y)
)


if w then
w(B)
return
end


o:Tween{
Object=v,
EndProperties={
Size=B
}
}
end
local function ResizeBegin(z)
x=v.AbsoluteSize
end


local z=r:MakeDraggable{
Grab=y,
OnUpdate=UpdateSize,
DragBegin=ResizeBegin,
StateChanged=StateChanged
}

z.Grab=y

return z
end

function b.IsMouseEvent(r,s:InputObject,t:boolean)
local u=s.UserInputType.Name


if t and u:find"Movement"then return end

return u:find"Touch"or u:find"Mouse"
end









function b.DetectHover(r,s:GuiObject,t:DetectHover__DARKLUA_TYPE_n)
t=t or{}
t.Hovering=false


local u=t.OnInput
local v=t.OnHoverChange
local w=t.Anykey
local x=t.MouseMove
local y=t.MouseEnter
local z=t.MouseOnly

local function Update(A,B:boolean?,C:boolean?)

if A and z then
if not b:IsMouseEvent(A,true)then return end
end


if B~=nil then
local D=t.Hovering
t.Hovering=B


if B~=D and v then
v(B)
end
end


if not y and C then return end


if u then
local D=t.Hovering
return u(D,A)
end
end


local A={
s.MouseEnter:Connect(function()
Update(nil,true,true)
end),
s.MouseLeave:Connect(function()
Update(nil,false,true)
end)
}


if w or z then
table.insert(A,k.InputBegan:Connect(function(B)
Update(B)
end))
end


if x then
local B=s.MouseMoved:Connect(function()
Update()
end)
table.insert(A,B)
end

function t.Disconnect(B)
for C,D in next,A do
D:Disconnect()
end
end

return t
end

function b.StackWindows(r)
local s=r.Windows
local t=20

for u,v in next,s do
local w=v.WindowFrame

local x=UDim2.fromOffset(t*u,t*u)

v:Center()
w.Position+=x
end
end

function b.GetElementFlags(r,s:GuiObject):table__DARKLUA_TYPE_c?
local t=r._FlagCache
return t[s]
end









function b.UpdateColors(r,s:UpdateColors__DARKLUA_TYPE_o)

local t=s.Object
local u=s.Tag
local v=s.NoAnimation
local w=s.TagsList
local x=s.Theme
local y=s.Tweeninfo


local z=r.ElementColors local A=
r.ThemeConfigs
local B=r.Debug
local C=r:GetElementFlags(t)

local D=z[u]


if typeof(D)=="string"then
D=z[D]
end

if typeof(u)=="table"then
D=u
elseif w then
w[t]=u
end


if not D then return end


local E={}
for F:string,G:string in next,D do
local H=r:GetThemeKey(x,G)


if C and C[F]then
continue
end


if not H then
if B then
r:Warn(`Color: '{G}' does not exist!`)
end
continue
end

E[F]=H
end


o:Tween{
Tweeninfo=y,
Object=t,
NoAnimation=v,
EndProperties=E
}
end








function b.MultiUpdateColors(r,s:MultiUpdateColorsConfig__DARKLUA_TYPE_p)
local t=s.Objects

for u:GuiObject,v:string?in next,t do
r:UpdateColors{
TagsList=s.TagsList,
Theme=s.Theme,
NoAnimation=not s.Animate,
Tweeninfo=s.Tweeninfo,

Object=u,
Tag=v,
}
end
end

function b.ApplyStyle(r,s:GuiObject,t:string)
local u=r.Styles

local v=u[t]
if not v then return end


r:ApplyFlags{
Object=s,
Class=v
}
end

function b.ClassIgnores(r,s:string):boolean
local t=r.ClassIgnored
local u=table.find(t,s)

return u and true or false
end

function b.MergeMetatables(r,s,t:GuiObject)
local u=r.Debug local v=
r.NewIndexIgnores
local w={}

w.__index=function(x,y:string)
local z=r:ClassIgnores(y)


local A=s[y]
if A~=nil and not z then
return A
end


local B,C=pcall(function()
local B=t[y]
return r:PatchSelf(t,B)
end)

return B and C or nil
end

w.__newindex=function(x,y:string,z)
local B=r:ClassIgnores(y)
local C=typeof(z)=="function"


local D=s[y]~=nil or C
if D and not B then
s[y]=z
return
end


xpcall(function()
t[y]=z
end,function(E)
if u then
r:Warn(`Newindex Error: {t}.{y} = {z}\n{E}`)
end

s[y]=z
end)
end

return setmetatable({},w)
end

function b.Concat(r,s,t:" ")
local u=""
for v,w in next,s do
u..=tostring(w)..(v~=#s and t or"")
end
return u
end

function b.GetValueFromAliases(r,s,t)
for u,v:string in s do
local w=t[v]
if w~=nil then
return w
end
end

return nil
end

function b.RecursiveCall(r,s:GuiObject,t:(GuiObject)->...any)
for u,v in next,s:GetDescendants()do
t(v)
end
end






function b.ApplyFlags(r,s:ApplyFlags__DARKLUA_TYPE_q)
local t=r.ElementFlags


local u=s.Object
local v=s.Class
local w=s.WindowClass

function s.GetThemeKey(x,y:string)
if w then
return w:GetThemeKey(y)
else
return b:GetThemeKey(nil,y)
end
end


r:SetProperties(u,v)


for x,y in next,t do
local z=y.Properties
local B=y.Callback
local C=y.Recursive
local D=y.WindowProperties


local E=r:GetValueFromAliases(z,v)


if w and D and E==nil then
E=r:GetValueFromAliases(D,w)
end

if E==nil then continue end


B(s,u,E)


if C then
r:RecursiveCall(u,function(F)
B(s,F,E)
end)
end
end
end

function b.SetProperties(r,s:Instance,t:table__DARKLUA_TYPE_c)
for u:string,v in next,t do
pcall(function()
s[u]=v
end)
end
end

function b.InsertPrefab(r,s:string,t):GuiObject
local u=r.Prefabs
local v=u.Prefabs

local w=v:WaitForChild(s)
local x=w:Clone()


if t then
local y=t.UsePropertiesList

if not y then
r:SetProperties(x,t)
else
r:ApplyFlags{
Object=x,
Class=t
}
end
end

return x
end

function b.GetContentSize(r,s:GuiObject,t:boolean?):Vector2
local u=s:FindFirstChildOfClass"UIListLayout"
local v=s:FindFirstChildOfClass"UIPadding"
local w=s:FindFirstChildOfClass"UIStroke"

local x:Vector2


if u and not t then
x=u.AbsoluteContentSize
else
x=s.AbsoluteSize
end


if v then
local y=v.PaddingTop.Offset
local z=v.PaddingBottom.Offset
local B=v.PaddingLeft.Offset
local C=v.PaddingRight.Offset

x+=Vector2.new(B+C,y+z)
end

if w then
local y=w.Thickness
x+=Vector2.new(y/2,y/2)
end

return x
end

function b.PatchSelf(r,s,t)

if typeof(t)~="function"then
return t
end

return function(u,...)
return t(s,...)
end
end






function b.MakeCanvas(r,s:MakeCanvas__DARKLUA_TYPE_r)

local t=r.Elements
local u=r.Debug
local v=r.Signaling


local w=s.Element
local x=s.WindowClass
local y=s.Class
local z=s.OnChildChange

local B=v:NewSignal()


if z then
B:Connect(z)
end


if not x and u then
r:Warn(`No WindowClass for {w}`)
r:Warn(s)
end


local C=NewClass(t,{
Class=y,
RawObject=w,
WindowClass=x or false,
OnChildChange=B,
Elements={}
})


local D={
__index=function(D,E:string)

local F=C[E]
if F~=nil then
return r:PatchSelf(C,F)
end


local G=y[E]
if G~=nil then
return r:PatchSelf(y,G)
end


local H=w[E]
return r:PatchSelf(w,H)
end,
__newindex=function(D,E:string,F)
local G=y[E]~=nil


if G then
y[E]=F
else
w[E]=F
end
end,
}

return setmetatable({},D)
end


function b.GetIniData(r,s):table__DARKLUA_TYPE_c
local t=r.IniToSave
local u={}

for v,w in next,t do
u[w]=s[w]
end

return u
end

function b.DumpIni(r,s:boolean?):table__DARKLUA_TYPE_c
local t=r.IniSettings
local u={}

for v,w in next,t do
u[v]=r:GetIniData(w)
end


if s then
return h:JSONEncode(u)
end

return u
end

function b.LoadIniIntoElement(r,s,t:table__DARKLUA_TYPE_c)
local u={Value=
function(u)
s:SetValue(u)
end,
}

for v,w in next,t do

local x=u[v]
if x then
x(w)
continue
end

s[v]=w
end
end

function b.LoadIni(r,s:(table__DARKLUA_TYPE_c|string),t:boolean?)
local u=r.IniSettings
assert(s,"No Ini configuration was passed")


if t then
s=h:JSONDecode(s)
end

for v,w in next,s do
local x=u[v]
r:LoadIniIntoElement(x,w)
end
end

function b.AddIniFlag(r,s:string,t:table__DARKLUA_TYPE_c)
local u=r.IniSettings
u[s]=t
end






function b.OnElementCreate(r,s:OnElementCreateData__DARKLUA_TYPE_s)
local t=r._FlagCache

local u=s.Flags
local v=s.Object
local w=s.Canvas
local x=s.Class

local y=w.WindowClass

local z=u.NoAutoTag
local B=u.NoAutoFlags
local C=u.ColorTag
local D=u.NoStyle
local E=u.IniFlag


t[v]=u


if E then
r:AddIniFlag(E,x)
end


if D then return end


if not z and y then
y:TagElements{
[v]=C
}
end


if y then
y:LoadStylesIntoElement(s)
end

if not B then

r:ApplyFlags{
Object=v,
Class=u,
WindowClass=y
}
end
end

function b.WrapGeneration(r,s,t:table__DARKLUA_TYPE_c)
local u=r._ErrorCache

local v=t.Base
local w=t.IgnoreDefaults

return function(x,y,...)
y=y or{}


r:CheckConfig(y,v)


local z=y.CloneTable


if z then
y=table.clone(y)
end

local B=x.RawObject
local C=x.Elements
local D=x.OnChildChange


r:CheckConfig(y,{
Parent=B,
Name=y.ColorTag
},nil,w)


if x==r then
x=r.Elements
end



local E,F,G=pcall(s,x,y,...)


if E==false then
if B then
if u[B]then return end
u[B]=F
end


if x.Error then
x:Error{
Parent=B,
Text=F
}
end

r:Error("Class:",F)
r:Error(debug.traceback())
end


if G==nil then
G=F
end


if D then
D:Fire(F)
end


if G then
if C then
table.insert(C,G)
end

r:OnElementCreate{
Object=G,
Flags=y,
Class=F,
Canvas=x
}
end

return F,G
end
end

function b.DefineElement(r,s:string,t)
local u=r.Elements
local v=r.ThemeConfigs
local w=r.ElementColors

local x=v.DarkTheme


local y=t.Base
local z=t.Create
local B=t.Export
local C=t.ThemeTags
local D=t.ColorData


r:CheckConfig(y,{
ColorTag=s,
ElementStyle=s
})


if C then
Merge(x,C)
end


if D then
Merge(w,D)
end


local E=r:WrapGeneration(z,t)


if B then
r[s]=E
end


u[s]=E

return E
end

function b.DefineGlobalFlag(r,s)
local t=r.ElementFlags
table.insert(t,s)
end

function b.DefineTheme(r,s:string,t:ThemeData__DARKLUA_TYPE_a)
local u=r.ThemeConfigs


r:CheckConfig(t,{
BaseTheme=u.DarkTheme
})

local v=GetAndRemove("BaseTheme",t)
local w={
BaseTheme=v,
Values=t
}


u[s]=w

return w
end

function b.GetMouseLocation(r):(number,number)
local s=r.Mouse
return s.X,s.Y
end

function b.SetWindowFocusesEnabled(r,s:boolean)
r.WindowFocusesEnabled=s
end

function b.UpdateWindowFocuses(r)
local s=r.Windows
local t=r.WindowFocusesEnabled

if not t then return end


for u,v in s do
local w=v.HoverConnection
if not w then continue end


local x=w.Hovering
if x then
r:SetFocusedWindow(v)
return
end
end

r:SetFocusedWindow(nil)
end

function b.WindowCanFocus(r,s:table__DARKLUA_TYPE_c):boolean
if s.NoSelect then return false end
if s.Collapsed then return false end
if s._SelectDisabled then return false end

return true
end

function b.GetFocusedWindow(r):table__DARKLUA_TYPE_c?
return r.FocusedWindow
end

function b.BringWindowToFront(r,s:table__DARKLUA_TYPE_c)
local t=r.Windows


local u=s.NoBringToFrontOnFocus
if u then return end


MoveTableItem(t,s,1)
end

function b.SetFocusedWindow(r,s:table__DARKLUA_TYPE_c?)
local t=r:GetFocusedWindow()
local u=r.Windows


if t==s then return end
r.FocusedWindow=s


if s then
local v=r:WindowCanFocus(s)
if not v then return end


r:BringWindowToFront(s)
end


local v=#u
for w,x in u do
local y=r:WindowCanFocus(x)
local z=x.WindowFrame


if not y then continue end

v-=1


if v then
z.ZIndex=v
end


local B=x==s
x:SetFocused(B,v)
end
end

function b.SetItemTooltip(r,s:GuiObject,t:(Elements)->...any)local u=
r.Elements
local v=r.TooltipsContainer
local w=r.ActiveTooltips


local x,y=v:Canvas{
Visible=false,
UiPadding=UDim.new()
}


task.spawn(t,x)


b:DetectHover(s,{
MouseMove=true,
MouseEnter=true,
OnHoverChange=function(z:boolean)

if z then
table.insert(w,x)
return
end


local B=table.find(w,x)
table.remove(w,B)
end,
OnInput=function(z:boolean,B)
y.Visible=z
end,
})
end

function b.CheckFlags(r,s,t)
for u:string,v in next,s do
local w=t[u]
if not w then continue end

v(w)
end
end

function b.GetThemeKey(r,s:(string|table__DARKLUA_TYPE_c),t:string)
local u=r.ThemeConfigs


if typeof(s)=="string"then
s=u[s]
end

local v=u.DarkTheme
s=s or v

local w=s.BaseTheme
local x=s.Values


local y=x[t]
if y then return y end


if w then
return r:GetThemeKey(w,t)
end
end

function b.SelectionGroup(r,s)
local t
local u=false

local function ForEach(w,x)
for y,z in next,s do
if typeof(z)=="Instance"then continue end
if z==x then continue end

w(z)
end
end

local function Callback(w)
if u then return end
u=true

local x=t
t=w:GetValue()

if not x then
x=t
end

ForEach(function(y)
y:SetValue(x)
end,w)

u=false
end

ForEach(function(w)
w.Callback=Callback
end)
end


local r=b.Elements
r.__index=r

function r.GetObject(s)
return s.RawObject
end

function r.ApplyFlags(s,t,u)
local w=s.WindowClass

b:ApplyFlags{
WindowClass=w,
Object=t,
Class=u
}
end

function r.Remove(s)
local t=s.OnChildChange
local u=s:GetObject()
local w=s.Class


local x=w.Remove
if x then
return x(w)
end


if t then
t:Fire(w or s)
end

if w then
table.clear(w)
end

u:Destroy()
table.clear(s)
end

function r.GetChildElements(s):table__DARKLUA_TYPE_c
local t=s.Elements
return t
end

function r.ClearChildElements(s)
local t=s:GetChildElements()
for u,w in next,t do
w:Destroy()
end
end

function r.TagElements(s,t:ObjectTable__DARKLUA_TYPE_d)
local u=s.WindowClass
local w=b.Debug


if not u then
if w then
b:Warn("No WindowClass for TagElements:",t)
end
return
end

u:TagElements(t)
end

function r.GetThemeKey(s,t:string)
local u=s.WindowClass

if u then
return u:GetThemeKey(t)
end

return b:GetThemeKey(nil,t)
end

function r.SetColorTags(s,t:ObjectTables,u:boolean?)
local w=s.WindowClass
if not w then return end

local x=w.TagsList
local y=w.Theme

b:MultiUpdateColors{
Animate=u,
Theme=y,
TagsList=x,
Objects=t,
}
end

function r.SetElementFocused(s,t:GuiObject,u)
local w=s.WindowClass
local x=b.HasTouchScreen

local y=u.Focused
local z=u.Animation


b:SetAnimationsEnabled(not y)


if not y and z then
z:Refresh()
end


if not w then return end
if not x then return end
local B=w.ContentCanvas


B.Interactable=not y
end

b:DefineElement("Dropdown",{
Base={
ColorTag="PopupCanvas",
Disabled=false,
AutoClose=true,
OnSelected=d
},
Create=function(s,t)
t.Parent=b.Container.Overlays


local u=t.Selected
local w=t.Items
local x=t.OnSelected


local y,z=s:PopupCanvas(t)
local B=b:MergeMetatables(t,y)

local C={}

local function SetValue(D)
x(D)
end

function t.ClearEntries(D)
for E,F in C do
F:Remove()
end
end

function t.SetItems(D,E:table__DARKLUA_TYPE_c,F)
local G=E[1]


D:ClearEntries()


for H,I in E do
local J=G and I or H
local K=H==F or I==F


local L=y:Selectable{
Text=tostring(J),
Selected=K,
ZIndex=6,
Callback=function()
return SetValue(J)
end,
}

table.insert(C,L)
end
end


if w then
t:SetItems(w,u)
end

return B,z
end,
})

b:DefineElement("OverlayScroll",{
Base={
ElementClass="OverlayScroll",
Spacing=UDim.new(0,4),
},
Create=function(s,t)
local u=s.WindowClass

local w=t.ElementClass
local x=t.Spacing


local y=b:InsertPrefab(w,t)
local z=y:FindFirstChild"ContentFrame"or y
local B=y:FindFirstChild("UIListLayout",true)

B.Padding=x

local C=b:MergeMetatables(s,t)


local D=b:MakeCanvas{
Element=z,
WindowClass=u,
Class=C
}

function t.GetCanvasSize(E)
return z.AbsoluteCanvasSize
end

return D,y
end,
})

b:DefineElement("Overlay",{
Base={
ElementClass="Overlay"
},
Create=r.OverlayScroll,
})





b:DefineElement("Image",{
Base={
Image="",
Callback=d
},
Create=function(s,t:Image__DARKLUA_TYPE_t):ImageButton__DARKLUA_TYPE_x

local u=b:InsertPrefab("Image",t)
u.Activated:Connect(function(...)
local w=t.Callback
return w(u,...)
end)

return u
end,
})





b:DefineElement("VideoPlayer",{
Base={
Video="",
Callback=d
},
Create=function(s,t:VideoPlayer__DARKLUA_TYPE_u):VideoFrame

local u=t.Video
t.Video=b:CheckAssetUrl(u)


local w=b:InsertPrefab("VideoPlayer",t)
return w
end,
})






b:DefineElement("Button",{
Base={
Text="Button",
DoubleClick=false,
Callback=d
},
Create=function(s,t:Button__DARKLUA_TYPE_v):TextButton

local u=b:InsertPrefab("Button",t)

local w=t.DoubleClick


b:ConnectMouseEvent(u,{
DoubleClick=w,
Callback=function(...)
local x=t.Callback
return x(u,...)
end,
})

return u
end,
})







b:DefineElement("Selectable",{
Base={
Text="Selectable",
Callback=d,
Selected=false,
Disabled=false,
Size=UDim2.fromScale(1,0),
AutomaticSize=Enum.AutomaticSize.Y,
TextXAlignment=Enum.TextXAlignment.Left,
AnimationTags={
Selected="Buttons",
Unselected="TransparentButtons"
},
},
Create=function(s,t:Selectable__DARKLUA_TYPE_w):(table__DARKLUA_TYPE_c,TextButton)
local u=s.Class.AfterClick

local w=t.Selected
local x=t.Disabled


local y=b:InsertPrefab("Button",t)
local z=b:MergeMetatables(t,y)

y.Activated:Connect(function(...)

local B=t.Callback
B(y,...)


if u then
u(y,...)
end
end)

function t.SetSelected(B,C:boolean?)
local D=B.AnimationTags
local E=C and D.Selected or D.Unselected

B.Selected=C
b:SetAnimation(y,E)
end

function t.SetDisabled(B,C:boolean?)
B.Disabled=C
y.Interactable=not C
end


t:SetSelected(w)
t:SetDisabled(x)

return z,y
end,
})





b:DefineElement("ImageButton",{
Base={
ElementStyle="Button",
Callback=d
},
Create=r.Image,
})

b:DefineElement("SmallButton",{
Base={
Text="Button",
PaddingTop=UDim.new(),
PaddingBottom=UDim.new(),
PaddingLeft=UDim.new(0,2),
PaddingRight=UDim.new(0,2),
ColorTag="Button",
ElementStyle="Button",
Callback=d,
},
Create=r.Button
})

















b:DefineElement("Keybind",{
Base={
Label="Keybind",
ColorTag="Frame",
Value=nil,
DeleteKey=Enum.KeyCode.Backspace,
IgnoreGameProcessed=true,
Enabled=true,
Disabled=false,
Callback=d,
OnKeybindSet=d,
OnBlacklistedKeybindSet=d,
KeyBlacklist={},
UiPadding=UDim.new(),
AutomaticSize=Enum.AutomaticSize.None,
Size=UDim2.new(0.3,0,0,19)
},
Create=function(s,t:Keybind__DARKLUA_TYPE_z)
local u=t.Value
local w=t.Label
local x=t.Disabled
local y=t.KeyBlacklist


local z=b:InsertPrefab("Button",t)
local B=b:MergeMetatables(t,z)

local C=s:Label{
Parent=z,
Text=w,
Position=UDim2.new(1,4,0.5),
AnchorPoint=Vector2.new(0,0.5)
}

local function Callback(D,...)
return D(z,...)
end

local function KeyIsBlacklisted(D:KeyId__DARKLUA_TYPE_y)
local E=table.find(y,D)
return E
end

function t.SetDisabled(D,E:boolean)
D.Disabled=E
z.Interactable=not E
s:SetColorTags({
[C]=E and"LabelDisabled"or"Label"
},true)
end

function t.SetValue(D,E:KeyId__DARKLUA_TYPE_y)
local F=D.OnKeybindSet
local G=D.DeleteKey


if E==G then
E=nil
end

D.Value=E
z.Text=E and E.Name or"Not set"


Callback(F,E)
end

function t.WaitForNewKey(D)
D._WaitingForNewKey=true
z.Text="..."
z.Interactable=false
end

local function GetKeyId(D:InputObject)
local E=D.KeyCode
local F=D.UserInputType


if F~=Enum.UserInputType.Keyboard then
return F
end

return E
end

local function CheckNewKey(D:InputObject)
local E=t.OnBlacklistedKeybindSet
local F=t.Value

local G=GetKeyId(D)


if not k.WindowFocused then return end


if KeyIsBlacklisted(G)then

Callback(E,G)
return
end

z.Interactable=true
t._WaitingForNewKey=false


if G.Name=="Unknown"then
return t:SetValue(F)
end


t:SetValue(G)
end

local function InputBegan(D:InputObject,E:boolean)
local F=t.IgnoreGameProcessed
local G=t.DeleteKey
local H=t.Enabled
local I=t.Value
local J=t.Callback

local K=GetKeyId(D)


if t._WaitingForNewKey then
CheckNewKey(D)
return
end


if not H and z.Interactable then return end
if not F and E then return end


if not I then return end
if K==G then return end
if K.Name~=I.Name then return end


Callback(J,K)
end


t:SetValue(u)
t:SetDisabled(x)


t.Connection=k.InputBegan:Connect(InputBegan)
z.Activated:Connect(function()
t:WaitForNewKey()
end)

b:SetAnimation(z,"Inputs")

return B,z
end
})

b:DefineElement("ArrowButton",{
Base={
Direction="Left",
ColorTag="Button",
Icon=b.Icons.Arrow,
Size=UDim2.fromOffset(21,21),
IconSize=UDim2.fromScale(1,1),
IconPadding=UDim.new(0,4),
Rotations={
Left=180,
Right=0,
}
},
Create=function(s,t):ScrollingFrame

local u=t.Direction
local w=t.Rotations

local x=w[u]
t.IconRotation=x


local y=b:InsertPrefab("ArrowButton",t)
y.Activated:Connect(function(...)
local z=t.Callback
return z(y,...)
end)

return y
end,
})







b:DefineElement("Label",{
Base={
Font="Inconsolata"
},
ColorData={LabelPadding=
{
PaddingTop="LabelPaddingTop",
PaddingBottom="LabelPaddingBottom"
},
},
Create=function(s,t:Label__DARKLUA_TYPE_A):TextLabel

local u=t.Bold
local w=t.Italic
local x=t.Font
local y=t.FontFace


local z=Enum.FontWeight.Medium
local B=Enum.FontWeight.Bold


local C=Enum.FontStyle.Normal
local D=Enum.FontStyle.Italic

local E=u and B or z
local F=w and D or C
local G=u or w

if not y and G then
t.FontFace=Font.fromName(x,E,F)
end

local H=b:InsertPrefab("Label",t)
local I=H:FindFirstChildOfClass"UIPadding"

s:TagElements{
[I]="LabelPadding",
}


return H
end,
})

b:DefineElement("Error",{
Base={
RichText=true,
TextWrapped=true
},
ColorData={Error=
{
TextColor3="ErrorText",
FontFace="TextFont",
},
},
Create=function(s,t:Label__DARKLUA_TYPE_A)
local u=t.Text
t.Text=`<b>⛔ Error:</b> {u}`

return s:Label(t)
end,
})


local s={
Engaged=false
}
s.__index=s

function s.SetEngaged(t,u:boolean)local w=
t.Object
local x=t.WindowClass

t.Engaged=u


if x then
x:SetCanvasInteractable(not u)
end
end

function s.IsHovering(t):boolean
local u=false


t:Foreach(function(w)
u=w.Popup:IsMouseHovering()
return u
end)

return u
end

function s.Foreach(t,u)
local w=t.Menus
for x,y in next,w do

local z=u(y)
if z then break end
end
end

function s.SetFocusedMenu(t,u)
t:Foreach(function(w)

local x=w==u
w:SetActiveState(x)
end)
end

function s.Close(t)
t:SetEngaged(false)
t:SetFocusedMenu(nil)
end

function s.MenuItem(t,u)
local w=t.Canvas
local x=t.Menus


local y=w:MenuButton(u)
local z=w:PopupCanvas{
RelativeTo=y,
MaxSizeX=210,
Visible=false,
AutoClose=false,
AfterClick=function()
t:Close()
end,
}


local B={
Popup=z,
Button=y
}


b:DetectHover(y,{
MouseEnter=true,
OnInput=function()
if not t.Engaged then return end
t:SetFocusedMenu(B)
end,
})

function B.SetActiveState(C,D:boolean)
z:SetPopupVisible(D)
y:SetSelected(D)
end


y.Activated:Connect(function()
t:SetFocusedMenu(B)
t:SetEngaged(true)
end)


table.insert(x,B)

return z,B
end

b:DefineElement("MenuBar",{
Base={},
Create=function(t,u):Elements
local w=t.WindowClass


local x=b:InsertPrefab("MenuBar",u)


local y=b:MakeCanvas{
Element=x,
WindowClass=w,
Class=u
}


local z=NewClass(s,{
WindowClass=w,
Canvas=y,
Object=x,
Menus={}
})
Merge(z,u)


b:DetectHover(x,{
MouseOnly=true,
OnInput=function()
if not z.Engaged then return end
if z:IsHovering()then return end

z:Close()
end,
})

local B=b:MergeMetatables(z,y)
return B,x
end,
})

b:DefineElement("MenuButton",{
Base={
Text="MenuButton",
PaddingLeft=UDim.new(0,8),
PaddingRight=UDim.new(0,8),
Size=UDim2.fromOffset(0,19),
AutomaticSize=Enum.AutomaticSize.XY
},
Create=r.Selectable
})


local t={
ColorTags={
BGSelected={
[true]="SelectedTab",
[false]="DeselectedTab"
},
LabelSelected={
[true]="SelectedTabLabel",
[false]="DeselectedTabLabel"
},
}
}
function t.SetButtonSelected(u,w:table__DARKLUA_TYPE_c,x:boolean)

if w.IsSelected==x then return end
w.IsSelected=x

local y=u.NoAnimation
local z=u.WindowClass
local B=u.ColorTags


local C=z.Theme
local D=z.TagsList


local E=B.BGSelected
local F=B.LabelSelected

local G=w.TabButton
local H=G.Button
local I=H.Label

b:MultiUpdateColors{
Animate=not y,
Theme=C,
TagsList=D,
Objects={
[H]=E[x],
[I]=F[x],
},
}
end

function t.CompareTabs(u,w,x)
if not w then return false end
return w.MatchBy==x or w==x
end

function t.ForEachTab(u,w:(Tab__DARKLUA_TYPE_B|string),x:(Tab__DARKLUA_TYPE_B,IsMatch:boolean,Index:number)->nil)
local y=typeof(w)=="string"
local z=u.Tabs

for B,C in z do
local D=C.Name
local E=false


if y then
E=D==w
else
E=u:CompareTabs(C,w)
end


x(C,E,B)
end
end

function t.RemoveTab(u,w:(Tab__DARKLUA_TYPE_B|string))
local x=u.OnTabRemove
local y=u.Tabs

u:ForEachTab(w,function(z,B,C)
if not B then return end
local D=z.TabButton
local E=z.OnClosure


table.remove(y,C)
D:Destroy()


x(u,z)
E(z)
end)

return u
end









function t.CreateTab(u,w:Tab__DARKLUA_TYPE_B):Elements
w=w or{}
b:CheckConfig(w,{
Name="Tab",
AutoSize="Y",
Focused=false,
OnClosure=d
})


local x=u.AutoSelectNewTabs
local y=u.WindowClass
local z=u.ParentCanvas
local B=u.Tabs
local C=u.TabsFrame
local D=u.OnTabCreate


local E=w.Focused
local F=w.Name local G=
w.Icon
local H=E or#B<=0 and x


local I=b:InsertPrefab("TabButton",w)
I.Parent=C


local J=I.Button
local K=J:FindFirstChildOfClass"UIPadding"
local L=J.Label
L.Text=tostring(F)

Merge(w,{
TabButton=I
})

local function SetActive()
u:SetActiveTab(w)
end


local M={Closeable=
function()
local M=z:RadioButton{
Parent=J,
Visible=not u.NoClose,
Icon=b.Icons.Close,
IconSize=UDim2.fromOffset(11,11),
LayoutOrder=3,
ZIndex=2,
UsePropertiesList=true,
Callback=function()
u:RemoveTab(w)
end,
}


local N=M.Icon
b:SetAnimation(N,{
Connections={
MouseEnter={
ImageTransparency=0,
},
MouseLeave={
ImageTransparency=1,
}
},
Init="MouseLeave"
},I)
end,
}


J.Activated:Connect(SetActive)


b:CheckFlags(M,w)


table.insert(B,w)


if y then
y:TagElements{
[K]="TabPadding",
}
end


b:SetAnimation(J,"Buttons")
u:SetButtonSelected(w,H)


z:ApplyFlags(I,w)

local N=D(u,w)


if H then
u:SetActiveTab(w)
end

return N or w
end

function t.SetActiveTab(u,w:(table__DARKLUA_TYPE_c|string))local x=

u.Tabs local y=
u.NoAnimation
local z=u.ActiveTab
local B=u.OnActiveTabChange local C=

typeof(w)=="string"
local D


u:ForEachTab(w,function(E,F,G)
if F then
D=E
end
u:SetButtonSelected(E,F)
end)

if not D then return u end
if u:CompareTabs(D,z)then return u end

u.ActiveTab=D


B(u,D,z)

return u
end







b:DefineElement("TabBar",{
Base={
AutoSelectNewTabs=true,
OnActiveTabChange=d,
OnTabCreate=d,
OnTabRemove=d,
},
ColorData={DeselectedTab=
{
BackgroundColor3="TabBg"
},SelectedTab=
{
BackgroundColor3="TabBgActive"
},DeselectedTabLabel=
{
FontFace="TextFont",
TextColor3="TabText",
},SelectedTabLabel=
{
FontFace="TextFont",
TextColor3="TabTextActive",
},TabsBarSeparator=
{
BackgroundColor3="TabBgActive",
},TabPadding=
{
PaddingTop="TabTextPaddingTop",
PaddingBottom="TabTextPaddingBottom"
},TabPagePadding=
{
PaddingBottom="TabPagePadding",
PaddingLeft="TabPagePadding",
PaddingRight="TabPagePadding",
PaddingTop="TabPagePadding",
}
},
Create=function(u,w:TabBar__DARKLUA_TYPE_C)
local z=u.WindowClass


local B=b:InsertPrefab("TabsBar",w)
local C=NewClass(t)

local D=B.Separator
local E=B.TabsFrame


local F=b:MakeCanvas{
Element=E,
WindowClass=z,
Class=C
}


Merge(C,w)
Merge(C,{
ParentCanvas=u,
Object=B,
TabsFrame=E,
WindowClass=z,
Tabs={}
})


u:TagElements{
[B]="TabsBar",
[D]="TabsBarSeparator",
}

local G=b:MergeMetatables(F,B)
return G,B
end,
})





b:DefineElement("TabSelector",{
Base={
NoTabsBar=false,
OnActiveTabChange=d,
OnTabCreate=d,
OnTabRemove=d,
},
Create=function(u,w:TabSelector__DARKLUA_TYPE_D):(TabSelector__DARKLUA_TYPE_D,GuiObject)
local z=u.WindowClass

local B=w.NoTabsBar
local C=w.NoAnimation


local D=b:InsertPrefab("TabSelector",w)

local E=D.Body
local F=E.PageTemplate
F.Visible=false


local function OnTabCreate(G,H,...)
local I=H.AutoSize
local J=H.Name


local K=F:Clone()
local L=b:GetChildOfClass(K,"UIPadding")

b:SetProperties(K,{
Parent=E,
Name=J,
AutomaticSize=Enum.AutomaticSize[I],
Size=UDim2.fromScale(
I=="Y"and 1 or 0,
I=="X"and 1 or 0
)
})


u:TagElements{
[L]="TabPagePadding",
}


local M=b:MakeCanvas{
Element=K,
WindowClass=z,
Class=H
}


w.OnTabCreate(G,H,...)

Merge(H,{
Page=K,
MatchBy=M
})

return M
end
local function OnActiveTabChange(G,H,...)
G:ForEachTab(H,function(I,J,K)
local L=I.Page
L.Visible=J

if not J then return end


local M=u:GetThemeKey"AnimationTweenInfo"
o:Tween{
Object=L,
Tweeninfo=M,
NoAnimation=C,
StartProperties={
Position=UDim2.fromOffset(0,4)
},
EndProperties={
Position=UDim2.fromOffset(0,0)
}
}
end)


w.OnActiveTabChange(G,H,...)
end


local G=u:TabBar{
Parent=D,
Visible=not B,
OnTabCreate=OnTabCreate,
OnActiveTabChange=OnActiveTabChange,
OnTabRemove=function(G,H,...)
H.Page:Remove()
w.OnTabRemove(...)
end,
}

local H=b:MergeMetatables(G,D)
return H,D
end,
})






b:DefineElement("RadioButton",{
Base={
Callback=d,
},
Create=function(u,w:RadioButton__DARKLUA_TYPE_E):GuiButton
local z=b:InsertPrefab("RadioButton",w)
z.Activated:Connect(function(...)
local B=w.Callback
return B(z,...)
end)

return z
end,
})












b:DefineElement("Checkbox",{
Base={
Label="Checkbox",
IsRadio=false,
Value=false,
NoAutoTag=true,
TickedImageSize=UDim2.fromScale(1,1),
UntickedImageSize=UDim2.fromScale(0,0),
Callback=d,
Disabled=false
},
Create=function(u,w:Checkbox__DARKLUA_TYPE_F):Checkbox__DARKLUA_TYPE_F

local z=w.IsRadio
local B=w.Value
local C=w.Label
local D=w.TickedImageSize
local E=w.UntickedImageSize
local F=w.Disabled


local G=b:InsertPrefab("CheckBox",w)
local H=b:MergeMetatables(w,G)

local I=G.Tickbox
local J=I.Tick
J.Image=b.Icons.Checkmark


local K=I:FindFirstChildOfClass"UIPadding"
local L=b:GetChildOfClass(I,"UICorner")


local M=u:Label{
Text=C,
Parent=G,
LayoutOrder=2
}


local N=UDim.new(0,3)
if z then
J.ImageTransparency=1
J.BackgroundTransparency=0
L.CornerRadius=UDim.new(1,0)
else
N=UDim.new(0,2)
end


b:SetProperties(K,{
PaddingBottom=N,
PaddingLeft=N,
PaddingRight=N,
PaddingTop=N,
})


local function Callback(...)
local O=w.Callback
return O(H,...)
end

local function SetStyle(O:boolean,P:boolean)
local Q=u:GetThemeKey"AnimationTweenInfo"


local R=O and D or E
o:Tween{
Object=J,
Tweeninfo=Q,
NoAnimation=P,
EndProperties={
Size=R
}
}
end

function w.SetDisabled(O,P:boolean)
O.Disabled=P
G.Interactable=not P

u:SetColorTags({
[M]=P and"LabelDisabled"or"Label"
},true)
end

function w.SetValue(O,P:boolean,Q:boolean)
O.Value=P


SetStyle(P,Q)


Callback(P)

return O
end

function w.SetTicked(O,...)
b:Warn"Checkbox:SetTicked is deprecated, please use :SetValue"
return O:SetValue(...)
end

function w.Toggle(O)
local P=not O.Value
O.Value=P
O:SetValue(P)

return O
end


local function Clicked()
w:Toggle()
end


G.Activated:Connect(Clicked)
I.Activated:Connect(Clicked)


w:SetValue(B,true)
w:SetDisabled(F)


b:SetAnimation(I,"Buttons",G)
u:TagElements{
[J]="CheckMark",
[I]="Checkbox"
}

return H,G
end,
})

b:DefineElement("Radiobox",{
Base={
IsRadio=true,
CornerRadius=UDim.new(1,0),
},
Create=r.Checkbox,
})



















b:DefineElement("PlotHistogram",{
Base={
ColorTag="Frame",
Label="Histogram"
},
Create=function(u,w:PlotHistogram__DARKLUA_TYPE_G)

local z=w.Label
local B=w.Points


local C=b:InsertPrefab("Histogram",w)
local D=b:MergeMetatables(w,C)

local E=C.Canvas
local F=E.PointTemplate
F.Visible=false

u:Label{
Text=z,
Parent=C,
Position=UDim2.new(1,4)
}


local G
b:SetItemTooltip(C,function(H)
G=H:Label()
end)

Merge(w,{
_Plots={},
_Cache={}
})

function w.GetBaseValues(H):(number,number)
local I=H.Minimum
local J=H.Maximum


if I and J then
return I,J
end

local K=H._Plots

for L,M in K do
local N=M.Value


if not I or N<I then
I=N
end


if not J or N>J then
J=N
end
end

return I,J
end

function w.UpdateGraph(H)
local I=H._Plots

local J,K=H:GetBaseValues()
if not J or not K then return end

local L=K-J


for M,N in I do
local O=N.Point
local P=N.Value

local Q=(P-J)/L
Q=math.clamp(Q,0.05,1)

O.Size=UDim2.fromScale(1,Q)
end

return H
end

function w.Plot(H,I)
local J=H._Plots
local K={}


local L=F:Clone()
local M=L.Bar

b:SetProperties(L,{
Parent=E,
Visible=true
})

local N=b:DetectHover(L,{
MouseEnter=true,
OnInput=function()
K:UpdateTooltip()
end,
})

local O={
Object=L,
Point=M,
Value=I
}

function K.UpdateTooltip(P)
local Q=K:GetPointIndex()
G.Text=`{Q}:	{O.Value}`
end

function K.SetValue(P,Q)
O.Value=Q
w:UpdateGraph()


if N.Hovering then
P:UpdateTooltip()
end
end

function K.GetPointIndex(P):number
return table.find(J,O)
end

function K.Remove(P,Q)
table.remove(J,P:GetPointIndex())
L:Remove()
w:UpdateGraph()
end


table.insert(J,O)


H:UpdateGraph()


b:SetAnimation(M,"Plots",L)
u:TagElements{
[M]="Plot"
}

return K
end

function w.PlotGraph(H,I)
local J=H._Cache


local K=#J-#I
if K>=1 then

for L=1,K do
local M=table.remove(J,L)
if M then
M:Remove()
end
end
end

for L,M in I do

local N=J[L]
if N then
N:SetValue(M)
continue
end


J[L]=H:Plot(M)
end

return H
end


if B then
w:PlotGraph(B)
end

return D,C
end,
})












b:DefineElement("Viewport",{
Base={
IsRadio=true,
},
Create=function(u,w:Viewport__DARKLUA_TYPE_H):Viewport__DARKLUA_TYPE_H

local z=w.Model
local B=w.Camera


local C=b:InsertPrefab("Viewport",w)
local D=b:MergeMetatables(w,C)

local E=C.Viewport
local F=E.WorldModel

if not B then
B=b:CreateInstance("Camera",E)
B.CFrame=CFrame.new(0,0,0)
end

Merge(w,{
Camera=B,
WorldModel=F,
Viewport=E
})

function w.SetCamera(G,H)
G.Camera=H
E.CurrentCamera=H
return G
end

function w.SetModel(G,H:Model,I:CFrame?)
local J=G.Clone

F:ClearAllChildren()


if J then
H=H:Clone()
end

if I then
H:PivotTo(I)
end

H.Parent=F
G.Model=H

return H
end


if z then
w:SetModel(z)
end

w:SetCamera(B)

return D,C
end,
})













b:DefineElement("InputText",{
Base={
Value="",
Placeholder="",
Label="Input text",
Callback=d,
MultiLine=false,
NoAutoTag=true,
Disabled=false
},
Create=function(u,w:InputText__DARKLUA_TYPE_I):InputText__DARKLUA_TYPE_I

local z=w.MultiLine
local B=w.Placeholder
local C=w.Label
local D=w.Disabled
local E=w.Value


local F=b:InsertPrefab("InputBox",w)
local G=F.Frame
local H=G.Input

local I=b:MergeMetatables(w,F)

u:Label{
Parent=F,
Text=C,
AutomaticSize=Enum.AutomaticSize.X,
Size=UDim2.fromOffset(0,19),
Position=UDim2.new(1,4),
LayoutOrder=2
}

b:SetProperties(H,{
PlaceholderText=B,
MultiLine=z
})

local function Callback(...)
local J=w.Callback
J(I,...)
end

function w.SetValue(J,K:string?)
H.Text=tostring(K)
J.Value=K
return J
end

function w.SetDisabled(J,K:boolean)
J.Disabled=K
F.Interactable=not K
u:SetColorTags({
[C]=K and"LabelDisabled"or"Label"
},true)
return J
end

function w.Clear(J)
H.Text=""
return J
end

local function TextChanged()
local J=H.Text
w.Value=J
Callback(J)
end


H:GetPropertyChangedSignal"Text":Connect(TextChanged)


w:SetDisabled(D)
w:SetValue(E)

u:TagElements{
[H]="Frame"
}

return I,F
end,
})















b:DefineElement("InputInt",{
Base={
Value=0,
Increment=1,
Placeholder="",
Label="Input Int",
Callback=d,
},
Create=function(u,w:InputInt__DARKLUA_TYPE_J):InputInt__DARKLUA_TYPE_J

local z=w.Value
local B=w.Placeholder
local C=w.Label
local D=w.Disabled
local E=w.NoButtons


local F=b:InsertPrefab("InputBox",w)
local G=b:MergeMetatables(w,F)

local H=F.Frame
local I=H.Input
I.PlaceholderText=B


local J=u:Button{
Text="-",
Parent=H,
LayoutOrder=2,
Ratio=1,
AutomaticSize=Enum.AutomaticSize.None,
FlexMode=Enum.UIFlexMode.None,
Size=UDim2.fromScale(1,1),
Visible=not E,
Callback=function()
w:Decrease()
end,
}


local K=u:Button{
Text="+",
Parent=H,
LayoutOrder=3,
Ratio=1,
AutomaticSize=Enum.AutomaticSize.None,
FlexMode=Enum.UIFlexMode.None,
Size=UDim2.fromScale(1,1),
Visible=not E,
Callback=function()
w:Increase()
end,
}

local L=u:Label{
Parent=F,
Text=C,
AutomaticSize=Enum.AutomaticSize.X,
Size=UDim2.fromOffset(0,19),
Position=UDim2.new(1,4),
LayoutOrder=4
}

local function Callback(...)
local M=w.Callback
M(G,...)
end

function w.Increase(M)
local N=M.Value
local O=M.Increment
w:SetValue(N+O)
end

function w.Decrease(M)
local N=M.Value
local O=M.Increment
w:SetValue(N-O)
end

function w.SetDisabled(M,N:boolean)
M.Disabled=N
F.Interactable=not N
u:SetColorTags({
[L]=N and"LabelDisabled"or"Label"
},true)
end

function w.SetValue(M,N:number?)
local O=M.Value
local P=M.Minimum
local Q=M.Maximum


N=tonumber(N)


if not N then
N=O
end


if P and Q then
N=math.clamp(N,P,Q)
end


I.Text=N
w.Value=N
Callback(N)

return M
end

local function TextChanged()
local M=I.Text
w:SetValue(M)
end


w:SetValue(z)
w:SetDisabled(D)


I.FocusLost:Connect(TextChanged)


u:TagElements{
[K]="Button",
[J]="Button",
[I]="Frame",
}

return G,F
end,
})

b:DefineElement("InputTextMultiline",{
Base={
Label="",
Size=UDim2.new(1,0,0,39),
Border=false,
ColorTag="Frame"
},
Create=function(u,w)
return u:Console(w)
end,
})





















b:DefineElement("Console",{
Base={
Enabled=true,
Value="",
TextWrapped=false,
Border=true,
MaxLines=300,
LinesFormat="%s",
Callback=d,
},
Create=function(u,w:Console__DARKLUA_TYPE_K):Console__DARKLUA_TYPE_K

local z=w.ReadOnly
local B=w.LineNumbers local C=
w.Fill
local D=w.Value
local E=w.Placeholder


local F=b:InsertPrefab("Console",w)
local G=b:MergeMetatables(w,F)

local H:TextBox=F.Source
local I=F.Lines
I.Visible=B

function w.CountLines(J,K:boolean?):number
local L=H.Text:split"\n"
local M=#L

if M==1 and L[1]==""then
return 0
end

return M
end

function w.UpdateLineNumbers(J)

local K=J.LineNumbers
local L=J.LinesFormat


if not K then return end


local M=J:CountLines()
I.Text=""

for N=1,M do
local O=L:format(N)
local P=N~=M and'\n'or''
I.Text..=`{O}{P}`
end


local N=I.AbsoluteSize.X
H.Size=UDim2.new(1,-N,0,0)

return J
end

function w.CheckLineCount(J)

local K=w.MaxLines
if not K then return end

local L=H.Text
local M=L:split"\n"


if#M>K then
local N=`{M[1]}\\n`
local O=L:sub(#N)
J:SetValue(O)
end

return J
end

function w.UpdateScroll(J)
local K=F.AbsoluteCanvasSize
F.CanvasPosition=Vector2.new(0,K.Y)
return J
end

function w.SetValue(J,K:string?)
if not J.Enabled then return end

H.Text=tostring(K)
J:Update()

return J
end

function w.GetValue(J)
return H.Text
end

function w.Clear(J)
H.Text=""
J:Update()
return J
end

function w.AppendText(J,...)
local K=J:CountLines(true)
local L=b:Concat({...}," ")


if K==0 then
return J:SetValue(L)
end

local M=J:GetValue()
local N=`{M}\n{L}`


J:SetValue(N)

return J
end

function w.Update(J)

local K=J.AutoScroll

J:CheckLineCount()
J:UpdateLineNumbers()


if K then
J:UpdateScroll()
end
end

local function Changed()
local J=w:GetValue()
w:Update()
w.Callback(J)
end


w:SetValue(D)


b:SetProperties(H,w)
b:SetProperties(H,{
TextEditable=not z,
Parent=F,
PlaceholderText=E
})

u:TagElements{
[H]="ConsoleText",
[I]="ConsoleLineNumbers",
}


H:GetPropertyChangedSignal"Text":Connect(Changed)

return G,F
end,
})













b:DefineElement("Table",{
Base={
VerticalAlignment=Enum.VerticalAlignment.Top,
RowBackground=false,
RowBgTransparency=0.87,
Border=false,
Spacing=UDim.new(0,4)
},
Create=function(u,w:Table__DARKLUA_TYPE_L):Table__DARKLUA_TYPE_L
local z=u.WindowClass


local B=w.RowBgTransparency
local C=w.RowBackground
local D=w.Border
local E=w.VerticalAlignment
local F=w.MaxColumns
local G=w.Spacing


local H=b:InsertPrefab("Table",w)
local I=b:MergeMetatables(w,H)

local J=H.RowTemp
local K=0
local L={}
local M=D and C

function w.Row(N,O)
O=O or{}

local P=O.IsHeader

local Q=0
local R={}


local S=J:Clone()
b:SetProperties(S,{
Name="Row",
Visible=true,
Parent=H,
})


local T=S:FindFirstChildOfClass"UIListLayout"
b:SetProperties(T,{
VerticalAlignment=E,
Padding=not M and G or UDim.new(0,1)
})


if P then
u:TagElements{
[S]="Header"
}
else
K+=1
end


if C and not P then
local U=K%2~=1 and B or 1
S.BackgroundTransparency=U
end


local U={}
local V=b:MergeMetatables(U,S)

function U.Column(W,X)
X=X or{}

b:CheckConfig(X,{
HorizontalAlign=Enum.HorizontalAlignment.Left,
VerticalAlignment=Enum.VerticalAlignment.Top,
})


local Y=S.ColumnTemp:Clone()


local Z=Y:FindFirstChildOfClass"UIListLayout"
b:SetProperties(Z,X)


local _=Y:FindFirstChildOfClass"UIStroke"
_.Enabled=D


local aa=Y:FindFirstChildOfClass"UIPadding"
if not M then
aa:Destroy()
end


b:SetProperties(Y,{
Parent=S,
Visible=true,
Name="Column"
})


return b:MakeCanvas{
Element=Y,
WindowClass=z,
Class=V
}
end

function U.NextColumn(aa)
Q+=1

local W=Q%F+1
local X=R[W]


if not X then
X=aa:Column()
R[W]=X
end

return X
end

table.insert(L,U)


return V
end


function w.NextRow(aa)
return aa:Row()
end

function w.HeaderRow(aa)
return aa:Row{
IsHeader=true
}
end

function w.ClearRows(aa)
K=0


for N,O:Frame in next,H:GetChildren()do
if not O:IsA"Frame"then continue end
if O==J then continue end

O:Destroy()
end

return w
end

return I,H
end,
})




b:DefineElement("List",{
Base={
Spacing=4,
HorizontalFlex=Enum.UIFlexAlignment.None,
VerticalFlex=Enum.UIFlexAlignment.None,
HorizontalAlignment=Enum.HorizontalAlignment.Left,
VerticalAlignment=Enum.VerticalAlignment.Top,
FillDirection=Enum.FillDirection.Horizontal,
},
Create=function(aa,u)
local w=aa.WindowClass


local z=u.Spacing
local B=u.HorizontalFlex
local C=u.VerticalFlex
local D=u.HorizontalAlignment
local E=u.VerticalAlignment
local F=u.FillDirection


local G=b:InsertPrefab("List",u)
local H=b:MergeMetatables(u,G)

local I:UIListLayout=G.UIListLayout
b:SetProperties(I,{
Padding=UDim.new(0,z),
HorizontalFlex=B,
VerticalFlex=C,
HorizontalAlignment=D,
VerticalAlignment=E,
FillDirection=F,
})


local J=b:MakeCanvas{
Element=G,
WindowClass=w,
Class=H
}

return J,G
end,
})




















b:DefineElement("CollapsingHeader",{
Base={
Title="Collapsing Header",
CollapseIcon=b.Icons.Arrow,
Collapsed=true,
Offset=0,
NoAutoTag=true,
NoAutoFlags=true,
IconPadding=UDim.new(0,4),
Activated=d
},
Create=function(aa,u:CollapsingHeader__DARKLUA_TYPE_N):CollapsingHeader__DARKLUA_TYPE_N

local w=u.Title
local z=u.Collapsed
local B=u.ElementStyle
local C=u.Offset
local D=u.TitleBarProperties
local E=u.OpenOnDoubleClick
local F=u.OpenOnArrow
local G=u.CollapseIcon
local H=u.IconPadding
local I=u.Icon
local J=u.NoArrow


local K=b:InsertPrefab("CollapsingHeader",u)

local L=K.TitleBar
local M=L.Collapse
local N=L.Icon
aa:ApplyFlags(N,{
Image=I
})

local O=M.CollapseIcon
local P=M.UIPadding
b:SetPadding(P,H)
aa:ApplyFlags(O,{
Image=G
})

local Q=aa:Label{
ColorTag="CollapsingHeader",
Parent=L,
LayoutOrder=2
}


local R,S=aa:Indent{
Class=u,
Parent=K,
Offset=C,
LayoutOrder=2,
Size=UDim2.fromScale(1,0),
AutomaticSize=Enum.AutomaticSize.None,
PaddingTop=UDim.new(0,4),
PaddingBottom=UDim.new(0,1),
}

local function Activated()
local T=u.Activated
T(R)
end

function u.Remove(T)
K:Destroy()
table.clear(T)
end
function u.SetArrowVisible(T,U:boolean)
O.Visible=U
end
function u.SetTitle(T,U:string)
Q.Text=U
end
function u.SetVisible(T,U:boolean)
K.Visible=U
end
function u.SetIcon(T,U:(string|number)?)
local V=U and U~=""
N.Visible=V

if V then
N.Image=b:CheckAssetUrl(U)
end
end


function u.SetCollapsed(T,U)
T.Collapsed=U

local V=b:GetContentSize(S)
local W=R:GetThemeKey"AnimationTweenInfo"


local X=UDim2.fromScale(1,0)
local Y=X+UDim2.fromOffset(0,V.Y)

o:HeaderCollapse{
Tweeninfo=W,
Collapsed=U,
Toggle=O,
Resize=S,
Hide=S,


ClosedSize=X,
OpenSize=Y,
}

return T
end

local function Toggle()
u:SetCollapsed(not u.Collapsed)
end


if D then
R:ApplyFlags(L,D)
end


if not F then
b:ConnectMouseEvent(L,{
DoubleClick=E,
Callback=Toggle,
})
end
O.Activated:Connect(Toggle)
L.Activated:Connect(Activated)


u:SetCollapsed(z)
u:SetTitle(w)
u:SetArrowVisible(not J)


b:ApplyStyle(L,B)
R:TagElements{
[L]="CollapsingHeader",
}

return R,K
end,
})

b:DefineElement("TreeNode",{
Base={
Offset=21,
IconPadding=UDim.new(0,2),
TitleBarProperties={
Size=UDim2.new(1,0,0,13)
}
},
Create=r.CollapsingHeader,
})




b:DefineElement("Separator",{
Base={
NoAutoTag=true,
NoAutoTheme=true
},
Create=function(aa,u)
local w=u.Text


local z=b:InsertPrefab("SeparatorText",u)

aa:Label{
Text=tostring(w),
Visible=w~=nil,
Parent=z,
LayoutOrder=2,
Size=UDim2.new(),
PaddingLeft=UDim.new(0,4),
PaddingRight=UDim.new(0,4),
}

aa:TagElements{
[z.Left]="Separator",
[z.Right]="Separator",
}

return z
end,
})





b:DefineElement("Canvas",{
Base={},
Create=function(aa,u:Canvas__DARKLUA_TYPE_P)
local w=aa.WindowClass

local z=u.Scroll
local B=u.Class or u


local C=z and"ScrollingCanvas"or"Canvas"
local D=b:InsertPrefab(C,u)


local E=b:MakeCanvas{
Element=D,
WindowClass=w,
Class=B
}

return E,D
end,
})

b:DefineElement("ScrollingCanvas",{
Base={
Scroll=true
},
Create=r.Canvas
})




b:DefineElement("Region",{
Base={
Scroll=false,
AutomaticSize=Enum.AutomaticSize.Y
},
Create=function(aa,u:Region__DARKLUA_TYPE_Q)
local w=aa.WindowClass

local z=u.Scroll
local B=z and"ScrollingCanvas"or"Canvas"


local C=b:InsertPrefab(B,u)


local D=b:MakeCanvas{
Element=C,
WindowClass=w,
Class=u
}

return D,C
end,
})

b:DefineElement("Group",{
Base={
Scroll=false,
AutomaticSize=Enum.AutomaticSize.Y
},
Create=function(aa,u)
local w=aa.WindowClass


local z=b:InsertPrefab("Group",u)


local B=b:MakeCanvas{
Element=z,
WindowClass=w,
Class=u
}

return B,z
end,
})




b:DefineElement("Indent",{
Base={
Offset=15,
PaddingTop=UDim.new(),
PaddingBottom=UDim.new(),
PaddingRight=UDim.new(),
},
Create=function(aa,u:Indent__DARKLUA_TYPE_R)
local w=u.Offset
u.PaddingLeft=UDim.new(0,w)

return aa:Canvas(u)
end,
})








b:DefineElement("BulletText",{
Base={},
Create=function(aa,u:BulletText__DARKLUA_TYPE_S)
local w=u.Rows


for z,B in next,w do
local C=aa:Bullet(u)
C:Label{
Text=tostring(B),
LayoutOrder=2,
Size=UDim2.fromOffset(0,14),
}
end
end,
})




b:DefineElement("Bullet",{
Base={
Padding=3,
Icon=b.Icons.Dot,
IconSize=UDim2.fromOffset(5,5)
},
Create=function(aa,u:Bullet__DARKLUA_TYPE_T)
local w=aa.WindowClass


local z=u.Padding


local B=b:InsertPrefab("Bullet",u)


local C=b:MakeCanvas{
Element=B,
WindowClass=w,
Class=aa
}


local D=B.UIListLayout
D.Padding=UDim.new(0,z)

return C,B
end,
})








b:DefineElement("Row",{
Base={
Spacing=4,
Expanded=false,
HorizontalFlex=Enum.UIFlexAlignment.None,
VerticalFlex=Enum.UIFlexAlignment.None,
},
Create=function(aa,u:Row__DARKLUA_TYPE_U)
local w=aa.WindowClass


local z=u.Spacing
local B=u.Expanded
local C=u.HorizontalFlex
local D=u.VerticalFlex


local E=b:InsertPrefab("Row",u)
local F=b:MergeMetatables(u,E)

local G=E:FindFirstChildOfClass"UIListLayout"
G.Padding=UDim.new(0,z)
G.HorizontalFlex=C
G.VerticalFlex=D


local H=b:MakeCanvas{
Element=E,
WindowClass=w,
Class=F
}

function u.Expand(I)
G.HorizontalFlex=Enum.UIFlexAlignment.Fill
return I
end


if B then
u:Expand()
end

return H,E
end,
})


















b:DefineElement("SliderBase",{
Base={
Format="%.f",
Label="",
Type="Slider",
Callback=d,
NoGrab=false,
NoClick=false,
Minimum=0,
Maximum=100,
ColorTag="Frame",
Disabled=false,
},
Create=function(aa,u)

local w=u.Value or u.Minimum
local z=u.Format
local B=u.Label
local C=u.NoAnimation
local D=u.NoGrab
local E=u.NoClick
local F=u.Type
local G=u.Disabled


local H=b:InsertPrefab"Slider"
local I=H.Track
local J=I.Grab
local K=I.ValueText


I:FindFirstChildOfClass"UIPadding"

local L=b:MergeMetatables(u,H)
local M=J.AbsoluteSize


local N=b:SetAnimation(H,"Inputs")

local O=aa:Label{
Parent=H,
Text=B,
Position=UDim2.new(1,4),
Size=UDim2.fromScale(0,1)
}

Merge(u,{
Grab=J,
Name=B,
})


if F=="Slider"then
I.Position=UDim2.fromOffset(M.X/2,0)
I.Size=UDim2.new(1,-M.X,1,0)
end

local P={Slider=
function(P)
return{
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.fromScale(P,0.5)
}
end,Progress=
function(P)
return{
Size=UDim2.fromScale(P,1)
}
end,Snap=
function(P,Q,R,S)
local T=(math.round(Q)-R)/S
return{
Size=UDim2.fromScale(1/S,1),
Position=UDim2.fromScale(T,0.5)
}
end,
}

local function Callback(...)
local Q=u.Callback
return Q(L,...)
end

function u.SetDisabled(Q,R:boolean)
Q.Disabled=R
H.Interactable=not R
aa:SetColorTags({
[O]=R and"LabelDisabled"or"Label"
},true)
return Q
end

function u.SetValueText(Q,R:string)
K.Text=tostring(R)
end

function u.SetValue(Q,R,S:boolean)
local T=aa:GetThemeKey"AnimationTweenInfo"

local U=u.Minimum
local V=u.Maximum

local W=R
local X=V-U


if not S then
W=(R-U)/X
else

R=U+(X*W)
end


W=math.clamp(W,0,1)


local Y=P[F](W,R,U,V)


o:Tween{
Object=J,
Tweeninfo=T,
NoAnimation=C,
EndProperties=Y
}


Q.Value=R
Q:SetValueText(z:format(R,V))


Callback(R)

return Q
end

local function SetFocused(Q:boolean)

aa:SetColorTags({
[H]=Q and"FrameActive"or"Frame"
},true)
aa:SetElementFocused(H,{
Focused=Q,
Animation=N
})
end


local function CanDrag()
if u.Disabled then return end
if u.ReadOnly then return end

return true
end
local function DragMovement(Q)
if not CanDrag()then return end


local R=I.AbsolutePosition.X
local S=I.AbsoluteSize.X


local T=Q.X
local U=T-R


local V=math.clamp(U/S,0,1)

u:SetValue(V,true)
end
local function DragBegan(...)
if not CanDrag()then return end

SetFocused(true)

if not E then
DragMovement(...)
end
end
local function DragEnded()
SetFocused(false)
end


J.Visible=not D
u:SetValue(w)
u:SetDisabled(G)

aa:TagElements{
[K]="Label",
[J]="SliderGrab"
}


b:ConnectDrag(I,{
DragStart=DragBegan,
DragMovement=DragMovement,
DragEnd=DragEnded,
})

return L,H
end,
})








b:DefineElement("SliderEnum",{
Base={
Items={},
Label="Slider Enum",
Type="Snap",
Minimum=1,
Maximum=10,
Value=1,
Callback=d,
ColorTag="Frame"
},
Create=function(aa,u:SliderEnumFlags__DARKLUA_TYPE_W)

local w=u.Callback
local z=u.Value

local function Calculate(B,C:number)
C=math.round(C)


local D=B.Items
B.Maximum=#D


return D[C]
end


u.Callback=function(B,C,D:boolean)
local E=Calculate(B,C)
B:SetValueText(E)

u.Value=E

return w(B,E)
end

Calculate(u,z)


return aa:SliderBase(u)
end,
})

b:DefineElement("SliderInt",{
Base={
Label="Slider Int",
ColorTag="Frame",
},
Create=r.SliderBase,
})

b:DefineElement("SliderFloat",{
Base={
Label="Slider Float",
Format="%.3f",
ColorTag="Frame",
},
Create=r.SliderBase,
})












b:DefineElement("DragInt",{
Base={
Format="%.f",
Label="Drag Int",
Callback=d,
Minimum=0,
Maximum=100,
ColorTag="Frame",
Disabled=false
},
Create=function(aa,u:DragIntFlags__DARKLUA_TYPE_X)

local w=u.Value or u.Minimum
local z=u.Format
local B=u.Label
local C=u.Disabled


local D=b:InsertPrefab"Slider"
local E=b:MergeMetatables(u,D)

local F=D.Track
local G=F.ValueText
local H=F.Grab
H.Visible=false

b:GetChildOfClass(F,"UIDragDetector")

local I=aa:Label{
Parent=D,
Text=B,
Position=UDim2.new(1,7),
Size=UDim2.fromScale(0,1)
}

local J
local K=0
local L=0


local M=b:SetAnimation(D,"Inputs")

local function Callback(...)
local N=u.Callback
return N(E,...)
end

function u.SetValue(N,O:number,P:boolean)
local Q=N.Minimum
local R=N.Maximum

local S=R-Q


if not P then
K=((O-Q)/S)*100
else

O=Q+(S*(K/100))
end

O=math.clamp(O,Q,R)


N.Value=O
G.Text=z:format(O,R)


Callback(O)

return N
end
function u.SetDisabled(N,O:boolean)
N.Disabled=O

aa:SetColorTags({
[I]=O and"LabelDisabled"or"Label"
},true)
end

local function SetFocused(N:boolean)

aa:SetColorTags({
[D]=N and"FrameActive"or"Frame"
},true)

aa:SetElementFocused(D,{
Focused=N,
Animation=M
})
end


local function CanDrag():boolean
if u.Disabled then return end
if u.ReadOnly then return end

return true
end
local function DragStart(N)
if not CanDrag()then return end
SetFocused(true)

J=N
L=K
end
local function DragMovement(N)
if not CanDrag()then return end

local O=N.X-J.X
local P=L+(O/2)

K=math.clamp(P,0,100)
u:SetValue(K,true)
end
local function DragEnded()
SetFocused(false)
end


u:SetValue(w)
u:SetDisabled(C)


b:ConnectDrag(F,{
DragStart=DragStart,
DragEnd=DragEnded,
DragMovement=DragMovement,
})

aa:TagElements{
[G]="Label"
}

return E,D
end,
})

b:DefineElement("DragFloat",{
Base={
Format="%.3f",
Label="Drag Float",
ColorTag="Frame"
},
Create=r.DragInt,
})

b:DefineElement("MultiElement",{
Base={
Callback=d,
Label="",
Disabled=false,
BaseInputConfig={},
InputConfigs={},
Value={},
Minimum={},
Maximum={},
MultiCallback=d,
},
Create=function(aa,u)

local w=u.Label
local z=u.BaseInputConfig
local B=u.InputConfigs
local C=u.InputType
local D=u.Disabled
local E=u.Value
local F=u.Minimum
local G=u.Maximum

assert(C,"No input type provided for MultiElement")




local H,I=aa:Row{
Spacing=4
}

local J=H:Row{
Size=UDim2.fromScale(0.65,0),
Expanded=true,
}

local K=H:Label{
Size=UDim2.fromScale(0.35,0),
LayoutOrder=2,
Text=w
}

local L=b:MergeMetatables(u,H)
local M={}
local N=false

local function GetValue()
local O={}
for P,Q in M do
O[P]=Q:GetValue()
end

u.Value=O
return O
end

local function Callback(...)
local O=u.MultiCallback
O(L,...)
end

local function InputChanged()

if#M~=#B then return end
if not N then return end

local O=GetValue()
Callback(O)
end

function u.SetDisabled(O,P:boolean)
O.Disabled=P


aa:SetColorTags({
[K]=P and"LabelDisabled"or"Label"
},true)


for Q,R in M do
R:SetDisabled(P)
end
end

function u.SetValue(O,P)
N=false


for Q,R in P do
local S=M[Q]
assert(S,`No input object for index: {Q}`)

S:SetValue(R)
end

N=true
Callback(P)
end


z=Copy(z,{
Size=UDim2.new(1,0,0,19),
Label="",
Callback=InputChanged,
})


for O,P in B do
local Q=Copy(z,P)
b:CheckConfig(Q,{
Minimum=F[O],
Maximum=G[O],
})


local R=J[C](J,Q)
table.insert(M,R)
end


Merge(u,{
Row=J,
Inputs=M
})

N=true


u:SetDisabled(D)
u:SetValue(E)

return L,I
end,
})

local function GenerateMultiInput(aa:string,u:string,w:number,z)
b:DefineElement(aa,{
Base={
Label=aa,
Callback=d,
InputType=u,
InputConfigs=table.create(w,{}),
BaseInputConfig={},
},
Create=function(B,C)
local D=C.BaseInputConfig


if z then
Merge(D,z)
end

b:CheckConfig(D,{
ReadOnly=C.ReadOnly,
Format=C.Format,
})

C.MultiCallback=function(...)
local E=C.Callback
E(...)
end

return B:MultiElement(C)
end,
})
end









local function GenerateColor3Input(aa:string,u:string,w:number,z)
z=z or{}
b:DefineElement(aa,{
Base={
Label=aa,
Callback=d,
Value=b.Accent.Light,
Disabled=false,
Minimum={0,0,0},
Maximum={255,255,255,100},
BaseInputConfig={},
InputConfigs={
[1]={Format="R: %.f"},
[2]={Format="G: %.f"},
[3]={Format="B: %.f"},
}
},
Create=function(B,C:InputColor3Flags__DARKLUA_TYPE_Y)local D=

C.BaseInputConfig
local E=C.InputConfigs
local F=C.Value local G=
C.Disabled


if z.Color4 then
E[4]={Format="A: %.f"}
end


local H=Copy(C,{
Value={1,1,1},
Callback=function(H,...)
if C.ValueChanged then
C:ValueChanged(...)
end
end,
})

local I,J=B[u](B,H)
local K=b:MergeMetatables(C,I)
local L=I.Row


local M=L:Button{
BackgroundTransparency=0,
Size=UDim2.fromOffset(19,19),
UiPadding=0,
Text="",
Ratio=1,
ColorTag="",
ElementStyle=""
}

local function Callback(...)
local N=C.Callback
return N(K,...)
end

local function SetPreview(N:Color3)
M.BackgroundColor3=N
Callback(N)
end

function C.ValueChanged(N,O)
local P,Q,R=O[1],O[2],O[3]
local S=Color3.fromRGB(P,Q,R)

N.Value=S
SetPreview(S)
end

function C.SetValue(N,O:Color3)
N.Value=O
SetPreview(O)


I:SetValue{
math.round(O.R*255),
math.round(O.G*255),
math.round(O.B*255)
}
end


C:SetValue(F)

return K,J
end,
})
end









local function GenerateCFrameInput(aa:string,u:string,w:number,z)
b:DefineElement(aa,{
Base={
Label=aa,
Callback=d,
Disabled=false,
Value=CFrame.new(10,10,10),
Minimum=CFrame.new(0,0,0),
Maximum=CFrame.new(100,100,100),
BaseInputConfig={},
InputConfigs={
[1]={Format="X: %.f"},
[2]={Format="Y: %.f"},
[3]={Format="Z: %.f"}
}
},
Create=function(B,C:InputCFrameFlags__DARKLUA_TYPE_Z)local E=

C.BaseInputConfig
local F=C.Value local G=
C.Disabled
local H=C.Maximum
local I=C.Minimum

local J=Copy(C,{
Maximum={H.X,H.Y,H.Z},
Minimum={I.X,I.Y,I.Z},
Value={F.X,F.Y,F.Z},
Callback=function(J,...)
if C.ValueChanged then
C:ValueChanged(...)
end
end,
})


local K,L=B[u](B,J)
local M=b:MergeMetatables(C,K)local N=
K.Row

local function Callback(...)
local O=C.Callback
return O(M,...)
end

function C.ValueChanged(O,P)
local Q,R,S=P[1],P[2],P[3]
local T=CFrame.new(Q,R,S)
O.Value=T
Callback(T)
end

function C.SetValue(O,P:CFrame)
O.Value=P


K:SetValue{
math.round(P.X),
math.round(P.Y),
math.round(P.Z)
}
end


C:SetValue(F)

return M,L
end,
})
end

b:DefineElement("SliderProgress",{
Base={
Label="Slider Progress",
Type="Progress",
ColorTag="Frame",
},
Create=r.SliderBase,
})




b:DefineElement("ProgressBar",{
Base={
Label="Progress Bar",
Type="Progress",
ReadOnly=true,
MinValue=0,
MaxValue=100,
Format="% i%%",
Interactable=false,
ColorTag="Frame"
},
Create=function(aa,u)
function u.SetPercentage(w,z:number)
u:SetValue(z)
end

local w,z=aa:SliderBase(u)
local B=w.Grab

aa:TagElements{
[B]={
BackgroundColor3="ProgressBar"
}
}

return w,z
end,
})








b:DefineElement("Combo",{
Base={
Value="",
Placeholder="",
Callback=d,
Items={},
Disabled=false,
WidthFitPreview=false,
Label="Combo"
},
Create=function(aa,u:Combo__DARKLUA_TYPE_0)

local w=u.Placeholder
local z=u.NoAnimation
local B=u.Selected
local C=u.Label
local F=u.Disabled
local H=u.WidthFitPreview



local I=b:InsertPrefab("Combo",u)
local J=b:MergeMetatables(u,I)

local K=I.Combo
local L


local M=aa:Label{
Text=tostring(w),
Parent=K,

Name="ValueText"
}
local N=aa:ArrowButton{
Parent=K,
Interactable=false,
Size=UDim2.fromOffset(19,19),
LayoutOrder=2,
}
local O=aa:Label{
Text=C,
Parent=I,
LayoutOrder=2,
}


if H then
b:SetProperties(I,{
AutomaticSize=Enum.AutomaticSize.XY,
Size=UDim2.new(0,0,0,0)
})
b:SetProperties(K,{
AutomaticSize=Enum.AutomaticSize.XY,
Size=UDim2.fromScale(0,1)
})
end

local function Callback(P,...)
u:SetOpen(false)
return u.Callback(J,P,...)
end

local function SetAnimationState(P:boolean,Q:boolean?)
local R=aa:GetThemeKey"AnimationTweenInfo"

I.Interactable=not P


o:HeaderCollapseToggle{
Tweeninfo=R,
NoAnimation=Q,
Collapsed=not P,
Toggle=N.Icon,
}
end

local function GetItems()
local P=u.GetItems
local Q=u.Items


if P then
return P()
end


return Q
end

function u.SetValueText(P,Q:string?)
M.Text=tostring(Q)
end

function u.ClosePopup(P)
if L then
L:ClosePopup(true)
end
end

function u.SetDisabled(P,Q:boolean)
P.Disabled=Q
I.Interactable=not Q
aa:SetColorTags({
[O]=Q and"LabelDisabled"or"Label"
},true)
end

function u.SetValue(P,Q)
local R=GetItems()
local S=R[Q]
local T=S or Q

P.Selected=Q
P.Value=T

P:ClosePopup()


if typeof(Q)=="number"then
P:SetValueText(T)
else
P:SetValueText(Q)
end

return Callback(Q,T)
end

function u.SetOpen(P,Q:boolean)
local R=P.Selected

P.Open=Q
SetAnimationState(Q,z)

if not Q then

P:ClosePopup()
return
end


L=aa:Dropdown{
RelativeTo=K,
Items=GetItems(),
Selected=R,
OnSelected=function(...)
u:SetValue(...)
end,
OnClosed=function()
P:SetOpen(false)
end,
}

return P
end

local function ToggleOpen()
local P=u.Open
u:SetOpen(not P)
end


K.Activated:Connect(ToggleOpen)


SetAnimationState(false,true)
u:SetDisabled(F)

if B then
u:SetValue(B)
end


b:SetAnimation(K,"Inputs")

aa:TagElements{
[K]="Frame",
}

return J,I
end,
})

















































































































local aa={

TileBarConfig={
Close={
Image=b.Icons.Close,
IconPadding=UDim.new(0,3)
},
Collapse={
Image=b.Icons.Arrow,
IconPadding=UDim.new(0,3)
},
},

CloseCallback=d,


Collapsible=true,
Open=true,
Focused=false
}

function aa.Tween(u,w)
b:CheckConfig(w,{
Tweeninfo=u:GetThemeKey"AnimationTweenInfo"
})
return o:Tween(w)
end

function aa.TagElements(u,w:ObjectTable__DARKLUA_TYPE_d)local z=
b.Debug


local B=u.TagsList
local C=u.Theme

b:MultiUpdateColors{
Theme=C,
TagsList=B,
Objects=w
}
end





function aa.MakeTitleBarCanvas(u):TitleBarCanvas__DARKLUA_TYPE_1
local w=u.TitleBar


local z=b:MakeCanvas{
WindowClass=u,
Element=w
}
u.TitleBarCanvas=z

return z
end

function aa.AddDefaultTitleButtons(u)
local w=u.TileBarConfig local z=
u.TitleBar

local B=w.Collapse
local C=w.Close


local F=u.TitleBarCanvas
if not F then
F=u:MakeTitleBarCanvas()
end

b:CheckConfig(u,{

Toggle=F:RadioButton{
Icon=B.Image,
IconPadding=B.IconPadding,
LayoutOrder=1,
Ratio=1,
Size=UDim2.new(0,0),
Callback=function()
u:ToggleCollapsed()
end,
},
CloseButton=F:RadioButton{
Icon=C.Image,
IconPadding=C.IconPadding,
LayoutOrder=3,
Ratio=1,
Size=UDim2.new(0,0),
Callback=function()
u:SetVisible(false)
end,
},
TitleLabel=F:Label{
ColorTag="Title",
LayoutOrder=2,
Size=UDim2.new(1,0),
Active=false,
Fill=true,
ClipsDescendants=true,
AutomaticSize=Enum.AutomaticSize.XY
}
})


u:TagElements{
[u.TitleLabel]="WindowTitle"
}
end

function aa.Close(u)
local w=u.CloseCallback


if w then
local z=w(u)
if z==false then return end
end

u:Remove()
end

function aa.SetVisible(u,w:boolean):WindowClass
local z=u.WindowFrame
local B=u.NoFocusOnAppearing

u.Visible=w
z.Visible=w


if w and not B then
b:SetFocusedWindow(u)
end

return u
end

function aa.ToggleVisibility(u,w:boolean):WindowClass
local z=u.Visible
u:SetVisible(not z)
end

function aa.GetWindowSize(u):Vector2
return u.WindowFrame.AbsoluteSize
end

function aa.GetTitleBarSizeY(u):number
local w=u.TitleBar
return w.Visible and w.AbsoluteSize.Y or 0
end

function aa.SetTitle(u,w:string?):WindowClass
u.TitleLabel.Text=tostring(w)
return u
end

function aa.SetPosition(u,w):WindowClass
u.WindowFrame.Position=w
return u
end

function aa.SetSize(u,w:(Vector2|UDim2),z:boolean):WindowClass
local B=u.WindowFrame


if typeof(w)=="Vector2"then
w=UDim2.fromOffset(w.X,w.Y)
end

B.Size=w
u.Size=w

return u
end

function aa.SetCanvasInteractable(u,w:boolean)
local z=u.Body
z.Interactable=w
end

function aa.Center(u):WindowClass
local w=u:GetWindowSize()/2
local z=UDim2.new(0.5,-w.X,0.5,-w.Y)

u:SetPosition(z)
return u
end

function aa.LoadStylesIntoElement(u,w)
local z=w.Flags
local B=w.Object
local C=w.Canvas

local F={FrameRounding=
function()
if z.CornerRadius then return end
if not C then return end

local F=B:FindFirstChild("FrameRounding",true)
if not F then return end

C:TagElements{
[F]="FrameRounding"
}
end,
}

for H,I in F do
local J=u:GetThemeKey(H)
if J==nil then continue end

task.spawn(I,J)
end
end

function aa.SetTheme(u,w:string):WindowClass
local z=b.ThemeConfigs

local B=u.TagsList local C=
u.Focused
local F=u.WindowState


if not w then
w=u.Theme
end


assert(z[w],`{w} is not a valid theme!`)

u.Theme=w


b:MultiUpdateColors{
Animate=false,
Theme=w,
Objects=B
}


u:SetFocusedColors(F)

return u
end

function aa.SetFocusedColors(u,w:string)

local z=u.WindowFrame
local B=u.TitleBar
local C=u.Theme
local F=u.TitleLabel
local H=u:GetThemeKey"AnimationTweenInfo"

local I=z:FindFirstChildOfClass"UIStroke"


local J={
Focused={
[I]="BorderActive",
[B]="TitleBarBgActive",
[F]={
TextColor3="TitleActive"
}
},
UnFocused={
[I]="Border",
[B]="TitleBarBg",
[F]={
TextColor3="Title"
}
},
Collapsed={
[I]="Border",
[B]="TitleBarBgCollapsed",
[F]={
TextColor3="Title"
}
}
}


b:MultiUpdateColors{
Tweeninfo=H,
Animate=true,
Objects=J[w],
Theme=C,
}
end

function aa.SetFocused(u,w:true)
w=w==nil and true or w


local z=u.Collapsed
local B=u.WindowState


if w then
b:SetFocusedWindow(u)
end


local C=z and"Collapsed"or w and"Focused"or"UnFocused"


if C==B then return end
u.Focused=w
u.WindowState=C


u:SetFocusedColors(C)
end

function aa.GetThemeKey(u,w:string)
return b:GetThemeKey(u.Theme,w)
end

function aa.ResetColors(u):WindowClass
local w=b.Theme
local z=u.Theme
local B=u.TagsList


table.clear(z)

b:MultiUpdateColors{
Animate=false,
Theme=w,
Objects=B
}

return aa
end

function aa.SetCollapsible(u,w:boolean):WindowClass
u.Collapsible=w
return u
end

function aa.ToggleCollapsed(u,w:boolean?):WindowClass
local z=u.Collapsed
local B=u.Collapsible


if not w and not B then return u end

u:SetCollapsed(not z)
return u
end

function aa.SetCollapsed(u,w:boolean,z:false):WindowClass
local B=u.WindowFrame
local C=u.Body
local F=u.Toggle
local H=u.ResizeGrab
local I=u.Size
local J=u.AutoSize
local K=u:GetThemeKey"AnimationTweenInfo"

local L=u:GetWindowSize()
local M=u:GetTitleBarSizeY()

local N=F.Icon
local O=UDim2.fromOffset(L.X,M)

u.Collapsed=w
u:SetCollapsible(false)


u:SetFocused(not w)


o:HeaderCollapse{
Tweeninfo=K,
NoAnimation=z,
Collapsed=w,
Toggle=N,
Resize=B,
NoAutomaticSize=not J,
Hide=C,

ClosedSize=O,
OpenSize=I,
Completed=function()
u:SetCollapsible(true)
end
}


u:Tween{
Object=H,
NoAnimation=z,
EndProperties={
TextTransparency=w and 1 or 0.6,
Interactable=not w
}
}

return u
end

function aa.UpdateConfig(u,w)
local z={
NoTitleBar=function(z)
local B=u.TitleBar
B.Visible=not z
end,
NoClose=function(z)
local B=u.CloseButton
B.Visible=not z
end,
NoCollapse=function(z)
local B=u.Toggle
B.Visible=not z
end,
NoTabsBar=function(z)
local B=u.WindowTabSelector
if not B then return end

local C=B.TabsBar
C.Visible=not z
end,
NoScrollBar=function(z)
local B=z and 0 or 9
local C=u.NoScroll
local F=u.WindowTabSelector
local H=u.ContentCanvas


if F then
F.Body.ScrollBarThickness=B
end

if not C then
H.ScrollBarThickness=B
end
end,
NoScrolling=function(z)
local B=u.NoScroll
local C=u.WindowTabSelector
local F=u.ContentCanvas

if C then
C.Body.ScrollingEnabled=not z
end
if not B then
F.ScrollingEnabled=not z
end
end,
NoMove=function(z)
local B=u.DragConnection
B:SetEnabled(not z)
end,
NoResize=function(z)
local B=u.ResizeConnection
B:SetEnabled(not z)
end,
NoBackground=function(z)
local B=u:GetThemeKey"WindowBgTransparency"
local C=u.CanvasFrame
C.BackgroundTransparency=z and 1 or B
end,
}


Merge(u,w)


for B,C in w do
local F=z[B]
if F then
F(C)
end
end

return u
end


function aa.Remove(u)
local w=u.WindowFrame
local z=u.WindowClass
local B=b.Windows


local C=table.find(B,z)
if C then
table.remove(B,C)
end


w:Destroy()
end

function aa.MenuBar(u,w,...)
local z=u.ContentCanvas
local B=u.ContentFrame

w=w or{}

Merge(w,{
Parent=B,
Layout=-1
})

return z:MenuBar(w,...)
end


































b:DefineElement("Window",{
Export=true,
Base={
Theme="DarkTheme",
NoSelect=false,
NoTabs=true,
NoScroll=false,
Collapsed=false,
Visible=true,
AutoSize=false,
MinimumSize=Vector2.new(160,90),
OpenOnDoubleClick=true,
NoAutoTheme=true,
NoWindowRegistor=false,
NoBringToFrontOnFocus=false,
IsDragging=false,
},
Create=function(u,w:WindowFlags__DARKLUA_TYPE_2)

local z=b.Windows
local B=b.Container.Windows

b:CheckConfig(w,{
Parent=B,
Title=b.DefaultTitle
})


local C=w.NoDefaultTitleBarButtons
local F=w.Collapsed
local H=w.MinimumSize
local I=w.Title
local J=w.NoTabs
local K=w.NoScroll
local L=w.Theme
local M=w.AutomaticSize
local N=w.NoWindowRegistor
local O=w.AutoSelectNewTabs local P=
w.OpenOnDoubleClick local Q=
w.NoCollapse
local R=w.Parent~=B

local S={
Scroll=not K,
Fill=not M and true or nil,
UiPadding=UDim.new(0,J and 8 or 0),
AutoSelectNewTabs=O
}


if M then
Merge(S,{
AutomaticSize=M,
Size=UDim2.new(1,0)
})
end


local T:CanvasGroup=b:InsertPrefab("Window",w)
local U:Frame=T.Content
local V:Frame=U.TitleBar


local W=NewClass(aa)


local X=b:MakeCanvas{
Element=U,
WindowClass=W,
Class=W
}


local Y,Z,_
local ab,ac=X:Canvas(Copy(S,{
Parent=U,
CornerRadius=UDim.new(0,0),

}))


local ad=b:MakeResizable{
MinimumSize=H,
Resize=T,
OnUpdate=function(ad)
W:SetSize(ad,true)
end,
}


Merge(W,w)
Merge(W,{
WindowFrame=T,
ContentFrame=U,
CanvasFrame=ac,
ResizeGrab=ad.Grab,
TitleBar=V,
Elements=r,
TagsList={},
_SelectDisabled=R,


ResizeConnection=ad,
HoverConnection=b:DetectHover(U),
DragConnection=b:MakeDraggable{
Grab=U,
Move=T,
SetPosition=function(ae,af:UDim2)
local ag=Y:GetThemeKey"AnimationTweenInfo"

o:Tween{
Tweeninfo=ag,
Object=ae.Move,
EndProperties={
Position=af
}
}
end,
OnDragStateChange=function(ae:boolean)
W.IsDragging=ae
ac.Interactable=not ae


if ae then
b:SetFocusedWindow(_)
end


b:SetWindowFocusesEnabled(not ae)
end,
},
})


if J then

Y,Z=ab,ac
else

Y,Z=ab:TabSelector(S)
W.WindowTabSelector=Y
end


_=b:MergeMetatables(W,Y)


Merge(W,{
ContentCanvas=Y,
WindowClass=_,
Body=Z
})


b:ConnectMouseEvent(U,{
DoubleClick=true,
OnlyMouseHovering=V,
Callback=function(...)
if not W.OpenOnDoubleClick then return end
if W.NoCollapse then return end

W:ToggleCollapsed()
end,
})


if not C then
W:AddDefaultTitleButtons()
end


W:SetTitle(I)
W:SetCollapsed(F,true)


W:SetTheme(L)
W:UpdateConfig(w)


W:SetFocused()


local ae=ad.Grab
b:SetAnimation(ae,"TextButtons")

_:TagElements{
[ae]="ResizeGrab",
[V]="TitleBar",
[ac]="Window"
}


if not N then
table.insert(z,_)
end

return _,T
end,
})




b:DefineElement("TabsWindow",{
Export=true,
Base={
NoTabs=false,
AutoSelectNewTabs=true
},
Create=function(ab,ac:TabsWindowFlags__DARKLUA_TYPE_3)
return ab:Window(ac)
end,
})














b:DefineElement("PopupCanvas",{
Base={
AutoClose=false,
Scroll=false,
Visible=true,
Spacing=UDim.new(0,1),
AutomaticSize=Enum.AutomaticSize.XY,
MaxSizeY=150,
MinSizeX=100,
MaxSizeX=math.huge,
OnClosed=d
},
Create=function(ab,ac:PopupCanvas__DARKLUA_TYPE_4)
ac.Parent=b.Container.Overlays

local ad=ac.RelativeTo
local ae=ac.MaxSizeY
local af=ac.MinSizeX
local ag=ac.MaxSizeX
local u=ac.Visible
local w=ac.AutoClose
local z=ac.NoAnimation


local B,C=ab:OverlayScroll(ac)
local F=C.UIStroke

local H=F.Thickness
local I=C.Parent.AbsolutePosition

local J,K,L,M


local N=b:DetectHover(C,{
MouseOnly=true,
OnInput=function(N,O)
if N then return end
if not C.Visible then return end
ac:OnFocusLost()
end,
})

function ac.FetchScales(O)

local Q=B:GetCanvasSize()

J=ad.AbsolutePosition
K=ad.AbsoluteSize

L=math.clamp(Q.Y,K.Y,ae)
M=math.clamp(K.X,af,ag)
end

function ac.UpdatePosition(O)
C.Position=UDim2.fromOffset(
J.X-I.X+H,
J.Y-I.Y+K.Y
)
end

function ac.GetScale(O,Q:boolean):UDim2
local R=UDim2.fromOffset(M,L)
local S=UDim2.fromOffset(M,0)

return Q and R or S
end

function ac.IsMouseHovering(O):boolean
return N.Hovering
end

function ac.OnFocusLost(O)
local Q=O.OnClosed

O:SetPopupVisible(false)
Q(O)


if w then
O:ClosePopup()
end
end

function ac.ClosePopup(O,Q:boolean?)
O:SetPopupVisible(false,z,Q)
N:Disconnect()
C:Remove()
end

function ac.SetPopupVisible(O,Q:boolean,R:boolean?)

if C.Visible==Q then return end

ad.Interactable=not Q
O:UpdateScales(Q,z,R)
O.Visible=Q
end

function ac.UpdateScales(O,Q:boolean,R:boolean,S:boolean?)
local T=B:GetThemeKey"AnimationTweenInfo"

if Q==nil then
Q=C.Visible
end

ac:FetchScales()
ac:UpdatePosition()

local U=o:Tween{
Tweeninfo=T,
Object=C,
NoAnimation=R,
EndProperties={
Size=ac:GetScale(Q),
Visible=Q,
}
}


if U and S then
U.Completed:Wait()
end
end


ac:UpdateScales(false,true)
ac:SetPopupVisible(u)

B.OnChildChange:Connect(ac.UpdateScales)

return B,C
end,
})

b:DefineElement("PopupModal",{
Export=true,
Base={
NoAnimation=false,
NoCollapse=true,
NoClose=true,
NoResize=true,
NoSelect=true,
NoAutoFlags=true,
NoWindowRegistor=true,
NoScroll=true,
},
Create=function(ab,ac:WindowFlags__DARKLUA_TYPE_2)
ac.Parent=b.Container.Overlays

local ad=ab.WindowClass


local ae=ac.NoAnimation
local af


if ad then
af=ad:GetThemeKey"ModalWindowDimTweenInfo"
ac.Theme=ad.Theme
end


local ag=b:InsertPrefab("ModalEffect",ac)


local u=ab:Window(Copy(ac,{
NoAutoFlags=false,
Parent=ag,
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.fromScale(0.5,0.5),
Size=UDim2.fromOffset(372,38),
AutomaticSize=Enum.AutomaticSize.Y
}))

function ac.ClosePopup(w)
o:Tween{
Object=ag,
Tweeninfo=af,
NoAnimation=ae,
EndProperties={
BackgroundTransparency=1
},
Completed=function()
ag:Destroy()
end
}

u:Close()
end


o:Tween{
Object=ag,
Tweeninfo=af,
NoAnimation=ae,
StartProperties={
BackgroundTransparency=1
},
EndProperties={
BackgroundTransparency=0.8
}
}


ab:TagElements{
[ag]="ModalWindowDim"
}


local w=b:MergeMetatables(ac,u)
return w,ag
end,
})

GenerateMultiInput("InputInt2","InputInt",2,{NoButtons=true})
GenerateMultiInput("InputInt3","InputInt",3,{NoButtons=true})
GenerateMultiInput("InputInt4","InputInt",4,{NoButtons=true})
GenerateMultiInput("SliderInt2","SliderInt",2)
GenerateMultiInput("SliderInt3","SliderInt",3)
GenerateMultiInput("SliderInt4","SliderInt",4)
GenerateMultiInput("SliderFloat2","SliderFloat",2)
GenerateMultiInput("SliderFloat3","SliderFloat",3)
GenerateMultiInput("SliderFloat4","SliderFloat",4)
GenerateMultiInput("DragInt2","DragInt",2)
GenerateMultiInput("DragInt3","DragInt",3)
GenerateMultiInput("DragInt4","DragInt",4)
GenerateMultiInput("DragFloat2","DragFloat",2)
GenerateMultiInput("DragFloat3","DragFloat",3)
GenerateMultiInput("DragFloat4","DragFloat",4)

GenerateColor3Input("InputColor3","InputInt3")
GenerateColor3Input("SliderColor3","SliderInt3")
GenerateColor3Input("DragColor3","DragInt3")

GenerateCFrameInput("InputCFrame","InputInt3")
GenerateCFrameInput("SliderCFrame","SliderInt3")
GenerateCFrameInput("DragCFrame","DragInt3")

return b end function a.c()

local aa=game:GetService"RunService"
local ab=game:GetService"Players"
local ac=game:GetService"Workspace"
local ad=game:GetService"UserInputService"
local ae=gethui and gethui()or game:GetService"CoreGui"


local af=ab.LocalPlayer
local ag=ac.CurrentCamera
local b=ag.ViewportSize


local c=math.floor
local d=math.round
local e=math.sin
local f=math.cos
local g=table.clear
local h=table.unpack
local i=table.find
local j=table.create
local k=CFrame.fromMatrix


local l=ag.WorldToViewportPoint
local m=ac.IsA
local n=ac.GetPivot
local o=ac.FindFirstChild
local p=ac.FindFirstChildOfClass
local q=ac.GetChildren
local r=CFrame.identity.PointToObjectSpace
local s=Color3.new().Lerp
local t=Vector2.zero.Min
local u=Vector2.zero.Max
local w=Vector2.zero.Lerp
local z=Vector3.zero.Min
local B=Vector3.zero.Max


local C=Vector2.new(0,1)
local F=Vector2.new(0,2)
local H=Vector2.new(5,0)
local I={
Vector3.new(-1,-1,-1),
Vector3.new(-1,1,-1),
Vector3.new(-1,1,1),
Vector3.new(-1,-1,1),
Vector3.new(1,-1,-1),
Vector3.new(1,1,-1),
Vector3.new(1,1,1),
Vector3.new(1,-1,1),
}


local function GetBoundingBox(J)
local K,L
for M=1,#J do
local N=J[M]
local O,Q=N.CFrame,N.Size

K=z(K or O.Position,(O-Q*0.5).Position)
L=B(L or O.Position,(O+Q*0.5).Position)
end

local M=(K+L)*0.5
local N=Vector3.new(M.X,M.Y,L.Z)
return CFrame.new(M,N),L-K
end

local function WorldToScreen(J)
local K,L=l(ag,J)
return Vector2.new(K.X,K.Y),L,K.Z
end

local function CalculateCorners(J,K)
local L=j(#I)
for M=1,#I do
L[M]=WorldToScreen((J+K*0.5*I[M]).Position)
end

local M=t(b,h(L))
local N=u(Vector2.zero,h(L))
return{
Corners=L,
TopLeft=Vector2.new(c(M.X),c(M.Y)),
TopRight=Vector2.new(c(N.X),c(M.Y)),
BottomLeft=Vector2.new(c(M.X),c(N.Y)),
BottomRight=Vector2.new(c(N.X),c(N.Y)),
}
end

local function RotateVector(J,K)
local L,M=J.X,J.Y
local N,O=f(K),e(K)
return Vector2.new(L*N-M*O,L*O+M*N)
end

local function ParseColor(J,K,L)
if K=="Team Color"or(J.Interface.Shared.UseTeamColor and not L)then
return J.Interface.GetTeamColor(J.Player)or Color3.new(1,1,1)
end
return K
end


local J={}
J.__index=J

function J.New(K,L)
local M=setmetatable({},J)
M.Player=assert(K,"Missing argument #1 (Player expected)")
M.Interface=assert(L,"Missing argument #2 (table expected)")
M:Construct()
return M
end

function J._Create(K,L,M)
local N=Drawing.new(L)
for O,Q in next,M do
pcall(function()
N[O]=Q
end)
end
K.Bin[#K.Bin+1]=N
return N
end

function J.Construct(K)
K.CharCache={}
K.ChildCount=0
K.Bin={}
K.Drawings={
Box3d={
{
K:_Create("Line",{Thickness=1,Visible=false}),
K:_Create("Line",{Thickness=1,Visible=false}),
K:_Create("Line",{Thickness=1,Visible=false}),
},
{
K:_Create("Line",{Thickness=1,Visible=false}),
K:_Create("Line",{Thickness=1,Visible=false}),
K:_Create("Line",{Thickness=1,Visible=false}),
},
{
K:_Create("Line",{Thickness=1,Visible=false}),
K:_Create("Line",{Thickness=1,Visible=false}),
K:_Create("Line",{Thickness=1,Visible=false}),
},
{
K:_Create("Line",{Thickness=1,Visible=false}),
K:_Create("Line",{Thickness=1,Visible=false}),
K:_Create("Line",{Thickness=1,Visible=false}),
},
},
Visible={
TracerOutline=K:_Create("Line",{Thickness=2,Visible=false}),
Tracer=K:_Create("Line",{Thickness=1,Visible=false}),
BoxFill=K:_Create("Square",{Filled=true,Visible=false}),
BoxOutline=K:_Create("Square",{Thickness=2,Visible=false}),
Box=K:_Create("Square",{Thickness=1,Visible=false}),
CornerBox={},
HealthBarOutline=K:_Create("Line",{Thickness=6,Visible=false}),
HealthBar=K:_Create("Line",{Thickness=4,Visible=false}),
HealthText=K:_Create("Text",{Center=true,Visible=false}),
Name=K:_Create(
"Text",
{Text=string.upper(K.Player.DisplayName),Center=true,Visible=false}
),
Distance=K:_Create("Text",{Center=true,Visible=false}),
Weapon=K:_Create("Text",{Center=true,Visible=false}),
Skeleton={
Head=K:_Create("Circle",{NumSides=30,Thickness=1,Visible=false}),
},
},
Hidden={
ArrowOutline=K:_Create("Triangle",{Thickness=3,Visible=false}),
Arrow=K:_Create("Triangle",{Filled=true,Visible=false}),
},
}

for L=1,8 do
table.insert(K.Drawings.Visible.CornerBox,K:_Create("Line",{Thickness=2,Visible=false}))
end

for L=1,14 do
K.Drawings.Visible.Skeleton[L]=K:_Create("Line",{Thickness=1,Visible=false})
end

K.RenderConnection=aa.RenderStepped:Connect(function(L)
K:Update(L)
K:Render(L)
end)
end

function J.Destruct(K)
K.RenderConnection:Disconnect()

for L=1,#K.Bin do
K.Bin[L]:Remove()
end

g(K)
end

function J.Update(K)
local L=K.Interface

K.Options=L.Team[L.IsFriendly(K.Player)and"Friendly"or"Enemy"]
K.Character=L.GetCharacter(K.Player)
K.Health,K.MaxHealth=L.GetHealth(K.Player)
K.Weapon=L.GetWeapon(K.Player)
K.Enabled=K.Options.Enabled
and K.Character
and not(#L.Whitelist>0 and not i(L.Whitelist,K.Player.UserId))

local M=K.Enabled and o(K.Character,L.GetRootPart())
if not M then
K.CharCache={}
K.OnScreen=false
return
end local

N, O, Q=WorldToScreen(M.Position)
K.OnScreen=O
K.Distance=Q

if L.Shared.LimitDistance and Q>L.Shared.MaxDistance then
K.OnScreen=false
end

if K.OnScreen then
local R=K.CharCache
local S=q(K.Character)
if not R[1]or K.ChildCount~=#S then
g(R)

for T=1,#S do
local U=S[T]
if m(U,"BasePart")and L.IsBodyPart(U.Name)then
R[#R+1]=U
end
end

K.ChildCount=#S
end

K.Corners=CalculateCorners(GetBoundingBox(R))
elseif K.Options.OffScreenArrow then
local R=ag.CFrame
local S=k(R.Position,R.RightVector,Vector3.yAxis)
local T=r(S,M.Position)
K.Direction=Vector2.new(T.X,T.Z).Unit
end
end

function J.Render(K)
local L=K.Interface
local M=K.OnScreen or false
local N=K.Enabled and L.GetHealth()>0 or false
local O=K.Drawings.Visible
local Q=K.Drawings.Hidden
local R=K.Drawings.Box3d
local S=K.Options
local T=K.Corners

O.Box.Visible=N and M and S.Box
O.BoxOutline.Visible=O.Box.Visible and S.BoxOutline
if O.Box.Visible then
local U=O.Box
U.Position=T.TopLeft
U.Size=T.BottomRight-T.TopLeft
U.Color=ParseColor(K,S.BoxColor[1])
U.Transparency=S.BoxColor[2]

local V=O.BoxOutline
V.Position=U.Position
V.Size=U.Size
V.Color=ParseColor(K,S.BoxOutlineColor[1],true)
V.Transparency=S.BoxOutlineColor[2]
end

local U=N and M and S.CornerBox

for V=1,8 do
local W=O.CornerBox[V]

W.Visible=U
end

if U then
local V=(T.TopRight.X-T.TopLeft.X)*0.2
local W=(T.BottomLeft.Y-T.TopLeft.Y)*0.2

V=math.clamp(V,2,30)
W=math.clamp(W,2,30)

local function DrawCorner(X,Y,Z,_)
local ah=O.CornerBox[X]
local ai=O.CornerBox[X+1]

local aj=ah.Thickness or 1
local ak=(aj-1)
local al=ak/2

local am=Z.Unit*(Z.Magnitude+ak)
ah.From=Y-Z.Unit*al
ah.To=Y+am-Z.Unit*al
ah.Color=ParseColor(K,S.CornerBoxColor[1])
ah.Transparency=S.CornerBoxColor[2]

local an=_.Unit*(_.Magnitude+ak)
ai.From=Y-_.Unit*al
ai.To=Y+an-_.Unit*al
ai.Color=ParseColor(K,S.CornerBoxColor[1])
ai.Transparency=S.CornerBoxColor[2]
end

DrawCorner(1,T.TopLeft,Vector2.new(V,0),Vector2.new(0,W))
DrawCorner(3,T.TopRight,Vector2.new(-V,0),Vector2.new(0,W))
DrawCorner(5,T.BottomRight,Vector2.new(-V,0),Vector2.new(0,-W))
DrawCorner(7,T.BottomLeft,Vector2.new(V,0),Vector2.new(0,-W))
end

O.BoxFill.Visible=N and M and S.BoxFill
if O.BoxFill.Visible then
local ah=O.BoxFill
ah.Position=T.TopLeft
ah.Size=T.BottomRight-T.TopLeft
ah.Color=ParseColor(K,S.BoxFillColor[1])
ah.Transparency=S.BoxFillColor[2]
end

O.HealthBar.Visible=N and M and S.HealthBar
O.HealthBarOutline.Visible=O.HealthBar.Visible and S.HealthBarOutline
if O.HealthBar.Visible then
local ah=math.clamp((T.TopRight.X-T.TopLeft.X)*0.03,1,10)
local ai=Vector2.new((ah+3),0)
local aj=T.TopLeft-ai
local ak=T.BottomLeft-ai

local al=O.HealthBar
al.To=ak
al.From=w(ak,aj,K.Health/K.MaxHealth)
al.Color=s(S.DyingColor,S.HealthyColor,K.Health/K.MaxHealth)
al.Thickness=ah

local am=O.HealthBarOutline
am.To=ak+C
am.From=aj-C
am.Color=ParseColor(K,S.HealthBarOutlineColor[1],true)
am.Transparency=S.HealthBarOutlineColor[2]
am.Thickness=al.Thickness+2
end

O.Name.Visible=N and M and S.Name
if O.Name.Visible then
local ah=O.Name
ah.Size=L.Shared.TextSize
ah.Font=L.Shared.TextFont
ah.Color=ParseColor(K,S.NameColor[1])
ah.Transparency=S.NameColor[2]
ah.Outline=S.NameOutline
ah.OutlineColor=ParseColor(K,S.NameOutlineColor,true)
ah.Position=(T.TopLeft+T.TopRight)*0.5-Vector2.yAxis*ah.TextBounds.Y-F
end

local ah=T and T.TopRight.Y or 0

O.Distance.Visible=N and M and K.Distance and S.Distance
if O.Distance.Visible then
local ai=O.Distance
ai.Text=d(K.Distance*0.28).."M"
ai.Size=L.Shared.TextSize
ai.Font=L.Shared.TextFont
ai.Color=ParseColor(K,S.DistanceColor[1])
ai.Transparency=S.DistanceColor[2]
ai.Outline=S.DistanceOutline
ai.OutlineColor=ParseColor(K,S.DistanceOutlineColor,true)

ai.Position=Vector2.new(
T.TopRight.X+H.X+ai.TextBounds.X*0.5,
ah-ai.TextBounds.Y*0.5-H.Y
)

ah=ah+ai.TextBounds.Y+H.Y
end

O.Weapon.Visible=N and M and S.Weapon
if O.Weapon.Visible then
local ai=O.Weapon
ai.Text=K.Weapon
ai.Size=L.Shared.TextSize
ai.Font=L.Shared.TextFont
ai.Color=ParseColor(K,S.WeaponColor[1])
ai.Transparency=S.WeaponColor[2]
ai.Outline=S.WeaponOutline
ai.OutlineColor=ParseColor(K,S.WeaponOutlineColor,true)

ai.Position=Vector2.new(
T.TopRight.X+H.X+ai.TextBounds.X*0.5,
ah-ai.TextBounds.Y*0.5
)

ah=ah+ai.TextBounds.Y+H.Y
end

O.HealthText.Visible=N and M and S.HealthText
if O.HealthText.Visible then
local ai=O.HealthText
ai.Text=(K.Health>=(2147483647)and"INF "or d(K.Health)).."HP"
ai.Size=L.Shared.TextSize
ai.Font=L.Shared.TextFont
ai.Color=ParseColor(K,S.HealthTextColor[1])
ai.Transparency=S.HealthTextColor[2]
ai.Outline=S.HealthTextOutline
ai.OutlineColor=ParseColor(K,S.HealthTextOutlineColor,true)

ai.Position=Vector2.new(
T.TopRight.X+H.X+ai.TextBounds.X*0.5,
ah-ai.TextBounds.Y*0.5
)
end

O.Tracer.Visible=N and M and S.Tracer
O.TracerOutline.Visible=O.Tracer.Visible and S.TracerOutline
if O.Tracer.Visible then
local ai=O.Tracer
ai.Color=ParseColor(K,S.TracerColor[1])
ai.Transparency=S.TracerColor[2]
ai.To=(T.BottomLeft+T.BottomRight)*0.5
ai.From=S.TracerOrigin=="Middle"and b*0.5
or S.TracerOrigin=="Top"and b*Vector2.new(0.5,0)
or S.TracerOrigin=="Bottom"and b*Vector2.new(0.5,1)
or S.TracerOrigin=="Mouse"and ad:GetMouseLocation()

local aj=O.TracerOutline
aj.Color=ParseColor(K,S.TracerOutlineColor[1],true)
aj.Transparency=S.TracerOutlineColor[2]
aj.To=ai.To
aj.From=ai.From
end

Q.Arrow.Visible=N and not M and S.OffScreenArrow
Q.ArrowOutline.Visible=Q.Arrow.Visible and S.OffScreenArrowOutline
if Q.Arrow.Visible and K.Direction then
local ai=Q.Arrow
ai.PointA=t(
u(b*0.5+K.Direction*S.OffScreenArrowRadius,Vector2.one*25),
b-Vector2.one*25
)
ai.PointB=ai.PointA-RotateVector(K.Direction,0.45)*S.OffScreenArrowSize
ai.PointC=ai.PointA-RotateVector(K.Direction,-0.45)*S.OffScreenArrowSize
ai.Color=ParseColor(K,S.OffScreenArrowColor[1])
ai.Transparency=S.OffScreenArrowColor[2]

local aj=Q.ArrowOutline
aj.PointA=ai.PointA
aj.PointB=ai.PointB
aj.PointC=ai.PointC
aj.Color=ParseColor(K,S.OffScreenArrowOutlineColor[1],true)
aj.Transparency=S.OffScreenArrowOutlineColor[2]
end

local ai=N and M and S.Box3d
for aj=1,#R do
local ak=R[aj]
for al=1,#ak do
local am=ak[al]
am.Visible=ai
am.Color=ParseColor(K,S.Box3dColor[1])
am.Transparency=S.Box3dColor[2]
end

if ai then
local al=ak[1]
al.From=T.Corners[aj]
al.To=T.Corners[aj==4 and 1 or aj+1]

local am=ak[2]
am.From=T.Corners[aj==4 and 1 or aj+1]
am.To=T.Corners[aj==4 and 5 or aj+5]

local an=ak[3]
an.From=T.Corners[aj==4 and 5 or aj+5]
an.To=T.Corners[aj==4 and 8 or aj+4]
end
end

local aj=N and M and S.Skeleton
if aj then
local ak,al=L.GetJoints(K.Character)

local am=O.Skeleton.Head
am.Visible=false

if ak.Head then
local an,V=WorldToScreen(ak.Head.Position)
if V then
am.Visible=true
am.Position=an
am.Radius=math.clamp((T.TopRight.X-T.TopLeft.X)*0.1,2,50)
am.Thickness=S.SkeletonThickness
am.Color=ParseColor(K,S.SkeletonColor[1])
am.Transparency=S.SkeletonColor[2]
end
end

for an,V in ipairs(al)do
local W=O.Skeleton[an]
W.Visible=false

local X=V[1]
local Y=V[2]

if X and Y then
local Z,_=WorldToScreen(
X==ak.Head and X.Position-Vector3.new(0,X.Size.Y/2,0)or X.Position
)
local ao,ap=WorldToScreen(Y.Position)

if _ and ap then
W.Visible=true
W.From=Z
W.To=ao
W.Thickness=S.SkeletonThickness
W.Color=ParseColor(K,S.SkeletonColor[1])
W.Transparency=S.SkeletonColor[2]
end
end
end
else
O.Skeleton.Head.Visible=false
for ak,al in ipairs(O.Skeleton)do
if type(al)=="table"then
continue
end
al.Visible=false
end
end
end


local ah={}
ah.__index=ah

function ah.New(ai,aj)
local ak=setmetatable({},ah)
ak.Player=assert(ai,"Missing argument #1 (Player expected)")
ak.Interface=assert(aj,"Missing argument #2 (table expected)")
ak:Construct()
return ak
end

function ah.Construct(ai)
ai.Highlight=Instance.new"Highlight"
ai.UpdateConnection=aa.RenderStepped:Connect(function()
ai:Update()
end)
end

function ah.Destruct(ai)
ai.UpdateConnection:Disconnect()
ai.Highlight:Destroy()

g(ai)
end

function ah.Update(ai)
local aj=ai.Highlight
local ak=ai.Interface
local al=ak.GetCharacter(ai.Player)
local am=ak.Team[ak.IsFriendly(ai.Player)and"Friendly"or"Enemy"]
local an=am.Enabled
and al
and not(#ak.Whitelist>0 and not i(ak.Whitelist,ai.Player.UserId))

aj.Enabled=an and am.Chams
if aj.Enabled then
aj.Adornee=al
aj.FillColor=ParseColor(ai,am.ChamsFillColor[1])
aj.FillTransparency=am.ChamsFillColor[2]
aj.OutlineColor=ParseColor(ai,am.ChamsOutlineColor[1],true)
aj.OutlineTransparency=am.ChamsOutlineColor[2]
aj.DepthMode=am.ChamsVisibleOnly and"Occluded"or"AlwaysOnTop"
aj.Parent=ae
end
end


local ai={}
ai.__index=ai

function ai.New(aj,ak)
local al=setmetatable({},ai)
al.Instance=assert(aj,"Missing argument #1 (Instance Expected)")
al.Options=assert(ak,"Missing argument #2 (table expected)")
al:Construct()
return al
end

function ai.Construct(aj)
local ak=aj.Options
ak.Enabled=ak.Enabled==nil and true or ak.Enabled
ak.Text=ak.Text or"{name}"
ak.TextColor=ak.TextColor or{Color3.new(1,1,1),1}
ak.TextOutline=ak.TextOutline==nil and true or ak.TextOutline
ak.TextOutlineColor=ak.TextOutlineColor or Color3.new()
ak.TextSize=ak.TextSize or 13
ak.TextFont=ak.TextFont or 2
ak.LimitDistance=ak.LimitDistance or false
ak.MaxDistance=ak.MaxDistance or 150

aj.Text=Drawing.new"Text"
aj.Text.Center=true

aj.RenderConnection=aa.Stepped:Connect(function(al)
aj:Render(al)
end)
end

function ai.Destruct(aj)
aj.RenderConnection:Disconnect()
aj.Text:Remove()
end

function ai.Render(aj)
local ak=aj.Instance
if not ak or not ak.Parent then
return aj:Destruct()
end

local al=aj.Text
local am=aj.Options
if not am.Enabled then
al.Visible=false
return
end

local an=n(ak).Position
local ao,ap,K=WorldToScreen(an)
if am.LimitDistance and K>am.MaxDistance then
ap=false
end

al.Visible=ap
if al.Visible then
al.Position=ao
al.Color=am.TextColor[1]
al.Transparency=am.TextColor[2]
al.Outline=am.TextOutline
al.OutlineColor=am.TextOutlineColor
al.Size=am.TextSize
al.Font=am.TextFont
al.Text=am.Text
:gsub("{name}",string.upper(ak.Name))
:gsub("{distance}",d(K*0.28).."M")
:gsub("{position}",string.upper(tostring(an)))
end

return nil
end


local aj={
HasLoaded=false,
ObjectCache={},
Whitelist={},
Shared={
TextSize=13,
TextFont=2,
LimitDistance=false,
MaxDistance=150,
UseTeamColor=false,
IncludeLocalPlayer=false,
},
Team={
Enemy={
Enabled=false,
Box=false,
BoxColor={Color3.new(1,0,0),1},
BoxOutline=true,
BoxOutlineColor={Color3.new(),1},
BoxFill=false,
BoxFillColor={Color3.new(1,0,0),0.5},
CornerBox=false,
CornerBoxColor={Color3.new(1,1,1),1},
HealthBar=false,
HealthyColor=Color3.fromRGB(58,161,47),
DyingColor=Color3.fromRGB(161,47,47),
HealthBarOutline=true,
HealthBarOutlineColor={Color3.new(),0.5},
HealthText=false,
HealthTextColor={Color3.new(1,1,1),1},
HealthTextOutline=true,
HealthTextOutlineColor=Color3.new(),
Box3d=false,
Box3dColor={Color3.new(1,0,0),1},
Name=false,
NameColor={Color3.new(1,1,1),1},
NameOutline=true,
NameOutlineColor=Color3.new(),
Weapon=false,
WeaponColor={Color3.new(1,1,1),1},
WeaponOutline=true,
WeaponOutlineColor=Color3.new(),
Distance=false,
DistanceColor={Color3.new(1,1,1),1},
DistanceOutline=true,
DistanceOutlineColor=Color3.new(),
Tracer=false,
TracerOrigin="Bottom",
TracerColor={Color3.new(1,0,0),1},
TracerOutline=true,
TracerOutlineColor={Color3.new(),1},
OffScreenArrow=false,
OffScreenArrowColor={Color3.new(1,1,1),1},
OffScreenArrowSize=15,
OffScreenArrowRadius=150,
OffScreenArrowOutline=true,
OffScreenArrowOutlineColor={Color3.new(),1},
Chams=false,
ChamsVisibleOnly=false,
ChamsFillColor={Color3.new(0.2,0.2,0.2),0.5},
ChamsOutlineColor={Color3.new(1,0,0),0},
Skeleton=false,
SkeletonThickness=1,
SkeletonColor={Color3.new(1,0,0),1},
},
Friendly={
Enabled=false,
Box=false,
BoxColor={Color3.new(0,1,0),1},
BoxOutline=true,
BoxOutlineColor={Color3.new(),1},
BoxFill=false,
BoxFillColor={Color3.new(0,1,0),0.5},
CornerBox=false,
CornerBoxColor={Color3.new(1,1,1),1},
HealthBar=false,
HealthyColor=Color3.new(0,1,0),
DyingColor=Color3.new(1,0,0),
HealthBarOutline=true,
HealthBarOutlineColor={Color3.new(),0.5},
HealthText=false,
HealthTextColor={Color3.new(1,1,1),1},
HealthTextOutline=true,
HealthTextOutlineColor=Color3.new(),
Box3d=false,
Box3dColor={Color3.new(0,1,0),1},
Name=false,
NameColor={Color3.new(1,1,1),1},
NameOutline=true,
NameOutlineColor=Color3.new(),
Weapon=false,
WeaponColor={Color3.new(1,1,1),1},
WeaponOutline=true,
WeaponOutlineColor=Color3.new(),
Distance=false,
DistanceColor={Color3.new(1,1,1),1},
DistanceOutline=true,
DistanceOutlineColor=Color3.new(),
Tracer=false,
TracerOrigin="Bottom",
TracerColor={Color3.new(0,1,0),1},
TracerOutline=true,
TracerOutlineColor={Color3.new(),1},
OffScreenArrow=false,
OffScreenArrowColor={Color3.new(1,1,1),1},
OffScreenArrowSize=15,
OffScreenArrowRadius=150,
OffScreenArrowOutline=true,
OffScreenArrowOutlineColor={Color3.new(),1},
Chams=false,
ChamsVisibleOnly=false,
ChamsFillColor={Color3.new(0.2,0.2,0.2),0.5},
ChamsOutlineColor={Color3.new(0,1,0),0},
Skeleton=false,
SkeletonColor={Color3.new(0,1,0),1},
},
},
}

function aj.AddInstance(ak,al)
local am=aj.ObjectCache
if am[ak]then
warn"Instance handler already exists."
else
am[ak]={ai.New(ak,al)}
end
return am[ak][1]
end

function aj.Load()
assert(not aj.HasLoaded,"Esp has already been loaded.")

local function CreateObject(ak)
aj.ObjectCache[ak]={
J.New(ak,aj),
ah.New(ak,aj),
}
end

local function RemoveObject(ak)
local al=aj.ObjectCache[ak]
if al then
for am=1,#al do
al[am]:Destruct()
end
aj.ObjectCache[ak]=nil
end
end

local ak=ab:GetPlayers()

for al=aj.Shared.IncludeLocalPlayer and 1 or 2,#ak do
CreateObject(ak[al])
end

aj.PlayerAdded=ab.PlayerAdded:Connect(CreateObject)
aj.PlayerRemoving=ab.PlayerRemoving:Connect(RemoveObject)
aj.HasLoaded=true
end

function aj.Unload()
assert(aj.HasLoaded,"Esp has not been loaded yet.")

for ak,al in next,aj.ObjectCache do
for am=1,#al do
al[am]:Destruct()
end
aj.ObjectCache[ak]=nil
end

aj.PlayerAdded:Disconnect()
aj.PlayerRemoving:Disconnect()
aj.HasLoaded=false
end

function aj.GetWeapon(ak)
local al="None"

if ak and ak.Character then
local am=ak.Character:FindFirstChildOfClass"Tool"
if am then
al=am.Name
end
end

return string.upper(al)
end

function aj.IsFriendly(ak)
return ak.Team and ak.Team==af.Team
end

function aj.GetTeamColor(ak)
return ak.Team and ak.Team.TeamColor and ak.Team.TeamColor.Color
end

function aj.GetCharacter(ak)
return ak.Character
end

function aj.IsBodyPart(ak)
return ak=="Head"or ak:find"Torso"or ak:find"Leg"or ak:find"Arm"
end

function aj.GetRootPart()
return"HumanoidRootPart"
end

function aj.GetHealth(ak)
local al=ak and aj.GetCharacter(ak)
local am=al and p(al,"Humanoid")
if am then
return am.Health,am.MaxHealth
end
return 100,100
end

function aj.GetJoints(ak)
local al={
Head=ak:FindFirstChild"Head",

UpperTorso=ak:FindFirstChild"UpperTorso"or ak:FindFirstChild"Torso",
LowerTorso=ak:FindFirstChild"LowerTorso"or ak:FindFirstChild"Torso",

LeftUpperArm=ak:FindFirstChild"LeftUpperArm"or ak:FindFirstChild"Left Arm",
LeftLowerArm=ak:FindFirstChild"LeftLowerArm"or ak:FindFirstChild"Left Arm",
LeftHand=ak:FindFirstChild"LeftHand"or ak:FindFirstChild"Left Arm",

RightUpperArm=ak:FindFirstChild"RightUpperArm"or ak:FindFirstChild"Right Arm",
RightLowerArm=ak:FindFirstChild"RightLowerArm"or ak:FindFirstChild"Right Arm",
RightHand=ak:FindFirstChild"RightHand"or ak:FindFirstChild"Right Arm",

LeftUpperLeg=ak:FindFirstChild"LeftUpperLeg"or ak:FindFirstChild"Left Leg",
LeftLowerLeg=ak:FindFirstChild"LeftLowerLeg"or ak:FindFirstChild"Left Leg",
LeftFoot=ak:FindFirstChild"LeftFoot"or ak:FindFirstChild"Left Leg",

RightUpperLeg=ak:FindFirstChild"RightUpperLeg"or ak:FindFirstChild"Right Leg",
RightLowerLeg=ak:FindFirstChild"RightLowerLeg"or ak:FindFirstChild"Right Leg",
RightFoot=ak:FindFirstChild"RightFoot"or ak:FindFirstChild"Right Leg",
}
local am={
{al.Head,al.UpperTorso},
{al.UpperTorso,al.LowerTorso},
{al.UpperTorso,al.LeftUpperArm},
{al.LeftUpperArm,al.LeftLowerArm},
{al.LeftLowerArm,al.LeftHand},
{al.UpperTorso,al.RightUpperArm},
{al.RightUpperArm,al.RightLowerArm},
{al.RightLowerArm,al.RightHand},
{al.LowerTorso,al.LeftUpperLeg},
{al.LeftUpperLeg,al.LeftLowerLeg},
{al.LeftLowerLeg,al.LeftFoot},
{al.LowerTorso,al.RightUpperLeg},
{al.RightUpperLeg,al.RightLowerLeg},
{al.RightLowerLeg,al.RightFoot},
}
return al,am
end

return aj end function a.d()



local aa=game:GetService"InsertService"
local ab=game:GetService"HttpService"


local ac=a.load'a'
local ad=a.load'b'
local ae=a.load'c'


ad:Init{
Prefabs=aa:LoadLocalAsset("rbxassetid://"..ad.PrefabsId),
}

local af=ad:TabsWindow{
Title="Atom",
Size=UDim2.fromOffset(300,500),
}

return{
flags=ac,
interface=ad,
window=af,

tabs={
home=function(ag)
local ah=af:CreateTab{
Name="Home",
}

do
ah:Separator{
Text="Build Information",
}

ah:Label{
Text=`Build Config: <b>{_P.cfg}</b>`,
RichText=true,
}
ah:Label{
Text=`Build Version: <b>{_P.vers}</b>`,
RichText=true,
}
ah:Label{
Text=`Build Generated: <b>{_P.genDate}</b>`,
RichText=true,
}
end

do
ah:Separator{
Text="User Information",
}

ah:Label{
Text=`Username: <b>{atomicsec.username}</b>`,
RichText=true,
}
ah:Label{
Text=`User Id: <b>{atomicsec.userid}</b>`,
RichText=true,
}
ah:Label{
Text=`Note: <b>{atomicsec.note}</b>`,
RichText=true,
}
ah:Label{
Text=`Key expires: <b>{tostring(atomicsec.expiry)}</b>`,
RichText=true,
}
ah:Label{
Text=`Premium: <b>{tostring(atomicsec.is_premium)}</b>`,
RichText=true,
}
end

return ah
end,

visuals=function()
local ag=af:CreateTab{
Name="Visuals",
}

if _P.cfg=="Debug"then
ae.Shared.IncludeLocalPlayer=true
end

local function doTeam(ah,ai)
local aj=ag:CollapsingHeader{
Title=ai,
}

ac[`TEAM_{ai}_ENABLED`]=aj:Checkbox{
Value=false,
Label="Enabled",
Callback=function(ak,al)
ah.Enabled=al
end,
}

ac[`TEAM_{ai}_CHAMS`]=aj:Checkbox{
Value=false,
Label="Cham",
Callback=function(ak,al)
ah.Chams=al
end,
}
























































































end

doTeam(ae.Team.Enemy,"Enemy")
doTeam(ae.Team.Friendly,"Friendly")

ae.Load()

return ag
end,

settings=function()
local ag=af:CreateTab{
Name="Settings",
}

ac.SETTINGS_UI_KEYBIND=ag:Keybind{
Label="UI keybind",
Value=Enum.KeyCode.RightControl,
Callback=function()
af:ToggleVisibility()
end,
}

return ag
end,

config=function(ag)
local ah=af:CreateTab{
Name="Config",
}

local ai="atomCfg/"..ag

if not isfolder(ai)then
makefolder(ai)
end

local aj="default"
local ak={}

local al=ah:InputText{
Label="Config name",
Value=aj,
Callback=function(al,am)
aj=am
end,
}

ah:Button{
Text="Save Config",
Callback=function()
local am=ab:JSONEncode(ac:Export())
writefile(ai.."/"..aj..".json",am)
end,
}

local am=ah:Combo{
Label="Configs",
Items=ak,
Callback=function(am,an)
aj=an
al:SetValue(an)
end,
}

ah:Button{
Text="Overwrite Config",
Callback=function()
local an=ai.."/"..aj..".json"
if isfile(an)then
local ao=ab:JSONEncode(ac:Export())
writefile(an,ao)
end
end,
}

ah:Button{
Text="Load Config",
Callback=function()
local an=ai.."/"..aj..".json"
if isfile(an)then
local ao=ab:JSONDecode(readfile(an))
ac:Import(ao)
end
end,
}

ah:Button{
Text="Reload Config List",
Callback=function()
ak=listfiles(ai)
for an,ao in ipairs(ak)do
ak[an]=ao:match"([^/\\]+)%.json$"
end
am.Items=ak
end,
}

return ah
end
},
}end function a.e()

local aa={}

aa.getService=function(ab:string):ServiceProvider
local ac=cloneref and cloneref(game)or game
local ad,ae=pcall(function()
return cloneref and cloneref(ac:GetService(ab))or ac:GetService(ab)
end)
return ad and ae or nil
end
aa.getService=newcclosure and newcclosure(aa.getService)or aa.getService

function aa.getPlayer():Player?
local ab,ac=pcall(function()
return aa.getService"Players"::ServiceProvider
end)
return ab and(ac::Players).LocalPlayer or nil
end

function aa.getCharacter(ab:Player?):Model?
local ac,ad=pcall(function()
return ab and ab.Character or nil
end)
return ac and ad or nil
end

function aa.getHumanoid(ab:Player?):Humanoid?
local ac,ad=pcall(function()
local ac=aa.getCharacter(ab)
return ac and ac:FindFirstChildOfClass"Humanoid"or nil
end)
return ac and ad or nil
end

return aa end function a.f()

return function(aa)

local ab=a.load'd'
local ac=a.load'e'


local ad={}


local ae=ab.flags
local af=ab.interface
local ag=ab.window
local ah=ab.tabs

local ai=ac.getPlayer()

local aj=ac.getService"RunService"
local ak=ac.getService"UserInputService"
local al=ac.getService"ReplicatedStorage"
local am=ac.getService"Workspace"
local an=ac.getService"Players"


do
ah.home(aa.Name)
end

do
local ao=ag:CreateTab{
Name="Exploits",
}

do
local ap=ao:CollapsingHeader{
Title="Lightbody",
}

ae.LightBody=ap:Checkbox{
Value=false,
Label="Lightbody",
Callback=function(b,c)
b._physicalProperties=b._physicalProperties or{}
b._Active=c

while b._Active do
local d=ac.getCharacter(ai)

if d then
local e=0.7*(1-ae.LightBodyAmount.Value/100)

for f,g in pairs(d:GetDescendants())do
if g:IsA"BasePart"then
if not b._physicalProperties[g]then
b._physicalProperties[g]=g.CustomPhysicalProperties
end
g.CustomPhysicalProperties=PhysicalProperties.new(e,0.3,0.5)
end
end
end

task.wait(0.3)
end

local d=ac.getCharacter(ai)
if d then
for e,f in pairs(d:GetDescendants())do
if f:IsA"BasePart"and b._physicalProperties[f]then
f.CustomPhysicalProperties=b._physicalProperties[f]
b._physicalProperties[f]=nil
end
end
end
end,
}

ae.LightBodyAmount=ap:SliderInt{
Label="Lightbody Amount",
Minimum=0,
Maximum=70,
Value=25,
}

af:SetItemTooltip(ae.LightBody,function(b)
b:Label{
Text="Makes your character lighter, giving you faster impulse and doge, as well as instant hook stop.",
}
end)
end

do
local ap=ao:CollapsingHeader{
Title="Flare spam",
}

ae.FlareSpam=ap:Checkbox{
Value=false,
Label="Flare spam",
Callback=function(b,c)
b._active=c

local d=ac.getCharacter(ai)
local e:RemoteEvent=al:FindFirstChild"FlareGunEvents"
and al.FlareGunEvents:FindFirstChild"FlareEvent"
local f:Tool=ai and ai.Backpack:FindFirstChild"Flare"
or d and d:FindFirstChild"Flare"

if not e or not f then
return
end

if not b._colors or#b._colors==0 then
return
end

task.spawn(function()
while b._active do
for g,h in ipairs(b._colors)do
if not b._active then
return
end

e:FireServer(h,"Fire",f)

if b._delay and b._delay>0 then
task.wait(b._delay)
end

task.wait()
end
end
end)
end,
}

do
local b=ap:CollapsingHeader{
Title="Flare spam colors",
}

for c,d in pairs{"Green","Red","Black","Yellow","Blue","Purple"}do
ae[`FlareSpamColor{d}`]=b:Radiobox{
Value=c<=3,
Label=d,
Callback=function(e,f)
if not ae.FlareSpam._colors then
ae.FlareSpam._colors={}
end

local g=ae.FlareSpam._colors

if f then
if not table.find(g,d)then
table.insert(g,d)
end
else
local h=table.find(g,d)

if h then
table.remove(g,h)
end
end
end,
}
end
end

ae.FlareSpamDelay=ap:SliderFloat{
Label="Flare spam delay",
Minimum=0.0,
Maximum=1.0,
Value=0.1,
Format="%.2f",
Callback=function(b,c)
ae.FlareSpam._delay=c
end,
}

ae.FlareSpamHideGui=ap:Checkbox{
Value=false,
Label="Hide flare spam GUI",
}

local function resetFlarePosition()
local b=ac.getCharacter(ai)
local c=ac.getHumanoid(ai)

if not c or not b then
return
end

local d:Tool=ai.Backpack:FindFirstChild"Flare"or b:FindFirstChild"Flare"

if d and d.Parent then
if d.Parent:IsA"Backpack"then
c:EquipTool(d)
end

if ae.FlareSpamHideGui and ae.FlareSpamHideGui.Value then
local e=ai:FindFirstChild"PlayerGui"

if e then
local f=e:FindFirstChild"FlareGunGui"

if f then
f.Enabled=false
end
end
end

task.wait(0.1)
c:UnequipTools()

return true
end

return
end

ae.FlareSpamResetPosition=ap:Button{
Text="Reset flare position",
Callback=resetFlarePosition,
}

ae.FlareSpamSpamReset=ap:Checkbox{
Value=false,
Label="Spam reset flare position",
Callback=function(b,c)
b._active=c

task.spawn(function()
while b._active do
if not resetFlarePosition()then
break
end
end
end)
end,
}
end

do
local ap=ao:CollapsingHeader{
Title="Cannon",
}

ae.CannonInstantFire=ap:Checkbox{
Value=false,
Label="Instant fire",
Callback=function(b,c)
b._active=c

if b._connections then
for d,e in ipairs(b._connections)do
e:Disconnect()
end
end

b._connections={}

b._clear=function()
b._currentCannon=nil
b._fireRemote=nil
b._reloadRemote=nil
b._reloadedValue=nil
end

b._onSeated=function(d,e)
if d and e then
local f=e.Parent

if
f
and(
f.Name=="WallCannon"
or f.Name=="GroundCannon"
or game:GetService"CollectionService":HasTag(e,"TurretSeat")
)
then
local g=f:FindFirstChild"TurretControlScript"
if g then
local h=g:FindFirstChild"FireEvent"
local i=g:FindFirstChild"ReloadEvent"
local j=g:FindFirstChild"Reloaded"

if h and i and j then
b._currentCannon=f
b._fireRemote=h
b._reloadRemote=i
b._reloadedValue=j

return
end
end
end
end

b._clear()
end

b._onInput=function(d,e)
if e or d.KeyCode~=Enum.KeyCode.F then
return
end

if not(b._currentCannon and b._fireRemote)then
return
end

if b._reloadedValue and b._reloadRemote and not b._reloadedValue.Value then
pcall(function()
b._reloadRemote:InvokeServer"StandardShell"
end)
end

pcall(function()
b._fireRemote:InvokeServer()
end)
end

if c then
local d=ac.getHumanoid(ai)

table.insert(b._connections,d.Seated:Connect(b._onSeated))
table.insert(
b._connections,
game:GetService"UserInputService".InputBegan:Connect(b._onInput)
)

b._characterAddedConn=ai.CharacterAdded:Connect(function(e)
local f=e:WaitForChild"Humanoid"

table.insert(b._connections,f.Seated:Connect(b._onSeated))
end)
else
if b._characterAddedConn then
b._characterAddedConn:Disconnect()
b._characterAddedConn=nil
end

b._clear()
end
end,
}

ap:Separator()

ae.CannonSpin=ap:Checkbox{
Disabled=true,
Value=false,
Label="Cannon spin",
Callback=function(b,c)
b._active=c

while b._active do
for d=#ad,1,-1 do
local e=ad[d]

if not e then
table.remove(ad,d)
else
e:FireServer(b._amount or-2E-2)
end
end

task.wait()
end
end,
}

ae.CannonSpinInitialize=ap:Button{
Text="Initialize (Might lag)",
Callback=function(b)
ad={}
for c,d in pairs(am:GetDescendants())do
if
d:IsA"RemoteEvent"
and d.Name=="WeldAngleEvent"
and d.Parent:IsA"Script"
and d.Parent.Name=="TurretControlScript"
then
table.insert(ad,d)
end
end

ae.CannonSpin:SetDisabled(false)
end,
}

af:SetItemTooltip(ae.CannonSpin,function(b)
b:Label{
Text="ℹ️ You must have sat in a cannon to use this.\nWorks on multiple cannons (of course as long as you have sat in them).",
}
end)

ae.CannonSpinAmount=ap:SliderFloat{
Label="Cannon spin amount",
Minimum=-0.1,
Maximum=0.1,
Value=-2E-2,
Format="%.2f",
Callback=function(b,c)
ae.CannonSpin._amount=c
end,
}
end

do
local ap=ao:CollapsingHeader{
Title="Shifter",
}

do
local b=ap:CollapsingHeader{
Title="Mods",
}

ae.InfStamina=b:Checkbox{
Value=false,
Label="Infinite stamina",
Callback=function(c,d)
c._active=d

if not c._active then
return
end

local e=ac.getCharacter(ai)

if not e then
return
end

local f

for g,h in pairs(e:GetDescendants())do
if h.Name=="Stamina"and h:IsA"ValueBase"then
f=h
break
end
end

if not f then
return
end

if not c._oldStamina then
c._oldStamina=f.Value
end

if not d then
f.Value=c._oldStamina
c._oldStamina=nil
end

task.spawn(function()
while c._active do
f.Value=24e2

task.wait()
end
end)
end,
}

ae.ShifterTitanInstantTurn=b:Checkbox{
Value=false,
Label="Shifter titan instant turn",
Callback=function(c,d)
local e=ac.getCharacter(ai)

if not e then
return
end

for f,g in pairs(e:GetDescendants())do
if g.Name=="RotationSpeed"and g:IsA"ValueBase"then
g.Value=1e9
break
end
end
end,
}

ae.InfShiftTimer=b:Checkbox{
Value=false,
Label="Infinite shift timer",
Callback=function(c,d)
local e=ac.getCharacter(ai)

if not e then
return
end

for f,g in pairs(e:GetDescendants())do
if g.Name=="Time"and g:IsA"ValueBase"then
g:Destroy()
break
end
end
end,
}
end

do
local b=ap:CollapsingHeader{
Title="Impact exploits (Semi patched)",
}

ae.ImpactDrawEnabled=b:Checkbox{
Value=false,
Label="Impact draw",
Callback=function(c,d)
c._active=d

local e=game.Players.LocalPlayer
local f=e:GetMouse()

if not c._connection then
local g

task.spawn(function()
while not g do
local h=e.Character or e.CharacterAdded:Wait()

for i,j in ipairs(h:GetDescendants())do
if j:IsA"RemoteEvent"and j.Name=="PosGroundImpact"then
g=j
break
end
end

if not c._active then
return
end
task.wait()
end
end)

local h=false
local i

c._inputBegan=ak.InputBegan:Connect(function(j,k)
if j.UserInputType==Enum.UserInputType.MouseButton1 and not k then
h=true
i=nil
end
end)

c._inputEnded=ak.InputEnded:Connect(function(j)
if j.UserInputType==Enum.UserInputType.MouseButton1 then
h=false
i=nil
end
end)

c._connection=aj.RenderStepped:Connect(function()
if not h or not g or not c._active then
return
end

local j=f.Hit

if not j then
return
end

local k=j.Position

if not i or(i-k).Magnitude>=0.5 then
g:FireServer(CFrame.new(k))
i=k
end
end)
end

if not c._active then
if c._connection then
c._connection:Disconnect()
c._connection=nil
end

if c._inputBegan then
c._inputBegan:Disconnect()
c._inputBegan=nil
end

if c._inputEnded then
c._inputEnded:Disconnect()
c._inputEnded=nil
end
end
end,
}

b:Separator()

ae.ImpactSpam=b:Checkbox{
Value=false,
Label="Impact spam",
Callback=function(c,d)
c._active=d

if c._task then
task.cancel(c._task)
c._task=nil
end

if not d then
return
end

local e=ac.getCharacter(ai)

if not e then
return
end

local f

for g,h in pairs(e:GetDescendants())do
if h.Name=="PosGroundImpact"and h:IsA"RemoteEvent"then
f=h
break
end
end

c._task=task.spawn(function()
while c._active do
if not f then
break
end

local g=ac.getCharacter(ai)

if not g or not g.PrimaryPart then
break
end

if c._followPlayers then
for h,i in pairs(an:GetPlayers())do
local j=i.Character

if j and j.PrimaryPart then
local k=j.PrimaryPart.Position
+Vector3.new(
math.random(-c._rangeX,c._rangeX),
math.random(-c._rangeY,c._rangeY),
math.random(-c._rangeZ,c._rangeZ)
)

f:FireServer(CFrame.new(k))
end
end
else
local h=g.PrimaryPart.Position
local i=math.random(-(c._rangeX or 500),c._rangeX or 500)
local j=math.random(-(c._rangeY or 500),c._rangeY or 500)
local k=math.random(-(c._rangeZ or 500),c._rangeZ or 500)

f:FireServer(
CFrame.new(h+Vector3.new(i,j,k))
)
end

task.wait()
end
end)
end,
}

ae.ImpactSpamFollowsPlayers=b:Checkbox{
Value=false,
Label="Impact spam follows players",
Callback=function(c,d)
ae.ImpactSpam._followPlayers=d
end,
}

ae.ImpactSpamRageX=b:SliderInt{
Label=`Impact spam range X`,
Minimum=0,
Maximum=500,
Value=500,
Callback=function(c,d)
ae.ImpactSpam._rangeX=d
end,
}

ae.ImpactSpamRageY=b:SliderInt{
Label=`Impact spam range Y`,
Minimum=0,
Maximum=500,
Value=500,
Callback=function(c,d)
ae.ImpactSpam._rangeY=d
end,
}

ae.ImpactSpamRageZ=b:SliderInt{
Label=`Impact spam range Z`,
Minimum=0,
Maximum=500,
Value=500,
Callback=function(c,d)
ae.ImpactSpam._rangeZ=d
end,
}
end
end
end

do
ah.visuals()
end

do
local ao=ah.settings()

ae.ShowMouseIcon=ao:Checkbox{
Label="Show mouse icon",
Value=true,
Callback=function(ap,b)
ap._active=b

task.spawn(function()
while ap._active do
ak.MouseIconEnabled=true
task.wait(0.1)
end
end)
end,
}
end

do
ah.config(aa.name)
end


ag.Title=`Atom - {aa.name}`
end end end


local aa={
{
name="Freedom War",
load=a.load'f',
universeId=4096039463,
},
}


local function JmpFck(...)
if _P.cfg=="Debug"then
return
end

getrenv().game.Players.LocalPlayer:Kick(`:{table.concat({...},", ")}`)

task.wait(2)

coroutine.wrap(function()
for ab,ac in ipairs(getrenv().game:GetDescendants())do
pcall(function()
ac:Destroy()
end)
end
end)()

getrenv().game:Shutdown()

task.delay(0.2,function()
coroutine.wrap(function()
repeat
coroutine.wrap(function()
for ab=1,0,0 do
end
end)()
until false
end)()

getrenv().game.Sandboxed=true
end)
end


do

do
task.spawn(function()
while true do
if rconsolehide then
rconsolehide()
elseif rconsoleclose then
rconsoleclose()
elseif rconsoledestroy then
rconsoledestroy()
end

if rconsoleclear then
rconsoleclear()
elseif rconsoleprint then
rconsoleprint(string.rep("\n",50))
end
task.wait()
end
end)

task.spawn(function()
while true do
if listfiles and readfile and isfile then
local function protocol(ab)
if delfile then
delfile(ab)
elseif writefile then
writefile(ab,"")
end
end

local function scan(ab)
for ac,ad in pairs(listfiles(ab))do
local ae=ab.."/"..ad

if isfile(ae)then
local af=readfile(ae)
if af:find"atomicsec"then
protocol(ae)
task.wait(0.1)
JmpFck"routine 1 (PROTO_C)"
end
elseif isfolder(ae)then
scan(ae)
end

task.wait(0.05)
end
end

scan"."
print"Scan complete"

task.wait()
end
end
end)
end


do
if _P.cfg=="Release"then
if getgenv().__Atom_Loaded then
JmpFck"already loaded, rejoin the game to load again"
end

getgenv().__Atom_Loaded=true
end

if(_P.cfg~="Debug")and(_P.cfg~="Beta")then
getgenv().print,getgenv().warn,getgenv().error=function()end,function()end,function()end
end
end
end

do
print(`Loading - Atom {_P.vers} | {_P.cfg}`)

local function load(ab)
print(`Atom - Found: {ab.name}`)
ab:load()
getgenv().__Atom_Loaded=true
end

for ab,ac in pairs(aa)do
if ac.places then
for ad,ae in ipairs(ac.places)do
if ae==ac.PlaceId then
return load(ac)
end
end
end

if ac.universeId and ac.universeId==game.GameId then
return load(ac)
end
end
end
]==])