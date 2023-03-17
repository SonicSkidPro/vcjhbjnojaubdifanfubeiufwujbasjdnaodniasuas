




local config_main_array = {}

function config_main_array:apply(Window, tab)
    local unloadmisc = tab:Section({Name = "[-] Unload", Side = "Left"})
    local uimisc = tab:Section({Name = "[-] UI", Side = "Left"})
    local thememisc = tab:Section({Name = "[-] Theme", Side = "Left"})
    local configmisc = tab:Section({Name = "[-] Configs", Side = "Right"})
    local othermisc = tab:Section({Name = "[-] Other", Side = "Right"})

    unloadmisc:Button({Name = "Unload",confirmation = true, Callback = function() Window:Unload() end})

    uimisc:Keybind({Name = "[Open/Close]", Default = Enum.KeyCode.RightShift,Pointer = "ui_bind",mode = "Toggle",keybindname = "UI Keybind",callback = function(newbind) Window:ChangeUIBind(newbind) end})

    thememisc:Colorpicker({Name = "Accent", Info = "UI Accent", Default = Color3.fromRGB(168,122,207), Pointer = "uiaccentcolor", callback = function(color) Window:UpdateColor("accent", color) end})
    thememisc:Colorpicker({Name = "Light Contrast", Info = "Light Contrast", Default = Color3.fromRGB(30,30,30), Pointer = "uilight", callback = function(color) Window:UpdateColor("lightcontrast", color) end})
    thememisc:Colorpicker({Name = "Dark Contrast", Info = "Dark Contrast", Default = Color3.fromRGB(25,25,25), Pointer = "uidark", callback = function(color) Window:UpdateColor("darkcontrast", color) end})
    thememisc:Colorpicker({Name = "Outline", Info = "Outline", Default = Color3.fromRGB(0,0,0), Pointer = "uioutline", callback = function(color) Window:UpdateColor("outline", color) end})
    thememisc:Colorpicker({Name = "Inline", Info = "Inline", Default = Color3.fromRGB(50,50,50), Pointer = "uiinline", callback = function(color) Window:UpdateColor("inline", color) end})
    thememisc:Colorpicker({Name = "Text Color", Info = "Text Color", Default = Color3.fromRGB(255,255,255), Pointer = "uitextcolor", callback = function(color) Window:UpdateColor("textcolor", color) end})
    thememisc:Colorpicker({Name = "Text Border", Info = "Text Border", Default = Color3.fromRGB(0,0,0), Pointer = "uitextborder", callback = function(color) Window:UpdateColor("textborder", color) end})
    thememisc:Dropdown({Name = "Themes", Options = {"Default","Snowy","Salmon","Bitch Bot","Kiriot Hub","Fatality","Red","Tokyo Night","Old Abyss","Onetap","NeverLose","Gamesense","Vape","Spotify","Zeebot v2","LegitSneeze","Abyss V2"}, Default = "", callback = function(string) 
        if string == "Default" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromRGB(168,122,207))
            Window.pointers["uilight"]:set(Color3.fromRGB(30,30,30))
            Window.pointers["uidark"]:set(Color3.fromRGB(25,25,25))
            Window.pointers["uioutline"]:set(Color3.fromRGB(0,0,0))
            Window.pointers["uiinline"]:set(Color3.fromRGB(50,50,50))
            Window.pointers["uitextcolor"]:set(Color3.fromRGB(255,255,255))
            Window.pointers["uitextborder"]:set(Color3.fromRGB(0,0,0))
        elseif string == "Snowy" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromRGB(204,255,255))
            Window.pointers["uilight"]:set(Color3.fromRGB(45,45,45))
            Window.pointers["uidark"]:set(Color3.fromRGB(35,35,35))
            Window.pointers["uioutline"]:set(Color3.fromRGB(0,0,0))
            Window.pointers["uiinline"]:set(Color3.fromRGB(40,40,40))
            Window.pointers["uitextcolor"]:set(Color3.fromRGB(255,255,255))
            Window.pointers["uitextborder"]:set(Color3.fromRGB(0,0,0))
        elseif string == "Salmon" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromRGB(250,128,144))
            Window.pointers["uilight"]:set(Color3.fromRGB(29,29,29))
            Window.pointers["uidark"]:set(Color3.fromRGB(25,25,25))
            Window.pointers["uioutline"]:set(Color3.fromRGB(0,0,0))
            Window.pointers["uiinline"]:set(Color3.fromRGB(40,40,40))
            Window.pointers["uitextcolor"]:set(Color3.fromRGB(255,255,255))
            Window.pointers["uitextborder"]:set(Color3.fromRGB(10,10,10))
        elseif string == "Bitch Bot" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromRGB(126, 72, 163))
            Window.pointers["uilight"]:set(Color3.fromRGB(30, 30, 30))
            Window.pointers["uidark"]:set(Color3.fromRGB(35, 35, 35))
            Window.pointers["uioutline"]:set(Color3.fromRGB(20, 20, 20))
            Window.pointers["uiinline"]:set(Color3.fromRGB(40,40,40))
            Window.pointers["uitextcolor"]:set(Color3.fromRGB(255,255,255))
            Window.pointers["uitextborder"]:set(Color3.fromRGB(10,10,10))
        elseif string == "Kiriot Hub" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromRGB(255, 170, 0))
            Window.pointers["uilight"]:set(Color3.fromRGB(48, 51, 59))
            Window.pointers["uidark"]:set(Color3.fromRGB(26, 28, 32))
            Window.pointers["uioutline"]:set(Color3.fromRGB(20, 20, 20))
            Window.pointers["uiinline"]:set(Color3.fromRGB(40,40,40))
            Window.pointers["uitextcolor"]:set(Color3.fromRGB(255,255,255))
            Window.pointers["uitextborder"]:set(Color3.fromRGB(10,10,10))
        elseif string == "Fatality" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromRGB(197, 7, 84))
            Window.pointers["uilight"]:set(Color3.fromRGB(30, 24, 66))
            Window.pointers["uidark"]:set(Color3.fromRGB(25, 19, 53))
            Window.pointers["uioutline"]:set(Color3.fromRGB(60, 53, 93))
            Window.pointers["uiinline"]:set(Color3.fromRGB(40,40,40))
            Window.pointers["uitextcolor"]:set(Color3.fromRGB(255,255,255))
            Window.pointers["uitextborder"]:set(Color3.fromRGB(10,10,10))
        elseif string == "Red" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromRGB(255,51,51))
            Window.pointers["uilight"]:set(Color3.fromRGB(19,19,19))
            Window.pointers["uidark"]:set(Color3.fromRGB(18,18,18))
            Window.pointers["uioutline"]:set(Color3.fromRGB(0,0,0))
            Window.pointers["uiinline"]:set(Color3.fromRGB(40, 40, 40))
            Window.pointers["uitextcolor"]:set(Color3.fromRGB(255,255,255))
            Window.pointers["uitextborder"]:set(Color3.fromRGB(10,10,10))
        elseif string == "Tokyo Night" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromRGB(103,89,179))
            Window.pointers["uilight"]:set(Color3.fromRGB(24,24,37))
            Window.pointers["uidark"]:set(Color3.fromRGB(22,22,31))
            Window.pointers["uioutline"]:set(Color3.fromRGB(50,50,50))
            Window.pointers["uiinline"]:set(Color3.fromRGB(0,0,0))
            Window.pointers["uitextcolor"]:set(Color3.fromRGB(255,255,255))
            Window.pointers["uitextborder"]:set(Color3.fromRGB(10,10,10))
        elseif string == "Old Abyss" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromHex("#8c87b4")) -- done
            Window.pointers["uilight"]:set(Color3.fromHex("#1e1e1e")) -- done
            Window.pointers["uidark"]:set(Color3.fromHex("#141414")) -- done
            Window.pointers["uioutline"]:set(Color3.fromHex("#0a0a0a")) -- done
            Window.pointers["uiinline"]:set(Color3.fromHex("#322850")) -- done
            Window.pointers["uitextcolor"]:set(Color3.fromHex("#ffffff")) -- done
            Window.pointers["uitextborder"]:set(Color3.fromRGB(10,10,10))
        elseif string == "Onetap" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromHex("#dda85d")) -- 
            Window.pointers["uilight"]:set(Color3.fromHex("#2c3037")) -- 
            Window.pointers["uidark"]:set(Color3.fromHex("#1f2125")) -- 
            Window.pointers["uioutline"]:set(Color3.fromHex("#000000")) -- 
            Window.pointers["uiinline"]:set(Color3.fromHex("#4e5158")) -- 
            Window.pointers["uitextcolor"]:set(Color3.fromHex("#d6d9e0")) -- 
            Window.pointers["uitextborder"]:set(Color3.fromRGB(10,10,10))
        elseif string == "NeverLose" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromHex("#00b4f0")) -- done
            Window.pointers["uilight"]:set(Color3.fromHex("#000f1e")) -- done
            Window.pointers["uidark"]:set(Color3.fromHex("#050514")) -- done
            Window.pointers["uioutline"]:set(Color3.fromHex("#000005")) -- done
            Window.pointers["uiinline"]:set(Color3.fromHex("#0a1e28")) -- done
            Window.pointers["uitextcolor"]:set(Color3.fromHex("#ffffff")) -- done
            Window.pointers["uitextborder"]:set(Color3.fromRGB(10,10,10))
        elseif string == "Gamesense" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromHex("#a7d94d")) -- done
            Window.pointers["uilight"]:set(Color3.fromHex("#171717")) -- done
            Window.pointers["uidark"]:set(Color3.fromHex("#0c0c0c")) -- done
            Window.pointers["uioutline"]:set(Color3.fromHex("#000000")) -- done
            Window.pointers["uiinline"]:set(Color3.fromHex("#4e5158")) -- done
            Window.pointers["uitextcolor"]:set(Color3.fromHex("#ffffff")) -- done
            Window.pointers["uitextborder"]:set(Color3.fromRGB(10,10,10))
        elseif string == "Vape" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromHex("#26866a")) -- done
            Window.pointers["uilight"]:set(Color3.fromHex("#1f1f1f")) -- done
            Window.pointers["uidark"]:set(Color3.fromHex("#1a1a1a")) -- done
            Window.pointers["uioutline"]:set(Color3.fromHex("#0a0a0a")) -- done
            Window.pointers["uiinline"]:set(Color3.fromHex("#363636")) -- done
            Window.pointers["uitextcolor"]:set(Color3.fromHex("#d6d9e0")) -- done
            Window.pointers["uitextborder"]:set(Color3.fromRGB(10,10,10))
        elseif string == "Spotify" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromRGB(103, 212, 91)) -- done
            Window.pointers["uilight"]:set(Color3.fromRGB(30, 30, 30)) -- done
            Window.pointers["uidark"]:set(Color3.fromRGB(25, 25, 25)) -- done
            Window.pointers["uioutline"]:set(Color3.fromRGB(0, 0, 0)) -- done
            Window.pointers["uiinline"]:set(Color3.fromRGB(46, 46, 46)) -- done
            Window.pointers["uitextcolor"]:set(Color3.fromHex("#d6d9e0")) -- done
            Window.pointers["uitextborder"]:set(Color3.fromRGB(10,10,10))
        elseif string == "Zeebot v2" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromRGB(117,96,175)) -- done
            Window.pointers["uilight"]:set(Color3.fromRGB(51,51,51)) -- done
            Window.pointers["uidark"]:set(Color3.fromRGB(41,41,41)) -- done
            Window.pointers["uioutline"]:set(Color3.fromRGB(37, 37, 37)) -- done
            Window.pointers["uiinline"]:set(Color3.fromRGB(39, 39, 39)) -- done
            Window.pointers["uitextcolor"]:set(Color3.fromHex("#d6d9e0")) -- done
            Window.pointers["uitextborder"]:set(Color3.fromRGB(10,10,10))
        elseif string == "LegitSneeze" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromRGB(135,206,250)) -- done
            Window.pointers["uilight"]:set(Color3.fromRGB(43,41,48)) -- done
            Window.pointers["uidark"]:set(Color3.fromRGB(44,41,48)) -- done
            Window.pointers["uioutline"]:set(Color3.fromRGB(37, 37, 37)) -- done
            Window.pointers["uiinline"]:set(Color3.fromRGB(50,50,50)) -- done
            Window.pointers["uitextcolor"]:set(Color3.fromHex("#d6d9e0")) -- done
            Window.pointers["uitextborder"]:set(Color3.fromRGB(10,10,10))
        elseif string == "Abyss V2" then
            Window.pointers["uiaccentcolor"]:set(Color3.fromRGB(161, 144, 219)) -- done
            Window.pointers["uilight"]:set(Color3.fromRGB(27, 27, 27)) -- done
            Window.pointers["uidark"]:set(Color3.fromRGB(18, 18, 18)) -- done
            Window.pointers["uioutline"]:set(Color3.fromRGB(0, 0, 0)) -- done
            Window.pointers["uiinline"]:set(Color3.fromRGB(50, 50, 50)) -- done
            Window.pointers["uitextcolor"]:set(Color3.fromHex("#d6d9e0")) -- done
            Window.pointers["uitextborder"]:set(Color3.fromRGB(10,10,10))
            end
    end})


    local config_main = {
        selected = "Main",
        inputed = ""
    }

    function config_main:get()
        local array = {}

        if not isfolder("azure/configs") then
            makefolder("azure/configs")
        end

        for i, v in next, listfiles("azure/configs") do
            local filename = v
            local result = string.gsub(filename,"azure/configs.*\\","")
            table.insert(array, result)
        end
        return array
    end

    local file_config_dropdown = configmisc:Dropdown({Name = "Config File", Options = config_main:get(), Default = "", callback = function(string) config_main.selected = string end})

    configmisc:Textbox({Text = "", PlaceHolder = "Config Name", Middle = true, ResetOnFocus = false,callback = function(string) config_main.inputed = string end})

    configmisc:Button({Name = "Save",confirmation = true, Callback = function()
        writefile("azure/configs/" .. config_main.inputed, Window:GetConfig())
        file_config_dropdown:Refresh(config_main:get())
    end})

    configmisc:Button({Name = "Load",confirmation = true, Callback = function() 
        Window:LoadConfig(readfile("azure/configs/" .. config_main.selected))
    end})

    configmisc:Button({Name = "Delete",confirmation = true, Callback = function() 
        if isfile("azure/configs/" .. config_main.selected) then
            delfile("azure/configs/" .. config_main.selected)
            file_config_dropdown:Refresh(config_main:get())
            file_config_dropdown:set("")
        end
    end})

    local function watermark_create()
        local wm_text = Drawing.new('Text')

        wm_text.Transparency = 1
        wm_text.Visible = false
        wm_text.ZIndex = 1
        wm_text.Center = true
        wm_text.Outline = true
        wm_text.Color = Color3.new(1, 1, 1)
        wm_text.OutlineColor = Color3.new(0, 0, 0)
        wm_text.Font = Drawing.Fonts.Plex
        wm_text.Size = 13

        local array_table = {}

        function array_table:visible(bool)
            wm_text.Visible = bool
        end

        function array_table:move(pos)
            wm_text.Position = Vector2.new(pos.posX,pos.posY)
        end

        spawn(function()
            while task.wait() do
                wm_text.Text = 'athena | beta | '..os.date("%x %X", os.time())
                wm_text.Color = Window.pointers.uiaccentcolor:get()

                if Window.unloaded then
                    wm_text.Visible = false
                end
            end
        end)

        return array_table
    end

    local watermark_main = watermark_create()
    local resolution_main = game:GetService('GuiService'):GetScreenResolution(0)

    othermisc:Toggle({Name = "Watermark", Default = false, Pointer = "watermark_enabled", callback = function(enabled)
        watermark_main:visible(enabled)
    end})

    othermisc:Slider({Name = "Watermark X", Minimum = 120, Maximum = resolution_main.X, Default = 120, Decimals = 0.1, Pointer = "watermark_x"})
    othermisc:Slider({Name = "Watermark Y", Minimum = -1, Maximum = resolution_main.Y, Default = -1, Decimals = 0.1, Pointer = "watermark_y"})

    spawn(function()
        while task.wait() do
            watermark_main:move({posX = Window.pointers["watermark_x"]:get(), posY = Window.pointers["watermark_y"]:get()})
        end
    end)

    othermisc:Label({name = "[ Game ]",middle = true})

    othermisc:Button({Name = "Rejoin",confirmation = true, Callback = function()

        game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)

    end})

    othermisc:Button({Name = "Kill Roblox",confirmation = true, Callback = function()

        game:shutdown()

        keypress(0x12)
        keypress(0x73)
        keypress(0x12)
        keypress(0x73)

    end})

end

return config_main_array
