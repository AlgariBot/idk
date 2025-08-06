local Rgb = Color3.fromRGB
local Theme_Color = Rgb(126, 196, 245)

local G1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlgariBot/idk/refs/heads/main/G1%20Func"))()

local Modmenu_Gui = Instance.new("ScreenGui")
Modmenu_Gui.Name = "Modmenu_Lib"
Modmenu_Gui.Parent = gethui()

--[[
1.04
changelog:
(+) Improved functions
(+) changed CoreGui to gethui
  - gui detection removed 
    > adonis
  • caused by adonis anticheat (coregui detection)

--never--
(?) settings
(?) ui customization

http[1] = library main
http[2] = main scrolling ui
http[3] = gui
http[4] = main background (you can change it Y size)
]]

local Header_Frame = Instance.new("Frame")
Header_Frame.Size = UDim2.new(0, 250, 0, 40)
Header_Frame.Position = UDim2.new(0.05, 0, 0.1, 0)
Header_Frame.BackgroundColor3 = Rgb(24, 40, 49)
Header_Frame.BorderSizePixel = 0
Header_Frame.Active = true
Header_Frame.BackgroundTransparency = 0
Header_Frame.Draggable = true
Header_Frame.Parent = Modmenu_Gui

local Background_Frame = Instance.new("Frame")
Background_Frame.Size = UDim2.new(1, 0, 4, 0)
Background_Frame.Position = UDim2.new(0, 0, 1, 0)
Background_Frame.BackgroundColor3 = Rgb(16, 28, 33)
Background_Frame.BorderSizePixel = 0
Background_Frame.Active = true
Background_Frame.BackgroundTransparency = 0
Background_Frame.Parent = Header_Frame

local Name_Label = Instance.new("TextLabel")
Name_Label.Size = UDim2.new(1, 0, 0.5, 0)
Name_Label.Position = UDim2.new(0.5, 0, 0.5, 0)
Name_Label.Text = "Modded by (yourname)"
Name_Label.TextColor3 = Theme_Color
Name_Label.BackgroundTransparency = 1
Name_Label.Font = "ArialBold"
Name_Label.TextSize = 15
Name_Label.AnchorPoint = Vector2.new(0.5, 0.8)
Name_Label.Parent = Header_Frame

local Version_Label = Instance.new("TextLabel")
Version_Label.Size = UDim2.new(1, 0, 0.2, 0)
Version_Label.Position = UDim2.new(0, 0, 0.76, 0)
Version_Label.Text = "UI made by AlgariBot"
Version_Label.TextColor3 = Theme_Color
Version_Label.BackgroundTransparency = 1
Version_Label.Font = "ArialBold"
Version_Label.TextSize = 10
Version_Label.TextWrapped = true
Version_Label.Parent = Header_Frame

local Action_Frame = Instance.new("Frame")
Action_Frame.Size = UDim2.new(1, 0, 0, 40)
Action_Frame.Position = UDim2.new(0, 0, 1, 0)
Action_Frame.BackgroundColor3 = Rgb(24, 40, 49)
Action_Frame.BorderSizePixel = 0
Action_Frame.Active = true
Action_Frame.BackgroundTransparency = 0
Action_Frame.Parent = Background_Frame

local Hide_Button = Instance.new("TextButton")
Hide_Button.Size = UDim2.new(0.45, 0, 0.6, 0)
Hide_Button.Position = UDim2.new(0.05, 0, 0.2, 0)
Hide_Button.BackgroundColor3 = Rgb(24, 40, 49)
Hide_Button.BorderSizePixel = 0
Hide_Button.Text = "HIDE/KILL (HOLD)"
Hide_Button.TextColor3 = Theme_Color
Hide_Button.BackgroundTransparency = 0
Hide_Button.Font = "Arial"
Hide_Button.TextSize = 12
Hide_Button.Parent = Action_Frame

local Minimize_Button = Instance.new("TextButton")
Minimize_Button.Size = UDim2.new(0.3, 0, 0.6, 0)
Minimize_Button.Position = UDim2.new(0.65, 0, 0.2, 0)
Minimize_Button.BackgroundColor3 = Rgb(24, 40, 49)
Minimize_Button.BorderSizePixel = 0
Minimize_Button.Text = "MINIMIZE"
Minimize_Button.TextColor3 = Theme_Color
Minimize_Button.BackgroundTransparency = 0
Minimize_Button.Font = "Arial"
Minimize_Button.TextSize = 12
Minimize_Button.Parent = Action_Frame

