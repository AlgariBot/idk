local ui = Instance.new("ScreenGui")
ui.Name = "G2"
ui.Parent = game.CoreGui

local G1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlgariBot/idk/refs/heads/main/G1%20Func"))()

-- 0.2.3

local rgb = Color3.fromRGB
local vec3 = Vector3.new
local udi = UDim.new

ui.ClipToDeviceSafeArea = false

local header = Instance.new("Frame")
header.Size = UDim2.new(0, 350, 0, 40)
header.Position = UDim2.new(0.05, 0, 0.1, 0)
header.BackgroundColor3 = rgb(50,50,50)
header.BorderSizePixel = 0
header.Active = true
header.Parent = ui

G1.Drag(header,0)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(0, 0, 0.6, 0)
title.Position = UDim2.new(0, 45, 0.2, 0)
title.BackgroundTransparency = 1
title.BackgroundColor3 = rgb(0, 0, 0)
title.Text = "GH2 Library"
title.TextColor3 = rgb(255, 255, 255)
title.Font = "BuilderSans"
title.TextSize = 18
title.TextXAlignment = "Left"
title.AutomaticSize = "X"
title.Parent = header

local toggle = Instance.new("TextButton")
toggle.Size = UDim2.new(0, 40, 0, 40)
toggle.Position = UDim2.new(0, 0, 0, 0)
toggle.BackgroundColor3 = rgb(0, 0, 0)
toggle.BorderSizePixel = 0
toggle.Text = "▼"
toggle.TextColor3 = rgb(255, 255, 255)
toggle.Font = "SourceSansBold"
toggle.TextSize = 18
toggle.BackgroundTransparency = 1
toggle.Parent = header

local main = Instance.new("Frame")
main.Size = UDim2.new(1, 0, 8, 0)
main.Position = UDim2.new(0, 0, 0.83, 0)
main.BackgroundColor3 = rgb(30, 30, 30)
main.BorderSizePixel = 0
main.Active = true
main.ZIndex = -1
main.Parent = header

toggle.MouseButton1Click:Connect(function()
	main.Visible = not main.Visible
	toggle.Text = main.Visible and "▼" or "▶"
end)


G1.UICorner(header,udi(0,6))
G1.UICorner(toggle,udi(0,6))
G1.UICorner(main,udi(0,6))

local scroll = Instance.new("ScrollingFrame")
scroll.Size = UDim2.new(0.96, 0, 0.94, 0)
scroll.Position = UDim2.new(0, 7, 0, 15)
scroll.BackgroundTransparency = 1
scroll.AutomaticCanvasSize = "Y"
scroll.ScrollBarThickness = 0
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.ElasticBehavior = "Never"
scroll.Parent = main

local layout = Instance.new("UIListLayout")
layout.HorizontalAlignment = "Center"
layout.SortOrder = "LayoutOrder"
layout.Padding = UDim.new(0, 2)
layout.Parent = scroll

local G2 = {}

function G2:createpage(name)
	local togglepage = Instance.new("TextButton")
	togglepage.Size = UDim2.new(1, 0, 0, 30)
	togglepage.Position = UDim2.new(0, 0, 0, 0)
	togglepage.Text = "  ▶  " .. name
	togglepage.BackgroundColor3 = rgb(45,45,45)
	togglepage.TextColor3 = rgb(255, 255, 255)
	togglepage.BackgroundTransparency = 0
	togglepage.Font = "BuilderSans"
	togglepage.TextSize = 18
	togglepage.TextWrapped = true
	togglepage.TextXAlignment = "Left"
	togglepage.AutomaticSize = "Y"
	togglepage.Parent = scroll
	G1.UICorner(togglepage, udi(0, 4))

	local pagemain = Instance.new("Frame")
	pagemain.Size = UDim2.new(1, 0, 0, 0)
	pagemain.Position = UDim2.new(0, 0, 0, 0)
	pagemain.Active = true
	pagemain.BackgroundTransparency = 1
	pagemain.Draggable = true
	pagemain.Visible = false
	pagemain.AutomaticSize = "Y"
	pagemain.Parent = scroll

	local pagelist = Instance.new("UIListLayout")
	pagelist.HorizontalAlignment = "Left"
	pagelist.SortOrder = "LayoutOrder"
	pagelist.Padding = UDim.new(0, 2)
	pagelist.Parent = pagemain

	togglepage.MouseButton1Click:Connect(function()
		pagemain.Visible = not pagemain.Visible
		togglepage.Text = pagemain.Visible and "  ▼   " .. name or "  ▶  ".. name
	end)

	return {pagemain}
end

function G2:createbutton(name, parent,func)
	local button = Instance.new("TextButton")
	button.Size = UDim2.new(1, 0, 0, 30)
	button.Position = UDim2.new(0, 0, 0, 0)
	button.BackgroundColor3 = rgb(60,60,60)
	button.BorderSizePixel = 0
	button.Text = " " .. name
	button.TextColor3 = Color3.new(255, 255, 255)
	button.BackgroundTransparency = 0
	button.Font = "BuilderSans"
	button.AutomaticSize = "Y"
	button.TextSize = 18
	button.TextXAlignment = "Left"
	button.Parent = parent

	G1.UICorner(button, udi(0, 4))
	button.MouseButton1Click:Connect(function
	    loadstring(func)()
	    end)
       return {button}
