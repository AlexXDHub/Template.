--// LOAD RAYFIELD
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()

----------------------------------------------------
-- WINDOW
----------------------------------------------------

local Window = Rayfield:CreateWindow({
    Name = "FULL UI TEMPLATE",
    LoadingTitle = "Initializing...",
    LoadingSubtitle = "Advanced Framework",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "MyUIConfig",
        FileName = "Settings"
    },
    Discord = {
        Enabled = false
    },
    KeySystem = false -- Set true if you want key system
})

----------------------------------------------------
-- TABS
----------------------------------------------------

local MainTab = Window:CreateTab("Main")
local SettingsTab = Window:CreateTab("Settings")
local ExtrasTab = Window:CreateTab("Extras")

----------------------------------------------------
-- SECTIONS
----------------------------------------------------

local MainSection = MainTab:CreateSection("Core Features")
local SettingsSection = SettingsTab:CreateSection("Configuration")
local ExtrasSection = ExtrasTab:CreateSection("Utilities")

----------------------------------------------------
-- TOGGLE
----------------------------------------------------

local ExampleToggle = MainTab:CreateToggle({
    Name = "Example Toggle",
    CurrentValue = false,
    Flag = "ExampleToggle",
    Callback = function(Value)
        print("Toggle:", Value)
    end,
})

----------------------------------------------------
-- BUTTON
----------------------------------------------------

MainTab:CreateButton({
    Name = "Example Button",
    Callback = function()
        Rayfield:Notify({
            Title = "Button Clicked",
            Content = "This is a notification.",
            Duration = 3,
            Image = 4483362458
        })
    end,
})

----------------------------------------------------
-- SLIDER
----------------------------------------------------

MainTab:CreateSlider({
    Name = "Example Slider",
    Range = {0, 100},
    Increment = 1,
    CurrentValue = 50,
    Flag = "ExampleSlider",
    Callback = function(Value)
        print("Slider Value:", Value)
    end,
})

----------------------------------------------------
-- DROPDOWN
----------------------------------------------------

MainTab:CreateDropdown({
    Name = "Example Dropdown",
    Options = {"Option 1", "Option 2", "Option 3"},
    CurrentOption = "Option 1",
    Flag = "ExampleDropdown",
    Callback = function(Option)
        print("Selected:", Option)
    end,
})

----------------------------------------------------
-- TEXTBOX
----------------------------------------------------

MainTab:CreateInput({
    Name = "Example Input",
    PlaceholderText = "Type here...",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        print("Input:", Text)
    end,
})

----------------------------------------------------
-- NOTIFICATION EXAMPLE
----------------------------------------------------

SettingsTab:CreateButton({
    Name = "Test Notification",
    Callback = function()
        Rayfield:Notify({
            Title = "Success",
            Content = "Everything is working correctly.",
            Duration = 4,
            Image = 4483362458
        })
    end,
})

----------------------------------------------------
-- CONFIG BUTTON
----------------------------------------------------

SettingsTab:CreateButton({
    Name = "Save Config",
    Callback = function()
        print("Config saved automatically if enabled.")
    end,
})

SettingsTab:CreateButton({
    Name = "Load Config",
    Callback = function()
        print("Config loaded automatically if enabled.")
    end,
})

----------------------------------------------------
-- KEY SYSTEM (OPTIONAL)
----------------------------------------------------

-- To enable:
-- Change KeySystem = true in Window settings above.

-- Example configuration:
-- Key = {"YourKeyHere"}