local Icon_Button = Instance.new("ImageButton")
Icon_Button.Size = UDim2.new(0, 40, 0, 40)
Icon_Button.Position = UDim2.new(0.2, 0, 0.2, 0)
Icon_Button.BackgroundColor3 = Rgb(0, 0, 0)
Icon_Button.ImageColor3 = Rgb(255, 255, 255)
Icon_Button.Image = "rbxassetid://72129196095691"
Icon_Button.ImageTransparency = 0.2
Icon_Button.ScaleType = "Fit"
Icon_Button.Parent = Modmenu_Gui
Icon_Button.BackgroundTransparency = 0.5
Icon_Button.Visible = false
Icon_Button.Draggable = true

G1.UICorner(Icon_Button, UDim.new(1, 0))

Icon_Button.AnchorPoint = Vector2.new(0.5, 0.5)

Icon_Button.MouseEnter:Connect(function()
	Icon_Button:TweenSize(UDim2.new(0, 50, 0, 50), "Out", "Linear", 0.1, true)
end)

Icon_Button.MouseLeave:Connect(function()
	Icon_Button:TweenSize(UDim2.new(0, 40, 0, 40), "Out", "Linear", 0.1, true)
end)

Icon_Button.MouseButton1Click:Connect(function()
	Header_Frame.Visible = true
	Icon_Button.Visible = false
	Icon_Button.BackgroundTransparency = 0.5
	Icon_Button.ImageTransparency = 0.2
end)

Minimize_Button.MouseButton1Click:Connect(function()
	Header_Frame.Visible = false
	Icon_Button.Visible = true
end)

Hide_Button.MouseButton1Click:Connect(function()
	Header_Frame.Visible = false
	Icon_Button.Visible = true
	Icon_Button.BackgroundTransparency = 1
	Icon_Button.ImageTransparency = 1
end)

local Scroll_Frame = Instance.new("ScrollingFrame")
Scroll_Frame.Size = UDim2.new(1, 0, 1, 0)
Scroll_Frame.Position = UDim2.new(0, 0, 0, 0)
Scroll_Frame.BorderSizePixel = 0
Scroll_Frame.Parent = Background_Frame
Scroll_Frame.AutomaticCanvasSize = "Y"
Scroll_Frame.ScrollBarThickness = 0
Scroll_Frame.CanvasSize = UDim2.new(0,0,0,0)
Scroll_Frame.BackgroundTransparency = 1

local List_Layout = Instance.new("UIListLayout")
List_Layout.HorizontalAlignment = "Center"
List_Layout.SortOrder = "LayoutOrder"
List_Layout.Padding = UDim.new(0, 2)
List_Layout.Parent = Scroll_Frame

local modmen = {}

function modmen.type(data)
	local Label = Instance.new("TextLabel")
	Label.Size = UDim2.new(1, 0, 0, 20)
	Label.Position = UDim2.new(0.5, 0, 0.5, 0)
	Label.BackgroundColor3 = Rgb(41, 60, 74)
	Label.BorderSizePixel = 0
	Label.Text = data.text or "The Category"
	Label.TextColor3 = Rgb(255, 255, 255)
	Label.BackgroundTransparency = 0
	Label.Font = "ArialBold"
	Label.TextSize = 12
	Label.Parent = Scroll_Frame
end

function modmen.toggle(data)
	local Toggle_Label = Instance.new("TextLabel")
	Toggle_Label.Size = UDim2.new(1, 0, 0, 20)
	Toggle_Label.BackgroundColor3 = Color3.new(0, 0, 0)
	Toggle_Label.BorderSizePixel = 0
	Toggle_Label.Text = data.text or "Toggle"
	Toggle_Label.TextColor3 = Color3.new(255, 255, 255)
	Toggle_Label.BackgroundTransparency = 1
	Toggle_Label.Font = "BuilderSans"
	Toggle_Label.TextSize = 12
	Toggle_Label.TextWrapped = true
	Toggle_Label.TextXAlignment = "Left"
	Toggle_Label.Parent = data.parent or nil

	local Toggle_Background = Instance.new("Frame")
	Toggle_Background.Size = UDim2.new(0.1, 0, 0.6, 0)
	Toggle_Background.Position = UDim2.new(0.87, 0, 0.2, 0)
	Toggle_Background.BackgroundColor3 = Rgb(100, 0, 0)
	Toggle_Background.Parent = Toggle_Label

	G1.UICorner(Toggle_Background, UDim.new(1, 0))

	local Toggle_Marker = Instance.new("Frame")
	Toggle_Marker.Size = UDim2.new(0, 15, 0, 15)
	Toggle_Marker.Position = UDim2.new(0, 0, 0.5, 0)
	Toggle_Marker.BackgroundColor3 = Rgb(200, 0, 0)
	Toggle_Marker.AnchorPoint = Vector2.new(0.5, 0.5)
	Toggle_Marker.Parent = Toggle_Background

	G1.UICorner(Toggle_Marker, UDim.new(1, 0))

	local Toggle_Button = Instance.new("TextButton")
	Toggle_Button.Size = UDim2.new(1, 0, 1, 0)
	Toggle_Button.Position = UDim2.new(0, 0, 0, 0)
	Toggle_Button.Text = ""
	Toggle_Button.BackgroundTransparency = 1
	Toggle_Button.Parent = Toggle_Label

	local Is_Toggled = false
	Toggle_Button.MouseButton1Click:Connect(function()
		Is_Toggled = not Is_Toggled
		if Is_Toggled then
			Toggle_Background.BackgroundColor3 = Rgb(0, 100, 0)
			Toggle_Marker.BackgroundColor3 = Rgb(0, 200, 0)
			Toggle_Marker.Position = UDim2.new(0.9, 0, 0.5, 0)
		else
			Toggle_Background.BackgroundColor3 = Rgb(100, 0, 0)
			Toggle_Marker.BackgroundColor3 = Rgb(200, 0, 0)
			Toggle_Marker.Position = UDim2.new(0, 0, 0.5, 0)
		end
	end)

	return {Toggle_Button}