end 

function G2:createlabel(text,parent)
	local textlabel = Instance.new("TextLabel")
	textlabel.Size = UDim2.new(1, 0, 0, 20)
	textlabel.Text = text
	textlabel.TextColor3 = Color3.new(255, 255, 255)
	textlabel.BackgroundTransparency = 1
	textlabel.TextXAlignment = "Left"
	textlabel.AutomaticSize = "Y"
	textlabel.Font = "BuilderSans"
	textlabel.TextSize = 18
	textlabel.Active = true
	textlabel.Parent = parent
	return {textlabel}
end

function G2:createslider(parent, min, max)
	local sliderbg = Instance.new("Frame", parent)
	sliderbg.Size = UDim2.new(1, 0, 0, 50)
	sliderbg.BackgroundColor3 = rgb(50,50,50)
	G1.UICorner(sliderbg, UDim.new(0,5))

	local bar = Instance.new("Frame", sliderbg)
	bar.Size = UDim2.new(1, -20, 0, 10)
	bar.Position = UDim2.new(0, 10, 0,30)
	bar.BackgroundColor3 = rgb(30,30,30)
	bar.BorderSizePixel = 0
	G1.UICorner(bar, UDim.new(0,4))

	local fill = Instance.new("TextButton", bar)
	fill.Size = UDim2.new(0, 15, 0, 15)
	fill.Position = UDim2.new(0, 0, 0, -2.5)
	fill.BackgroundColor3 = rgb(200,200,200)
	fill.BorderSizePixel = 0
	fill.Text = ""
	fill.AutoButtonColor = false
	G1.UICorner(fill, UDim.new(0,3))

	local label = Instance.new("TextLabel", sliderbg)
	label.Size = UDim2.new(1, -20, 0,12)
	label.Position = UDim2.new(0, 10, 0, 10)
	label.BackgroundTransparency = 0.4
	label.Text = min
	label.Font = "BuilderSans"
	label.TextColor3 = rgb(255,255,255)
	label.BackgroundColor3 = rgb(30,30,30)
	label.TextSize = 16
	label.TextXAlignment = "Left"

	G1.UICorner(label, UDim.new(0,4))

	local dragging = false
	local value = min

	local function update(pos)
		local rel = math.clamp((pos.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1)
		value = math.floor(min + (max - min) * rel)
		fill.Position = UDim2.new(rel, -6, 0, -2.5)
		label.Text = value
	end

	fill.MouseButton1Down:Connect(function()
		dragging = true
	end)

	game:GetService("UserInputService").InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			update(input.Position)
		end
	end)

	bar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			update(input.Position)
		end
	end)

	return {label,fill}
end

function G2:createtextbox(parent)
	local textb = Instance.new("TextBox")
	textb.Size = UDim2.new(1, 0, 0, 30)
	textb.Position = UDim2.new(0.5, 0, 0.5, 0)
	textb.BackgroundColor3 = rgb(40, 40, 40)
	textb.Text = ""
	textb.TextColor3 = rgb(255, 255, 255)
	textb.BackgroundTransparency = 0
	textb.Font = "BuilderSans"
	textb.TextSize = 18
	textb.Parent = parent
	textb.TextXAlignment="Left"
	textb.ClearTextOnFocus=false
	textb.PlaceholderText="Enter text"
	G1.UICorner(textb,udi(0,4))
	return {textb}
end

function G2:createtoggle(tx,parent)
	local bg = Instance.new("Frame")
	bg.Size = UDim2.new(1, 0, 0, 30)
	bg.Position = UDim2.new(0.5, 0, 0.5, 0)
	bg.BackgroundColor3 = rgb(40,40,40)
	bg.Active = false
	bg.BackgroundTransparency = 0
	bg.Parent = parent
	G1.UICorner(bg, UDim.new(0,5))

	local label = Instance.new("TextLabel", bg)
	label.Size = UDim2.new(1, 0, 1,0)
	label.Position = UDim2.new(0, 0, 0, 0)
	label.BackgroundTransparency = 1
	label.Text = tx
	label.Font = "BuilderSans"
	label.TextColor3 = rgb(255,255,255)
	label.TextSize = 18
	label.TextXAlignment = "Left"

	local tog = Instance.new("TextButton")
	tog.Size = UDim2.new(0, 20, 0, 20)
	tog.Position = UDim2.new(1, -25, 0, 5)
	tog.BackgroundColor3 = rgb(60, 60, 60)
	tog.Text = ""
	tog.TextColor3 = rgb(255, 255, 255)
	tog.BackgroundTransparency = 0
	tog.Font = "BuilderSans"
	tog.TextSize = 15
	tog.Parent = bg
	G1.UICorner(tog, UDim.new(0,5))

	toggle = false

	tog.MouseButton1Click:Connect(function()
		toggle = not toggle
		tog.BackgroundColor3 = toggle and rgb(200, 200, 200) or rgb(60, 60, 60)
	end)
	return {tog}
end

function G2:name(na)
	title.Text = na
	ui.Name = na
end

return G2