end

function modmen.category(data)
	local Category_Button = Instance.new("TextButton")
	Category_Button.Size = UDim2.new(1, 0, 0, 30)
	Category_Button.BackgroundColor3 = Rgb(24, 40, 49)
	Category_Button.BorderSizePixel = 0
	Category_Button.Text = "▽  " .. data.name .. "  ▽" or "▽  nil  ▽"
	Category_Button.TextColor3 = Rgb(255, 255, 255)
	Category_Button.BackgroundTransparency = 0
	Category_Button.Font = "BuilderSans"
	Category_Button.TextSize = 14
	Category_Button.Parent = data.parent

	local Is_Opened = false

	local Category_Container = Instance.new("Frame")
	Category_Container.Size = UDim2.new(1, 0, 0, 0)
	Category_Container.Active = true
	Category_Container.BackgroundTransparency = 1
	Category_Container.Parent = data.parent
	Category_Container.Visible = false
	Category_Container.AutomaticSize = "Y"

	local Category_Layout = Instance.new("UIListLayout")
	Category_Layout.HorizontalAlignment = "Center"
	Category_Layout.SortOrder = "LayoutOrder"
	Category_Layout.Padding = UDim.new(0, 2)
	Category_Layout.Parent = Category_Container

	Category_Button.MouseButton1Click:Connect(function()
		Is_Opened = not Is_Opened
		if Is_Opened then
			Category_Button.Text = "△  " .. Name .. "  △"
			Category_Container.Visible = true
		else
			Category_Button.Text = "▽  " .. Name .. "  ▽"
			Category_Container.Visible = false
		end
	end)

	return {Category_Container}
end

function modmen.button(data)
	local Click_Button = Instance.new("TextButton")
	Click_Button.Size = UDim2.new(1, 0, 0, 26)
	Click_Button.BackgroundColor3 = Rgb(49, 74, 93)
	Click_Button.BorderSizePixel = 0
	Click_Button.Text = "  " .. data.text or "  button"
	Click_Button.TextColor3 = Rgb(255, 255, 255)
	Click_Button.BackgroundTransparency = 0
	Click_Button.Font = "BuilderSans"
	Click_Button.TextXAlignment = "Left"
	Click_Button.TextWrapped = true
	Click_Button.TextSize = 14
	Click_Button.Parent = data.parent
	return {Click_Button}
end

function modmen.label(data)
	local Label = Instance.new("TextLabel")
	Label.Size = UDim2.new(0.95, 0, 0, 0)
	Label.Text = data.text or "No Text"
	Label.TextColor3 = Rgb(255, 255, 255)
	Label.BackgroundTransparency = 1
	Label.Font = "BuilderSans"
	Label.TextSize = 13
	Label.TextXAlignment = "Left"
	Label.TextYAlignment = "Top"
	Label.AutomaticSize = "Y"
	Label.Parent = data.parent or nil
	return {Label}
end

function modmen.icon(Img)
	Icon_Button.Image = Img
end

function modmen.name(Text)
	Name_Label.Text = Text
end

function modmen.guiname(Text)
	Modmenu_Gui.Name = Text
end

function modmen.version(txt)
	Version_Label.Text = txt
end

function modmen.iconcorner(vl)
	G1.UICorner(Icon_Button,vl)
end

function modmen.iconline(data)
	G1.UIStroke(Icon_Button,data.range,data.color)
end

return {modmen, Scroll_Frame, Modmenu_Gui, Background_Frame}
