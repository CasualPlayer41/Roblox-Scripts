-- All credits to @a256 ( Discord UserId: 1398357991471714324 ) for giving me this awesome Ui.

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

Fluent = {}
local ui = Fluent

local theme = {
    Accent = Color3.fromRGB(96, 205, 255),
    WindowBg = Color3.fromRGB(36, 36, 36),
    WindowBorder = Color3.fromRGB(0, 0, 0),
    TitleBarLine = Color3.fromRGB(75, 75, 75),
    RailLine = Color3.fromRGB(60, 60, 60),
    Title = Color3.fromRGB(240, 240, 240),
    SubText = Color3.fromRGB(170, 170, 170),
    TabText = Color3.fromRGB(150, 150, 150),
    TabTextActive = Color3.fromRGB(240, 240, 240),
    TabHighlight = Color3.fromRGB(130, 130, 130),
    Element = Color3.fromRGB(130, 130, 130),
    ElementBorder = Color3.fromRGB(20, 20, 20),
    Text = Color3.fromRGB(240, 240, 240),
    ToggleSlider = Color3.fromRGB(120, 120, 120),
    ToggleKnobOn = Color3.fromRGB(10, 10, 10),
    Control = Color3.fromRGB(66, 66, 66),
    OverlayBg = Color3.fromRGB(42, 42, 42),
    OverlayBorder = Color3.fromRGB(20, 20, 20),
}

local op2 = {
    Window = 0.99,
    Border = 0.40,
    Element = 0.16,
    ElementHover = 0.26,
    Rail = 0.5,
    TabActive = 0.16,
    TabHover = 0.09,
    Control = 0.85,
    Overlay = 0.99,
}

local palettes = {
    Dark = {},
    ["Sakura"] = { Accent = Color3.fromRGB(255, 95, 190), WindowBg = Color3.fromRGB(26, 20, 26), WindowBorder = Color3.fromRGB(70, 40, 62), TitleBarLine = Color3.fromRGB(62, 42, 58), RailLine = Color3.fromRGB(62, 42, 58),
        Title = Color3.fromRGB(240, 240, 240), SubText = Color3.fromRGB(172, 150, 166), TabText = Color3.fromRGB(150, 120, 142), TabTextActive = Color3.fromRGB(240, 240, 240), TabHighlight = Color3.fromRGB(96, 58, 88),
        Element = Color3.fromRGB(86, 56, 80), ElementBorder = Color3.fromRGB(22, 14, 20), Text = Color3.fromRGB(240, 240, 240), ToggleSlider = Color3.fromRGB(255, 95, 190), ToggleKnobOn = Color3.fromRGB(26, 20, 26),
        Control = Color3.fromRGB(64, 44, 60), OverlayBg = Color3.fromRGB(32, 24, 31), OverlayBorder = Color3.fromRGB(22, 14, 20) },
    ["Blood Red"] = { Accent = Color3.fromRGB(220, 40, 50), WindowBg = Color3.fromRGB(22, 14, 15), WindowBorder = Color3.fromRGB(70, 28, 30), TitleBarLine = Color3.fromRGB(60, 32, 34), RailLine = Color3.fromRGB(60, 32, 34),
        Title = Color3.fromRGB(240, 240, 240), SubText = Color3.fromRGB(170, 140, 141), TabText = Color3.fromRGB(150, 115, 116), TabTextActive = Color3.fromRGB(240, 240, 240), TabHighlight = Color3.fromRGB(90, 40, 44),
        Element = Color3.fromRGB(80, 40, 42), ElementBorder = Color3.fromRGB(20, 10, 11), Text = Color3.fromRGB(240, 240, 240), ToggleSlider = Color3.fromRGB(220, 40, 50), ToggleKnobOn = Color3.fromRGB(22, 14, 15),
        Control = Color3.fromRGB(62, 34, 36), OverlayBg = Color3.fromRGB(28, 18, 19), OverlayBorder = Color3.fromRGB(20, 10, 11) },
    ["Midnight"] = { Accent = Color3.fromRGB(120, 140, 255), WindowBg = Color3.fromRGB(14, 16, 26), WindowBorder = Color3.fromRGB(40, 44, 70), TitleBarLine = Color3.fromRGB(36, 40, 62), RailLine = Color3.fromRGB(36, 40, 62),
        Title = Color3.fromRGB(240, 240, 240), SubText = Color3.fromRGB(150, 156, 186), TabText = Color3.fromRGB(120, 128, 160), TabTextActive = Color3.fromRGB(240, 240, 240), TabHighlight = Color3.fromRGB(54, 60, 96),
        Element = Color3.fromRGB(48, 54, 86), ElementBorder = Color3.fromRGB(10, 11, 20), Text = Color3.fromRGB(240, 240, 240), ToggleSlider = Color3.fromRGB(120, 140, 255), ToggleKnobOn = Color3.fromRGB(14, 16, 26),
        Control = Color3.fromRGB(38, 42, 66), OverlayBg = Color3.fromRGB(20, 22, 34), OverlayBorder = Color3.fromRGB(10, 11, 20) },
    ["Emerald"] = { Accent = Color3.fromRGB(50, 210, 130), WindowBg = Color3.fromRGB(16, 24, 20), WindowBorder = Color3.fromRGB(36, 64, 50), TitleBarLine = Color3.fromRGB(34, 56, 44), RailLine = Color3.fromRGB(34, 56, 44),
        Title = Color3.fromRGB(240, 240, 240), SubText = Color3.fromRGB(150, 176, 162), TabText = Color3.fromRGB(120, 150, 134), TabTextActive = Color3.fromRGB(240, 240, 240), TabHighlight = Color3.fromRGB(48, 86, 66),
        Element = Color3.fromRGB(44, 76, 60), ElementBorder = Color3.fromRGB(10, 18, 14), Text = Color3.fromRGB(240, 240, 240), ToggleSlider = Color3.fromRGB(50, 210, 130), ToggleKnobOn = Color3.fromRGB(16, 24, 20),
        Control = Color3.fromRGB(36, 58, 46), OverlayBg = Color3.fromRGB(22, 32, 27), OverlayBorder = Color3.fromRGB(10, 18, 14) },
    Vynixu = {
        Accent = Color3.fromRGB(90, 235, 45), WindowBg = Color3.fromRGB(30, 30, 30), WindowBorder = Color3.fromRGB(60, 60, 60), TitleBarLine = Color3.fromRGB(65, 65, 65), RailLine = Color3.fromRGB(60, 60, 60),
        Title = Color3.fromRGB(240, 240, 240), SubText = Color3.fromRGB(150, 150, 150), TabText = Color3.fromRGB(110, 110, 110), TabTextActive = Color3.fromRGB(240, 240, 240), TabHighlight = Color3.fromRGB(70, 70, 70),
        Element = Color3.fromRGB(70, 70, 70), ElementBorder = Color3.fromRGB(25, 25, 25), Text = Color3.fromRGB(240, 240, 240), ToggleSlider = Color3.fromRGB(90, 235, 45), ToggleKnobOn = Color3.fromRGB(30, 30, 30),
        Control = Color3.fromRGB(70, 70, 70), OverlayBg = Color3.fromRGB(35, 35, 35), OverlayBorder = Color3.fromRGB(25, 25, 25),
    },
    Abyss = {
        Accent = Color3.fromRGB(102, 136, 204), WindowBg = Color3.fromRGB(0, 12, 24), WindowBorder = Color3.fromRGB(43, 43, 74), TitleBarLine = Color3.fromRGB(43, 43, 74), RailLine = Color3.fromRGB(43, 43, 74),
        Title = Color3.fromRGB(102, 136, 204), SubText = Color3.fromRGB(64, 99, 133), TabText = Color3.fromRGB(128, 162, 194), TabTextActive = Color3.fromRGB(102, 136, 204), TabHighlight = Color3.fromRGB(24, 31, 47),
        Element = Color3.fromRGB(24, 31, 47), ElementBorder = Color3.fromRGB(43, 43, 74), Text = Color3.fromRGB(102, 136, 204), ToggleSlider = Color3.fromRGB(0, 99, 165), ToggleKnobOn = Color3.fromRGB(24, 31, 47),
        Control = Color3.fromRGB(24, 31, 47), OverlayBg = Color3.fromRGB(24, 31, 47), OverlayBorder = Color3.fromRGB(43, 43, 74),
    },
    Typewriter = {
        Accent = Color3.fromRGB(97, 161, 107), WindowBg = Color3.fromRGB(252, 245, 228), WindowBorder = Color3.fromRGB(189, 189, 189), TitleBarLine = Color3.fromRGB(189, 189, 189), RailLine = Color3.fromRGB(189, 189, 189),
        Title = Color3.fromRGB(104, 104, 104), SubText = Color3.fromRGB(170, 170, 170), TabText = Color3.fromRGB(109, 180, 120), TabTextActive = Color3.fromRGB(104, 104, 104), TabHighlight = Color3.fromRGB(255, 255, 255),
        Element = Color3.fromRGB(255, 255, 255), ElementBorder = Color3.fromRGB(200, 200, 200), Text = Color3.fromRGB(104, 104, 104), ToggleSlider = Color3.fromRGB(97, 161, 107), ToggleKnobOn = Color3.fromRGB(255, 255, 255),
        Control = Color3.fromRGB(255, 255, 255), OverlayBg = Color3.fromRGB(242, 243, 245), OverlayBorder = Color3.fromRGB(200, 200, 200),
    },
    ["Dark Typewriter"] = {
        Accent = Color3.fromRGB(109, 180, 120), WindowBg = Color3.fromRGB(38, 38, 38), WindowBorder = Color3.fromRGB(85, 85, 85), TitleBarLine = Color3.fromRGB(85, 85, 85), RailLine = Color3.fromRGB(85, 85, 85),
        Title = Color3.fromRGB(197, 184, 161), SubText = Color3.fromRGB(158, 158, 158), TabText = Color3.fromRGB(109, 180, 120), TabTextActive = Color3.fromRGB(197, 184, 161), TabHighlight = Color3.fromRGB(42, 42, 42),
        Element = Color3.fromRGB(42, 42, 42), ElementBorder = Color3.fromRGB(51, 51, 51), Text = Color3.fromRGB(197, 184, 161), ToggleSlider = Color3.fromRGB(103, 169, 113), ToggleKnobOn = Color3.fromRGB(255, 255, 255),
        Control = Color3.fromRGB(42, 42, 42), OverlayBg = Color3.fromRGB(42, 42, 42), OverlayBorder = Color3.fromRGB(51, 51, 51),
    },
    Darker = { WindowBg = Color3.fromRGB(24, 24, 24), OverlayBg = Color3.fromRGB(30, 30, 30), Control = Color3.fromRGB(50, 50, 50) },
    Aqua = { Accent = Color3.fromRGB(38, 200, 200) },
    Amethyst = { Accent = Color3.fromRGB(170, 120, 255) },
    Rose = { Accent = Color3.fromRGB(255, 120, 165) },
    Ocean = { Accent = Color3.fromRGB(80, 150, 255), WindowBg = Color3.fromRGB(28, 32, 40), OverlayBg = Color3.fromRGB(34, 39, 48) },
    ["Adapta Nokto"] = {
        Accent = Color3.fromRGB(236, 106, 63), WindowBg = Color3.fromRGB(49, 49, 46), WindowBorder = Color3.fromRGB(64, 63, 58), TitleBarLine = Color3.fromRGB(64, 63, 58), RailLine = Color3.fromRGB(64, 63, 58),
        Title = Color3.fromRGB(221, 221, 221), SubText = Color3.fromRGB(116, 124, 132), TabText = Color3.fromRGB(221, 221, 221), TabTextActive = Color3.fromRGB(221, 221, 221), TabHighlight = Color3.fromRGB(64, 63, 58),
        Element = Color3.fromRGB(55, 54, 51), ElementBorder = Color3.fromRGB(64, 63, 58), Text = Color3.fromRGB(221, 221, 221), ToggleSlider = Color3.fromRGB(236, 106, 63), ToggleKnobOn = Color3.fromRGB(49, 49, 46),
        Control = Color3.fromRGB(55, 54, 51), OverlayBg = Color3.fromRGB(55, 54, 51), OverlayBorder = Color3.fromRGB(64, 63, 58),
    },
    ["Ambiance"] = {
        Accent = Color3.fromRGB(0, 188, 212), WindowBg = Color3.fromRGB(41, 53, 59), WindowBorder = Color3.fromRGB(34, 45, 50), TitleBarLine = Color3.fromRGB(34, 45, 50), RailLine = Color3.fromRGB(34, 45, 50),
        Title = Color3.fromRGB(238, 255, 255), SubText = Color3.fromRGB(84, 110, 122), TabText = Color3.fromRGB(238, 255, 255), TabTextActive = Color3.fromRGB(238, 255, 255), TabHighlight = Color3.fromRGB(45, 59, 66),
        Element = Color3.fromRGB(36, 48, 53), ElementBorder = Color3.fromRGB(34, 45, 50), Text = Color3.fromRGB(238, 255, 255), ToggleSlider = Color3.fromRGB(0, 188, 212), ToggleKnobOn = Color3.fromRGB(41, 53, 59),
        Control = Color3.fromRGB(36, 48, 53), OverlayBg = Color3.fromRGB(36, 48, 53), OverlayBorder = Color3.fromRGB(34, 45, 50),
    },
    ["Amethyst Dark"] = {
        Accent = Color3.fromRGB(177, 51, 255), WindowBg = Color3.fromRGB(18, 0, 36), WindowBorder = Color3.fromRGB(77, 5, 123), TitleBarLine = Color3.fromRGB(77, 5, 123), RailLine = Color3.fromRGB(77, 5, 123),
        Title = Color3.fromRGB(233, 217, 242), SubText = Color3.fromRGB(158, 133, 173), TabText = Color3.fromRGB(233, 217, 242), TabTextActive = Color3.fromRGB(233, 217, 242), TabHighlight = Color3.fromRGB(77, 5, 123),
        Element = Color3.fromRGB(37, 1, 60), ElementBorder = Color3.fromRGB(77, 5, 123), Text = Color3.fromRGB(233, 217, 242), ToggleSlider = Color3.fromRGB(125, 22, 191), ToggleKnobOn = Color3.fromRGB(18, 0, 36),
        Control = Color3.fromRGB(37, 1, 60), OverlayBg = Color3.fromRGB(37, 1, 60), OverlayBorder = Color3.fromRGB(77, 5, 123),
    },
    ["Arc Dark"] = {
        Accent = Color3.fromRGB(82, 148, 226), WindowBg = Color3.fromRGB(56, 60, 74), WindowBorder = Color3.fromRGB(64, 79, 125), TitleBarLine = Color3.fromRGB(64, 79, 125), RailLine = Color3.fromRGB(64, 79, 125),
        Title = Color3.fromRGB(162, 162, 162), SubText = Color3.fromRGB(114, 133, 183), TabText = Color3.fromRGB(162, 162, 162), TabTextActive = Color3.fromRGB(162, 162, 162), TabHighlight = Color3.fromRGB(75, 81, 98),
        Element = Color3.fromRGB(75, 81, 98), ElementBorder = Color3.fromRGB(64, 79, 125), Text = Color3.fromRGB(162, 162, 162), ToggleSlider = Color3.fromRGB(82, 148, 226), ToggleKnobOn = Color3.fromRGB(56, 60, 74),
        Control = Color3.fromRGB(75, 81, 98), OverlayBg = Color3.fromRGB(75, 81, 98), OverlayBorder = Color3.fromRGB(64, 79, 125),
    },
    ["DuoTone Dark Earth"] = {
        Accent = Color3.fromRGB(254, 203, 82), WindowBg = Color3.fromRGB(44, 40, 38), WindowBorder = Color3.fromRGB(72, 65, 61), TitleBarLine = Color3.fromRGB(72, 65, 61), RailLine = Color3.fromRGB(72, 65, 61),
        Title = Color3.fromRGB(189, 152, 127), SubText = Color3.fromRGB(86, 75, 67), TabText = Color3.fromRGB(189, 152, 127), TabTextActive = Color3.fromRGB(189, 152, 127), TabHighlight = Color3.fromRGB(77, 70, 66),
        Element = Color3.fromRGB(53, 48, 45), ElementBorder = Color3.fromRGB(72, 65, 61), Text = Color3.fromRGB(189, 152, 127), ToggleSlider = Color3.fromRGB(254, 203, 82), ToggleKnobOn = Color3.fromRGB(44, 40, 38),
        Control = Color3.fromRGB(53, 48, 45), OverlayBg = Color3.fromRGB(53, 48, 45), OverlayBorder = Color3.fromRGB(72, 65, 61),
    },
    ["DuoTone Dark Forest"] = {
        Accent = Color3.fromRGB(231, 249, 139), WindowBg = Color3.fromRGB(42, 45, 42), WindowBorder = Color3.fromRGB(66, 72, 66), TitleBarLine = Color3.fromRGB(66, 72, 66), RailLine = Color3.fromRGB(66, 72, 66),
        Title = Color3.fromRGB(169, 188, 169), SubText = Color3.fromRGB(88, 95, 88), TabText = Color3.fromRGB(169, 188, 169), TabTextActive = Color3.fromRGB(169, 188, 169), TabHighlight = Color3.fromRGB(71, 77, 71),
        Element = Color3.fromRGB(49, 53, 49), ElementBorder = Color3.fromRGB(66, 72, 66), Text = Color3.fromRGB(169, 188, 169), ToggleSlider = Color3.fromRGB(231, 249, 139), ToggleKnobOn = Color3.fromRGB(42, 45, 42),
        Control = Color3.fromRGB(49, 53, 49), OverlayBg = Color3.fromRGB(49, 53, 49), OverlayBorder = Color3.fromRGB(66, 72, 66),
    },
    ["DuoTone Dark Sea"] = {
        Accent = Color3.fromRGB(52, 254, 187), WindowBg = Color3.fromRGB(29, 38, 47), WindowBorder = Color3.fromRGB(48, 63, 79), TitleBarLine = Color3.fromRGB(48, 63, 79), RailLine = Color3.fromRGB(48, 63, 79),
        Title = Color3.fromRGB(136, 180, 231), SubText = Color3.fromRGB(68, 76, 85), TabText = Color3.fromRGB(136, 180, 231), TabTextActive = Color3.fromRGB(136, 180, 231), TabHighlight = Color3.fromRGB(53, 68, 84),
        Element = Color3.fromRGB(35, 45, 56), ElementBorder = Color3.fromRGB(48, 63, 79), Text = Color3.fromRGB(136, 180, 231), ToggleSlider = Color3.fromRGB(52, 254, 187), ToggleKnobOn = Color3.fromRGB(29, 38, 47),
        Control = Color3.fromRGB(35, 45, 56), OverlayBg = Color3.fromRGB(35, 45, 56), OverlayBorder = Color3.fromRGB(48, 63, 79),
    },
    ["DuoTone Dark Sky"] = {
        Accent = Color3.fromRGB(254, 195, 143), WindowBg = Color3.fromRGB(44, 39, 52), WindowBorder = Color3.fromRGB(68, 61, 81), TitleBarLine = Color3.fromRGB(68, 61, 81), RailLine = Color3.fromRGB(68, 61, 81),
        Title = Color3.fromRGB(202, 178, 250), SubText = Color3.fromRGB(84, 77, 96), TabText = Color3.fromRGB(202, 178, 250), TabTextActive = Color3.fromRGB(202, 178, 250), TabHighlight = Color3.fromRGB(73, 66, 86),
        Element = Color3.fromRGB(52, 46, 61), ElementBorder = Color3.fromRGB(68, 61, 81), Text = Color3.fromRGB(202, 178, 250), ToggleSlider = Color3.fromRGB(254, 195, 143), ToggleKnobOn = Color3.fromRGB(44, 39, 52),
        Control = Color3.fromRGB(52, 46, 61), OverlayBg = Color3.fromRGB(52, 46, 61), OverlayBorder = Color3.fromRGB(68, 61, 81),
    },
    ["DuoTone Dark Space"] = {
        Accent = Color3.fromRGB(254, 119, 52), WindowBg = Color3.fromRGB(36, 36, 46), WindowBorder = Color3.fromRGB(58, 58, 74), TitleBarLine = Color3.fromRGB(58, 58, 74), RailLine = Color3.fromRGB(58, 58, 74),
        Title = Color3.fromRGB(134, 134, 203), SubText = Color3.fromRGB(73, 73, 90), TabText = Color3.fromRGB(134, 134, 203), TabTextActive = Color3.fromRGB(134, 134, 203), TabHighlight = Color3.fromRGB(63, 63, 79),
        Element = Color3.fromRGB(43, 43, 54), ElementBorder = Color3.fromRGB(58, 58, 74), Text = Color3.fromRGB(134, 134, 203), ToggleSlider = Color3.fromRGB(254, 119, 52), ToggleKnobOn = Color3.fromRGB(36, 36, 46),
        Control = Color3.fromRGB(43, 43, 54), OverlayBg = Color3.fromRGB(43, 43, 54), OverlayBorder = Color3.fromRGB(58, 58, 74),
    },
    ["Elementary"] = {
        Accent = Color3.fromRGB(203, 82, 38), WindowBg = Color3.fromRGB(239, 240, 241), WindowBorder = Color3.fromRGB(233, 209, 141), TitleBarLine = Color3.fromRGB(233, 209, 141), RailLine = Color3.fromRGB(233, 209, 141),
        Title = Color3.fromRGB(94, 94, 94), SubText = Color3.fromRGB(147, 161, 161), TabText = Color3.fromRGB(94, 94, 94), TabTextActive = Color3.fromRGB(94, 94, 94), TabHighlight = Color3.fromRGB(214, 214, 214),
        Element = Color3.fromRGB(253, 246, 227), ElementBorder = Color3.fromRGB(233, 209, 141), Text = Color3.fromRGB(94, 94, 94), ToggleSlider = Color3.fromRGB(203, 82, 38), ToggleKnobOn = Color3.fromRGB(253, 246, 227),
        Control = Color3.fromRGB(251, 239, 206), OverlayBg = Color3.fromRGB(251, 239, 206), OverlayBorder = Color3.fromRGB(233, 209, 141),
    },
    ["GitHub Dark Colorblind"] = {
        Accent = Color3.fromRGB(31, 111, 235), WindowBg = Color3.fromRGB(1, 4, 9), WindowBorder = Color3.fromRGB(48, 54, 61), TitleBarLine = Color3.fromRGB(48, 54, 61), RailLine = Color3.fromRGB(48, 54, 61),
        Title = Color3.fromRGB(201, 209, 217), SubText = Color3.fromRGB(139, 148, 158), TabText = Color3.fromRGB(201, 209, 217), TabTextActive = Color3.fromRGB(201, 209, 217), TabHighlight = Color3.fromRGB(110, 118, 129),
        Element = Color3.fromRGB(22, 27, 34), ElementBorder = Color3.fromRGB(48, 54, 61), Text = Color3.fromRGB(201, 209, 217), ToggleSlider = Color3.fromRGB(31, 111, 235), ToggleKnobOn = Color3.fromRGB(13, 17, 23),
        Control = Color3.fromRGB(22, 27, 34), OverlayBg = Color3.fromRGB(22, 27, 34), OverlayBorder = Color3.fromRGB(48, 54, 61),
    },
    ["GitHub Dark Default"] = {
        Accent = Color3.fromRGB(31, 111, 235), WindowBg = Color3.fromRGB(1, 4, 9), WindowBorder = Color3.fromRGB(48, 54, 61), TitleBarLine = Color3.fromRGB(48, 54, 61), RailLine = Color3.fromRGB(48, 54, 61),
        Title = Color3.fromRGB(230, 237, 243), SubText = Color3.fromRGB(125, 133, 144), TabText = Color3.fromRGB(230, 237, 243), TabTextActive = Color3.fromRGB(230, 237, 243), TabHighlight = Color3.fromRGB(110, 118, 129),
        Element = Color3.fromRGB(22, 27, 34), ElementBorder = Color3.fromRGB(48, 54, 61), Text = Color3.fromRGB(230, 237, 243), ToggleSlider = Color3.fromRGB(31, 111, 235), ToggleKnobOn = Color3.fromRGB(13, 17, 23),
        Control = Color3.fromRGB(22, 27, 34), OverlayBg = Color3.fromRGB(22, 27, 34), OverlayBorder = Color3.fromRGB(48, 54, 61),
    },
    ["GitHub Dark Dimmed"] = {
        Accent = Color3.fromRGB(49, 109, 202), WindowBg = Color3.fromRGB(28, 33, 40), WindowBorder = Color3.fromRGB(68, 76, 86), TitleBarLine = Color3.fromRGB(68, 76, 86), RailLine = Color3.fromRGB(68, 76, 86),
        Title = Color3.fromRGB(173, 186, 199), SubText = Color3.fromRGB(118, 131, 144), TabText = Color3.fromRGB(173, 186, 199), TabTextActive = Color3.fromRGB(173, 186, 199), TabHighlight = Color3.fromRGB(99, 110, 123),
        Element = Color3.fromRGB(45, 51, 59), ElementBorder = Color3.fromRGB(68, 76, 86), Text = Color3.fromRGB(173, 186, 199), ToggleSlider = Color3.fromRGB(49, 109, 202), ToggleKnobOn = Color3.fromRGB(34, 39, 46),
        Control = Color3.fromRGB(45, 51, 59), OverlayBg = Color3.fromRGB(45, 51, 59), OverlayBorder = Color3.fromRGB(68, 76, 86),
    },
    ["GitHub Dark High Contrast"] = {
        Accent = Color3.fromRGB(64, 158, 255), WindowBg = Color3.fromRGB(1, 4, 9), WindowBorder = Color3.fromRGB(122, 130, 142), TitleBarLine = Color3.fromRGB(122, 130, 142), RailLine = Color3.fromRGB(122, 130, 142),
        Title = Color3.fromRGB(240, 243, 246), SubText = Color3.fromRGB(240, 243, 246), TabText = Color3.fromRGB(240, 243, 246), TabTextActive = Color3.fromRGB(240, 243, 246), TabHighlight = Color3.fromRGB(158, 167, 179),
        Element = Color3.fromRGB(39, 43, 51), ElementBorder = Color3.fromRGB(122, 130, 142), Text = Color3.fromRGB(240, 243, 246), ToggleSlider = Color3.fromRGB(64, 158, 255), ToggleKnobOn = Color3.fromRGB(10, 12, 16),
        Control = Color3.fromRGB(39, 43, 51), OverlayBg = Color3.fromRGB(39, 43, 51), OverlayBorder = Color3.fromRGB(122, 130, 142),
    },
    ["GitHub Dark"] = {
        Accent = Color3.fromRGB(0, 92, 197), WindowBg = Color3.fromRGB(31, 36, 40), WindowBorder = Color3.fromRGB(27, 31, 35), TitleBarLine = Color3.fromRGB(27, 31, 35), RailLine = Color3.fromRGB(27, 31, 35),
        Title = Color3.fromRGB(209, 213, 218), SubText = Color3.fromRGB(149, 157, 165), TabText = Color3.fromRGB(225, 228, 232), TabTextActive = Color3.fromRGB(209, 213, 218), TabHighlight = Color3.fromRGB(40, 46, 52),
        Element = Color3.fromRGB(47, 54, 61), ElementBorder = Color3.fromRGB(27, 31, 35), Text = Color3.fromRGB(209, 213, 218), ToggleSlider = Color3.fromRGB(0, 92, 197), ToggleKnobOn = Color3.fromRGB(47, 54, 61),
        Control = Color3.fromRGB(47, 54, 61), OverlayBg = Color3.fromRGB(47, 54, 61), OverlayBorder = Color3.fromRGB(27, 31, 35),
    },
    ["GitHub Light Colorblind"] = {
        Accent = Color3.fromRGB(9, 105, 218), WindowBg = Color3.fromRGB(246, 248, 250), WindowBorder = Color3.fromRGB(208, 215, 222), TitleBarLine = Color3.fromRGB(208, 215, 222), RailLine = Color3.fromRGB(208, 215, 222),
        Title = Color3.fromRGB(36, 41, 47), SubText = Color3.fromRGB(87, 96, 106), TabText = Color3.fromRGB(36, 41, 47), TabTextActive = Color3.fromRGB(36, 41, 47), TabHighlight = Color3.fromRGB(234, 238, 242),
        Element = Color3.fromRGB(255, 255, 255), ElementBorder = Color3.fromRGB(208, 215, 222), Text = Color3.fromRGB(36, 41, 47), ToggleSlider = Color3.fromRGB(9, 105, 218), ToggleKnobOn = Color3.fromRGB(255, 255, 255),
        Control = Color3.fromRGB(255, 255, 255), OverlayBg = Color3.fromRGB(255, 255, 255), OverlayBorder = Color3.fromRGB(208, 215, 222),
    },
    ["GitHub Light Default"] = {
        Accent = Color3.fromRGB(9, 105, 218), WindowBg = Color3.fromRGB(246, 248, 250), WindowBorder = Color3.fromRGB(208, 215, 222), TitleBarLine = Color3.fromRGB(208, 215, 222), RailLine = Color3.fromRGB(208, 215, 222),
        Title = Color3.fromRGB(31, 35, 40), SubText = Color3.fromRGB(101, 109, 118), TabText = Color3.fromRGB(31, 35, 40), TabTextActive = Color3.fromRGB(31, 35, 40), TabHighlight = Color3.fromRGB(234, 238, 242),
        Element = Color3.fromRGB(255, 255, 255), ElementBorder = Color3.fromRGB(208, 215, 222), Text = Color3.fromRGB(31, 35, 40), ToggleSlider = Color3.fromRGB(9, 105, 218), ToggleKnobOn = Color3.fromRGB(255, 255, 255),
        Control = Color3.fromRGB(255, 255, 255), OverlayBg = Color3.fromRGB(255, 255, 255), OverlayBorder = Color3.fromRGB(208, 215, 222),
    },
    ["GitHub Light High Contrast"] = {
        Accent = Color3.fromRGB(3, 73, 180), WindowBg = Color3.fromRGB(255, 255, 255), WindowBorder = Color3.fromRGB(32, 37, 44), TitleBarLine = Color3.fromRGB(32, 37, 44), RailLine = Color3.fromRGB(32, 37, 44),
        Title = Color3.fromRGB(14, 17, 22), SubText = Color3.fromRGB(102, 112, 123), TabText = Color3.fromRGB(14, 17, 22), TabTextActive = Color3.fromRGB(14, 17, 22), TabHighlight = Color3.fromRGB(231, 236, 240),
        Element = Color3.fromRGB(255, 255, 255), ElementBorder = Color3.fromRGB(32, 37, 44), Text = Color3.fromRGB(14, 17, 22), ToggleSlider = Color3.fromRGB(3, 73, 180), ToggleKnobOn = Color3.fromRGB(255, 255, 255),
        Control = Color3.fromRGB(255, 255, 255), OverlayBg = Color3.fromRGB(255, 255, 255), OverlayBorder = Color3.fromRGB(32, 37, 44),
    },
    ["GitHub Light"] = {
        Accent = Color3.fromRGB(33, 136, 255), WindowBg = Color3.fromRGB(246, 248, 250), WindowBorder = Color3.fromRGB(225, 228, 232), TitleBarLine = Color3.fromRGB(225, 228, 232), RailLine = Color3.fromRGB(225, 228, 232),
        Title = Color3.fromRGB(36, 41, 46), SubText = Color3.fromRGB(106, 115, 125), TabText = Color3.fromRGB(47, 54, 61), TabTextActive = Color3.fromRGB(36, 41, 46), TabHighlight = Color3.fromRGB(235, 240, 244),
        Element = Color3.fromRGB(250, 251, 252), ElementBorder = Color3.fromRGB(225, 228, 232), Text = Color3.fromRGB(36, 41, 46), ToggleSlider = Color3.fromRGB(33, 136, 255), ToggleKnobOn = Color3.fromRGB(250, 251, 252),
        Control = Color3.fromRGB(250, 251, 252), OverlayBg = Color3.fromRGB(250, 251, 252), OverlayBorder = Color3.fromRGB(225, 228, 232),
    },
    ["Kimbie Dark"] = {
        Accent = Color3.fromRGB(165, 122, 76), WindowBg = Color3.fromRGB(34, 26, 15), WindowBorder = Color3.fromRGB(94, 69, 43), TitleBarLine = Color3.fromRGB(81, 65, 44), RailLine = Color3.fromRGB(81, 65, 44),
        Title = Color3.fromRGB(211, 175, 134), SubText = Color3.fromRGB(165, 122, 76), TabText = Color3.fromRGB(211, 175, 134), TabTextActive = Color3.fromRGB(211, 175, 134), TabHighlight = Color3.fromRGB(124, 80, 33),
        Element = Color3.fromRGB(81, 65, 44), ElementBorder = Color3.fromRGB(94, 69, 43), Text = Color3.fromRGB(211, 175, 134), ToggleSlider = Color3.fromRGB(165, 122, 76), ToggleKnobOn = Color3.fromRGB(81, 65, 44),
        Control = Color3.fromRGB(81, 65, 44), OverlayBg = Color3.fromRGB(81, 65, 44), OverlayBorder = Color3.fromRGB(94, 69, 43),
    },
    ["Monokai Classic"] = {
        Accent = Color3.fromRGB(117, 113, 94), WindowBg = Color3.fromRGB(39, 40, 34), WindowBorder = Color3.fromRGB(30, 31, 28), TitleBarLine = Color3.fromRGB(30, 31, 28), RailLine = Color3.fromRGB(30, 31, 28),
        Title = Color3.fromRGB(248, 248, 242), SubText = Color3.fromRGB(136, 132, 111), TabText = Color3.fromRGB(248, 248, 242), TabTextActive = Color3.fromRGB(248, 248, 242), TabHighlight = Color3.fromRGB(62, 61, 50),
        Element = Color3.fromRGB(65, 67, 57), ElementBorder = Color3.fromRGB(117, 113, 94), Text = Color3.fromRGB(248, 248, 242), ToggleSlider = Color3.fromRGB(117, 113, 94), ToggleKnobOn = Color3.fromRGB(39, 40, 34),
        Control = Color3.fromRGB(65, 67, 57), OverlayBg = Color3.fromRGB(30, 31, 28), OverlayBorder = Color3.fromRGB(117, 113, 94),
    },
    ["Monokai Dimmed"] = {
        Accent = Color3.fromRGB(54, 85, 181), WindowBg = Color3.fromRGB(30, 30, 30), WindowBorder = Color3.fromRGB(48, 48, 48), TitleBarLine = Color3.fromRGB(48, 48, 48), RailLine = Color3.fromRGB(48, 48, 48),
        Title = Color3.fromRGB(197, 200, 198), SubText = Color3.fromRGB(154, 155, 153), TabText = Color3.fromRGB(216, 216, 216), TabTextActive = Color3.fromRGB(197, 200, 198), TabHighlight = Color3.fromRGB(68, 68, 68),
        Element = Color3.fromRGB(82, 82, 82), ElementBorder = Color3.fromRGB(80, 80, 80), Text = Color3.fromRGB(197, 200, 198), ToggleSlider = Color3.fromRGB(54, 85, 181), ToggleKnobOn = Color3.fromRGB(82, 82, 82),
        Control = Color3.fromRGB(82, 82, 82), OverlayBg = Color3.fromRGB(82, 82, 82), OverlayBorder = Color3.fromRGB(80, 80, 80),
    },
    ["Monokai Vibrant"] = {
        Accent = Color3.fromRGB(82, 139, 255), WindowBg = Color3.fromRGB(22, 23, 29), WindowBorder = Color3.fromRGB(24, 26, 31), TitleBarLine = Color3.fromRGB(24, 26, 31), RailLine = Color3.fromRGB(24, 26, 31),
        Title = Color3.fromRGB(248, 248, 240), SubText = Color3.fromRGB(92, 99, 112), TabText = Color3.fromRGB(248, 248, 240), TabTextActive = Color3.fromRGB(248, 248, 240), TabHighlight = Color3.fromRGB(41, 45, 53),
        Element = Color3.fromRGB(29, 31, 35), ElementBorder = Color3.fromRGB(24, 26, 17), Text = Color3.fromRGB(248, 248, 240), ToggleSlider = Color3.fromRGB(82, 139, 255), ToggleKnobOn = Color3.fromRGB(22, 23, 29),
        Control = Color3.fromRGB(29, 31, 35), OverlayBg = Color3.fromRGB(33, 37, 43), OverlayBorder = Color3.fromRGB(24, 26, 17),
    },
    ["Monokai"] = {
        Accent = Color3.fromRGB(249, 38, 114), WindowBg = Color3.fromRGB(39, 40, 34), WindowBorder = Color3.fromRGB(65, 67, 57), TitleBarLine = Color3.fromRGB(65, 67, 57), RailLine = Color3.fromRGB(65, 67, 57),
        Title = Color3.fromRGB(248, 248, 242), SubText = Color3.fromRGB(136, 132, 111), TabText = Color3.fromRGB(248, 248, 242), TabTextActive = Color3.fromRGB(248, 248, 242), TabHighlight = Color3.fromRGB(62, 61, 50),
        Element = Color3.fromRGB(65, 67, 57), ElementBorder = Color3.fromRGB(117, 113, 94), Text = Color3.fromRGB(248, 248, 242), ToggleSlider = Color3.fromRGB(249, 38, 114), ToggleKnobOn = Color3.fromRGB(65, 67, 57),
        Control = Color3.fromRGB(65, 67, 57), OverlayBg = Color3.fromRGB(30, 31, 28), OverlayBorder = Color3.fromRGB(117, 113, 94),
    },
    ["Quiet Light"] = {
        Accent = Color3.fromRGB(151, 105, 220), WindowBg = Color3.fromRGB(245, 245, 245), WindowBorder = Color3.fromRGB(196, 183, 215), TitleBarLine = Color3.fromRGB(196, 183, 215), RailLine = Color3.fromRGB(196, 183, 215),
        Title = Color3.fromRGB(51, 51, 51), SubText = Color3.fromRGB(109, 112, 91), TabText = Color3.fromRGB(112, 86, 151), TabTextActive = Color3.fromRGB(51, 51, 51), TabHighlight = Color3.fromRGB(224, 224, 224),
        Element = Color3.fromRGB(242, 242, 242), ElementBorder = Color3.fromRGB(173, 175, 183), Text = Color3.fromRGB(51, 51, 51), ToggleSlider = Color3.fromRGB(112, 86, 151), ToggleKnobOn = Color3.fromRGB(245, 245, 245),
        Control = Color3.fromRGB(245, 245, 245), OverlayBg = Color3.fromRGB(245, 245, 245), OverlayBorder = Color3.fromRGB(173, 175, 183),
    },
    ["Solarized Dark"] = {
        Accent = Color3.fromRGB(42, 161, 152), WindowBg = Color3.fromRGB(0, 43, 54), WindowBorder = Color3.fromRGB(7, 54, 66), TitleBarLine = Color3.fromRGB(42, 161, 152), RailLine = Color3.fromRGB(42, 161, 152),
        Title = Color3.fromRGB(131, 148, 150), SubText = Color3.fromRGB(88, 110, 117), TabText = Color3.fromRGB(131, 148, 150), TabTextActive = Color3.fromRGB(131, 148, 150), TabHighlight = Color3.fromRGB(0, 68, 84),
        Element = Color3.fromRGB(0, 56, 71), ElementBorder = Color3.fromRGB(42, 161, 152), Text = Color3.fromRGB(131, 148, 150), ToggleSlider = Color3.fromRGB(42, 161, 152), ToggleKnobOn = Color3.fromRGB(0, 43, 54),
        Control = Color3.fromRGB(0, 33, 43), OverlayBg = Color3.fromRGB(0, 33, 43), OverlayBorder = Color3.fromRGB(42, 161, 152),
    },
    ["Solarized Light"] = {
        Accent = Color3.fromRGB(181, 137, 0), WindowBg = Color3.fromRGB(253, 246, 227), WindowBorder = Color3.fromRGB(221, 214, 193), TitleBarLine = Color3.fromRGB(221, 214, 193), RailLine = Color3.fromRGB(221, 214, 193),
        Title = Color3.fromRGB(101, 123, 131), SubText = Color3.fromRGB(147, 161, 161), TabText = Color3.fromRGB(101, 123, 131), TabTextActive = Color3.fromRGB(101, 123, 131), TabHighlight = Color3.fromRGB(223, 202, 136),
        Element = Color3.fromRGB(238, 232, 213), ElementBorder = Color3.fromRGB(211, 175, 134), Text = Color3.fromRGB(101, 123, 131), ToggleSlider = Color3.fromRGB(181, 137, 0), ToggleKnobOn = Color3.fromRGB(253, 246, 227),
        Control = Color3.fromRGB(238, 232, 213), OverlayBg = Color3.fromRGB(238, 232, 213), OverlayBorder = Color3.fromRGB(211, 175, 134),
    },
    ["Tomorrow Night Blue"] = {
        Accent = Color3.fromRGB(187, 218, 255), WindowBg = Color3.fromRGB(0, 36, 81), WindowBorder = Color3.fromRGB(64, 79, 125), TitleBarLine = Color3.fromRGB(64, 79, 125), RailLine = Color3.fromRGB(64, 79, 125),
        Title = Color3.fromRGB(255, 255, 255), SubText = Color3.fromRGB(114, 133, 183), TabText = Color3.fromRGB(255, 255, 255), TabTextActive = Color3.fromRGB(255, 255, 255), TabHighlight = Color3.fromRGB(255, 255, 255),
        Element = Color3.fromRGB(0, 23, 51), ElementBorder = Color3.fromRGB(64, 79, 125), Text = Color3.fromRGB(255, 255, 255), ToggleSlider = Color3.fromRGB(187, 218, 255), ToggleKnobOn = Color3.fromRGB(0, 23, 51),
        Control = Color3.fromRGB(0, 23, 51), OverlayBg = Color3.fromRGB(0, 23, 51), OverlayBorder = Color3.fromRGB(64, 79, 125),
    },
    ["United GNOME"] = {
        Accent = Color3.fromRGB(72, 178, 88), WindowBg = Color3.fromRGB(30, 30, 30), WindowBorder = Color3.fromRGB(68, 68, 68), TitleBarLine = Color3.fromRGB(68, 68, 68), RailLine = Color3.fromRGB(68, 68, 68),
        Title = Color3.fromRGB(221, 221, 221), SubText = Color3.fromRGB(128, 128, 128), TabText = Color3.fromRGB(221, 221, 221), TabTextActive = Color3.fromRGB(221, 221, 221), TabHighlight = Color3.fromRGB(42, 45, 46),
        Element = Color3.fromRGB(36, 36, 36), ElementBorder = Color3.fromRGB(64, 64, 64), Text = Color3.fromRGB(221, 221, 221), ToggleSlider = Color3.fromRGB(72, 178, 88), ToggleKnobOn = Color3.fromRGB(30, 30, 30),
        Control = Color3.fromRGB(36, 36, 36), OverlayBg = Color3.fromRGB(36, 36, 36), OverlayBorder = Color3.fromRGB(64, 64, 64),
    },
    ["United Ubuntu"] = {
        Accent = Color3.fromRGB(72, 178, 88), WindowBg = Color3.fromRGB(30, 30, 30), WindowBorder = Color3.fromRGB(68, 68, 68), TitleBarLine = Color3.fromRGB(68, 68, 68), RailLine = Color3.fromRGB(68, 68, 68),
        Title = Color3.fromRGB(221, 221, 221), SubText = Color3.fromRGB(128, 128, 128), TabText = Color3.fromRGB(221, 221, 221), TabTextActive = Color3.fromRGB(221, 221, 221), TabHighlight = Color3.fromRGB(42, 45, 46),
        Element = Color3.fromRGB(36, 36, 36), ElementBorder = Color3.fromRGB(64, 64, 64), Text = Color3.fromRGB(221, 221, 221), ToggleSlider = Color3.fromRGB(72, 178, 88), ToggleKnobOn = Color3.fromRGB(30, 30, 30),
        Control = Color3.fromRGB(36, 36, 36), OverlayBg = Color3.fromRGB(36, 36, 36), OverlayBorder = Color3.fromRGB(64, 64, 64),
    },
    ["VS Dark"] = {
        Accent = Color3.fromRGB(0, 122, 204), WindowBg = Color3.fromRGB(30, 30, 30), WindowBorder = Color3.fromRGB(48, 48, 49), TitleBarLine = Color3.fromRGB(48, 48, 49), RailLine = Color3.fromRGB(48, 48, 49),
        Title = Color3.fromRGB(212, 212, 212), SubText = Color3.fromRGB(187, 187, 187), TabText = Color3.fromRGB(255, 255, 255), TabTextActive = Color3.fromRGB(212, 212, 212), TabHighlight = Color3.fromRGB(56, 59, 61),
        Element = Color3.fromRGB(34, 34, 34), ElementBorder = Color3.fromRGB(107, 107, 107), Text = Color3.fromRGB(212, 212, 212), ToggleSlider = Color3.fromRGB(0, 122, 204), ToggleKnobOn = Color3.fromRGB(34, 34, 34),
        Control = Color3.fromRGB(37, 37, 38), OverlayBg = Color3.fromRGB(37, 37, 38), OverlayBorder = Color3.fromRGB(69, 69, 69),
    },
    ["VS Light"] = {
        Accent = Color3.fromRGB(0, 122, 204), WindowBg = Color3.fromRGB(255, 255, 255), WindowBorder = Color3.fromRGB(145, 145, 145), TitleBarLine = Color3.fromRGB(212, 212, 212), RailLine = Color3.fromRGB(212, 212, 212),
        Title = Color3.fromRGB(0, 0, 0), SubText = Color3.fromRGB(111, 111, 111), TabText = Color3.fromRGB(51, 51, 51), TabTextActive = Color3.fromRGB(0, 0, 0), TabHighlight = Color3.fromRGB(232, 232, 232),
        Element = Color3.fromRGB(243, 243, 243), ElementBorder = Color3.fromRGB(206, 206, 206), Text = Color3.fromRGB(0, 0, 0), ToggleSlider = Color3.fromRGB(0, 122, 204), ToggleKnobOn = Color3.fromRGB(255, 255, 255),
        Control = Color3.fromRGB(255, 255, 255), OverlayBg = Color3.fromRGB(255, 255, 255), OverlayBorder = Color3.fromRGB(206, 206, 206),
    },
    ["VSC Dark High Contrast"] = {
        Accent = Color3.fromRGB(86, 156, 214), WindowBg = Color3.fromRGB(0, 0, 0), WindowBorder = Color3.fromRGB(255, 255, 255), TitleBarLine = Color3.fromRGB(255, 255, 255), RailLine = Color3.fromRGB(255, 255, 255),
        Title = Color3.fromRGB(255, 255, 255), SubText = Color3.fromRGB(157, 157, 157), TabText = Color3.fromRGB(255, 255, 255), TabTextActive = Color3.fromRGB(255, 255, 255), TabHighlight = Color3.fromRGB(56, 58, 73),
        Element = Color3.fromRGB(0, 0, 0), ElementBorder = Color3.fromRGB(255, 255, 255), Text = Color3.fromRGB(255, 255, 255), ToggleSlider = Color3.fromRGB(86, 156, 214), ToggleKnobOn = Color3.fromRGB(0, 0, 0),
        Control = Color3.fromRGB(0, 0, 0), OverlayBg = Color3.fromRGB(0, 0, 0), OverlayBorder = Color3.fromRGB(255, 255, 255),
    },
    ["VSC Dark Modern"] = {
        Accent = Color3.fromRGB(0, 120, 212), WindowBg = Color3.fromRGB(24, 24, 24), WindowBorder = Color3.fromRGB(43, 43, 43), TitleBarLine = Color3.fromRGB(43, 43, 43), RailLine = Color3.fromRGB(43, 43, 43),
        Title = Color3.fromRGB(204, 204, 204), SubText = Color3.fromRGB(157, 157, 157), TabText = Color3.fromRGB(255, 255, 255), TabTextActive = Color3.fromRGB(204, 204, 204), TabHighlight = Color3.fromRGB(60, 60, 60),
        Element = Color3.fromRGB(49, 49, 49), ElementBorder = Color3.fromRGB(60, 60, 60), Text = Color3.fromRGB(204, 204, 204), ToggleSlider = Color3.fromRGB(0, 120, 212), ToggleKnobOn = Color3.fromRGB(49, 49, 49),
        Control = Color3.fromRGB(49, 49, 49), OverlayBg = Color3.fromRGB(49, 49, 49), OverlayBorder = Color3.fromRGB(60, 60, 60),
    },
    ["VSC Dark+"] = {
        Accent = Color3.fromRGB(220, 220, 170), WindowBg = Color3.fromRGB(30, 30, 30), WindowBorder = Color3.fromRGB(68, 68, 68), TitleBarLine = Color3.fromRGB(68, 68, 68), RailLine = Color3.fromRGB(68, 68, 68),
        Title = Color3.fromRGB(212, 212, 212), SubText = Color3.fromRGB(128, 128, 128), TabText = Color3.fromRGB(204, 204, 204), TabTextActive = Color3.fromRGB(212, 212, 212), TabHighlight = Color3.fromRGB(42, 45, 46),
        Element = Color3.fromRGB(45, 45, 45), ElementBorder = Color3.fromRGB(64, 64, 64), Text = Color3.fromRGB(212, 212, 212), ToggleSlider = Color3.fromRGB(78, 201, 176), ToggleKnobOn = Color3.fromRGB(30, 30, 30),
        Control = Color3.fromRGB(45, 45, 45), OverlayBg = Color3.fromRGB(37, 37, 38), OverlayBorder = Color3.fromRGB(64, 64, 64),
    },
    ["VSC Light High Contrast"] = {
        Accent = Color3.fromRGB(94, 44, 188), WindowBg = Color3.fromRGB(255, 255, 255), WindowBorder = Color3.fromRGB(41, 41, 41), TitleBarLine = Color3.fromRGB(41, 41, 41), RailLine = Color3.fromRGB(41, 41, 41),
        Title = Color3.fromRGB(41, 41, 41), SubText = Color3.fromRGB(81, 81, 81), TabText = Color3.fromRGB(0, 0, 0), TabTextActive = Color3.fromRGB(41, 41, 41), TabHighlight = Color3.fromRGB(221, 221, 221),
        Element = Color3.fromRGB(255, 255, 255), ElementBorder = Color3.fromRGB(81, 81, 81), Text = Color3.fromRGB(41, 41, 41), ToggleSlider = Color3.fromRGB(15, 74, 133), ToggleKnobOn = Color3.fromRGB(255, 255, 255),
        Control = Color3.fromRGB(255, 255, 255), OverlayBg = Color3.fromRGB(255, 255, 255), OverlayBorder = Color3.fromRGB(81, 81, 81),
    },
    ["VSC Light Modern"] = {
        Accent = Color3.fromRGB(0, 95, 184), WindowBg = Color3.fromRGB(248, 248, 248), WindowBorder = Color3.fromRGB(229, 229, 229), TitleBarLine = Color3.fromRGB(229, 229, 229), RailLine = Color3.fromRGB(229, 229, 229),
        Title = Color3.fromRGB(59, 59, 59), SubText = Color3.fromRGB(97, 97, 97), TabText = Color3.fromRGB(31, 31, 31), TabTextActive = Color3.fromRGB(59, 59, 59), TabHighlight = Color3.fromRGB(242, 242, 242),
        Element = Color3.fromRGB(229, 229, 229), ElementBorder = Color3.fromRGB(206, 206, 206), Text = Color3.fromRGB(59, 59, 59), ToggleSlider = Color3.fromRGB(0, 95, 184), ToggleKnobOn = Color3.fromRGB(255, 255, 255),
        Control = Color3.fromRGB(255, 255, 255), OverlayBg = Color3.fromRGB(255, 255, 255), OverlayBorder = Color3.fromRGB(206, 206, 206),
    },
    ["VSC Light+"] = {
        Accent = Color3.fromRGB(121, 94, 38), WindowBg = Color3.fromRGB(255, 255, 255), WindowBorder = Color3.fromRGB(212, 212, 212), TitleBarLine = Color3.fromRGB(212, 212, 212), RailLine = Color3.fromRGB(212, 212, 212),
        Title = Color3.fromRGB(0, 0, 0), SubText = Color3.fromRGB(111, 111, 111), TabText = Color3.fromRGB(0, 0, 0), TabTextActive = Color3.fromRGB(0, 0, 0), TabHighlight = Color3.fromRGB(232, 232, 232),
        Element = Color3.fromRGB(243, 243, 243), ElementBorder = Color3.fromRGB(206, 206, 206), Text = Color3.fromRGB(0, 0, 0), ToggleSlider = Color3.fromRGB(121, 94, 38), ToggleKnobOn = Color3.fromRGB(255, 255, 255),
        Control = Color3.fromRGB(255, 255, 255), OverlayBg = Color3.fromRGB(255, 255, 255), OverlayBorder = Color3.fromRGB(206, 206, 206),
    },
    ["VSC Red"] = {
        Accent = Color3.fromRGB(204, 51, 51), WindowBg = Color3.fromRGB(88, 0, 0), WindowBorder = Color3.fromRGB(255, 102, 102), TitleBarLine = Color3.fromRGB(119, 34, 34), RailLine = Color3.fromRGB(119, 34, 34),
        Title = Color3.fromRGB(248, 248, 248), SubText = Color3.fromRGB(231, 192, 192), TabText = Color3.fromRGB(248, 248, 248), TabTextActive = Color3.fromRGB(248, 248, 248), TabHighlight = Color3.fromRGB(128, 0, 0),
        Element = Color3.fromRGB(88, 0, 0), ElementBorder = Color3.fromRGB(255, 102, 102), Text = Color3.fromRGB(248, 248, 248), ToggleSlider = Color3.fromRGB(204, 51, 51), ToggleKnobOn = Color3.fromRGB(48, 0, 0),
        Control = Color3.fromRGB(88, 0, 0), OverlayBg = Color3.fromRGB(88, 0, 0), OverlayBorder = Color3.fromRGB(34, 0, 0),
    },
    ["Viow Arabian Mix"] = {
        Accent = Color3.fromRGB(123, 54, 226), WindowBg = Color3.fromRGB(17, 14, 26), WindowBorder = Color3.fromRGB(68, 68, 68), TitleBarLine = Color3.fromRGB(68, 68, 68), RailLine = Color3.fromRGB(68, 68, 68),
        Title = Color3.fromRGB(164, 151, 181), SubText = Color3.fromRGB(96, 87, 111), TabText = Color3.fromRGB(204, 204, 204), TabTextActive = Color3.fromRGB(164, 151, 181), TabHighlight = Color3.fromRGB(42, 45, 46),
        Element = Color3.fromRGB(45, 45, 45), ElementBorder = Color3.fromRGB(64, 64, 64), Text = Color3.fromRGB(164, 151, 181), ToggleSlider = Color3.fromRGB(123, 54, 226), ToggleKnobOn = Color3.fromRGB(17, 14, 26),
        Control = Color3.fromRGB(45, 45, 45), OverlayBg = Color3.fromRGB(37, 37, 38), OverlayBorder = Color3.fromRGB(64, 64, 64),
    },
    ["Viow Arabian"] = {
        Accent = Color3.fromRGB(123, 54, 226), WindowBg = Color3.fromRGB(17, 14, 26), WindowBorder = Color3.fromRGB(68, 68, 68), TitleBarLine = Color3.fromRGB(68, 68, 68), RailLine = Color3.fromRGB(68, 68, 68),
        Title = Color3.fromRGB(164, 151, 181), SubText = Color3.fromRGB(96, 87, 111), TabText = Color3.fromRGB(204, 204, 204), TabTextActive = Color3.fromRGB(164, 151, 181), TabHighlight = Color3.fromRGB(42, 45, 46),
        Element = Color3.fromRGB(45, 45, 45), ElementBorder = Color3.fromRGB(64, 64, 64), Text = Color3.fromRGB(164, 151, 181), ToggleSlider = Color3.fromRGB(123, 54, 226), ToggleKnobOn = Color3.fromRGB(17, 14, 26),
        Control = Color3.fromRGB(45, 45, 45), OverlayBg = Color3.fromRGB(37, 37, 38), OverlayBorder = Color3.fromRGB(64, 64, 64),
    },
    ["Viow Darker"] = {
        Accent = Color3.fromRGB(22, 95, 179), WindowBg = Color3.fromRGB(33, 37, 43), WindowBorder = Color3.fromRGB(56, 56, 56), TitleBarLine = Color3.fromRGB(56, 56, 56), RailLine = Color3.fromRGB(56, 56, 56),
        Title = Color3.fromRGB(211, 208, 200), SubText = Color3.fromRGB(116, 115, 105), TabText = Color3.fromRGB(211, 208, 200), TabTextActive = Color3.fromRGB(211, 208, 200), TabHighlight = Color3.fromRGB(56, 56, 56),
        Element = Color3.fromRGB(45, 51, 60), ElementBorder = Color3.fromRGB(56, 56, 56), Text = Color3.fromRGB(211, 208, 200), ToggleSlider = Color3.fromRGB(22, 95, 179), ToggleKnobOn = Color3.fromRGB(33, 37, 43),
        Control = Color3.fromRGB(45, 51, 60), OverlayBg = Color3.fromRGB(30, 34, 40), OverlayBorder = Color3.fromRGB(56, 56, 56),
    },
    ["Viow Flat"] = {
        Accent = Color3.fromRGB(22, 95, 179), WindowBg = Color3.fromRGB(25, 28, 40), WindowBorder = Color3.fromRGB(25, 28, 40), TitleBarLine = Color3.fromRGB(25, 28, 40), RailLine = Color3.fromRGB(25, 28, 40),
        Title = Color3.fromRGB(211, 208, 200), SubText = Color3.fromRGB(116, 115, 105), TabText = Color3.fromRGB(211, 208, 200), TabTextActive = Color3.fromRGB(211, 208, 200), TabHighlight = Color3.fromRGB(70, 72, 112),
        Element = Color3.fromRGB(25, 28, 40), ElementBorder = Color3.fromRGB(25, 28, 40), Text = Color3.fromRGB(211, 208, 200), ToggleSlider = Color3.fromRGB(22, 95, 179), ToggleKnobOn = Color3.fromRGB(25, 28, 40),
        Control = Color3.fromRGB(25, 28, 40), OverlayBg = Color3.fromRGB(25, 28, 40), OverlayBorder = Color3.fromRGB(25, 28, 40),
    },
    ["Viow Light"] = {
        Accent = Color3.fromRGB(15, 150, 255), WindowBg = Color3.fromRGB(255, 255, 255), WindowBorder = Color3.fromRGB(212, 212, 212), TitleBarLine = Color3.fromRGB(212, 212, 212), RailLine = Color3.fromRGB(212, 212, 212),
        Title = Color3.fromRGB(87, 96, 108), SubText = Color3.fromRGB(111, 111, 111), TabText = Color3.fromRGB(142, 142, 142), TabTextActive = Color3.fromRGB(87, 96, 108), TabHighlight = Color3.fromRGB(232, 232, 232),
        Element = Color3.fromRGB(243, 243, 243), ElementBorder = Color3.fromRGB(206, 206, 206), Text = Color3.fromRGB(87, 96, 108), ToggleSlider = Color3.fromRGB(15, 150, 255), ToggleKnobOn = Color3.fromRGB(255, 255, 255),
        Control = Color3.fromRGB(255, 255, 255), OverlayBg = Color3.fromRGB(255, 255, 255), OverlayBorder = Color3.fromRGB(206, 206, 206),
    },
    ["Viow Mars"] = {
        Accent = Color3.fromRGB(227, 43, 0), WindowBg = Color3.fromRGB(19, 12, 15), WindowBorder = Color3.fromRGB(40, 25, 29), TitleBarLine = Color3.fromRGB(40, 25, 29), RailLine = Color3.fromRGB(40, 25, 29),
        Title = Color3.fromRGB(211, 208, 200), SubText = Color3.fromRGB(116, 115, 105), TabText = Color3.fromRGB(211, 208, 200), TabTextActive = Color3.fromRGB(211, 208, 200), TabHighlight = Color3.fromRGB(92, 27, 51),
        Element = Color3.fromRGB(50, 31, 39), ElementBorder = Color3.fromRGB(90, 13, 41), Text = Color3.fromRGB(211, 208, 200), ToggleSlider = Color3.fromRGB(227, 43, 0), ToggleKnobOn = Color3.fromRGB(19, 12, 15),
        Control = Color3.fromRGB(50, 31, 39), OverlayBg = Color3.fromRGB(39, 30, 34), OverlayBorder = Color3.fromRGB(90, 13, 41),
    },
    ["Viow Neon"] = {
        Accent = Color3.fromRGB(21, 145, 255), WindowBg = Color3.fromRGB(32, 36, 50), WindowBorder = Color3.fromRGB(25, 28, 40), TitleBarLine = Color3.fromRGB(25, 28, 40), RailLine = Color3.fromRGB(25, 28, 40),
        Title = Color3.fromRGB(211, 208, 200), SubText = Color3.fromRGB(116, 115, 105), TabText = Color3.fromRGB(211, 208, 200), TabTextActive = Color3.fromRGB(211, 208, 200), TabHighlight = Color3.fromRGB(27, 55, 92),
        Element = Color3.fromRGB(32, 36, 50), ElementBorder = Color3.fromRGB(13, 44, 90), Text = Color3.fromRGB(211, 208, 200), ToggleSlider = Color3.fromRGB(21, 145, 255), ToggleKnobOn = Color3.fromRGB(32, 36, 50),
        Control = Color3.fromRGB(32, 36, 50), OverlayBg = Color3.fromRGB(30, 34, 40), OverlayBorder = Color3.fromRGB(13, 44, 90),
    },
    ["Yaru Dark"] = {
        Accent = Color3.fromRGB(233, 84, 32), WindowBg = Color3.fromRGB(56, 56, 56), WindowBorder = Color3.fromRGB(68, 68, 68), TitleBarLine = Color3.fromRGB(68, 68, 68), RailLine = Color3.fromRGB(68, 68, 68),
        Title = Color3.fromRGB(255, 255, 255), SubText = Color3.fromRGB(128, 128, 128), TabText = Color3.fromRGB(255, 255, 255), TabTextActive = Color3.fromRGB(255, 255, 255), TabHighlight = Color3.fromRGB(87, 87, 87),
        Element = Color3.fromRGB(72, 72, 72), ElementBorder = Color3.fromRGB(64, 64, 64), Text = Color3.fromRGB(255, 255, 255), ToggleSlider = Color3.fromRGB(233, 84, 32), ToggleKnobOn = Color3.fromRGB(47, 47, 47),
        Control = Color3.fromRGB(72, 72, 72), OverlayBg = Color3.fromRGB(72, 72, 72), OverlayBorder = Color3.fromRGB(64, 64, 64),
    },
    ["Yaru"] = {
        Accent = Color3.fromRGB(233, 84, 32), WindowBg = Color3.fromRGB(237, 238, 240), WindowBorder = Color3.fromRGB(212, 212, 212), TitleBarLine = Color3.fromRGB(212, 212, 212), RailLine = Color3.fromRGB(212, 212, 212),
        Title = Color3.fromRGB(17, 17, 17), SubText = Color3.fromRGB(111, 111, 111), TabText = Color3.fromRGB(17, 17, 17), TabTextActive = Color3.fromRGB(17, 17, 17), TabHighlight = Color3.fromRGB(232, 232, 232),
        Element = Color3.fromRGB(255, 255, 255), ElementBorder = Color3.fromRGB(206, 206, 206), Text = Color3.fromRGB(17, 17, 17), ToggleSlider = Color3.fromRGB(233, 84, 32), ToggleKnobOn = Color3.fromRGB(255, 255, 255),
        Control = Color3.fromRGB(255, 255, 255), OverlayBg = Color3.fromRGB(255, 255, 255), OverlayBorder = Color3.fromRGB(206, 206, 206),
    },
    Light = {
        WindowBg = Color3.fromRGB(243, 243, 243), WindowBorder = Color3.fromRGB(200, 200, 200),
        TitleBarLine = Color3.fromRGB(205, 205, 205), RailLine = Color3.fromRGB(215, 215, 215),
        Title = Color3.fromRGB(25, 25, 25), Text = Color3.fromRGB(25, 25, 25), SubText = Color3.fromRGB(110, 110, 110),
        TabText = Color3.fromRGB(110, 110, 110), TabTextActive = Color3.fromRGB(20, 20, 20), TabHighlight = Color3.fromRGB(0, 0, 0),
        Element = Color3.fromRGB(0, 0, 0), ElementBorder = Color3.fromRGB(170, 170, 170),
        ToggleSlider = Color3.fromRGB(140, 140, 140), ToggleKnobOn = Color3.fromRGB(255, 255, 255),
        Control = Color3.fromRGB(255, 255, 255), OverlayBg = Color3.fromRGB(250, 250, 250), OverlayBorder = Color3.fromRGB(190, 190, 190),
    },
}
for key_, val in pairs(theme) do palettes.Dark[key_] = val end
local keep_themes = { "Dark", "Darker", "Light", "Sakura", "Blood Red", "Midnight", "Emerald", "Aqua", "Amethyst", "Rose" }
do
    local _keep = {}
    for __, cnt in ipairs(keep_themes) do _keep[cnt] = true end
    for cnt in pairs(palettes) do if not _keep[cnt] then palettes[cnt] = nil end end
end
Fluent.Themes = {}
for __, cnt in ipairs(keep_themes) do if palettes[cnt] then Fluent.Themes[#Fluent.Themes + 1] = cnt end end

local title_h = 42
local rail_w = 160

local function _clamp(val, _lo, _hi) if val < _lo then return _lo elseif val > _hi then return _hi end return val end
local function _lerp(ax2, bt, tm) return ax2 + (bt - ax2) * tm end
local function lerp_color(ax2, bt, tm) return Color3.new(_lerp(ax2.R, bt.R, tm), _lerp(ax2.G, bt.G, tm), _lerp(ax2.B, bt.B, tm)) end
local function rgb_to_hsv(col_)
    local rad, grp, bt = col_.R, col_.G, col_.B
    local _mx, _mn = math.max(rad, grp, bt), math.min(rad, grp, bt)
    local dat = _mx - _mn
    local ht, str_, val = 0, (_mx == 0 and 0 or dat / _mx), _mx
    if dat ~= 0 then
        if _mx == rad then ht = ((grp - bt) / dat) % 6
        elseif _mx == grp then ht = (bt - rad) / dat + 2
        else ht = (rad - grp) / dat + 4 end
        ht = ht / 6
    end
    return ht, str_, val
end

local key_name = {
    [0x41]="A",[0x42]="B",[0x43]="C",[0x44]="D",[0x45]="E",[0x46]="F",[0x47]="G",[0x48]="H",[0x49]="I",[0x4A]="J",
    [0x4B]="K",[0x4C]="L",[0x4D]="M",[0x4E]="N",[0x4F]="O",[0x50]="P",[0x51]="Q",[0x52]="R",[0x53]="S",[0x54]="T",
    [0x55]="U",[0x56]="V",[0x57]="W",[0x58]="X",[0x59]="Y",[0x5A]="Z",
    [0x30]="0",[0x31]="1",[0x32]="2",[0x33]="3",[0x34]="4",[0x35]="5",[0x36]="6",[0x37]="7",[0x38]="8",[0x39]="9",
    [0x70]="F1",[0x71]="F2",[0x72]="F3",[0x73]="F4",[0x74]="F5",[0x75]="F6",[0x76]="F7",[0x77]="F8",[0x78]="F9",[0x79]="F10",[0x7A]="F11",[0x7B]="F12",
    [0x10]="Shift",[0x11]="Ctrl",[0x12]="Alt",[0x20]="Space",[0x09]="Tab",[0x1B]="Esc",
    [0x23]="End",[0x24]="Home",[0x2D]="Insert",[0x2E]="Delete",
    [0x25]="Left",[0x26]="Up",[0x27]="Right",[0x28]="Down",
    [0x01]="MB1",[0x02]="MB2",[0x05]="Mouse4",[0x06]="Mouse5",
}
local key_alias = {
    LeftControl = 0x11, RightControl = 0x11, Control = 0x11, Ctrl = 0x11,
    LeftShift = 0x10, RightShift = 0x10, Shift = 0x10,
    LeftAlt = 0x12, RightAlt = 0x12, Alt = 0x12,
    MB1 = 0x01, MB2 = 0x02, Mouse1 = 0x01, Mouse2 = 0x02,
    Return = 0x0D, Enter = 0x0D, Escape = 0x1B, Backspace = 0x08, Spacebar = 0x20,
}
local function resolve_key(val)
    if type(val) == "number" then return val, key_name[val] or tostring(val) end
    if type(val) == "string" then
        if key_alias[val] then return key_alias[val], key_name[key_alias[val]] or val end
        for _vk, title_str in pairs(key_name) do if title_str == val then return _vk, title_str end end
    end
    return nil, "None"
end
local scan_list = {}
for _vk in pairs(key_name) do scan_list[#scan_list + 1] = _vk end

local char_map = {}
for _vk = 0x41, 0x5A do char_map[_vk] = { string.char(_vk + 32), string.char(_vk) } end
do
    local dat = { [0x30]={"0",")"},[0x31]={"1","!"},[0x32]={"2","@"},[0x33]={"3","#"},[0x34]={"4","$"},
                [0x35]={"5","%"},[0x36]={"6","^"},[0x37]={"7","&"},[0x38]={"8","*"},[0x39]={"9","("} }
    for _vk, mod_ in pairs(dat) do char_map[_vk] = mod_ end
    char_map[0x20]={" "," "}; char_map[0xBA]={";",":"}; char_map[0xBB]={"=","+"}; char_map[0xBC]={",","<"}
    char_map[0xBD]={"-","_"}; char_map[0xBE]={".",">"}; char_map[0xBF]={"/","?"}; char_map[0xC0]={"`","~"}
    char_map[0xDB]={"[","{"}; char_map[0xDC]={"\\","|"}; char_map[0xDD]={"]","}"}; char_map[0xDE]={"'","\""}
end
local char_scan_list = {}
for _vk in pairs(char_map) do char_scan_list[#char_scan_list + 1] = _vk end

-- generated glyph fonts: [family] = { h = line height, sp = space advance, g = { [char] = { advance, width, xOffset, whitePNG, darkPNG } } } at size 28
local glyph_fonts = {
    ["Segoe UI"] = { h = 39, asc = 31, top = 11, bot = 37, sp = 8.0, g = {
        ["!"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAnCAQAAAB3PqrdAAAAaElEQVR42tWRQQqAMAwEp/7DgwUP/YD/EH+v0I+0ul4EYxUUxIM5DrObQJwop+L/qEOI2qIMQDqjbFF6ZD3vWlhKKx1PzXvMBu+ti64Z7ZZ799pAZMRbNNDQ0m+aEAqKmuSF0NuNn6EVb8gvD3nHd1oAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAnCAQAAAB3PqrdAAAAXUlEQVR42t2OMQqAMAxFH97DQcHBC3gP8fYKXiRp4yCltToEXMS/5fF4BH65CcNoz6MBQAGQO9ISicvytyKxtiQ9mZFekbish1bAsvVyIzsrfZlf6BiYa2tL1ld3AP9wIu6rej7UAAAAAElFTkSuQmCC" },
        ["\""] = { 11.0, 12, 0, "iVBORw0KGgoAAAANSUhEUgAAAAwAAAAnCAQAAACRF2GZAAAAKUlEQVR42mP8z4AdMDGMbIkjDP8ZLBgYGGwY/jMcGASuYhyNqFEJghIAKW4GQavBXlYAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAwAAAAnCAQAAACRF2GZAAAAJ0lEQVR42mNgGAVYwRGG/wwWDAwMNgz/GQ5AhJhwqaWHxCgYBYQBAMH/BAF+iTp8AAAAAElFTkSuQmCC" },
        ["#"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAnCAQAAACocNDCAAABGElEQVR42u2UP0uCURSHnzclQshBahaEBsGh94UKKsK5pcUv0NLWpmDfwLGv0CxES1+gkKLoDyVIYGur4CSk/hy83u6VN91q8dzhHg4P5/zOuYcbiPm2xAL6T+gMcQDAIeIkHgoRrwBEwIuNyz1ttY13qW+tTOJupjQ5no0f0aIXV26TwJTIkHWKeVBodYSeIhA61e/2LkQSaFKxA6gBcEyeKkPgw+8upb6ujP+pltv1j6aIBHcArJHjIX7iW2CgHeDRhZJscARACSiyDRSBAmVgwDkCVJnR29NY00TcuqQLIZRQV/feY1lNe0DDzH2V2/hV2bXQPnAztVAmZUMdBUKorqEyfrnxtayerk3oS28+IoLFh/HH0Aijis1zmTjf2AAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAnCAQAAACocNDCAAAA+ElEQVR42u3RTyuEURTH8c/8SVIsJtZKWSgLM4VCmrWNjTdgY2dnindg6S3YUrLxBmgiEqGkRlnZKiuFuTb3mXmePGxZzO9uft3z7Z7fPYee/r22BItgSbCWXBczUFVwDWq4yn+ppRXdgXf9eciQtr3on9x0C+l2UwqxRcVoulkxkyjJUf2eaF348dxCGXcanQFsg1UTNrXxkH1vwIfD6B/dp0vdTDUlp2DYmPN8aJoIzeIiDZWNWwYrqJtBHZM28GlHgMYvf7vMxh4R7IKSV2fZYpJpHs0490En+dBcB1rAcf7+m14UwL62Sh7S581R9M/p/ff0N/oCKn5OMEr2bF4AAAAASUVORK5CYII=" },
        ["$"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAABF0lEQVR42u2ULUsEURSGnxlFRUFE0apYli2CYBUFMVv9EQMWm4hBthgFzX6wSQRBq83gR7eIaXGDYhT2w+Ux7A4z6syCmATfE+7l3ofDOS/n3kC6K+QfyAIk+mEGjGPUkvdqy1dvLTnQPo+vZ6zaVqOzTqWBYSvqlXNq5LjLXjiZBtbVJ4dEjSQd7SIXgXPe8tscBJrdfHgElgjygTJQZI+efB+OVL37XmS8Cd20ruqlhSwAseCpqk137M8CEPVF1WtH8oDIyJZ6kg/ghqrTiZNftYvAbP481GgBjQTYYuITsEIv79wkwDwPbFMkAMZY4wDY5zlxstwZkrqxju1LdxG66pkVa2rVQxeynSR/YH7zcIK/8MN8AOn4Jl7du9DvAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAABC0lEQVR42u3TvyvEcRzH8YcjREmKlSyyKGWnZLb6I64sNukG3WKj/AHIJKUY2Qyc3Wa63KIbFOXX9Tbc1X3P3Uc3y3t593m/n59Xr97vz4f/6Cp6f5xDVSlbyHWvNaboXqipKikabG3PqQghfDTyVLY9oixcWxDyxq24MJkFNoRHwwj5Vum6ySWce+1krQ4M4bOz9zrwgGU9aeAYs/bbxpaJQyHctZtsKm15F8KVmZTKjFMhfNoxkILCkxBujKaAvLyacJIG2BTCdHrdewLzaeBNDR9NoGCiBVjV58tts3Dp2bZZPULBuhdhN3vjuPFI3hs5HOlvneOaM2VvQsWBxfROEg/ml8j9id/9DQQvWLW8X3nAAAAAAElFTkSuQmCC" },
        ["%"] = { 23.0, 24, 0, "iVBORw0KGgoAAAANSUhEUgAAABgAAAAnCAQAAAC/UkALAAABrklEQVR42u3Uz4vNURjH8c+9czVi/FhIaMpCKT8motjbWVAsJDY2yAKJP0FWCiVhR0nGlKkxG2UjLBAyI78mGt2lmmTKbYZ5Wcydr3uva2GnOM/mPD/ez3l6nnNOSf5slfMf+JeASk5kKLWM5XY2tkRciexq0EXJLTx3Rp/vvtoshWzBYIOeiD3oVxGxG/cL92xvjVveCgxgVWF6acrC+v4kjjeGTwMjakqFqRdrRaw24amOZqCcZFam8vNZVJJMJinlcso5kO8tTRD3sKKeoeSdrzrFQZxpzj5T0jFcrx+9H1fEEmM+6moPdHqMZ84ZMOW9xeIGtv0aPg3EPKeNmlB1wWKxFX3twmeAZpnjg8+WiaUuqprw0VkLfg+cxiHRrYq7LhnCE53tgfW+eagsbtbB6NCLI+2Askcm9Ii5Jr0pBroSd9oBR3FKxDr0FvaSmte/At2+GDFbxCZcKzwdJg2LVJrGfj5d2ZFakmQ0SU/hWZNKXs1cjRnZiasN+gPsFTHLALY3lzRf1SeLGoANxk0ZdMFw/cI0Aeexr6UFPfqNqXnhsPK0rfT/u/8rgB/WVBN4oAWOKAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABgAAAAnCAQAAAC/UkALAAABjklEQVR42u3UvWuTURQG8F+SlhS/B6kfFBwEQbEqCrqLi4MODiK6uKg4qIj+CeJUqIIUdasgYlowELsILqIOKiptBT+KYskoBLHQkNgcl/CSvEnF0SHPdM55nuce7jmXSw89/AV9rppRVfHYvhQ3LhxvL2U8Et4bNWnJogMt3EFhKn3+SaGoD5wQnifMgM8WbEkbSsL2JPugYV0zviZc6bzBnKpMkhWEnWCHmrdy7eIs+jVEywCoI+OurLOWOjs8E7YmA/hiUR7nhNHuQ70sPGi2PiOMY6OKeau6G/JeC+/cVNLw1SAeCkeWX9xqI76rKRsziMPC5L/vfYVvftqMTW4rq5l3w9rlDSPCeQwpC0/dMSO8ke8u3+O3l7KYaBrJKQgXu8mzXqkZxkp1n5KFbhOedDNcEq6D3UKh5YFWfeyUD/llzgDYL9xPmJy62U5DUTjUjDcI0wmzS5hIy48J91ryF8Ip0K8kHG2Xr1H2w/qWyl4LGqaMmW0+mDbcEk6nasOKKqqmXZDt/WT/E/4A8td8gFxV2dIAAAAASUVORK5CYII=" },
        ["&"] = { 22.0, 23, 0, "iVBORw0KGgoAAAANSUhEUgAAABcAAAAnCAQAAABOWRuGAAABlklEQVR42u3UPWiTURTG8fMaK9WWCAZB6aKrQqGLi1BEpaiIg4so4qq4WlEUB2eFIghOlS5uDgo66KCgIBahGCWmEkizKymVUBu1+Tk0efNROzgJ0nOGe7nPn8M5PIebiL+JDbGO/994Nm5GPhZjMWbicmz6I6+VO5SwrGIOvNYverN9fYCiPUIYtYDxtfGM7ziYCtfxYjXe6n0w+iOikPZYiYhk7VEXohoRw+n7WETMNO/nQ7zqHXUC7wwIGTcwb2dTOYpi76hZBeRdU0LJ3lQ5ife9eNinbiUm9HW8X8CjbrzPbT/wRhm/TBpM8Ulc6cQ3e4qKA0LGWV/wwZAQEnO0WlvB76JsW1pvyDQ+2iocwadOm3LqON5lSFYej2W8xblO/BjqNvY4uNs8XmK2rYVwBtXVhjsFlu3v3plDaKSmtHO7ryjKdONb1PBQ0gWP+Nx04U7vRl4Fz4waEHIOm/ITT5zWwJRhu4y18MQtjWatpeb5zbiMcEkrZjuXYMQ9BTVLyp67KJcqJ0yrqbovkvUP+5/gvwHgRhZdc8HJ0AAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABcAAAAnCAQAAABOWRuGAAABhklEQVR42u3UT4iMcRzH8dd4rJbdKJOivXCltlxc1Ca0ITm4iORKrlZEDs7UppTTai9uDhQHDhQlm9oMjVlNzc6dZltNawc7X5fH45kZu1eX+Vx+v+/n835+z+9fP/rqK6fNbipZsmTWZRvWhrerCivq5oXw2uBa+AOhYjcYsyhMrA4nvgsHs/q68KIXW5e2wwZRzvw6CqvjixoYzfxxzKb988Kr7g8nhXeGkLghLNiRJkeFSu82loWSa6pC1Z4sOSm8753YPi0hhEkDOf+C8KgTHXDbD+GNmvDLlOEsmxKu5OGNngp1B5A464vwwQgomBe5qeGuULM1q0fMCB9twRHhUx4uagnHuxZeEh5LvBXO5aNjQsv6roXvsiC8FOY6szNC4x8X45QQVuzvtA8J7exQ/mqbr0JF0mlv0hQedt2RvT6np3Cne5yrQnhmzBCKDpv2U3jitLYwbdRO43/wglva6VjLafvNhASX0jrMdf78nrKmZTXPXVTMkhNmNDXc779P/0u/AZcPjqKhVb1WAAAAAElFTkSuQmCC" },
        ["'"] = { 6.0, 7, 0, "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAnCAQAAABp95puAAAAH0lEQVR42mP8z4AMmBgGL/cIw38GCyqbzDh0vD/IuQAZAgRGQ57eFwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAnCAQAAABp95puAAAAHklEQVR42mNgGDLgCMN/BgsGBgYGJlRxSrijgFoAAEIoAgbY0tNRAAAAAElFTkSuQmCC" },
        ["("] = { 8.0, 10, 0, "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAnCAQAAACcCRHeAAAA00lEQVR42t3SrU4DQRSG4Xc3a8qWkJomCBwGXTwJNL0OTEUFd7Sa9BqoKaKKYHFgSSAh9A/RLLyIzbY7U41hRszkSeacbyaTyP5I+c94QcmMDLCeHV9deCI2sFBvqn1NZ377bBZioY7qU9WSu3LtYY1V9wE5E5ZhpEvgLs7ZAx4aiUV8U4+24UDM1NWOqkY5sI7vngDG+AUcBM8k4qfaDmvCC3Aa53wEzmOcAv24ZseNc1vhK+FYvY6x549PpiHirTqMseu7Hx6HiFeW3ptJ8gff+xdrxbXXxw66NQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAnCAQAAACcCRHeAAAAtElEQVR42uXRoU7CURQH4E9GUWCOwmawUcjQ2ZQX8A0sBoNvRHZGMwkCyVlpUN10Y+DA4MBrgI3/PVYbv3a+nXN2di9Hl66NsXKR6t58usz7+pKHnFq2pvnoru8+p4qVtVqON5LnQ1kCVxhEbOMlnv0uOc+pLFkVoYQK1hFPkCJ+4ezv+ywk1XjSDM2Ir+hEHKIXd9Z9WzqN/CS5jdj2Y7JfVsij5C5iw4e5i8jXNkbxn/4rv3+wKEaRYZsKAAAAAElFTkSuQmCC" },
        [")"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAnCAQAAAB3PqrdAAAAzElEQVR42tXSsWoCQRRG4bMrWCjYpYmCoFUCqQK+RLpgb5EuvaWvYJ3OJg+QQAofIpWtKCGQwDapNMWCORYie8c6jTPVfHBn7j8zmZyOnPOmIfJGFkx8UsdynIgtv/21Fwkf1eeU6hbu7B7ocGLJjJyHanvEgbqIhZj5o15UhSDvwG3a/RLop/QFtFPaAM2UPK4qagLblC6BIqU+sI7dY6F2Yvc36irGhnvgJcau+alexdgj9TVeYcMPS68jTdVJfI47/5ybV5T948fcA3kFn0Li1ZD7AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAnCAQAAAB3PqrdAAAAuklEQVR42t3OPUqDAQwG4KcWHCw41UUFwU4KToKbJ3AoiLuncPQKnT2FKDi4eQEnV1FEUPgWl/qDQo2D/WiyO5kpeXhDwr+rA+FCp+KJcFRp0bN36+3YxacPQ32nOTevMbE2SzHRt2vsKud2hJt6ouNFWIK5KYVrbGfiFoNKT1ip9IpepWinGfXwVmkZTaUB7uuzjbCaYUu4+23bxX2c5UzXo7CR6VA4z7DgwZfNTCPhOMOeb5fpvz+tH4QEKpUfbYrPAAAAAElFTkSuQmCC" },
        ["*"] = { 12.0, 13, 0, "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAnCAQAAAB+1QqnAAAAmklEQVR42u3SIRIBARiG4XfNmjGjSJq0J3ADoynOoAlmaLIiu4AoGsEBRIIbSOoGu4pB8QpWWGNPwB+/Z74v/YEUXYk/faMqsv1OF+4kRYMJp0+asKJLSEJCjT472gCIS29qbOrRq5o6FEHEsk3n6sOBka8sI2wYu/DgxjBPFfeerdtRZ3maqiMR12or3xpnQ5G9dyv4v80P0BOXRnM+SiMNLwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAnCAQAAAB+1QqnAAAAkklEQVR42u3Rrw6BcRTG8c+MzaZImvRegTswTXENmmCjyYrsBkTRBBcgEtyBpApeiqH4Kf697xSZbzo73z1nZ3v48yUFweJ9kXlORxfxZ0Vsl1Z9Uw1ZsVhRy1LtoSfOgq29jZNgr/PK5lSMBFdtUfq/sq2xtblsUuStHJTUBcOkGgi6YCaoJlO9+6FI89/+L3ED4tgjVJuDt7wAAAAASUVORK5CYII=" },
        ["+"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAAVElEQVR42mP8z0AcYGIYVTiqcAAUBjD8Z2gY5r5m+A+BV/7jAhwQFSxQ9bfhOnkZ5BheM7yC8/+hmoiAAf///2/AEB2i4fiJ4SqSn+GAcbQ0o69CANgAQRllj3ECAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAAUklEQVR42mNgGAWjYPAAZgyRAIbrDIwMB9CFmYg1cSgohIErDP9xQA6IAhaowttwLbwMcgyvGV7B+f9wmR3A8J+hYWgGD6bCTwxXkfw8CgYKAADibxctXjQzzAAAAABJRU5ErkJggg==" },
        [","] = { 6.0, 7, 0, "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAnCAQAAABp95puAAAATUlEQVR42u3SoQ2AQBQE0bmf6wKDx+Jo+kI7WAwFYBnUhe8xCNZN8uQWyQv+/GRWTmQCQJzVTUQCWID24JSIu4fR8cjAytVxppQXZ7gBVLoa5TDuWUQAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAnCAQAAABp95puAAAAQElEQVR42mNgGAVDAbAwfGX4z6AN45ow/Ge4DWEyMTAwWDMwMGzAymVgYGB4wvCSgQnGUWD4zzAbxmFCV0o+AADinQqCnxTokAAAAABJRU5ErkJggg==" },
        ["-"] = { 11.0, 12, 0, "iVBORw0KGgoAAAANSUhEUgAAAAwAAAAnCAQAAACRF2GZAAAAM0lEQVR42mP8z4AdMDGMSoxKIElwMPxHgQUMDAwMLAwMDP8YjqIofsrAwMDAOJquBkICAOQLDGaIT0ByAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAwAAAAnCAQAAACRF2GZAAAAKElEQVR42mNgGAWjgBjAwfAfBRYwMDAwsDAwMPxjOIqi8OloWA0YAAAVEgoejYt0wAAAAABJRU5ErkJggg==" },
        ["."] = { 6.0, 7, 0, "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAnCAQAAABp95puAAAAOUlEQVR42u3RsRUAEQDA0LhBWIG9bGI/T8si0dqA4tL9OkHOPn4+yUhnkgEQq6pNBDE5XBaRcGnoBmFzFz21Bd5kAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAnCAQAAABp95puAAAAKklEQVR42mNgGAVDAcgxXGN4yGAA4+Yw/Gf4z9AN48oz3GB4xGA4kA4EAOyJBwWo4/WKAAAAAElFTkSuQmCC" },
        ["/"] = { 11.0, 14, -1, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAnCAQAAACV4rGkAAAA70lEQVR42u2Tr09DMRRGz3vLwgRqCBIMAoFjenZBIlAoEhCEH38SIUFNIQkGMzWBRBIUCQQMIAjJAmQcxONtfX1F4BC05n49/dqbe9tMfh45//D3sIvc0kjDfeCIMWA82478cEFMOLdpcco9pJxX6moRx6inXpsVKj72ADikfAEV37zvjpwrddW5Q5MTniY68OXeqN3pSgjX1MvwmhCeqXtpuOjYF2dDOE1ol5w+r5UEv3c1fVBXqiUpgw11GJeyDAbqZhouq4/OxDCftPeYt1r7xJbPfrpUax6IW+p5HRXwQl1Pw456ZyMFs7/2s78A7/URD1nuyhIAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAnCAQAAACV4rGkAAAAxUlEQVR42u2ToQ9BURTGf+7bG0Ei2BRB0MivmihIkk0xZP4cmyQxTVEkQRRNsrEpCGZ7w54jvfDm3KbYfO3ut+8759vZhb++LA9hjwNGgV1gQKD5Uvg8yeqhPYSpbeIGoaKjMsKWmA4nCH0dZXjgkw6f0SotXMacNZ9hh+DpoVWEta3EDKGjoxwBV5LROaHaGEbcNJ/LEaGoh9YRlrZlFggNHRUQTsQ/i4fnHXLXfAkuvMjroU2EuW2ZFUJNRyWEA85P/Is33l0v+OcCnzkAAAAASUVORK5CYII=" },
        ["0"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAABJUlEQVR42u3TPUtDMRSA4bcXtIqgUAQ/EFEqFBwV7eTipGt/gIO/Rrro4ODq1sVZB8FdcKkIDkpxKuqkF2optq9D77W3GZwcm5AhyRM4JyfJyd8tYgT+G8xT5ZEW71xTyQj7veyrqp92VT1N1hMwZ1O9tChOW1X1MAtO1Lpj6SnP1Zf+HDFvrFZ+t3FN1d0U7KktxzMA79UjkQgoA3d0hrK7BdbTNEvAc5B+AyimYAFoBuANmEnBFPAVgHayTgTkge8AdJNBBLSAiQBMAnEKPoBCAGaTOIiAJ2A1ACvAQwrqwFYAtpO7AHFJ1Z3MPa7as+fioFhX6o25oWJdZKu5aUetuSwWPFZjS1mAB3ZUjZNnsz/8YBA3rNm0bcMzi4N4cqPvD8AP+mzwYI/W7o4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAABDElEQVR42u3Svy+DURTG8Y8mlEhIGokfESGVSIwEk8XE6g8w+GukC4PBarOYGSR2iaUiMZDG1GCiSTUNjsH7at+3u8mT3OGc8819zr3n8K8/14SKO00vLmz3ltc8CeHNpxAOs+VxdeFMGSMqQtjtBg6Eqv7f+Fh47MRFDZHxnRfCRhpuCk0DGdMbYQ8KWMO1dga4wmIKLOAh96oayikwiXoOeMZoCgzjPQe0krwCivjIAZ/JUUATgzlgCI0UeEUpB4wlfSjgHnM5YBa3KVDFSg5YTf4CTAthvas858uXqU7iXLjUlxnWafeFy9rCiRmU7AsNC1nPHW0hNJK12erdqSUn6lpqjn6m8K9ufQOcak7cvRN2SgAAAABJRU5ErkJggg==" },
        ["1"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAAAY0lEQVR42mP8z4AfMDGMKqCNAjGGpQzPUUT+I6DU/9b/n/////8CSQyuIOb/pv+//////w6Xggf/////9r/ufyy6Apgb7jO0MigyNDH8RnckC5R2HI2skaCAcTT7MzAwMDAAAJ9gRekoLtILAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAAAV0lEQVR42mNgGAUDBMQYljI8xyUpxdDK8JnhP8MLbJIxDJsYfjP8Z3iHS8EDhv8M3xjqGGLRFTBB6fsMrQyKDE0Mv9F1skBpR1wOYyLkrVEFQ0jBKIAAAOHUE/U44kZZAAAAAElFTkSuQmCC" },
        ["2"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAABA0lEQVR42u2TPUoDURSFv0kG0qURhJE0mSbgFiy0cQMiuAAXYWllIVhoCnEFYiEWrsDGQsRSG7EOhAgqiAZDPovJMD8Zp7LMO8W9vHve455z3wukfjVYEP6XEHPCIx+MeeGMXo4h4q5jVT9n8cttk8qMcOO7+8Zi0zUf1G/jPOHAKD0hLjtUj/KEMo7V2ySvVjEA2nUyI2BUR9gE7vIyi9hSJ/b+anLVV/Ww6EOGdUfqpWEVIXDPidq3me1m5bbX6ps7xTvTpOOTem+33FMSlnxWz23Na0rChXplo8p2xK5TdaVyKoTABgEDhoQlP6dME6s7QMTPHE7TWbTq3mSw+P4A/AJCdxLFYYFbWwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAAA40lEQVR42u3TPUpDQRiF4ScmkC6NIFxJk9sIbsFCGzcgggtwEZZWFoKFWogrEAuxcAU2FiKW2oh1IERQQTQY7mcRA9H7Y2eVM8XM8B6GM2cYpvpnpQ7ceTXw6NjCb7xpIIS37/nd+k/DpRfbUtQtuRU+pJOGHcnEbk5P2KtKtC9cjZYzhYYuWlWGBP0qwyquyxOsCcN8F2MtehJ2y/CyvnCmUQRrtgyFQ/Ui3HIhPNsoPrrtXrjRKcazHoQTzbJop8J5SSfoyIT5YtjAipquXu5qmWxUdRuJz9w4Gr9Fc/rj/tYXQcpBYhPEQJgAAAAASUVORK5CYII=" },
        ["3"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAABEElEQVR42u2TQStEYRSGn4sopsZMTUpRspj4I2IhZWGDrZWZvZKfoMSepaWNkvwEG6UkM1lglEkWJq6Fx+LOdO/oXivLeb/NOZ3nO+/XW18gf6uPHvCfQJ4q5zT44p1LtsglCBF3Vf3wzUg3jhtN2huabFNmmFEKVGlR5rB7Q/epqDoVdWnAhKpzSYtuNQB4zbaYVUPzWRaBx+p+p0+OBhxz0Qv11JHfwKod3bpif3ytUyz77Iufqt6541CaBQZOuuG9emUhO4eidfUgG8BNtZkdFNSAYjRLB6aBR76zkixYV/fiNyx45LxFEUuuW1MblmJgqR1Ry1a7unYmmUPOimc+GRr64IlrDsaGQe/7A/ADQHg+eX/KnHIAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAAA/klEQVR42u3TvyvEcRzH8Yc7E1f3Q1KKknSx+QuMYpDNIqvp2JXRrMTO6B+wSBktFqWkXAY6V5cMLj+Kt8Fd53Rfo+le07v389X71edVH7r6V2WtO1bx7tm5DZnfhm0hvHgSQrgy3EQpULOpqE9O3rq6ov2/AteEMJZsGBHC7M+IdlXAY/KFKeFNNgn3OBR2O6FeQxacCEf6f8PlRgPh2pJ0CzTHCTNepfUaMC3nzEfn/FGrboUL+eRXFJSFvb+6LAm15KK4QeGbdTaM495nUkBeWdhpLeYdmFMAg1bcCBWDLcNio6K6emO6NPmzqDtVaX0yUh6c2lJS7f7Ddn0BoXtJoqPKay0AAAAASUVORK5CYII=" },
        ["4"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAAAuUlEQVR42u2TsQ7BcBDGf206IEWsnZk9iXRlkMZuqskDYJFapTEYbDaTwTMwmAwGb0DSRNDk7JX7m5j63fq7u+T77izBLJsc+BVQ44aw1IGQimmCR2heMaXERQdadNix1YAqcx709RUzPMacNKBNjwMTzYcGMU8CXlnAAaDAmjIDjpqTMU02RJrVQ7qcCbQsfEYk+FyVtGQvuuqC/TVwKYqbqYWIrMQVVyzB4f7RkwIpyd9u0srfH4A3RlxQUuzyb/IAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAAAy0lEQVR42u3SMU4CQRjF8Z8bTJCsElpqrTmJocXCcAEqrTyAVARaQiwo6OysLDgDjZWFhTfQBGJQkrEgJLC7Q2Fjw/+rZvLem5d8w4F/o+ZTMN4ck5zgxtk+f91C2JfQU/G+fbEruHRl6jkmqBpa6uxGbgsG6rpeY/VagpljDItKXhj51vaT9ZVA2aNTt17yweuEkYYn/aKXE9y59qZdXC3RdG+u6SPWfiZE55ykYF0ZTqSZeRBMpFJHlHzlLCuszGP/QXwXfxMcWPMLkAAzvSP4u1IAAAAASUVORK5CYII=" },
        ["5"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAAA6UlEQVR42u3TsUpDMRSA4f+KDrUOFjcVLAjuTu7OSkfFzUnnvobP4OgLuLnp1K2I4FY7uBUHLwgSLb2/w600V8l1cWzOEEg+kpNzSCb1Y4E5+F9whz/iuApaqRMWI7DHQ7Tz+RuMCKkclmgCr+kkW0DBWz3I8S9APWgTmJDT54LtSIh4ok58d2w5guff9SqnhsvThXVPHaqFBzGoxqqP6n0aYEfVDTHRzR4Am+l2lw0IabAPBAazZ1ZjzSf1Kk7y0q47ZuKKRw7VF7dicKvqh7mFqgN3q4U69Npng2NH3nhmY3ZhNv/+AHwB/IvEj25z92IAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAAA3UlEQVR42u3TsUoDQRSF4S9REWMQRbDQQkGwt0pvLVgqdnapfY08g6XvoYWtiGAX01hKYAuRVdlcC9ewGzKxs8qZZpjzD/fOPQxz/bNuxcQ6+zGaJbCRurlYAToeK85nHXwTdtMdLAlhLQ1sCYXGNKs57iATfwFmA3tyhcy9nv1J7FwovPsqh5Tr1oEVrXK37cJAGDlOv2ndk/AwK5kTIezMnkvoVMOallCeBo6Q66cKbHoWrqtHVy4daKDt1EB4rWd7I4QPmZEQ+g5/rQUw1NayatnQnZ6ul/kvrOsbRI1ERrx4LVgAAAAASUVORK5CYII=" },
        ["6"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAABMElEQVR42u2TMSsEYBjHf3dKZ0BsWNAtTCZlFSZRPgBFGWxIPoDFaLHJZzAwXTaRgUHSxcCdi0gh7jjSz3DeO+ew2bzP8Nbz/709T8//fSLy+4nyD/wFMMQaKfJcs834R84Qja5bOLe+qluFfJBr3FFvnLRWjDnscjmwpF7YKl+jcMV9UXsr5QAsqonv5ACk1LGfgWZV274HokAXkOWUfja4Ik+aVTqKsxEn1HNnVb03p+qzI6USM2rONxN2ihH7PFGzhaKI86puGilWbvJRXQo9PAAwTWkDLlkBBoJZGQAOy2zbB1oCcABAQ4XT2QCckQQGy8Tu4kMR59S0dcUm231SR0ujjnmsJu0Row6aUXet+mx33JSqOfOq7tlU/h+w3gWPzHnnllNWh3zkf/0BeAdMLz4NJbygegAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAABDElEQVR42u3TsSvEcRjH8ddROgNiw4IsDEZlFYtE+QMoymAk+QMsxlus/gYDk2wiA4N0icUhRQp1jiM9prvzo7Na7rM9fd5Pz+f7fXqo6V80YVNO0b19sz/NNltCCI8+hL2k3ehAeDCvCWmT1pNARrjVVW12r3dhuHq4NWHnr/Q5Yaa63SGE7urAmJDHqG13iq5s6PsOzAnXloTwrCCEN1MVYFEo+LSjHykjLoSXytAVIexKlVva5YVMqVwQwsCvj8tCHW7AaQI4RmcJOAGtv173UgIunWE8YQ6WG8GycKW5XPd4FaYrQNq5cGYIdcbdCIfqk/vMCaGgKIQj7T8jtViVVfBkz4KG2v0l9QVytF2+PDW9RAAAAABJRU5ErkJggg==" },
        ["7"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAAAzklEQVR42u2TsWoCQRCGv8sR0gSsbSxSBAtbfQgbsbXNo/gUYgjpItha+QK2go2CrS+gaU6UL0UQ79ZbbSzdbfaf/2OGYXYSuX6eeAD3A0ZYeue3MqwBEuGZNLBqLEhpsITy7N/q8P9dZtc9mFmLAz/q4KQu7XePHnyLA1/q+KxDu2qmtuJAX53lI0U7daN+xIGOuvM1DkzUz2LRvKi4V9txoKfufCkC+Wl2gSlZMLhcB9uwg2KJhqr1EDiXaAK/rOJ/sgmsuFj25LH+APwBuwgXueWjSZkAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAAArElEQVR42u2TrQoCQRRGD4poEMwWg2HZYNWHsIjV6qP4FKKITcFq8gWs1gWrL+BaRlY+k/i330aT3y3DnHMZLpeBf36YNcqtA0CpoPH4OFSofVREICP2vUvEzOOYjEDLCyvE1OOIGxltLywQG4+bBETPCxPE3uMyJ8TYCwNESt0LW8Tc4wZXRN8LI0RK9f3ydZtDYEfwE5yLJ+gg9L3i5xNd4EJSLCTo/wPzcweGiTXuNkcL1gAAAABJRU5ErkJggg==" },
        ["8"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAABQUlEQVR42u3TsUvVYRTG8ef+jFIUa2iohojWNhsCiWhosbWm0L+gLSy6Q4SNrdHWEkXpqERQmzg4ttQihIMVEkZCGKhcPw73/vy9t6HJ0efdzvm+73nOObwt+b+qHAGHDVzJm3zPTn5mPhMFoXse6oBNXb1QdTPd9E3w1nlxyhN7uF8CH7Fc3xHP8K0E1nDvIB1XwUnRM7mR5HhhrJNkO38ak218duLghTm8LksMWsKicSMueYVVZ0sghr3UaMm5+rUauGMdf634jS1trRKYxK4ZQ6IyZRNPG+C0LTwo2rwOxmugjR8GCiDeY7aew+Ukn9LpW+JyL54qyWiSgX+2fKwXT5Xka5Kxvkkm13rxRNwAjwoHt8F00+Y77HnugsoZj+1gxVADjPqgX19c7J9kyy0L1u36ZdFdg3W51tH3T5LsAwAhWGupzoHQAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAABKElEQVR42u3TvUuWYRgF8J+PUopiDg3qINLaloMgEQ0tudok9Re0RYoOETW2iptLFFajEUFt4uDokosgDVlIJAlhkPJ6Wh5778d2J6/tOh9c9zlwcz5nPuOWfXXouxW3/6fntETsi4glVUlPinhlBAOeOhYzpeCjWC88C2KnFHwRD4r9uohLqF0/cKEQtPDHrzYwLz65+G9/I16WJ7qtiVUT+lz1Qnw21IzZ63kdMGLN8Okepu2K37b8FAfmdZT0XXHkiR5U7tkXz9r0ZQditjDcFDFRZvims3HyvXh90sMYNrQagvUaV6GfU366alyFbVxrNMmNGge3RDwq6DsiHraBd+LYolGVQY8dii09bUG/D0WPEZuuNB/VYcpbu47sWXVf9/kfbM5fScJnKO6efvAAAAAASUVORK5CYII=" },
        ["9"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAABM0lEQVR42u2TvyuFYRTHP++VUu4dqdsdMFwZWBQpi8SirP4BSgabkhgsFgNlUcoiBmyUwWiQATHcXelKJCXhuvQx3Pv2vtevyeic4Qzfz/Oczvc5TyC/R4J/4K+BXrbJU+CKTTpjhIhVrqr65n25jllSysCiWnDKpJh2WX23OwKafVOHwzPimnoQATNqziAGZHxVG0QSQCtwRHwx8pwDfeEUNd+MewO0hcAl0EVQAWSBdAjsAS2MxORxskAq9CHwUC06b6PVNrlU9mMn8iFjznjsu6JuhFNAng4mOeWJR86YYIAkcBtZ/TVP1JGoxees9Vlt/xkYUi9K3n4nJzxTZ+OvWZkL6rWpODDnqPVilV3uqq/2V+7DuqoPFlW9dTC6r1R63PLCF+88dtq6eMPg//sD8AEwgzpaKEaBdAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAABIklEQVR42u3TvUvbURgF4CcJQsEUt0LooA52qotgCbiVOii4+geoRTp0E6TQoUsXhwodKhS6iB2kWwUHRwdx8WuIc0FSSgUFEcUYebvk19wE4uiUc4eXc8853Pd+0cWD46Ufqm78tu5Fu1jwTQh15436ptWwLNx4p4iSFeHOWFN+pi7MJoFVYbtJ3wsVucTwVE3ohzyeY1ckhqojvMoMjxo1xV8MZ4YTlFuWYAiljEwI4XUivxXCZkZzdoRbSwb0GPS5cR4/064rIhlbvgrf/W+uatSifVcuHVowqYjT+25mT5jrLPe6FkY6G6aFX20bT5B3KHzonP8k/PE4nfpo3hMUlG0INeOtmTUhXLgVwqmp9C3BmV5FfS4d+2LGQfcHtuMf48NcjtsZP7wAAAAASUVORK5CYII=" },
        [":"] = { 6.0, 7, 0, "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAnCAQAAABp95puAAAASklEQVR42uWQMQ2AMADAOnww+HgBHTMwDzjBH9nLjHTXEhxAQr9+TYM8GfifzhQqe9fEwkgGQJwsVjeR8OKryMXN2qsOVU/xK5ENdw0kMWmd6ScAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAnCAQAAABp95puAAAAMklEQVR42mNgGPFAgeEGwyMGIxg3h+E/w3+GbhhXnuEGwyMGw4F2pBzDNYaHDAaD15EAZY0OEOV3wBoAAAAASUVORK5CYII=" },
        [";"] = { 6.0, 7, 0, "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAnCAQAAABp95puAAAAZElEQVR42uWQoQ2EQAAEhwtVgHmPJSBoh45ohHwtj8JyggKwDOrCeQTi100yYncLyRP4P6z5EekBEEdVJxHEysVoJ1K8+FXJgTSpZKuuIhKAAZhvOUPEzd2Q5A81X84k5+qjgRdAizDbxfj9igAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAnCAQAAABp95puAAAAWklEQVR42mNgGPFAmuEKw1MGcxg3heE/w3+GyTCuFMNVhqcMZgPtSBaGrwz/GbRhXBOG/wy3IUwmBgYGawYGhg1YuQwMDAxPGF4yMME4Cgz/GWbDOEzoSskHAFnlEYxS/4LxAAAAAElFTkSuQmCC" },
        ["<"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAA0UlEQVR42u3UP0oDURAH4NkgaGEREQVBwQMoHsHKEwjpTB/sRGw8wdpYaGOjeAgLj2AhlpIqXbAJCEEWkfBZ6Cb+WZ52Wux7zfDj4zHDg8nE704jaljDP4UzcRC7P8EsdqIbecyNE1V3yx0KuWaZfUcbrjFyYflj/hmtuDTClbWvD0zKplyBG5tV7ZTFugEetVR3PYYLzr3g1rZGCoaw6swz7rVNpeDbOKcK9HRMp2AIS449oW/fbAqGsOjIEIdlkiV2z3zsxUOcvP9pvaT+KXwFvufzuFN16yMAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAAtUlEQVR42u3Tv0pCcRTA8U8UJNEgCEHgBaE1yTdo6hXaam9wETddG3RxaWmKHqKhR5AGx3ASFzchELk0yPEJ7u86Otzver4czl8qKo6H00SspqfjJ53gxJOlMExrD2ZCbqReLN35FnY+NIulzKed8OW2WKobyYWp+1RVbWvhz2PZeEKm7cKNtblI99ry7l/49eysbAGZN7mw8OK8TL42sRVW+i7L5CtjG2FwyB00vOpW73Ds7AH4BSo4LaIPdAAAAABJRU5ErkJggg==" },
        ["="] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAAM0lEQVR42mP8z0AcYGIYVTiqcCQovMLwHwfkgChggSq8wfAHh1H/IBTj/1Ffjyaz4awQANKDIpFbgA79AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAAKElEQVR42mNgGAWjYBQggSsM/3FADogCFqjCGwx/cBjxb9TXo2AkAADuTh9NIJ+Y5QAAAABJRU5ErkJggg==" },
        [">"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAAvklEQVR42u3Ur0pDcRQA4HM3DAu2gXXBgaBBFK0DDQ6xrhjNPsHaXsFgXJHBmGCxrFh9AO8rWIyDBUHvPoOs7f5mGoZ7TjnhC+cPnEz8LWpRwQpuDJ7FXTST0m92MdPXEKtzWWy59YF3N2opGMK2gTlyl2kYwo57X3hxnIYhtD1iYaSVhiGcyvGpl4ZHJgpM7ZfDjil4dlLWY+bKKxaeHJZNXXftDYWxg9QeL/Dtwd66y5wb2i1DQmTVk/qn8AdiVBpJM+O4XwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAAq0lEQVR42u3SsUpCcRjG4cfEwaEtaG0wEGwQo9YgB0NcXRybu4K2bsHBsSUEMXBxcWntAjq34NIYNAR6/LyC47+x4PzmZ3g/+Cgr+3vdGjv5DbwTvjyqp2DNg09h7d5RCh978i1k+ukJpyY2wpvLND73KuxMnaXxtUz4MTzMOuZyYaVVjG6shLB0VUQqBt6FnYV2Eaoa+RByMxeHVvWErRfN1JVdzxrly//H9queKPigRC1YAAAAAElFTkSuQmCC" },
        ["?"] = { 13.0, 14, 0, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAnCAQAAACV4rGkAAAA30lEQVR42u3ToUpEURDG8W8XVlnZJoKwTZNFDGIWRCyCSXwK38DoE4jvYDKIQYNNLGIVZKNFUFgURVgQfga5e+/FXbCY9HzlnPmH+WbOTEPGn2b+4U/gTPZyndcM0stBukMq5j2DFx+gb0lEIpYN7OuKli0PuCnhgtWvh4hNMFvAuqbBnBjhdjFJP/eFoaqm3GK3zFmq7Qynmt9h2wXOTRaRKjzGiYkyUqId3OlU05Rut5Mc5m1041tJ3sf9Si/JSh02fnuo1/KYy3RqdFjVEdio1lle1z25qjeh8UdW8BOgHsv/TEH6AQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAnCAQAAACV4rGkAAAAuElEQVR42u3RsSrFcRQH8E9yiWxS6m5MNoPMdJNFGb0Eb2D0BPclLAwyMNhkkVXd7gsoIlLqlvoa/1ed/6QM8h3Pp/M75/TjPz/OgkO33o0M9XXHadmriDefIl6sNrhm5EgXHbsexF2DKzbG3tkRsVjPnxexVOOmeDZZ0ax7cVDRjAtxbqKiK3Fpuuo7FWemKtoTA3P1lidi/3upGd3BRxsOsf7LH97z6LrtlGMR2zVueXLT1vm38wV2Vy/YrWRkvAAAAABJRU5ErkJggg==" },
        ["@"] = { 27.0, 28, 0, "iVBORw0KGgoAAAANSUhEUgAAABwAAAAnCAQAAAC2ueBxAAACJklEQVR42u2VS0hVYRCAv5teeuA1zKviTUIiohKDalMZFQgGEURGu2jRplUQrXLhooKg3BW0aFPYorDosZOQggLpoVagFJimYEGar3yRmV8Lb6dzr7ei1s5sZubMN8w5M/9/IvJ/sogFcAH8H8nOENvJPnaToIBJBnhNEw0MpydF0na1gjq2Ia/oYoAYRWwlxhiXOMPXlEzDetLvTnnWlaFYtntsVlstDeeGsXPqG1dLBq111m4LM4EH1XbzM2KINeqT+WCeI467PunFvWiPU7a4yytqsRjxoXooHTyt1ibtNX5UX1hvh5M2q1ERK9RnqWDEfsfMEzFqu3pcxCxvq6NBgz3O/nzPucBm9X7y4TH1VpC6Xe0KvGvq3jl7bnN2AI+S8zkKnA+m1Q0MBl4fUBReuQTQC8AyttBPS8qoPwfWFyAWBuNB3VKyeBuC4ilgYRIOwBlgMQC5wFgI3JDSagLoDIMDydowAeSHwKpkDCBKJRO0hcFuYBMAnXyjjJygtcqgJOynkBtMhZd8ldqW/OR31DoRl9joKSd8Z1QssddRE+mb06pWiLjWEfW51+2zwxxvqk+96pBTVs3f1Wr1sVkiltvouJ+st1gstMFBh71reaZjFbFJvfDbszFPf5n5vlcvm/2vIJbYonZ6xFhKUoGHLUsHU++cpdRwghgztPKBEXKJU8Q6Ihzg3p8vK1hBNVVspIDlTDNELy95QCPTfwMX/h2B/AA9cgNHsjRBegAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABwAAAAnCAQAAAC2ueBxAAAB80lEQVR42u3VO0jXURTA8Y+Z9ECN8oX/IiIiKimotowKAoMIoqItGlqagmjKoSGioNoaHFoKHQqNHpuIFBRIDy0CpcAyBQvSfL/AzNvgzx//v/7VamjyTOdxv4dz7j2cy6Isyn+VjDS+fY44IKHAqG7v1avWt1CiUg2CSW/VqFClzqBg0FXL5sMu+GXMFWuTfEsd0iBosmEu7Jrgg41pY5dMalOYLnRC0CxvzmrKBS9mu1frN2xrZOW7pd2YRvvdFhQjw1PByZngZcGlSN/km+CNSi1GNQiyoosLXs18lC5DVoMszYJzINMDwUB8rt1kap+7BE8i/aygJo7sEXyOrbuCw1PqErAXz6LgGVyPj7ahJ7Y6UZQMJtABVtqtS2NKIz9ibRA5yWB+nHeDTB+ToPwUsDCCY3CCaKRyMZQEbkspNYHWZLA7ys0IKUNQFvmm7vugEW+TwTbsBK1+KpEdl3YwTslRhe4ZS25/vTCdyUPBTbBcrYtGfJKFdToMSMycnCZBKdisX/BalU4tst0XvHRHrzFls2f1uOC5TLBdrWHfVSpGoWo9+jyyPf0mqBfc+JclkueLoMLSv0fXaRS0Oj09HZEUOKVk/mW1Qrnzckxo8lW/XPmKbJHhmMcLbbk1jiuzQ4FVxvXq8E6dWuOLX8Ify28pL5VRSdJ24AAAAABJRU5ErkJggg==" },
        ["A"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAnCAQAAABHsrv8AAABGUlEQVR42u3UvUpcURSG4W8MgqAjA9YWQS1MkQswnYJNsBIsUh1/ChvvIn0uIkQLJ7mBCCJaJ3Z2GrDQIoVF4g8BnxTqZM6ZMxCsLFyr27xrv9/ebHZD/qcG8ow9PWw5Iqs9nHLvgYPKagV76daRc0yVsbK0SCM72U1S9Jc2nGDGAk4N9JPO4lgM+on5ftIiyVaSP9lOslwvHfELr0S8wZVWnXQFh6WU63XSIsmnjmKzor3nJ3BrvDM/TSdC125Fkv2cdqaP8r10e/dZfqirMy+6jzCnX73txj7is1alv6L9D2v6jaXqq1DgxtgDtoZLwz3YqCtsPGAH+NIDRbTx7Q6bBO9qsUXwWuI9rjVrsSEX+CCN54/rUdhf1jqA2HwAhy8AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAnCAQAAABHsrv8AAABCklEQVR42u3TPS/lQRzF8Q8ikWAjUSvEKij2BaxuJRpRSRSqe61Co/QK0Gi8CIVi8QZIhGg0otMhUVAoFOspEkchrvvwR6KTOL9mzsw3Z34zk+FbX1ZlEX8/wnZE7L0P9Xp05EL01y4017iSJlu2UXo7q8mJ+G1MnNUFVOmPOEarSzHy1qYlrOLBP5SLszr8F4NgSNzqKsKmxGFNlzNF2K6Yq7hFsd8I9YlHPRU/IJUWqjQvdmpmDsRS/Y2dSkGda6nGhguhiNFqbEWs66qrTbH2CnW6FhMNxyqJe90vdlrcaG/AfrgVsy92T2wUvsyaOHge/hQxWYiNi/gFC+JOZyHW5kosf//9z+oJ3pJkxDxM3aMAAAAASUVORK5CYII=" },
        ["B"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAABBklEQVR42u2UMUvDQBiGnwTBwSWFBFy0laLi7CA4OLo4iINLOwpxyeDgqD/FDF1cFQd/gCAUF39BEBWqtLi4RDC8DqFJc6Tn1K3vTXffc+/HvXecI/6TyxyZNRKhYvyQcMXWBCOEIplKdTzeUzZ6IyBgmW3OGbFIj5bp8lL20q4ySZemy6QeSYAN+4k+gC8b4rIJPNuQUwIGXOeTBaO4xDohId8ckppIk/IZ9+mQ2C9ghycuilqRy6s8eWpoVfuKlUnq5bnUR4dOJEl706ODmAFwYItOvAO+DXFZAz5tyBk+cF/Nxc1t8WgTcgTc8FBFVhhWfG7p1l8A/DKkT8zdeMGZfx61+gMwK4hTtz4tPAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAA50lEQVR42u3TvUoDQRiF4YdFELRZIQtW4g8q1haChaWNhVh4BcKmSWFhqZfiFmlsAxZegCCKjVcQRIUoio1NBMNYLIbNEqa2yPmqj/NyBs7MMNE/UEsYzreucxsxpJy+wz8zGWLPMpl5m058mNa2WE95rOzbBoKzekpVN7pYiyG84jOGJNbxEEOaMj0X5TJVM2etyuW+7OvHerm1XD11nLbcOx31WoInqdScBbsKA0E7Vh1HgmAn1kuhh70YErygEUMSS3iLIccauBqtLiljpVbkDtBxHXtSQcfM+Avgx7s7hcvJf43rF7QmT6R6im1+AAAAAElFTkSuQmCC" },
        ["C"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAnCAQAAACocNDCAAABC0lEQVR42u3UrUtDYRSA8efeGXQGv5jCNK0ZLMJANImybjQJYjBYjYLRf2IG81AwDY3rgoZhEBRBEJE5i4g6H8P8mPPu3mjZOeEtP0447zknkOQI6aL/RCmWKFKlxis1rjhiCwB/smDV9rgX6fmusskOIY/sUuaSJ8bIssBca6V1VUuOyN9sPlO+qHsGUeQL7asXpqNJE2V9V9c6kSZaURsOdkYhMA2cU49v5ihwm9TxfuA5CdWB4SR0A0ySikcVYIDZmFJi2pp6GN8n3FZ1NR71eaq+uRH9e8HnLchxTA44oUiFO3rJMM4iM+Rbhy7jgUYPXfDrquRZZp4JhmjwwDVnlCnRhrpr3ik+AI1yAQJ5MdTNAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAnCAQAAACocNDCAAAA+klEQVR42u3TvysEYBzH8Zc7xZ2BCHW2W2SwKCUWRXZ/gcVgsBrtRv/AGWxKlEEX4+1kOQZFSUnXdUqX3PFY/LiOe85o8Hm2p3ff5/v5fj8P//rzSlqUU1RWU3btyHozsqAoNJ0SdH4iazYkPNiSd6VqWMacmcYqK4Jg10DrXsY9C7Z1xBreE1xKx5CMV8Fy3PiS4EVfayCBCVyoxKEh3MWeSqAHT+2gCvrbQbcYk4xDBfSajo8grSw4iIWDmpRZo26cxmqlnAnqVn/e3sdl1rEsTuQU3Os2aMS8KZON+KD9b5F7D92X8aodhx6ldOpSV3Iub1Px/1f/Vm9Cj0wB0e7H7gAAAABJRU5ErkJggg==" },
        ["D"] = { 20.0, 21, 0, "iVBORw0KGgoAAAANSUhEUgAAABUAAAAnCAQAAABKrMu7AAAA+0lEQVR42u3UoUuDYRCA8WdjMATD2D5nc9FmnRpFuwsWg822Zth/Ypq4JiisWzRZtNjUNi2GKTJkipbHMNk+nfi+xSDsLr3w4164Oy4jsZFlQv8breMwX7nnkiZbTH2zItb9KR5tmB3VGNE7ExMT51xw06Z9VY/Nj9OOfMmSbVX3wxTxUNXFwev3DmzTA3ZimtWjBawOVKivJ0CB+Rh6A8BsDH0CoBhD8wD0Y2gZgG4MrQJvXMfQdeCMlzBdYg3YDY+gzAFwQTtElzmnQpcNPm9VLrXkCQDTzFClxgrQocZteLXf3bOU3rPc2MfPPHDFKUepegBkJkfzT+gHOYi4ccdgS6YAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABUAAAAnCAQAAABKrMu7AAAA5ElEQVR42u3Svy+DQRwH4CdvmojEIO2rNkZb12IUdh0sBpvNZvCfmCpsEpLuFiYLiw1bWQwl0kgJyxnepKQVd4tF+vlOd/fcXe4Ho/zjbAn9evPgStOG8Rj9qic7sp/ovVwuN6NmXVNPEJwYG6btgekVLUGwH6dwJAjmi0b263E3dbGdQrsOsFyoLHKNp5g0l0JvwXQKfQblFFrcai+FVkEnhdbx7iaFruLca5wuWMFu/AmqDnGpFaOLLszqWBOKjlJ/KJODCVPqGpbQ1nAX/9of9lS+o9LQxi8eXTtzPLjeKH+TT8uJTbYLTuGEAAAAAElFTkSuQmCC" },
        ["E"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAnCAQAAAB6INqaAAAAXElEQVR42mP8z4APMDGMSpMrncPwHwN2EKGbBc56zGCEIvMNVfofw5shGmryKIHyhSjdyMGihyT+H136H8OHweVvFiSFIigy/xneIkvLMrxGkf7JwEHQcMYRmoEBzMcfTd78UXAAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAnCAQAAAB6INqaAAAAXklEQVR42mNgGAU0AjkM/zFgBwMDAwMTfn0scNZjBiMUmW+o0v8Y3mDqJmD44JCWRwmUL0TpRg4WPSTx/+jS/xg+DC5/syApFEGR+c/wFllaluE1ivRPBg6Cho9UAAC+uR0phibGcgAAAABJRU5ErkJggg==" },
        ["F"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAnCAQAAAB6INqaAAAAR0lEQVR42mP8z4APMDGMSpMrncPwHwN2EKGbBc56zGCEIvMNVfofw5shGmryKIHyhSjdyMGihyT+H136H8OHEZTWGEdoBgYA/vwbPjanBeoAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAnCAQAAAB6INqaAAAASklEQVR42mNgGAU0AjkM/zFgBwMDAwMTfn0scNZjBiMUmW+o0v8Y3mDqJmD44JCWRwmUL0TpRg4WPSTx/+jS/xg+DNFgIUd6pAIA8O4ZGnYKUcgAAAAASUVORK5CYII=" },
        ["G"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAABMklEQVR42u3UTyvEQRjA8e9uTjisP4tNSRHlIjkRN+UgdweS5KqUdyEvQHkBRMnNUVsuUtrIkXIQ2bY9iOjH1+FHdmx29+Dg4HkO08x8mqfmmSYhtUWSf/g3Yd23+STTjJOhiSduOOOAbR4A8CtHPLY8TuLdL7boi1p03Ql77XTQBfd89TyEM6ru2ypB9rtRCvt8VLdMfmMlGQ9b6qUNP7MYdvimLlViMZxXI1OVYRIYBi4oVu9MG3BXSwvrgShYnQ2qjn3CAtBcy4nXwEDQ9R3SpEnTE8JDoDEu8BHP5MmTpxDCI26B1eqln1kDplisKEWsM6tGLpsIrjml6ljp62n3VNWcyw6ZsctRV8yVQ2xw06js2b65Z7tIIvjN+phjgm5aeOGec7LschVvJf6/vV+B73fJJ5FPCVLcAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAABDklEQVR42u3UzyuEcRDH8ZdtS3FZP9balBRRLpITUdKWk7sDSZur4v/wByh/AFGbcnB2lNJmc6QcSEoOoraHr5PY55HHwUX5fE8zvWem7zQz/OuPqylmz5ozpajNs2tnDu14jAeNOxYS7ySOldUFDzaUDOgxYlnFi1ojNi8I9nXGwodsfjYHPQm2ZdK+tC240JqGdXsVrKS3aEkQyX0PZTCGcw/pYBdu08pm0IKowbvQ0PLJd/Ae7T/JeIVh2U/eXXl5ef2N8IwgmP4iTe6jNDS7ERykg6wLgnI6mHUkiKzG5jMBUnAqCKpWjSrqNWFNNQnSakuUGNtXFYXkKgxaVNKnQ92dmiN7Lv/vxW/qDaxJYez/dzwIAAAAAElFTkSuQmCC" },
        ["H"] = { 20.0, 21, 0, "iVBORw0KGgoAAAANSUhEUgAAABUAAAAnCAQAAABKrMu7AAAAR0lEQVR42mP8z0AsYGIYVTrUlOYw/Gd4gFX+D8N/hoDRwKKlUhY4S57hPw1Mfcygh0X+DQMzptJ/DB9GY4tqShlHC02aKAUAUI8L86FvTVUAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABUAAAAnCAQAAABKrMu7AAAAQ0lEQVR42mNgGAXDGOQw/Gd4gFXmD8N/hgAIk4l480aVkqCUBc6SZ/hPA1MfM+hhkX/DwIyp9B/Dh9HYoprSUUAbAADprAnPtF+UCQAAAABJRU5ErkJggg==" },
        ["I"] = { 7.0, 8, 0, "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAnCAQAAACY/MHjAAAAIElEQVR42mP8z4AKmBiGlkAOw3+GB0PT6YNQgHGQJAcAsZAEllJPQakAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAnCAQAAACY/MHjAAAAHElEQVR42mNgGOIgh+E/wwMIkwldblSAVIHBAgBgcwJyP2qlEwAAAABJRU5ErkJggg==" },
        ["J"] = { 10.0, 11, 0, "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAnCAQAAABzy3rgAAAAcUlEQVR42uXSMQ5AYAyG4e8nBoudi9jdRowuYHUDpzAZ3MI1JBaLGCReAz8DsYt2aZ80TZrUoKdw9DduhKq/Hv/C6519SdOdQ0n9UWMzYAGSvbs4BwY8ywUxESkzkNsh0WKjxr24ZGSmI8M5F8p89JE3DbZPsr4UDTUAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAnCAQAAABzy3rgAAAAaElEQVR42mNgGAUMDAwMDFsY/jPMgDCZsKsYmcL/MIU5GRgYvmIKSzIwMLxAN46P4TfDfwYndOFihv8MrxlYYdwGBnMGKYZMhu8M/xmKEap2MPyHwnUMzAjhToYPDN8ZzjNk4/LDUAIAwxkWxQwLB3YAAAAASUVORK5CYII=" },
        ["K"] = { 16.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAnCAQAAACocNDCAAABD0lEQVR42u2UvUoDQRRGz8ZCEdIIFpJSsBVBUB8hhUJQBDGt3YKI2NpZ2Nj5BiIIgkjQ3kbyAGJjYUAQQVIF1j/YYxFiQjY72tlkppnLnLl8936XieT3VWAI/QcUI42+m1MkYTGUaZ8NUjapAyBirDbkZ6+bqtudeBA0b6IedR9loZLP6rmFLtSvaZwaU9xSJc1rQcQJczywwnt+nw6o8EqZZl/+Hk1VNXGhp8qM8JaJupNFeoW3uAd2KYW8+6TCCyWuKIYMfqLCB7OcMRKagjpbQJnj/Ora50NV9wZX14EK1tTUtRCERe/UN5fyvGs3Y5kmY1wyHRrfR1b5YpJrJkKTeUMMzHDBKETDr+dP0DeF5d3N1lJkiwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAnCAQAAACocNDCAAAA7UlEQVR42u3TvyuFcRTH8ZdrIHUXZdAzKquUwp9wB+qJTHe13dJNVpvBYvMfSCkl3dgt8gfIYqCUlO506/Erz9dguNx8v4yG+xnPeXfO6XPOoa9/q4bgtie2LyjMpaBNwbs8VWlFKVhLtZtRCHZSM2XuBYcq3XSlBx/RMu5cXRmDBuyZdm3R89fwd2hL7lFNO+5TXVCYTZnZUQiaP6W77TqusC5LQa9yDzInqnGIO7kXUw4MxiEurKJm97cr2BYEG2mooiUoLafvqepS8GQ+trtPMxa0DTs2EYe4seTNmFOjcYgzDUw6MtT/7r/qAwCoTlWhC/7vAAAAAElFTkSuQmCC" },
        ["L"] = { 13.0, 14, 0, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAnCAQAAACV4rGkAAAAN0lEQVR42mP8z4AbMDGMShIjmcPwn+HBaAgNd0kWJGUiKDK/GT4iJGUZXqNIHmRwwGss4wjJggCm9gilTarycwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAnCAQAAACV4rGkAAAANUlEQVR42mNgGAUUgxyG/wwPMIWZ8OkZlRxykixIykRQZH4zfERIyjK8RpE8yODANJpHGBgA/QQGga4BpZMAAAAASUVORK5CYII=" },
        ["M"] = { 25.0, 26, 0, "iVBORw0KGgoAAAANSUhEUgAAABoAAAAnCAQAAAC7p5A2AAABPUlEQVR42u3VMUtbURgG4OdGCWKoGHBwdUgphYI/QQeRQHGtk1hEKI1N0H/hZKISLKWI0C5F3EoHuxaKg4MtIpQOIo4iQkkJCtflIom5Sa6jkLudj/NwLud7zzlB6OFfSg/1UCtaEgoddZi3KhQqt670wmQbkrEY/3t1FNugeVn1OPRLaMZYDAmUcBiHan5IKcSgl3L+Oo1D/bawINOCVlA1GIdSvjg3bO4eGTfhn4/ScShwrYqioAktY9tVY7W5ue/998xUQ2XUrNBGp0Rc+IRSQ6Ug7as/nWNURl4uGg14g0q37B3bF3gXjeaM+O1798CWMW/orqmVJCn/5sQTrzHtuQufk6DQOt4KFKL9THSedlx66pV81LlEqOYDqvrsOk9+cjfdyEabkhid2cNPBw+7I9bar0PQe2oeBboFLuJEUy2jIesAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABoAAAAnCAQAAAC7p5A2AAABOUlEQVR42u3RMUtbYRQG4OdGEWmoVHBwdYiIUPAn2EFEENc6SaQUStMm6L9wUmsJiogI7VLETTrUVSgdOrRFCuIgkjGIIBFRuA5e2pvkRq/QpZB3O+f7Hg6cQzvt/KO8EQr9uOPHglBo6bbIxB6eetaCZL2Ml3/RJYotUF6vyyT0U2jKQAIJlPA9CdXsyygkoEk5R46TUKdVvJBtQvMoe5SEMj6peGKmgYwYdW5DVxIKXCmjKKhDc9h0Fu9m6j6suTBkLNbpNy20Uj+8HlV9QCnWKeiy6/AuxBIm5KKq2yssN26mER34IvA2qmb0+WXvPnQ7K6/nz1GXmw/XjD777bFZjBtW9TENCr3Da4FCtM8UiC2nBj03EV0uFapZR1mHbZW0iPeu9UZLSY1O7OCrbw9BLLae087/khvTVUIvcL0oBgAAAABJRU5ErkJggg==" },
        ["N"] = { 21.0, 22, 0, "iVBORw0KGgoAAAANSUhEUgAAABYAAAAnCAQAAAChm3C4AAAA20lEQVR42u3UP0pDQRAH4O8paGr/3ECJeAnFnEPRwiYIihghCHqBBEwhaqOl3iB1LvA6qzSpg5DqNUpYKyHggzc2FpLtFj6GZeY3myXxs2CO/wM+kSRvlkrEu+TwZ+Vtl9FnfODKZgwP5WruY7jmXNKwH8GLBp7RtVKNM1wYW9eJ9XniDEd2YkN50cdjacdLJthUqGvH8MgN2uqxbNzKLXuI4aljU7vfiahKXa6HjrVYRK+NrOoiVeNCEwf2fEbC3/eKO0VsU05NbNmI4bHWb3bwyWD2ms2/3D/BX/1ELrXbu3p+AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABYAAAAnCAQAAAChm3C4AAAA1klEQVR42u3UMUpDQRAG4E8FTa3xBkrES0T0HBEtbIKgSBRCQC+QgBaiNlrqDVLnAq+zskkdhFSvUcJaBFEw5E1lk/zVsPsxsMOwzDNzOZYkr5Yn3L1LDsbl4q/jbRfTe/7gD7RsxvCbTMldDJecSfbUInhJzxM6VovxAhoG1rWLMQyd4lA1gnnWxcPEif/B1OUqmjHcd4WmSgRzLbPiPoZHjozsfG/EdEzmBm3lCOZS35oOUjHO1bFv12cxpusFt/II5sTQlo0YHjiPPXCcR735n/P/+QIyVCyRllUZbgAAAABJRU5ErkJggg==" },
        ["O"] = { 21.0, 22, 0, "iVBORw0KGgoAAAANSUhEUgAAABYAAAAnCAQAAAChm3C4AAABXUlEQVR42u3UwSulYRSA8ee7xTU2gxuLCSNFatQMWVgIzcJSWVgoRfazVlLWthaz8AdI3eVsZDFD3I2SJDRSko0QdlwyjwWf797rfpqVhZyzfH+dt8457xvI/0eCd/yWcCOTLHPENRfsMEtfgTbMMme8sTD+2PAknnClGVU3/eE3P9nigHPeqcd+LcS/VJ0wEdUROz1RD6zIxSOqjufBh2wzq/6McOC2mjEognFavbImxG2q9hel+FnVUZEE0ANkWYxp7iH7QHfY5xZgm+vYWWwBdSFOAWcvDO4SqApxEnjp3d4B2RCfP1aPi6pHQwI4BL5QEotbgd0QrwAf6I2hdTQDq+EiJT1WF2L6PK2eWR6Ne1zVsSK03aw6lbsbpa6pt894l6fqhsn8rav3r6pLDttstU0OmvafuhdtdFQlZdrnkTYV3RTkTaODIb5Ty0cuOeI386znHgfvX+6r4HvB/13A3/BQugAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABYAAAAnCAQAAAChm3C4AAABPklEQVR42u3UMUjVURzF8Y8P8klTKTkEVgiFUGBWQ0NjOhYNbUHRHrgJEjRLtDg0NDi2vNGlrRxcgpAQC2uIaBEVa+s9w46Lf5763nVtyHOnc/jey/397o/Lsf5bDXtqwQ9NP33yykQJ7DNrWw6tty50oqctivjoiavOGnHPaztizehheF7EtNqB9KZ18c2p/eFDEVNdLjemJV62gx4rYlFP11pmxG+D7d0RdwqFnxfxqLKToqmv2NCvYg5qGMGKZhFexlAFD2DziKf6hf4KriNHwDtoVfDW3ukl9e8xaviOy04U4Sv4XJnbIsYL6JCIu5WtWxNvCvCM2HSyHUyJeNwFvaYlnu2Per0XfzrwWzbEkvrB+JxVEe88cMkZF93X8Fd86TbRAxodox+NclNveGHJhm3rPnju+vFP8y+0C8Uzbj2Eci8iAAAAAElFTkSuQmCC" },
        ["P"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAAxUlEQVR42u2UMQrCQBBFX0wQPEBEsRAEwdo7WKmVHiOF9l5CK8HaytYi2HsDyxSBlKYSVCySsQgmGxNjZWX+NMvOm/nMMqwmfFOFEvk1YiFx3HDZMVYYQRBLstpLLapJjDxMTOp0mXIAhmzeu7iiuMlaRER66S5pLQiBQdFEPh7QKh66CtyLkA5N4PQZ0VkCZ+w8RKfBhCMjYM4VwIiTbdRNfzBjGx2NjIngYLPCeV0Yyuv2gYALQbomQUL8f9ldrfw8cvUETWdWsOb+1C0AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAAtUlEQVR42u3SMU4CURCH8V92jYkHWKKhMzGh9g5UaKWHoKCx9xJYmXAEWgtCzw0oKUi2lMpEpWGfhdklK+ujhYRvyvnmP5mXx4kDYCBU9WVp7D6mlPXm4reZVFouk2m58WiKntHflGUt91UQdOopdZ4V6MaUlRztmMI5vmPKtSvM/1dSQ7ybNCmpSw9m7vDkM/Z0a/2yebazJFiYeLHYVXK32Piwqc9slcKq+bhk/zc4MuVEMz8j+DlCO6U2fAAAAABJRU5ErkJggg==" },
        ["Q"] = { 21.0, 23, 0, "iVBORw0KGgoAAAANSUhEUgAAABcAAAAnCAQAAABOWRuGAAABdElEQVR42u3VO2hUQRQG4H8X4pIursRCjI/CGFCIilhGLGxFCztFsbZTtBBsRbCwEmwDQgoL21RqFEFQUkh8gCBqYSQmWhnXkP0sYrz7ukFbyTnVwHdn4Mw/3Ir8S1Wzzv93vjNX8jAf8yNf8zK3c7TLW+2amxo6674dCvOHD5gC087bZ4sRJ9yxjFmj3fwemi6rtu7lkM94Z6CdnwYX2+hKj2rgViuvmMFjlR48rmHR5oLvB8d64tgGzq6sqkkOJ2lksmTUH/I2yVgx95EkM2mU3s2LJEMF35TkyxpX+S1JveC1JGu98OVk9exqkoXfJ5RVPcl8wd8n2ZO+Ur43yeuCTyXpz5ESPJThJI+KiNXMYrJk7tcxp781BJfAuR74oJ+42p6ZPk+x1PXBmHk8s6EzkVu9Ag+cMmzQLifd1cQb27sDHBtNaOquM72ex0ofcMO0OUsWPDduEYyr9+advdsT8Mnxv+FRdcF3MGFQKuu/g5L6BUTzuZsadTH8AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABcAAAAnCAQAAABOWRuGAAABXklEQVR42u3Uu2vUQRTF8U8W4mIXI7EQ46NQAwpREcs0oqVoYaco1haCooVgK4KFlWBjERBSpLC1MooIgpJC4gMLEQsjMdHKZA3ZY6Hhl31M9A/YM83M4XvnztzLDD311KJdrnvisyXfvXHPsTJad0dD2sZjO7vBA56KmHbRAVuNOOWBFTFrtBN/KJquqbW4R3wVHw20wmdFXOmSdVRD3F1r9ZkRz/R1vdNNsWhLZRwUcaJQgu0izlfGJbGkXqzZB3H/z7SGEcxoFPHXGK7wzfi2TvN+YLDC68g6+AqruWtY+JuhpEHMV/gn7NNfxPfjXbU8KuJ4AR5uL3PdrHhUwG+JORvXWldFXOgCH/ZL3Gg1+70Qyx0BY+bFSxvad9nmrYgpZ+wxZLfTJjXFezu6nXGTCc2O5xHnyhU+5LZpc5YteGXcoojx1Z7+S3s9F/HFyf8LqLnsp4gJQ72/r6zft0J6gV6/dQ4AAAAASUVORK5CYII=" },
        ["R"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAnCAQAAACocNDCAAAA+ElEQVR42u3UvS4DUBTA8V+rOhtao4mFhHqCrl7AxigROngAadL4WBgqZonBG9j7BBIGYiVNJD5GEUsdg4+22l42S8+dbvI/99zzvyc3E36PrCH0H1BFfK+WJw2rRjuoEKISvXEe41957XJNRUVFkxacouS496Sb6KgZ9YiImPp5UnfUQSnd3SPIp6FZcJWC8g5x5uJjm+swVgAF8zZNa1pOe3qNk7alQd3tWvLQ7+1uZWRN2BFqtruS+sjciIi3KLfL9TfeiIjLyKXvtK5lxlp6nq4dofYpZaDxqmdjttLQvT2smEuP7747Iw7S0IsqyhbJDL+eP0HvDu2iS0p3QscAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAnCAQAAACocNDCAAAA50lEQVR42u3Tvy6DURjH8Q+hg8nQ12ZjIam6gq5uwMYoEQwuQLpoLBaJyWZwB/bGBUgY2Js0Bn8Si4ilPQbaN623D6Ohv2c653zz/Pk9OYz1b7Un9aPjRdO26QjqxY253vNkH2zLZDIL1lyi6vxnptbAzYkkWRzOZAiCagw9g1IMVcB9BJWc4trt13FKPmcZlK06sKRtM/bpw0Xu0qhyRzY8FTnewoR5DV1Jo3h3uZn7kq5aDNGU3OVDFfe0q2PZzm+7O5O8fpsy0vG6N7MOY+jRMbasROWY8SC5ijLxro6a9fHv/qs+AZglTi5dwmqbAAAAAElFTkSuQmCC" },
        ["S"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAABEUlEQVR42u2TL0hDURyFvzfU4EDRoC4KBmFoFAS7ghZx4LqI3SQaB4rNajKYDIuCoCxYZh/IMBhMgoh/GKJD/Qzb472x5yzGnV+75+PyO4d7A+msFF3gv4FxClzxxBd1Hqmw3Ty3MVt+2KqzhtMDwCZ7QIlDKrwySoYFBqIb0r6oRwbSPohzqk4m2ZIC0n+luAZg/RdCxKKqB/Yn74BDllW9c8O+JAB73beu6q35eJ44PeGJ36qWHEsCEKc9VfXebDKAuGpNrTa2SSzHnKrLYVHtKvIMTHV6DwHwFgJLrBG02CsMAuWwybx6446zZhxxxl3f1fMoxXwzfVwXDsdjZi146YOf1qx67GKUKOh+fwB+ALQ0Ibtv0QhOAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAAA90lEQVR42u3TPyjEYRwG8M9dGFwpBtyoDOpiVGKnWJRyu2Q3ifGKbFaTwWQwKkU3WNivdBkMJiX50yUufA1c53S/G033fKdvz/O+z/O89dLGv2NIwYUHH6rulaw30mveRMMcfxMdYNUWinaVPBuQNaOnfjrjSdiTSnKfEsJIczKNTKvsaVyC5VayQyHs6E4S9DoXwo0VXc0lnbZVhXAtn9Rn2IFPIRQNJpmNORLCrVxy5EUVoZyUBhaEMF97h2a1HzGaLCCFl9oyZ+lPsW+LydqaF65smJDVb9ymV+Gkrp/+af97TvX9vjKn4MyddxVl+2bbP/AvvgB65FG6t7baywAAAABJRU5ErkJggg==" },
        ["T"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAAAS0lEQVR42mP8z4AfMDGMKqCWggKG/zihDhEmMP7nYOCB8/Yw6DN0M3TB+e8Z/rIw/GD4ARf4w8DA8I3hzWhcjCrAnaJGw4GBgYEBAJaaGaiL9vPqAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAAAQklEQVR42mNgGAV0AwUM/3FCHQYGJsImcDCIwOEFhv8MXUh8ZgYGFoYfDD/giv8wMDB8Y3iDrJ+gFaMKRpSCUQABADBHFbCJIhVwAAAAAElFTkSuQmCC" },
        ["U"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAAuklEQVR42u3UPQrCMBjG8acq0r3opOIJhA4ewDsogjiKR/AKegwPoPcogoturi6iQhHEDwT/DlKbYAcHB4W+mZL88uYhQxz0WWWUwl+GE6Fxwm5PaJM+z79DTHiV5CagvKSjCQ+SignQkxSacCXJV+4N+pIWrwiIOgBNZA2PE9B9zqLFJbCmYrAsU2CHa8MGd2DLgBoFqrQIAGhHB+MOHc7YdaEf32BmKjFiTsiNPTOGlM3ETvrtfQU+AAaikrh0zGQAAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAAr0lEQVR42u3UMUoDYRDF8R8xBHsxlRFPIGyRA3gHQ0Asg0fwCnoMD5DcQwSb2NnahCSwCKKGgJMizbfuV6SwCLJvmuHx5/GYYmj0LzQWHjL+SJht19auWQ24d2Ck4AqHGaiDjxR8RzcDHqFMwVcU2jWwwDQ1+kK4rOV9CtdV80V4c5o4BybC4nf3Cz/C3K1zx84MPAphWC9+5UtU5ttN/mIn7j0rrS09udNrfsTfawNGbiz4nWz3fwAAAABJRU5ErkJggg==" },
        ["V"] = { 17.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAnCAQAAABHsrv8AAABGklEQVR42u3UMSuFURgH8OcakGSQyGAUi1EpdQdf4E5MksUgUj7CVcpksZAPIAZlYJFFBsVkFHUNRjcD3eLmZ7gu7329JJPBOcN5/p3fGZ7O6eTET0ZT/LO/wNZC3EdL5m4xRDmaI8IIKIiMeYl1IUK4wlYGGgajdbaEB22f2Cqua3UIA2AihZrcovjBwjl2U2wM9CfZIio6GtgmTuuptvSqYiqBmpUx18jCIfYTrIAnXWk2jSed72wbex/H6kWHCmbeUrtHjH9mYQdHb/Uk7rVmsQKqeoRwgM1k38ne7jAvdHlGPpuFDZwIsyjJfcXyeNHnGMuNd5IMOTdYUMXg1yysoISz9GtpjENqY+F7Fi7wrDvNcv8f16/YK5E7xb/Ra4YQAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAnCAQAAABHsrv8AAABG0lEQVR42u3TMUvbURjF4ccOsRRxKEFxcCx2cRQKBQe/QKY6FXFxkIrgR7AgOLm4tOQDiA5Ch7pIl9KhoJOjKOjQscFBEZLgcYk2xn/i0kXIme4593fh5eVc+npG2hQXBgvvVkVNCd6JqBRix+LLnTkRWwXQlIj3d/azuPTqEbYhTv/ZCRGzHdALf8Rqe3QodjuwGRFv2qMVcW34AVYVvx++HNMUc21JSU186hx3X3xv8xVRV+7E5kXd63u/Lb493tGwa7HQckOuxIeije+IH63zR3HhZRFWEU2jYE9UiytQ8lcsoawhprt15av4hUVxZqAbNi1ujPsp1ro3b8C5WNYUb3tVdF2ciYPeTZ4UEctPVf5INIz0//7/0S1akVv1SW5o2wAAAABJRU5ErkJggg==" },
        ["W"] = { 26.0, 27, 0, "iVBORw0KGgoAAAANSUhEUgAAABsAAAAnCAQAAABUZfsIAAAB1UlEQVR42u2VvWsUYRDGf7ucjfgBSio97IxYiB8xYKPR1XyA2AgiloJ/goUiaGslFlY22tiooFgce0QUSRoxB1pICkFE0EhyoIjBeOZ+Fvtxu3sBwU64mWZ5Zp59Z555ZzeQf7GQAW1A+zvtGvKLDX14G7nel99CHgCOqnpSSn5I1VYF3eKqekFCXrEInKi8dRKAvQyV0KOEQBNCusTA+Bq0TwREJTQC5vmQSNIAdlEvhLcywk+e9FVxDIgzJWO6lYQJQl4zV0G3MZyUmNDavKyUOQk0mQbqDJdKXOF5b24NICJIwwHjQMx73gHHS7QZlgESYUdUPZDKvF/9ak28pT7K5f+oXkyeEyDwi3opDV9WH4p4Sv1mTcSdqu5JcsL0yLjQ/lSmF8/osInRvMQF3qQ56Qln1RXXi5vtqDtS/IV6VcT76t2s4N61+a1OiafV+byfK+qMGLiknqvScFa9Id5Wb+boQbXjRvepXYcyvLc4jXR2E3lnAHO0qTFGBLRY7N+3BrCbw9SzkQLQ5SkQMZbdj7IkGLig3lOnS8tyXp11ST3SQ4sJd9QfvZGmvl1dVr+7bm3aGS2ONPe3qj4uYsVvSZNV4HM+0sziNFqwYPCj+i9pfwBT3H63vnjQSgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABsAAAAnCAQAAABUZfsIAAABpklEQVR42u3UTYiNcRgF8N+dxmYyEVkh2WClmKFQlIkQNkqahcXUKNmyIPlaKKthYWVjZiFCEaUpWWBiodnRlJVR42sUicZ8HYu53bn3vdfSQs1Zvc95zvn39p7zf5nDHP4Zzolx8wtsk6/iUp16UNyBjSL2FtabRAwW2EWmRPfMuZ/FlYLgvIhpS2rYAyJW0GRaP3YWbLswoqSjhu3AkHc04RHWWF61XqzdmAfYUWPbjv5Z0ZToqlp3ipe6xXAVu1TEnlnihbhZJegTF6wUsbrCHhZjWmZlZ8QXpfJU8lFswVtxrKLqFY+r37ldRFt5Wi++acZVca+iei9OVNtKPomT5emUuAv2i++awSoRa2s/eJ94Un5+Jo6AVuNiMzgqPhRLc0j81oIFJmYiBU/FWXBb9KqrzaTYXW7CUIU/LZ6jZFR01ld6QPTgWk3VNogJrdY1qFrl3NcYrom0yajY57h41egCtYnYWozULXHZQ3GxkW0m5BvFSHWJAaNiW+MLe138LEZqmfglfpjX2HZQGkXqjYj7f/s9LDQpRur4Hqnp5hz+W/wBtUSi+qYF5BMAAAAASUVORK5CYII=" },
        ["X"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAnCAQAAACocNDCAAABO0lEQVR42u3UsUtbQRwH8F/SCg0VkQYKhWJBsVsRtw4u3YvUSQp1Kth/oEs3EZ0Eka75D1xECYiDpZNQl+Lgmg4RpSFLwYiBkI9Dou+9JGAnp7ybfvc+7+7e947LifuffAzRQ6NH8TvE3xjreVOIPyH2IyJCeKuNDZFpq7gyKUSno4SmqRSZco1vnarTVVTHTgqVcWokjcJn8K5bzaNt7vaTW5RzhBN54YkKSsm4yQQzWlgWVlDzbBAKW7gw7QpL6T9NozHnOMNhNo5sNh9B0+ssym7Li4iIGIliT/qZABv4hROPB0+X8wMHJl3j62D05W4167g00Y9e+oc1ITxVxV4/KqOi0K0WwUIWfQLvU+v4iarRBD1Xx24mmzda2EzQNhpe9Ry672iZ7aAPJMcr1cbVcCwvcsOr57/QDdIUpa0J7LLIAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAnCAQAAACocNDCAAABKElEQVR42u3Sv0vVcRjF8ZeW4CURURACMfBiW0ibQ0u7iE4h5BTYP9DSJmJTIOHqf+AShRANhVOQi9zB1QZD6eISqChcPA7+uPf79ers4NnO4f08PJ/Dh3vdST2wKf7pLeUVf8S3SzvuVHwsQQviyEgzWBEnqi1I1bF43zo1YF98bknWxJau4vI3Il5euElx6kX5/A6/RE0num2LlXavHNMQc5gXdf3ty/gk9ow6ErM3NdZrV/wVP24rdkbEiafFuLPgHoMuAzfvqToUv0XNw/ZIh5/iuxHH4l176O3VNR/EgeHryJD/YhE8siO+XofWxLbKhXslYrqIvBYx0ZKsix09zWDQvvhSGHumIZaawao49KR0wLJoeH5upqT8vUCfutgo1X2vW3QGe+RgvrTm8IMAAAAASUVORK5CYII=" },
        ["Y"] = { 15.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAA3ElEQVR42u3Uvy4EURTH8TO0Os2uRSei2HJbhSfQqbyDd1BJFIRVCpWSKDceQNR6Eg+gkcyYxHwUY3ZnxopKI/u7zbnnfnNy/uUm4jfNxQz5S2Q/RB69by+7IdLoRIRFbzgQjZN4xJEQIRzi1UID2UaqWyEdKfYayD2OS7t0DPFsfgxsIbNUR1bl2BkjdzipbpXzHA9f9gCZXhtZ84FNIVzjdJLXJMEr3AobCpnlaUhfobDuEsN6dfVCb3Ah927lJ2Sg1Fmz0822j2jH0Jr0KCKe4uW/724y+zym6hNlQwqFFbCtOQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAAyklEQVR42u3RPy5EYRSG8R9anWb87UQUymkVVqBT2YM9qCQKwiiFSkmUYgGi1pNYgEZyr0nMqzGTmXvvTCuSearznjz58p1zmPLHHIqu5Vp/XxRasOBTHFWEGS/ipB+PxYf5EWVXFBb7saUQByPKkzgdbnTEm7lB3hGlpWFlTVfsDfKjOKv+/1I8/9ZtUdZnXPcttsGtOG/az424x6ae0kqTsqWnZ8O16Izb85240vVldZzSFhEXk+71IPU3ZisKr94nKY38M2VKMz+c0D0erBv8NwAAAABJRU5ErkJggg==" },
        ["Z"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAA60lEQVR42u2Uu0oDQRSG/1kRLFIFQhZSCBIsAvsc6SxSWaWyUkGLNCnEV7EOhBRaWShCihRCfAPbQIiEwKI2+VIsspeZcat0+09xLvPNmWHmMAaVKVCF7Bd5EN5xVlblRY+SQarpyJq81r1iRfqU3PVPiIGrJHIBhlfgDeNHLoGY9l9sA8dsgNs0YyPPwJTAj1wA35xmc3mgxRoY5JflkSdgxoEf6QM/dIqnS92QL2BoX0LqToD34iZZ5Bz4JXI9R2IaLIE7dz8kZgTMOXQjBqmnsbbq6sPRMSsh6izwK0SBbtT8v3dN9Xk4tQPZVUsF1wmfBgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAAxklEQVR42u3TIUvDcRDG8c9/QzCYhOHAIIgYhL2OtQWTyWRSYQsWw/CtmAUxaFqYCAaDoO/AKogiwp9txfMFuPsFi2XPxfvePRx3x0L/rnORRo9GsXjsmgorln8lj52pdbxk1Ztq4ShvX7kV7lQ5cijUtnJgw5cwKE0xEu5Lkx4IE9s5sO5TOCmZ3AgPmjmwL0zt5EDbh3BaMrkSHksme8JMJwda3oRhyeRCeLKUrYxdl751Pc/JvwtWvRaurk1D39riN/+iH++ISNN5+4afAAAAAElFTkSuQmCC" },
        ["["] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAnCAQAAAB3PqrdAAAAR0lEQVR42mP8z4AOmBiGvpALw38oPMLAwAKXfM6wi4GB4Ray0DWGhOHj7SEhhAh7LYYFDAwMtxjaIHHl8h8GjvxnYKRiwgQAej4bKWZ/230AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAnCAQAAAB3PqrdAAAAO0lEQVR42mNgGJbAheE/FB5hYGCBCz9n2MXAwHALWdUeGIcJ05RRIVoIIaJDi2EBAwPDLYY2LJFGTQAAiUsQ2+/VL+oAAAAASUVORK5CYII=" },
        ["\\"] = { 11.0, 13, -1, "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAnCAQAAAB+1QqnAAAAsklEQVR42u3TMQoCMRRF0TejaJYhgmBWIwgWYjpxY+5BEASLcS0iyIy1jV6LMaLJt7cwKW/4OSlSoG+r1D+9Jy90kTMa4gAElG4hAlDZydEA4zSVkq5aS1pZdwkP1PTzgUJUwNxOAdjbydFwZ5Qy9KQUCeV1ygNnevnASJnZKQA7O7WUYcqwKB9v8cCJbj4wUqZ2CsDWTo6GG4OUESmlljkjUo50MFJLmdhpAWxQ8Ru/8gEzzhr4vlNV1QAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAnCAQAAAB+1QqnAAAAmklEQVR42u3SwQoBcRTF4V8R8wp2Uoo34CmUspB5zSmZjBrPIjVhpUjMtVGjv3tkaTFneU/39i0u1PkxQ4wTkV9uMWK/ijFyv4o4YgzCcQO402HEjZWiHGj7R3OMuaZkmlLSDxm8KGOupIpS0NKUmaak3yi9kFFRLqwVZU9TU6aastSUB92QUVHObBRl97HyRpn41QIj+ZuPfwIeljPAMWe1FwAAAABJRU5ErkJggg==" },
        ["]"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAnCAQAAAB3PqrdAAAASUlEQVR42mP8z4AOmBiGtpAHw38oPAARYmF4yrCQgYFBgsEdrgyqxOH///8HIOyh7u0hI8TCoMtQzMDAIIEsJM0Qj6qKkYoJEwDp6RVg6IsLZAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAnCAQAAAB3PqrdAAAAPUlEQVR42mNgGHbAg+E/FB6ACLAwPGVYyMDAIMHgjq7WAaGKCdOkUSFaCLEw6DIUMzAwSCALSTPE0y5FAACHAgpNzYkajQAAAABJRU5ErkJggg==" },
        ["^"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAAtklEQVR42u3TIU4DURAA0L+0AgxrwJQgegZMj9AjNA0HgGqCQ4AkKR6HqeIWNT1BHYo0CEJN27BV+zBLwm63G+wmO2Nmfl4mk59MJPwvDkID6wIvw3c4L5Hy2faGieL7DrxCKtWrhocWEgPMRFXwBk+CVwz3w2Nf1k4FXVvvjvbBezxk9SPuyuGJlaU462KfNjplcIzbPzOu8bILzyQ+clu1zKUuivAZo8Lf9TH97aLmChtYR/gDUazxOoagcvsAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAAqElEQVR42u3SIVICARQG4I/RAMUtWmAInMHiETiC43AAJDs0A0ZnoNssJm5h8QQ2k+MQGC3guKZ9FgKu7G7G2T+9/80XXnjU+XcZ+NKtZodehIdqOBQymbNy1vQmdS48aZTBK2GGuXBRzI68WztBz7dXrSI4EW42861wvZsdW/mQbFpi6VN7F5wK461+Kdz/ZR2pxa+rDjzLnObhnTDK7frCY/2qdfY6Pz8wJ8waLaX4AAAAAElFTkSuQmCC" },
        ["_"] = { 12.0, 13, 0, "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAnCAQAAAB+1QqnAAAAK0lEQVR42mP8z4ALMDGMSo1KjUrRSoqFYQFW8SMMcxj+YwcL/jMw0jHDAgD9NxzTzc3UQAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAnCAQAAAB+1QqnAAAAIklEQVR42mNgGAWjYBQMAGBkWIBV/AjDHAaG/1jhAvq6EACuuA2XY2PvFgAAAABJRU5ErkJggg==" },
        ["`"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAnCAQAAAB3PqrdAAAASklEQVR42mP8z4AOmBiGlFAew3+GYwyscLH/DP8Z/nf+//+/5z+EDRVi/L/4////fshCDP9Z/+/8/+6/wn+G/wyMQz4kRoVwCAEAREglM5jNrHUAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAnCAQAAAB3PqrdAAAAOklEQVR42mNgGOogj+E/wzEGVhiXmYGB4SQDF0MEAxfDLmR1jAyLGf4z+KFqZmXYyfCOQYFhFAxnAADseQfoWrvM8gAAAABJRU5ErkJggg==" },
        ["a"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAnCAQAAAB6INqaAAAA90lEQVR42u2Tu0oDARBFzy4LAe1EMIWokBQi+GjEgBqwSGcl+A+KPyH+goWlnfoN2mkhKQUrC4MKNoJIWCKsWY5Fso80/kCcqYbD3LlcmED+qpB/PI54lhPafJHwzhWrORexZU/Vnl1Vv22KOMQH9j11ScQVH9WHMt53azCKuK3qQoFHu2Kq7ohEuYl5NlmkRo06ITBRWKt7Y1Z9O6bqbrY9wx1V3jinzRMv/BAzOZCMgCOqdFijOzwTUCnHsgFc5xCWC0chEADTpSSPR0O9B/Y4JALmuKBBUg51ymdVEz/U2KZx5jwEPmlwxiuQcsk6t4V4MKYP/Avh/JuGhdyT9AAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAnCAQAAAB6INqaAAAA5ElEQVR42u3PPUpDURCG4SeXQEA7EU0hKiSFCv50CmrAws5KcA+KmxC3INjaBdegpYWkFKwsDEEQwUYkRLgmjEX+roorMO9pzsx7ZvgOI0b8YsapmjepZ5dWv8tdLSG0vAvhQyWrD7WdWQIr7oW7rD6wlam2hTD/V46CjrAD+UFzzqYFJSVlCcaG78uuRe+01XWEvf70tBtFTy7UPGj41DTencvjWFHdmvferpxCf22CdVwNJMvDRAlymMwkPxleE9xi35E8ZlVtSLP/nPAohNSr0FTR7CfvMuVcQ+pF1SI/9f/jC+6fQPFEuGrvAAAAAElFTkSuQmCC" },
        ["b"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAA80lEQVR42u3UIUtDURiH8efOoDgQYQiaDYa1wUBYNQqC0WIRm3FhfWDxC5gt+wgL16KgyWI0mAZDvGIYF/Hq5TEM9ZyLYDC6Nx5+5/D+X3hPIr9VjRn5E0mR/n+dS5sBI14ZcUbz61TEVO174JuaOVG1cFfEgJxbeOKamNjxVs1dj4l2p7dEbDhWT2Ny71xAsKeOxaDdlDJq/RJYpREmeqxkzQBYDkl1oeoA5CGZr5AN4IUsJK0K2QGueScKvRXk6Viqe3HoJyceuiguuO+zemEtJscO1cIHC1VvXJm++N1LyTZd7lgi54ojNj/HkMw+jx/rA0I1wmvqlVgRAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAA3UlEQVR42u3RoUpEURAG4E8NioIIi6DZYLAJgrDVKAhGi0Vsxg3bBYsvYLb4CIZrUdBkMRpMC4t4xbAs4tXLWM+5KiaDsH893zBnZhjlr1MIhz89jv9e/6/JmjM9b3pOrXy3lz3vQmkghMp2k1yoHFvEmLY7YWgpJ6GTFLX0hZOcPJjImneFfv7dQp2RKyxopeSpMWsJ5lISDTIDhimZbJBlvCpTstogW7jxkQ+9kYC2WtjJh342sG8aU3a9CJfpeQrhyLlQeVQJ4dZ884y1TR33Zg1dO7D+ZQ2jZPkESQdJwCcnGsYAAAAASUVORK5CYII=" },
        ["c"] = { 13.0, 14, 0, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAnCAQAAACV4rGkAAAAxElEQVR42u3TsUpCcRiG8eec4VCC0NpmS7RFIJzuQJr0DoJWB+8mJ8EL8ApqaggaGkKOYC2uJyjI5YCn4GlQUOP8b8D83vG3vO/wRRK+mD3uJh7Q5Z6cBTkP3ADgMhfOVC19t1Sn4gpP/VJfbZuIiVcO1/iojj2S7SBeqtr8SxIDLSDjubrtCTAJTakBZQg/gEYIn4CU4woV636qI+OqKXit6p2pkXhox8EaseePqoW53+rLJuKZfd8snJt567lI9E9e8BfUNaIEKNWnUAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAnCAQAAACV4rGkAAAAsUlEQVR42u3SsUpCcRQH4K87XEoQXNtyibYIBH0DcbInSHBt6G1qCnyAnqCmhjYHEQVzab1BQS6Ct+A0avT3CfS3fpzf4cBhnx3MoWtPCiuFZ/1NuvAmhNK7Upit6dSX8KorR65jsMYXYayW2tYSQuM/ZGhjYpjGOqapygwVlNvwAyfbzr8SVo7TWPUpPMjS3BPCo6YDHLl0v8k3foSwVPgWRn+nz9yZW1qYuHW+Sz/3C3JVMZmJHpMXAAAAAElFTkSuQmCC" },
        ["d"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAA6ElEQVR42u3UoUpDcRTH8e+9u0VhwSDCkBmF+QIXQTBp8AF8hb2F2Wa17AXEYFnRKpgEZcEgajBp2MAJwi5+DXPO80ewmGTntD8fDv/fCSeT3ypnRv6YFIiU/z30Gh0eeOOJE9aDcdxtK1UH9tWRu6qW4ifZUfXYVRFbdh1GUvNePTJzMrPmaSTbauXyF0AspyQHNoBLHsMXr2KiJnCbJB1FMhefAMgiGQCNhCxGcg2U1APZiqtbsVL3v+VZ8C5d3aGqBy6JuZv2PE/JvGeqvvvsq3pjMyVY2PbCF4f23LNuMSXZ7Hj8WB+MrNFuUqM27AAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAA2ElEQVR42u3SoUpEURAG4M/rFoUNBhFE1ijoC1wEwaTBB/AV9i3MNqvFFxCDxaJVMAnKBoOowaTBBVcQ9uIYDHvnsmAThP3j8B3OnJnDJH+flhBKKH7X/5asOfLk04tT6+NoVyWEvjdhaHc0l5/sCOHEClh1ZpDJtEfh2JRR5TyTbaGylC4u8wI2cO05kZv8og7uG+0PM5nJJaj1pUAfiw0yn8ktSu1EtvKJZZWwX6vMeWiO7lAIBxZQ2NRz2SSzLoTw5dWHcKfTJLR0XXk30LOnXf+7k4zPN9wcR9TReIMlAAAAAElFTkSuQmCC" },
        ["e"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAAA6klEQVR42u3TIUtDURTA8f/eewo2wTpRuzAsVkHDgqxqMvgNTIJgMOwLCEazQRCbyWQ3LM/B0hgoTIPzbaB/w93TC3N+gndOOHDOL9x7uLci/0dCCUrwF1jhgjY5Ax44jPqG3PND1edJvTULkzDe9lO9clmc88B39fQXpHbUO/nJI3XgQgF2VV2NwLwjdUckAbaAFt3o6GO6wDpABlSBGtPvf7EACZDzNgXyArwA9zRmL+oR2CSbsUpxyaF6HN0iylDO1C/PXRMxc8OmJzFIvTTEq31HqjZjgFj3xp5jhz557b5p6FfK7w/AN6ayvlkQRrDwAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAAA2ElEQVR42u3SL0tEQRSG8R937wo20aroBxC2aVRUMIhVk8FuMJmMfgSj2SCIzWQSq8EoKmwSQWHX4O7dBTkWL87+Seb7lOHwPnPgHYaKin8x79STQsutfdlwvKMrhPff80qexmu+hXNzqNvzJRz/xTUvwnVy4VBomSzHLSEsJMKEnrAOGVbwoJkIfU0sQo5ZNMRIr6lSyFD4HBGKUvjAje3xz5PhHkuDvQeZ0RGOxoc1dNWt2jDtURu5hgPL7lLtTAih7U1PCCfDuzZdetXX8ezCrlr1f1N+ADMjPUB6Iu2PAAAAAElFTkSuQmCC" },
        ["f"] = { 9.0, 11, 0, "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAnCAQAAABzy3rgAAAAhElEQVR42uWSsQ3CQBAEx5bBMQ04JKUFQkqgBqpwBdRAIUg0QejAOSJALwg+GYKHlywjEYN3oxud7la6K+STSv4U17R0RC4sAZNnnlQN3l2Z8U69uX5VGR/V/RuaZzfAebxyDjy+BsSNQx1EKiJXYEFJIAIhdSf36nacZCq3HKj40Ud+AtHQVxYv1BpNAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAnCAQAAABzy3rgAAAAdElEQVR42uXMrQ0CQRRF4S8bfjQNrMTSApISqIEqqIAaKGQTmkAi1m8QZAJizMOQDDACTfY8cfNOci/jYm7vIhssi5w6CSG5WxW9E27W3xOdcChv88oW51rP8Kh1xUZ83BEmsisWGklGeu/0wvbn9jj0v/IEl5EeK9lYuBgAAAAASUVORK5CYII=" },
        ["g"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAABPklEQVR42u3UPWsUURQG4Hc32xgixEJBMAlECIJopRhDqoCWQorkL9hYCHaBtIKVtVj4A1SwsNJGLBRsEnHBQpDFMoWwyYb4tT4Ws+vuHQRBLHNOcedeHs7wXoZpyN+qmUNySP6FnM+DdPIlO3mSS2lFZDFJouobfoCuz/huDSyKAbkGHjsj4qxneiWZ0MFDDcOZLS9KchV9s79BxNKINJMsJ9nKpyLGdploLsmHWtJvJZlM8rVGGiXZTXKyRo6XpJ3kcqYKcmXsWczr485YnmM+1q/uPrjrhGha0faqTiY9Bz/t2Md7s+DiiETLda/t6nln05RpsDBO6n0BfUeHt/unWk3Szt74x1D2OT3crHbV0T23LTkiYsYtXbwd7Afk6SBP14Gq3jg1nFktp214qePAvo5H1k2MXtv4L7/DX82cQVGKNMJYAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAABKElEQVR42u3Sv0vbQRgH4CcxCA0WdWhB0AgdRCg6Ka2hU6EdBQf/BhcHwdnBRejkLB38A0RwcGoROrW0i0oDDoUiDgUdhMRIrZq8LqnJfWk71c3PdHc89+O9O+5znzvKuHWHLpzY8kxBCM87wbxrIVSdCldms2RaCJtGwVPv1FPS5VDYkLudUvAhJa+FhlJysnKb5PECu44Sstdu5jGMb5n6LlNSxK8MyaWkhoEMeZSSCqb0JORVOuOJhvCmY6Tf9+zVvRXCqsfIe6niY5YUvRdC04lz4UBJCJOdmxXM+aSm7qslPfqEMPKvd58QGh7+ruhPmUHF2d/XGFMXFjqH1qwoewCGLKoK+61+K9uteqp+CiF8Mdj+K/DZsW70avphx7JF1f/7728AObJjO/0D9vAAAAAASUVORK5CYII=" },
        ["h"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAAlElEQVR42u2UsQnCUBRFT5JGsLBxCSdxBDtncACxyiTpBAcIJI0LWAYbF1CwDQrhWASi+QgWlsmt3ruc4vK4vEh+KWZE/kJKJB3qXZbk3Kip2DHpXBFLNXWrPr3aqFoYi/iBnHy4cSrOzVRdhYiuW0tMPKv7dntnqci6ueEALMK4x17wCzALkXsPqYFkwPWOxufxVS/iY1hmNmbLTwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAAiUlEQVR42u3RsQnCYBCG4QfTCBY2LuEkjmDnDA4gVk6STnAAwTQuYBlsXEDBNiiEswvkRxELCzFvdce9Hxx3dHybQli9Gvbe539amdi6qJSW+s/ushDuzmoh7NrxQji4mRtgJBfCNFXCrOkzR2Gd7lLKm7q2wThV9q3tThimyrWlVMj+440dH/AAgt4jdzoB9NkAAAAASUVORK5CYII=" },
        ["i"] = { 7.0, 8, 0, "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAnCAQAAACY/MHjAAAASUlEQVR42tWSoRGAMBAE99MwTVABhkkv9JFCEodYRDDRRISTO2f25kLGJJYGB5XtJWJ4q0VEEiCZxtkLMU3uQvZfDPQNxCJ3eABjPBVnaq+D5gAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAnCAQAAACY/MHjAAAAOElEQVR42mNgGFpgEsNnhnwEl5HhN8N/husQDhMDA8N/hpkMXximU9vaPQz/GVoQtqCA4SQwWAAAvfsKRYoox/MAAAAASUVORK5CYII=" },
        ["j"] = { 7.0, 11, -3, "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAnCAQAAABzy3rgAAAAjklEQVR42t2SMQrCUBAF5wcLtckRrLyFd/AoYim2aWxtxHtY2noDITfQUsRABJGx+MZAtBHEIrvNvuGxxb4N8qkSWouXXJg8Z6sO3tQ8qtotawpWUYQ/nWqLZK2P4Sc4Aa7vOAVOTdxhCOTN5Mfq2V5UOHMgjjyoi8qEG+8Wqu7s13jq0dK9c7uvhV/+yQM+JlXKOaLbRwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAnCAQAAABzy3rgAAAAfklEQVR42u3RMQ5BURRF0UUUaAxBZRbmYCiiFK1GqxHzUGrNQGIGlCJ+QiJyFfI9nk6hYVf37NziJIdfY+qon8uKi7C5h+pDh7nC7LsFl8I4b/LCXz/d53fdwj7XNR3KiRM94aBRxqE2urbCJH0tXBVCWGkmPbBzsjZS/3TtG/4KG+ND4YFIAAAAAElFTkSuQmCC" },
        ["k"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAnCAQAAAB6INqaAAAAxElEQVR42u2TsUrDcBCHvzTQybGj7u7FFzB5hdIXUGjBoYuDa8mWTdxd3KUdHCS7LyAUslQwlBZ0d6h8TqXB/OMDqHfbfdz97ndwkfwUHf5xKy6Q7Pf7PuIVeaYXwj0eOaQk5a2JD3jgmBcS1s3hXe45oeKUqqnd4Y6UDQnL0Go3DHgnpazVRCzUlbq1L/Xcdy/4IGZEFPb9xJBPzrhuO8ucc+CCPKSdiXip6nSn/R1jrupVG468VXUSxhg7U3Us0R994C/CCIInLgv0cwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAnCAQAAAB6INqaAAAAtElEQVR42u3TvUqCYRjG8Z8KTo6OtbdHJ6DvKYQnYFDg0NLQGm5u0d7SHjk0iLsnIAguCYoY6O5g3B7A+zwNbVHX+uf+vm7+9VONhX4KVL+P+2X41FKYaqZw08iJucK2jBvenVlo25ST1726sNKyKteuelH41PaRau3JpZ3CPHWStXBwnhtsZq/mWiWNJzq+dD3m1jJ0hZ5B3g53QnjIu2UghPscrngWwm3OazVvQrj5u893BCTbNVBowuvoAAAAAElFTkSuQmCC" },
        ["l"] = { 7.0, 8, 0, "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAnCAQAAACY/MHjAAAAIElEQVR42mP8z4AKmBgGtcAehv8MLUPCpUNSgHGQJAcAwycEik3oYGkAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAnCAQAAACY/MHjAAAAHElEQVR42mNgGFpgD8N/hhYIkwldblSAYoHBAgB1wgJoyX804gAAAABJRU5ErkJggg==" },
        ["m"] = { 24.0, 25, 0, "iVBORw0KGgoAAAANSUhEUgAAABkAAAAnCAQAAABQkCs1AAAA1klEQVR42u3Vv0qCURyH8cekWWhwEBoaItArCJzqDuwCuoBuQ9qdA4cG8QbcvIDIzeZcRCWlF8E/qASPg/BydAnBweGc7XwPn+X7+8HJyLHngkgiieQ40kaqwDMfzPihyS0ABWr0WDHinZvUiNhWq76pUzeqTryz6ED9daHq2GsRA/Lt0Efx0oqJ2vLLnvdi1ieXav2Q6MMuEl9U/bOUJq9qckg66TNeqdoIkrKqeTForBuUkjAHPoOkD0Buv+TRXpMLYBDc1wBk/5uLcS1PQzLxszhLsgWbLqUlkvdLQAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABkAAAAnCAQAAABQkCs1AAAAwklEQVR42u3RMS4EYRyG8V92o95EoZAoFBsJJ5CouAEHcADXEL1aolCIC+j2AEJHbRtZG8REwgoieXWTmbGNQiIxT/c++T/N99HS0vLrDMQutp15dudEH8zbN/Rm7MjitORAPPkQ8WDJspF4NBFxb6GZXLu1gRmbCnHqytAqura8isNmEuvl3hHxaaU0e6JoJheVPSviuGLWRMxBp5SXlYPCC84r5gb06sm49iATjCr7HXTryXcyXXd+/on/PGn5m3wBF9k/WZIbdz0AAAAASUVORK5CYII=" },
        ["n"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAAlElEQVR42u3UsQnCQBSH8S+Syk5wDQfJBu5g6QA2mUQsUriAkMoBbFJmA22sDIjhswiJ5hDE2nvVHe/34P48uES+1YRIIvmVlEgOZBy40FCxJh2MiKWau1Hvnm1VLex6b+Rk48qpOHenahYSXfZzptbqtru9nltRDOcHe2ARJjqOYtTALCTXEblBn+kvN53Ez+NjPQEn5lgxTgZ1EAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAAhElEQVR42u3QsQnCYBCG4YeQyk5wDQfJBu5g6QA2TiIWFi4gWDmATcpsoI2VAVHOQgwmBqxs5H+773i54z4SiR+wExYobJ3USjN5nzIXro7uQlh/Kge1qQFGVkIoukqYNDlXCctnyJpx+bb6ZoNxV9m3TlcYdpVzS7nw+in73sj/KYl+Hph4IzSr+Ts2AAAAAElFTkSuQmCC" },
        ["o"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAA/klEQVR42u3UMS9DYRSH8eeWCkIspkoIXwGNySISYupklqiP4TP4EnQySUTC1KETNptIauuNCNKIVOsxvLnt1SuRmO8523t+yZv/GU4kf1WBnOTkP2SWQxo80SHmkirF/sTQFV9VfTe2p+qtpTALYNOuemXZSJx23xf12rGEjPqgnjki/V7zU60mZEftupACiMdqXaQArAM3NIeCnAOrSaI54D6T9REYZyaQIvCVIeGlF0gLWMyQeeCNdiANoExpiGwB9WR1k8bqqYVUnmU76vZgdbuqXrhiJE6557NaS28XD+yo2rZlV9UTJ34SXPLIO9t+2LTmxuDTKD8ev9Y3xEjO0DjOChsAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAA50lEQVR42u3SsS6DURQH8F9LBSEWEwnhFdCYLCIhJpNZoh7DM3gJOpkkImEydMJmE0ltbUSQLyL11TF8abRfB5Ot/+2e/O6959xcBhnknzLtUM2zlqZLFaU82PEmhA9NbSHcmekGG1LhSlkBk/a9CjdGOmDYo3BmqGvTqi+h0lluC6n53NXHwjUUsYZb9Rw5x0qHzOKhb8InjJrKSAnffSSrtDPSwEIfmcO7JCM1lHtfAZtk7cK4pnCq2AWWtISt38KuEC4sK2DCnheh2nvsgZYQEg2pEE6M5dtbdORe4lNd1frgX/+VH+PeRSjCJWZ9AAAAAElFTkSuQmCC" },
        ["p"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAA+klEQVR42u3UIUsDUQDA8f/NoDgEYYj4AcSyJAyEVbM2g8UithVhwT6w+A2shn0B21kUNFlsFtNAxRPDmOLp8TcM5nuHMASLsHv19x73v3vvJTLuqTAhE/JbkiIdoEGXHu/0OKE+MiKmasddP9TMvqq5WyIG5MzcI5fExKY36qvLMdH2cJaINe/V45jcORUQPFAfxKAopYhCLoBFamH0U6k1A2A+JOUDVQVgEJLpElkB3shCsloim8AVn0TR60FP00LdjqOf7bvnrDjjji/quZWYHHqq5j6aq3rtwnDF73cp2GCfW+YYcEmLtdFnCH4jP49/tneTP7kOvwApptWcvGRRtAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAA4klEQVR42u3SMSuFURgH8J9rIFLqJvkAspiUUnc1sxksFtksymBXFt/AavAFbNdCMVlsFtMt5JXhdsnL7TFIznm7ZaEM97+e3+npf55DP/38QZrCLuYdaXnVcmi2F1n3JhTaQiitVMmJ0r4pDGi4Ep5N5yRsJ5fqboWDnNwYzIbvCHdQS1g3I2eYVE/JQ6VlAcZTEhUyCjopGaqQGbwoUjJXIcu48J6XXkxAQ1dYzUs/atswgmFrnoTTZIamsOdYKN0rhXBp4vPw23Ut2XJtTMe5TQv5M3xtumdqP/+U/0R+Jx9zeEwA0L4+pAAAAABJRU5ErkJggg==" },
        ["q"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAA70lEQVR42u3UoUtDURTH8e97e2UmhRVBBgaLsP7CLIIg+B+si3+IJv8Bk12wrohFEIwKIhgGrpg0bIiKyJOvYU53rkEQi7B7yuXw4cLvcDmZ/HRypmRKfkOW2afPC/d0WaFApATAUW1ZqTpwqFZ2VC3FD7Kh6qFLIrY89jGSmn31wMzxm4UnkayrlQufALH9RXKgDVxwG2Kcx0RNoJckfY2kHlsAZJEMgfmENCK5BEpmAlmbuItNK3V7Is+cN+no9lTdtSHmrnrlaUrqHqn65p3Pas/FlGDNTc988Mlrd5y1+E7SKuJ0/9Hfzf5kHb4DNyzkkONeP54AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAA20lEQVR42u3RIUtDURQH8J9vr8yksCLIwGAR1hdmEQTBb2AXP4gmv4DJLlhXxCIIRgURDANXTBocoiLy5Njcu1fBomDYP10OvwPnnsMkk/xRluwbenWvb1kphG4dbKmE8GAkVDZysi6EQ4ug49hTShqGwoGpz5bSSUrWhMp8MllvTAr0cOE2IefjZ4E2Btn/3lLSTEtQm0uBEeYy0krJJbqmE7KadrRVwnatMusmX92eEHa1UFhx5TQnTUdCeHfnRRhY+Hqjhk1nHj27tmPmuzPmKdPt/pD/RH4nH8mcSgVHQ8UJAAAAAElFTkSuQmCC" },
        ["r"] = { 10.0, 11, 0, "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAnCAQAAABzy3rgAAAAaUlEQVR42u3SIQqAQBBG4beLwSKeUwwmb6DVm3iDzR7DYDMLIgZ/g2FX2CwKTvyY8BjGiNhYfn6eHaLBUjOy00ISrHRUAOSAEHKSeq0qlAmhgA+VF915VurZlwxsscAp3r2884Lmo498AmqyNnw5wURjAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAnCAQAAABzy3rgAAAAV0lEQVR42mNgGAWDBuxh+M/QwsDEUMpwj+EXQysDAwuSZB9DPgMDAwMDP7LqtQzfGDIZeNEN+ceQjc3slwwcCAEmOOsYww9swo+QtSOEP2MXZhhg4aEKABx5E20dGa+bAAAAAElFTkSuQmCC" },
        ["s"] = { 12.0, 13, 0, "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAnCAQAAAB+1QqnAAAA2ElEQVR42u3TMSvEARjH8d//OJRyNovNCzAo2ZRSDLwEL4LBYLgXYDUxiTJ4CV6C6a4UsijLleIKUXf3MehfdycvgPye4Rm+Pf2+y1PIT6nkH/1GNJ+jXOUlT2lmP2NJEhF7oOtRD0yLRCyhZ9ekGLfoxFSJ6mjI8FSStJPMpvbNQ8x5RdOmkf6rr7WmBR7UzQyiqNl2B9q2BlFEYdUlupaHUcSEGxyXhv15TyNJNUlGk+ykmvPcp5ORbGQ9yUUpfwA6Wj7AqaLsWnDo2rM3t86slL3FH32iT9YjvPeXqfE+AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAnCAQAAAB+1QqnAAAAxUlEQVR42u3SsUpCARiG4ed00qIi3VzavIA2aWsKaqhL8BaCHBwcvIBoa3OK3LoEL6FJoSFoiVoOBCEoFKh/0yHpeAXSu77/x/cNP/+sGYd6nkx8GrlW/hUdIcx9WAihmosjYaFtF1sa7u3nqisMix0bGONAZdWEuqkwciEtylOZEN511f7KiisvQhhrFrOJE4/C3PGq3m3Pwl2+cJkvQ5RgEy0lD17NpM6dYZBf3gphJvMthL4EUmQSe8p2vBm4dLPen/QDG/g3nkIDVmEAAAAASUVORK5CYII=" },
        ["t"] = { 9.0, 10, 0, "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAnCAQAAACcCRHeAAAAeElEQVR42u2SMQqDABAER7FOY+NXBJ+SziYPyJPyjqSxs9NfBASthCBMCqMhphJJEXCv2Zvijj0ukG+F7PBMQTpTx1LNXn7FTDz5qUIiehogBjoGoN286NcwXJoWSJZXKtWbh7Gb4FHVwbvXd6ILORUPImoI/uQVn217UzhhePdlAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAnCAQAAACcCRHeAAAAdUlEQVR42u3SMQrCUBCE4Y+ndRBsbD2GkKN4AA/g4YSANunsvIJdQIiVTXBtYpHH68RCcLbZ/WFmmuWvovZamxyGUL+PVLKlctpOTKZl7uGGJe4G9B8XfRumfOmxyh1n4aSawq0QBp0jsxFeXK0tPDUOv/IZL8RVH/C45EF0AAAAAElFTkSuQmCC" },
        ["u"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAAk0lEQVR42u3UMQ4BURCH8W9RLIlE5wYuwCH0WrXoXEAijqDbI+wxtEqJXq1ULiufgsR7IhG1N91Mfsl/MsVk8q0aJJLIbyRHZBTNS6T487tcAWhH825MbpyBQQCaDN+D9sA0IDP6QSfiXNWNPbHjwsqjWoj4JC23qtaerNSV5Ys8gmrGLDlwIWfHhHW4eZaex8e6A61VQyL16LHYAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAAiElEQVR42u3SMQ4BARCF4S8olkSicwMX4BB6rVp0LiARR9A5gmNolRK9WqlcVkaxhd1VbKOS/avJy595xQwNDT8nEcKklB2EfT626jf8p/IE3VLeLysvd4wKQtu4WnTGvKAsDKt1SyHsDNCzkrp+DpDTcRRC5iYVNt83ykytXTwkTma2zW/X8wZNqR8UnCzXrAAAAABJRU5ErkJggg==" },
        ["v"] = { 13.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAnCAQAAAB6INqaAAAA0ElEQVR42u3TrUpEQRgG4PesQYNZ0MVLECwGi00U0QuweBOCaTHaLBuMYjD7F/Uy3CisYrFpsO0uj+Gc9Rxl8QbW+cJ8fA8M8w5MIX+tVv55uvgi0vs13YoMspjEBliRRl3iSiQKTzhp4LxPbJccHfQbfIBnrTEvG2H9mx/QKftycI9uhW0jQ0tN3sebGRFHuBmfVG5z3rEp4hE7PznOcC5W8VJeq8lr+DDrFMd1ijpOD3v6htqT+BDXuGu+X90uGBhhdzLHLV6reFUVU/qBvwBpL/9IgMB+RQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAnCAQAAAB6INqaAAAAw0lEQVR42u3RvS5EURSG4QcFhVrCxCVINAqNTohwARo3IVFNlDrNFEpRqP2VXIYpJUM0OgrdzMmnMIc9k+MKzFuttd9irW9tJkwouBDdsbct0bcIGyJWRvSluPoupzyJk0LO+xTbddsWvUIfiGfTdbusEus/+kG0y1n3ojOsWyoDS6XeF29mwJG4GQ0y511sgkexM57+TJxjVbz8rlWzJj7MOhXHTdfrij09A60mfSiuxV3z7Rf0VWL3r8+5Fa/DeP+cL7RDOtuuS7S2AAAAAElFTkSuQmCC" },
        ["w"] = { 20.0, 21, 0, "iVBORw0KGgoAAAANSUhEUgAAABUAAAAnCAQAAABKrMu7AAABSElEQVR42u2UvyvEYRzHX99L5CTJQgYTRkVJWfw6VwwmBsvNZgb/AIPNwmA2K6IbLFfqBmdAKW5RittkkBPuZbjv9+tksRjUPc/0/jyv5/P5PJ93PYH8diWoo3X0P6HryMW3WAHZqNHLSA5wRNUuCXe3FfU81phVVwQTltRMfLCklq3YGeomn9V+SVDhEJiOy81RYY+AVKhHSVLkuvqsAyBFAEAr4+Q5qLmcCgkQk76ogyIuqCt2+GHJQMSCOiZS7edQXRVxV+0V8+qA2OGHjzaI4Vyjgg3McEUROALSwCQJsrxHDWC3+mqLE+qaiEPqsbijLlZnEY3oTJ11Ux0WMfDBss3e+m57lYmM3QemmOWe07BYliYy9HDCY8iEWQfVS3UrtmJeLajLUeTLvjtV07Fu803Vvp/otvpkY433OfXmSwf1T/NP0E8xGx28IgHB4wAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABUAAAAnCAQAAABKrMu7AAABK0lEQVR42u3TP0iVYRgF8N+9iJEiEi5FszUGChK0lHEVdHCqwaXVZh3cnHRwkZYaGpycHcRwaMjJ5TqYEJQNQYRu4iAa6T0NfXx+N+eWuGc75zkP7/PvpYMO/lMsiY9tSlMsV/is2IaHIu6UgbtaYq9i3RJzUHckXpSBl+Jcy+2C33Aq7lPXsomx0jqlZV1No+CP9DjwmTo20FADfZ7YsVFJbhQO0ONMDIHnYs6AS0dFclM8vip8U8yDNTGIHfEAAy4d6/rTlOKBMXSZ8MkB3mEcT9VtuVAZUPzUa1QsgmHxHm/FdPsidsWkV2IE1Bw6d9M3F261WxfEiq9+FM2wKmbEh7/XOyT2xetSeSaaYvb6LXwXMV7yfr9E3LtufSNOdFeUbfGl85/+NX4DDRVf63vJ48QAAAAASUVORK5CYII=" },
        ["x"] = { 13.0, 14, 0, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAnCAQAAACV4rGkAAAA20lEQVR42u3Tr0qDARSG8XfCBNFoMjkEg0U0iNFgEcH70CpYhiDDC7BYvAEvQBCLuwKDrCwY5hWIMPHfJj/D97nNgTegnnbe5+XAE05Ffp6J/MPfBRfzGtkfyTYj71lOIup4NCsiqto4EinWFk5LeIBb1S8Yaz70LYk5XT0rRTFl/wSX4hyNMhvAGfdooGVyHMYW6FkdJCOenfSSvOVhRGogcIMmrlXGzx7jypQOdr/DdX0vFsQOuuaHcNod6mX/As3idMQZ2gOBmmfsFXAbbAwFHOJJTSp/5AU/Aa/N6PINd/FnAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAnCAQAAACV4rGkAAAA0UlEQVR42u3SO0pDARCF4U8hgmhpZWUQLGxEC7G0sBHBfWgr2ARBgguwsXEDLkAQG7MCC0mTwiKuQISIr0SORcK9eSwhTjX/HGbODAz/MUWx5kucDFX2xI+NPtTEm6WBVNES5wpsiqsBnYonlXLQtl8961jW0bU56nwp7nAj6uNrLXoRddE0N7n1voiurbI0W2RtXXx7neyreBQN8WBmXLwQ9+a1xdGotKPn0yoORcdKKS14FrUB3YpGOfpatIoDqj7EcR8OROwOmZyJd9Xp+b0/oLg/alVOprAAAAAASUVORK5CYII=" },
        ["y"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAnCAQAAAB6INqaAAABBElEQVR42u3UPyvFURgH8Ofe/FmIIgN5E5KBRQYyyGD0ApRJXd3VbmFViknKZLIp5QWoGwOLSbHIcHWJ+zFc9+f8rpvFyDnDOT2f06nzfOsUxE+jGP/8t3gvxE1LdTjeQ4xHhCkwIZJZxoUQIVxhK8cVrDa5hDvFDMfwrK/Jg14wk/E29hv7RuEIu5/Y4R6TKc/hUZcQFnDZvKmxFN1iMbtpLc9hA4dCv5qagVYe9a6qxwoOvp749dYTLDvHdDtewqm6a4V23OkelNP+pa3cxKuhlNNAeyPiOB5y2WUnR9Qwm4sm4R1UkmAS7raunosl4yVVb6DUiiLMe/bkzPx3FIVffT0flUlazIuGmcEAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAnCAQAAAB6INqaAAAA9klEQVR42u3Sr0uDURjF8Y/DH0VRUAyK/4SIQYsYlAUxGP0DBiZhsmq3aBUETSKYTDZB8A8QhgYtJmEWMWxMcXss7vV9x7tm3En33C/PgXOfS199pXQqPHfdzWgJC7AshMUMrgj3HfMoHGZwVdjpmLLwqpDAeaFhvGOnfAqrCT4SztJhl8LJ73lQTVhK43Xh3TDYEB6yRQpehM0kabe7/b5wgQlNTZPdeE5L3aiScJ73etfCtjthJQ9vCTfangzk4SE1IVR6LedA+DKdrfSnMVx5y5+d1RTWekUfC9VMWqIRe9qZtaQK1X0LoZw3WdTw4Vbx///pD8OTS6fbSLs1AAAAAElFTkSuQmCC" },
        ["z"] = { 13.0, 14, 0, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAnCAQAAACV4rGkAAAAsElEQVR42u2SsQ3CQAxFfyApEBIFlBRkAQomyBAU7EDJCLAFEivAEhE9BQU1NSJIEQhB9ChOEZfcsQDgK+zzs+9sywH6LA394bfBVDjnqkgKJWU6WeGROpJmekhu0gZYG7uOpsCRrg8OuVGQlHcbtdgD87fHhktgS+iDYyAjtr8pjQFnYFItz6gmKbCqt2XUAjjQ9sGEgjsjd4YBPe3U11OXysxzxZJ50pXcZP7G9r0Alf/R7EHeh9cAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAnCAQAAACV4rGkAAAAnElEQVR42u3SMWoCARCF4S+4W4SARVKmMBewyAn2EBbeIaVHiLcI5ArmEou9hYW1tbjCoogukyJNxLmBvunmH94bhuGum1ItrmqvpEBj82+01MfEKfP5EWZ5xIew9pyhoYNOlaFHS+Ezt/wS5ooMjYTGW4YGtsI4Qz218J2nTYWVpwxVOkfv1+DBi4VXZ7uLfvu32jQ5e2hv6fN+AevINVeBCmeKAAAAAElFTkSuQmCC" },
        ["{"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAnCAQAAAB3PqrdAAAAxklEQVR42t2SPUoDARBG3y5RBFMEYYuFgGAnCBYBey9gF9LkGl7AM4ikzzXSWOwBPICCSdw24BYSTXwW+5/OYOVMM3zwfbwZJpDdCvkfUsSEOffQKYQjHjnngxQw77Ga2hcr4wCYsmxmdYG3dnwAfO/DdQys29Il8FrMYs879dmDnBFxpiaeFdCEQELGFTdVvogXfrkxro2leVgbARZA1IbY1vPvFpLqwqX0DsRNLhypL540uQ59Ulfe1lyfXPNAxikEf/iYP1cmZhIuAjMXAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAnCAQAAAB3PqrdAAAAu0lEQVR42t3SQUqCQRgG4MesCGoRggshSGolCEGewENIG6/RBTqDiPuu4aZF0LYDKPhXbgVbRFlOC/2bf1oEQiu/1TcP3/DODMPWVtVApsfuGg7caXgzjTNdwdQJ7KyphVvPRTrCy6rNqYRlSoX6gw7xntIFJnHy2I1gZC/SUHDvLF+Wce5SXeahGNK08KmWJg8FnTTxCdWUvmK/2YWCnxfOac7vQ1wJxipF2vcomLmOGz+09b06/d+f8A1xMCUZ5Bn4jQAAAABJRU5ErkJggg==" },
        ["|"] = { 7.0, 8, 0, "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAnCAQAAACY/MHjAAAAIUlEQVR42mP8z4AKmBgGtcAShv8MCUPCpaMCOAUYCSY6AOxQBE4ndL6JAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAnCAQAAACY/MHjAAAAHElEQVR42mNgGFpgCcN/hgQIkwldblRgiAgQBgAIkAI4I4I55wAAAABJRU5ErkJggg==" },
        ["}"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAnCAQAAAB3PqrdAAAAwElEQVR42tWSvUoDURBGz10s1oCFIm7vEwgpzEukSJHK0srSN8hD5Al8FS2t8oNgkSLYWiWghGyOxSW791ouNs4UA4dh5vuGCfI7Cv43qtjwwihhXrhS9U5ixjJR33JUWqu9iOL4bz6Bs3zjAQhdpO6AXo7WwM1Rasx79d2+wQbho3t10KIrl+qr1y2aqk+pIZypt6khuAQ+chEFUHcxdAKYqi89qKfpxgcCc76OXecuVB23t6/c+uyw8Ur4w8f8AZWpjF2mI7SLAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAnCAQAAAB3PqrdAAAAqElEQVR42t3SrWqCARTG8Z+yMAXDxtC+KxAW3E0YDCajV7A78CK8Am9F45I4BINBVk0aRKbHION9T1kYWHza8+dwvrk7tezM9Mro2VoIgxw5EpYZPToJ9aupgoMtGmXEGZWMSvoDHcnp2aCdo4fCyttvias+/AjvBWj6Ej69FmgsTHKuudDJFV/wnVEVp/8M9IDIKzwLtdx5mBf2yUII/fLR9qa6t/mIC+VxJ7AOmmvuAAAAAElFTkSuQmCC" },
        ["~"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAAfklEQVR42u3UIQ6DYBCE0aGCkCY9SyVBEVwPUQG2PVNTUYkhPUcd1aWCI0ACgnwIfsAS9M6azezT66FtOcigQYP7YKavOv301HnpHkKR25nmCgxUdAC8ifFJaGk4TmKGf3pCRMCNmjV3d3fwRMlrrghIKfiQc1k6efYADO6GI3pTWjWX3gVxAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAAa0lEQVR42u3RIQoCURCA4S/JIngWo5gWm4cwaNUziWGjRTyHTbMaPILCGmRsD17XNt+kGf42pJT+bOWid7UzLretMK2zhfBx0wvhqDUw8/I0rMO7twkaaw9RZlNnI2dd2RpLByd78/xI+oUvoaEcLSyqWeAAAAAASUVORK5CYII=" },
        ["ç"] = { 13.0, 14, 0, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAnCAQAAACV4rGkAAAA8klEQVR42u3UvUoDURCG4XeXJcSIYCXYaRPsQkCIdyBWegeC2FnoNdinNZWQC7C00spCsLAQifjT2G5EQUECroHXYoX1yG6ZRpyvGh4GZk5xIqmumH/8m1hnh1NSPkg5YwsA87R9VDVzaKbeid/Y9FW9d92aWHPNfoHn6rWzEgZxRdXl3yQxsAoMuCzfdhG4qTqlAWRV+AwsVOEF0GG+RMUZX9Qj47JTcFPVEztG4pQbHhaIu45VHZn6qV79RFyy54Mj3xx4YCtExD21Hr5QWE8cM1dsWyRx2m21m/dJMNUmogUMyybHvnvrvkneR5P5E74A+/DVlwdrVOgAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAnCAQAAACV4rGkAAAA2klEQVR42u3Rr0qDURgH4GcfMqYimASbFrENQdA7EJNegYLYDPMa7FZNghdgNGky2AwiE/8U6zdRUJDBPgevSbbPnTWb/trh4fee83L4zx9MzY5zuY7cha1+WvAkhEJLIdz3aM6b8GBNFVWrjnt4KdyYTN22LITFQciwgqarNM7iNjUywxiKYfiCmWHrbwgd02mc8CqcyNK8KYQzSyoYte6onxu6QmjLfQrX5fa8Q4/a3jUdqA+O3xVq5VXKeXZqKvWwEeO2hf3vY/lXK+popZpdH+7s/aj8dr4ACYM7YEA8w/EAAAAASUVORK5CYII=" },
        ["ğ"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAABXElEQVR42u3Tz4vNYRTH8c/3zt2YRrGgFKMolFiRMbGgWCoL/gApGwtlpywpK2tZ+ANQFiI/kwVlg9yyULosJ9GdudMwXC8Ld2a+zzdlo1k5Z/Wc3pv3eT6nkr9VK/+R5UAu5EPaSZIqj3K3xljorWY8dtIJ98w7sDivIbHLHZ988dD+2jTV8v/0zlxLN18zlVvZk3ZEJupGp/0APZ/x3TEwsWR0BNy0TcR29/VLZEQX11WLom1PSuQwBsbruzC5hLSS7EvyMh8LjVel0cYk7xqm8yUymuRbA6lKZDrJugaypkQ6SfZmrEAOlWHYZIBLNZ/V3jdXdxVctla0HNTxrImMegB+mjKLt8bB7nqk2k55blrfG+eNWQW2NFNXJpCBlQvb/VMdTdLJTBnveu/Qx5l6vK+4aNIKERuc1cPr4XuI3B769Mz5XS+sL49ks3Oe6pozq+uG40b+9ZH8Ago/b1ivpCaWAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAABTElEQVR42u3Sv0vVYRTH8de9XQJFyYaCoAwcSpCaDH9gQ0GNgoP/gAQuDYFzg4NCk3M0+AdI0CCGmtJU1FLRhQZBzCFIJLl6o1Kvp+Xmvc+Xm1Ngg5/pPIf3Oc/zOc/hRP+JJnxWADlLnjdCrtqx7J4R83bdatyn25xNW164ecyOrpu25qcNz/QoCKG3HrhvXwgl34Q9w1lkUAhPdYIuC8opcsqaMCN3WFLwMkXuChXtycv6a0geA3hnPUHe18I8LmMl4283RZrxK4PkUmQbFzLIuRQpok9LgtxJKzpUhEd1mbNWs6N7IoQp55F3W9GrLNJsUQgHNnwXPmkXwo36ywpGvbat7KOHWrQJ4cpR/94tVLT+cdRIQyja+XuPa8rCg/rUY5P6NYFLxpSED9VzVbNVPyU/hBDeuljbFXjjq9M448AXS8aNKf3bvf8NpkJuak3vdFAAAAAASUVORK5CYII=" },
        ["ı"] = { 7.0, 8, 0, "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAnCAQAAACY/MHjAAAAH0lEQVR42mP8z4AKmBhGBTAF9jD8Z2gZAb5lHCTJAQC3zwSKivMObAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAnCAQAAACY/MHjAAAAHElEQVR42mNgGAVEgD0M/xlaIEwmdLnhJDBYAABTLAJannPBgAAAAABJRU5ErkJggg==" },
        ["ö"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAABJklEQVR42u2UMS+DYRRGz9eqIMRiqoQQEyMak0UkxGQyGYj6B0biJ/gTdDJJRMKigwmbTSQVJG1EtGlEqnUMzaf1VWLr5L7b+5zkzbn35g3kr4rxj7QDWafENgATPHFC/DsxPOfqg4hbqo6FSQNZteiuiOM+emo8TIL2T3qAHS54pkKBU9IkokbLFlV9s2BN1WuTzUbzVtUzUwZinxu+qpd2hkiHd+pRQ1Oc8UNNh8iSWnW4CUDcV7MiMWAWuCIXETkGpkOjQeC2xfUe6KK/jiSAzxakflOrI3lgpAUZAkqU68gFkCIZQRaAbNi6HgvqobEmn0kr6mKjdSuqnjhlIPa65oua+bkvm1ZULZu3quqB3dGVGnXPG8u+mzPjXOPR4P/z+LW+ALO6/hv24KMmAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAABB0lEQVR42u3TPyvFYRQH8I+/IbKYKCIToz+ZLFJkMpkM5HoHRvISvAlMJiXFwmDCZpMilJuEbtJ1r2P4dePen7LJ4Ls9p0/nOeeph//8kcx7tgz63dpVkyYHwjVYEkJvmsx6sgr63Nj7rsuvpc2KI/fysvZk1FWCaU9CeJFVFMKp9q9gXEHYN6wKLRY8CsfqS6DWhbBdtuaINyFTOk4JBV0VV68Lh1CNUZy4rCA7GCqRDpynNrxCg9aE1OE9RZJKMSF36E6RTjzLJeQIw+WvgAmScaFJVthS/QUMyAuTn4UZIewaVIVmcx6EzfK2i/JCyLlTEMKGxsrxeqw5k/Pq0qax/5/6Uz4AA1tRm0INrwYAAAAASUVORK5CYII=" },
        ["ş"] = { 12.0, 13, 0, "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAnCAQAAAB+1QqnAAABBklEQVR42u2TPUoDYRBA3+bHDQjGzsbOxk4hIloJghALPUIOoYWFRQ5ga6UgiIKFR9AbBIsEBBUbxWZB0ICRFZI8i7C62WBnIzhTfDCP4XszMIH8FDn+0V9EcxxyzRsvtNhjDAARd1Xt+Wxf1UkRxCW1747jYuiiJ04kqK42JZs5oA1MUx7xEGfsqC03zae7Bk/VSNUn604NIyy75b2qbWvDCDFwzYbacyWLEEveqseJYTpimkARoABsU+ScB7rk2WAduEjk91XtGvmh6qlB8lfFA2989d07z1zNyuO8Wh0dOUGxDZdHUc6SFTteJZXCl/YsIQuEROn1DvLS2EePvncY/PYtfwIfTPv8654SsgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAnCAQAAAB+1QqnAAAA7ElEQVR42u3RrUqDARTG8d/cJyrOZrFZbA4U0WQSZtBL8BYEDQbDLkBsNkEQbV7CvINh2MAgWPwoA0EGDiZsO6ZXZe+iSXzi+Z+H8/Ac/vXHtOTMnXdvWo4VvsGREAZeDYUwm4A1YejQFIpWXZpJUE1opm9MoIN55XERFnSFlh3ZNKxqC+FFzdwoLNv3IISO3bQ3Y1NDGNgYd7fkXrhIEv5UTxN5yOFA3rVHfVnbtlBPNk+F0Nf2IYQrGciiLWNawaRndXtORgNUhOr4t1SEnob1cW2WLOu6TQa5L7SoaEVRO+260fPkPN3hr+kTbCpC4fh9eYIAAAAASUVORK5CYII=" },
        ["ü"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAAx0lEQVR42u2UMUoDYRBG3yYWGyGQVLmBFzCdF7C3TR20CvYB8QgBi5RCQBa8hI1FysD2qSMEUas1G57FEvffINhtk8x0M49vBuZjIvkvGhyROpBn3rgA4IZPbgPGIruqPoj4qqbuOr8q7zyxJgFgxhePpUhU56VjRPqVeoJMD/zSGwBalXq7imz5AM4CoMn5/qAFMAiQIb19v1yrOrEjnjoyc6lOC78UyIkvquauzNQ7kxIpBuVcMiblm5g5V9yHm0fH5/Fn/ADGd2NEVqKe4QAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAnCAQAAABDR2vBAAAAsUlEQVR42u3TMUoDARCF4Y9osRGEWHkDLxA7PYB92tRhU4lgKQSPIFh4gYDgJWwsLAPbW0ds3G6TlbHYIrsbIaUh5FXD8PMew2PYa0v04tMFGMvdrAMnQngEb0L2l8vUl0uQyt3+0y2JEM4bu2fhqRo7mx12E1mCbmN/3ER+fOOsBhzot4NmGNaQkdN2XCqEBz0cuVb4WBVQ6dCrEEpzhTBZ76h05U5mIfFu4H7/p5v1C3B7K4byat7VAAAAAElFTkSuQmCC" },
        ["Ç"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAnCAQAAACocNDCAAABOUlEQVR42u3UvyvEcRzH8eedG/wqvzoKubIZLKLEJLIbTSSDwWpUlME/wWAWxSJGuzDIoEgppPMjIXfnaTjHnfv63sbi8x4+9e3Ru0+v77t3REqfKP/oL1EZIyxxRJIUSc7YZhYAv2rYI7+fG5HYZ5cZFolyzzJbnPJEE80M0p/faUrVVRukuLJXp6/qipEgkkNr6omVwSSLmn1TJ38iWTSmZqz9GUWBLuCYu/AwG4HLUolXAS+l0B1QXwpdAB2UhaNdoIa+kFZipUl1IzwnnFN1IhxVeKCmnQ7+e5GPXdDODu3AHkvsck05cVoYopee/KGLu67BQxcp2Co9jDJAK3VkuOWcQ7ZYLRzfXD26EPTw7yjtiePhqNyE+6atzn2JFaXbRj0J4jzwnJ94Yc2b8spNu4tz+qVd8A6tZVTwgLgVEAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAnCAQAAACocNDCAAABKklEQVR42u3TPUsbUBTG8Z9JwEQFJZIKFhRcxMFFFIpdhBZ3P0E7ODi4OnYQHBz9AnboJohCCxLsmF3tEjsILUihLRKihFRM6nXxJRhzM+rgudvhz3Ofc+9zeK4nX0lz1hWV1JT8tOvDfWRWUbh3TiB1iyxZlXDqo7wfqgYMeuN1o8qCINjU39rLuAvBJx0xw1uCI10xZNClYD4++DvBf32tgQQm8F05Dr3A79hVCXTjvB1URrYd9AtjknGogF7T8SfoUhJ8joWDmowZo47tx7QyvgnqFh/+vZvmiK9GsGddwV9pOS+99cpUI56z3RS569DdDV61YUdFRkqnuhOH8tYUH3ZYsdJ+HSrqjryPQ2nDDtT13DRSTciQrGE5Z/611llW88cXk4+2/VdhQVhBSgmrAwAAAABJRU5ErkJggg==" },
        ["Ğ"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAABY0lEQVR42u2UvUubURSHnwQn7RA/og2CFCoWuog4WXQLOEj3CpVSxEkQxP4XpaOD4ODHolQQN8cSdFACJTQ4WnAQpUFSEL+IeRzeFPO+wZjBSXrOcC/n93DP4Zx7b0waszjPGNxjubJro8jcvdAUAedZ4oodWpnmL6tVilEfN+u5x67YUx2PPXnDozWO8p4RUrRyyTG/2Gad82iNQ+5ba9lAvccmvVGLfjNtr932+9lNb82HwQ+qbtkR6cEbF6rBPi/UNePykAfLmnpoy8NYAL60rE7VwwLwk1oyUR+MA4PAAcXHJ9MJnDYywmagFIp+DGUd/geeAW2NnHgEvA1N/TtJkiR5HQZ/AC+CBBW7pkCBAmdhcJcT4Mvjqa/5CowxWZcUscmMWnLGWKjNCVWHq29Plz9VzTnjgCl7fOesuVoQW1y0VHNty27aVfu4+pggzSvaueEPeTJs8DuQYv+/vScB7wABmUgaQF0UTQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAABOklEQVR42u3UzSvlYRTA8Y9LKTberte6KRNlI1kRpUnNyp4i6WY3KfwB/gJ/gLIZKzIlZWFtR0qiWVKzIE1Nd+Glbvfex4a4v9/wsxg759k85zzfc87znM5z+BQO/HjcNchZej6ojIB5y9rVG7Wq6Lvb12NOOnLj0rrMx16+IqJ/M25Em3r3Lp3as+km6jToUIitoyiWlRfkrBjzRYc+s7YVnZVjE4JgR1PEvcfqS7XbnWBDKulJG4JztUlYq5JgLrlEM4KCurehFAbwSy4ZbMZ1UtoUalAos06VlXz4CfyLhvdE/I1eVS+sW9LS0rrK4a+CYPQfYeqeU0O1K8FuMsiiIMgmg1X2BQXzkf6MgbQ4FgQn5vVrkzFkwUkcpNaaQqxtS7a1xL9Ct2ljOjXK++PMvp8uPofd/5QHWN9taCp4taAAAAAASUVORK5CYII=" },
        ["İ"] = { 7.0, 8, 0, "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAnCAQAAACY/MHjAAAARUlEQVR42uXOsQnAIBQA0ftCxgpZKOvYC1nMAf4Ol8bGLo0Q8MpXXchcYRlcJM8QEauqhzjgNG0iEh/HbqQvX98Fwn98vGxWG68zZxXbAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAnCAQAAACY/MHjAAAANElEQVR42mNgoB+wZ3jDsBhZYCrDf4b/DKwIAVuGNwwLSDM0h+E/wwMIkwldblSAVIHBAgBRfQihJPEq/gAAAABJRU5ErkJggg==" },
        ["Ö"] = { 21.0, 22, 0, "iVBORw0KGgoAAAANSUhEUgAAABYAAAAnCAQAAAChm3C4AAABhklEQVR42u3Uv0vUcRzH8ef3QM8cND1MEH9EoAgJeiHhICoN4iQ0OAhJ4d4sROCaa4ODf0AEhy4t0aCJuggiIiqJIOJymJhbnmHPFr/cfe/uK04u+f6OnwcfeL/fr883kNtXgv8KN3HABjUALJClt0hb+E2oOiLWqfohclqEG91zyxoR5z3xeRQHd7SUJ7xnmWMu+MUucwzHNVjlRy8triUflzZY55qqW761xyY7feknr9Ss3cX4i6rvTET67/NEPfRhIX6t6lR0UCKmzamzeRy4o64ZlME4o/72UYjTqo6Wpdim6huRBDAI5PgWM9wjDoCBcM6dwA4XsbvYBlpCnAJOb1jcOVAf4iRwU0SugFyIz65vj6v6a0MCOAKeUhGLu4C9EK8ADxiKoS10AKthkJJm1a8xc55RT63Or3tK1cky9Jk5dbowG5Wuq39KeL8/1U2T0dS1+kPV776ywwbbHTPjX3U/n+j8LSkzllbGVNyD7WWcFzRTyznHLPKZjcLj4P6Xeyf4H7+mlv1wa+zXAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABYAAAAnCAQAAAChm3C4AAABYElEQVR42u3UPWhTURgG4KcBTXEQ26JCoSqCUlDwrxQHRxUnxcFNUdwFt4IIrhZxcXBwcHQJurh0U4cuQilFavEHRFxCWtTNpFJfl1zSNrlZu/S70/fy3MP5zj1ctqusRn01Zzd4pW6iH74h4hKGRDzsh/dbstBe+aWGya0Z8LD73vmh6ZePnrlYBgc9sSqbnjcOddMhsyIW3HHSqHFXvbAm6k5sxq9F3FPZkJ7VEN/sWR/eFDHVY3OntMTTTjBgUcwa6DnLtPhjX+ftiMslgx8Ucato74qmwdID/SKeQwXjWNQsxR8wVuARrPT5VL8xXOAq0gevoVXgn+3Vy2q4bVTwHcfsKMXHsVQ050VcKKFjIq4UbVVdzJTgabFiVyeYEnG7Bz2tJR6sj3Z6L/528XOWxbzqxviATyLeuu6ovY64puaf+NzrRo+odV39qJUf6oTH5i1b1TDnkTPbv9KtqP+mGXqs5fhGXQAAAABJRU5ErkJggg==" },
        ["Ş"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAABOklEQVR42u2UPSjFYRSHn78wuEXX4GNUQt0YlbJTLKJYTMJuEuMtssjKQpkMRqXIYLkGm9LNYDAR8pGEXI/hut0/Xixsfmc75+n0/s45vZF8rxL+gd8GGkizxxU5nrjkgKm3vPmY9NH32sxXSgGYYBbYYZEDbqmlnm4qix0S3qjLRvI5EDtVbQmVpQRI/OTiEIDRLwgR11VdsCL8BkyaUfXEcctDAJY555Oqxw7F/cTpRtd8UXXHuhCA2OaGqqemwgDioHdqNv+a4HAcULWvMKjPWucaaP3uHiLgvgD0MkL0rtxPFZApTHJIPXLaDuutsd0ZH9StoouuN/dxbVsdt5ky7a7nPntn1lV7wpPEFbOhe4irmQuWKP+47uLKks6rw8VcaYxN0EyCJuAs3KHNnNfuOxbvGv39H/UKgutbS6jjXXgAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAnCAQAAACshQD/AAABKElEQVR42u3TMUjbURAG8F8k6WBA0EGbsVBUEB2FonsL7SIUdOkk6u4kOgYUl+JaFwudOnQsFFoydGkHN0GCg0Onii3aEkSD6TnEkFj+L2Mmv5vu3ffu7rt7j3v0HI+UfXemoe63A+t3w2uuxB371AzkwaotVLxx4K8RJc8MtG8X/RH25FLVZ4Uwnh3sQ7Fb7304BEvdaB+EsKM/RRj0TQg/rHiQTSnYVhfCsYWUnsfe+yeEioepYlM+CuGniXTL82pCNdUNvBTCXGsOWbLPMZkmkMNFy3lh8T9hzRIzLXdBOLLhiZJh0zZdCp/b/Ke36jvti6HOlBPKvjp1rabqnecpeW9Vs9bdiTG/7KZHVDDotfCqfZTX+TbHFI3iJLWohnP7lnv8I28A9S9bhKebvE0AAAAASUVORK5CYII=" },
        ["Ü"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAA2klEQVR42uXTsUrCURhA8aOJOAkhJoRJTxAI1t7WAyRB1CY+Qq+gj9EDZM8RgoM2BOLWIhaIIJUEnUbvxf/gooN+d/x+0733pGS9SbOj8JgRPfIAPDOmFkmX517VK/FQ1Xawi2DJN/vmRew48SKEqQ1d+BPymLBtIOMdf8I9gIZwAeQSUBaYh3AGHCXAAjAN4RCoklmBVWAQpnCu6nX4o8WCX+pdnMKr+m4lYAd21A9zMbz0T5344JlFT637ourNaly3fhvPj83kCsu27Tn110+7tjzZRoX7Bv8BaOnH+YK16RoAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAnCAQAAAClbqCFAAAAzklEQVR42u3QQUqCURQG0ENFNAoiLIiKVhAI6rxZCygCqVm4hLaQy2gB6ToicGANhGjWRDSQIKwIug5q8Oz/hQYRgX5v8vg4XO57THs23GtZBk1dpUnwRAj7WBFCfRJc19H+mtjQU/mLZ1wKFzn9qdD9vM79dNYM/jsYKXzDUg5axHMKn7CWA1cxSOEdihYysIibtCgL4SAzbygcj5e3woPtpJnXEPrfd9/zIfSc2VWw49CVEI6yi1e9iLHzqpb/Y5vqWgbePbp2bsssv54RCFQ5Z7ezwlcAAAAASUVORK5CYII=" },
        ["•"] = { 11.0, 12, 0, "iVBORw0KGgoAAAANSUhEUgAAAAwAAAAnCAQAAACRF2GZAAAAa0lEQVR42u2SOw5AQAAF3zqBygEUolS4l0IiDuI+EheRiEojQkE1Cp/dQqcT007ypnkGPePpF98QiWqt6pTfBiFCJi4yhDhFhWXEIM6pyBn3FdhG64hZg23ELPdU4TZESsNGT3kUkPmf+F7sa0NNLhXcEd4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAwAAAAnCAQAAACRF2GZAAAAXUlEQVR42mNgGAXDHBgw7Gf4wfCIoRhVWInhI8N/KMxHlpgCF/7P8J6BkYGBgYGJgYGBgUENSZEAgxhC4j6SxGeGVwiOBsMXuFFlqNabMBxi+MnwhKECYsMooAoAAAzPGyBnwEHYAAAAAElFTkSuQmCC" },
        ["…"] = { 21.0, 22, 0, "iVBORw0KGgoAAAANSUhEUgAAABYAAAAnCAQAAAChm3C4AAAAdElEQVR42u3UoQ2DYBCG4Q8EQRNGISEsUVOGqGQWHIotMBgmQNQwAamDBAZ4Ef8NUEVCcueeu1dfhP6fWB577LHHD447HfrYJtGoTS9TplmrChMiBWBBCFECMJhqANqgsOo5aeycMrHzNuV8+VEFRf5yb4kvPpFCwjy/ONIAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABYAAAAnCAQAAAChm3C4AAAAYklEQVR42mNgGAWjYBSMgpECZjJ8YsiAstkYdjO8Y/CD8oQYzjE8ZTBBKOVg+M/wn+E6lGfO8J/hP8M2KC+E4T/Df4ZJyCbPZ/jMUADXeoDhPUMwlCfCcInhOYPlaODTEwAAkZwUqFmDfoUAAAAASUVORK5CYII=" },
    } },
    ["Poppins"] = { h = 40, asc = 30, top = 10, bot = 37, sp = 7.0, g = {
        ["!"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAoCAQAAACGaBgIAAAASElEQVR42tWSsQkAMQzE5J/s20D2n8CZQ18kRUj3kMYuhQ4O2yHnPBRDIvIWbX8HxY87dpKkLSbiUDXnJvegu9Udpm1aUfpzPlkEIfPvKq6oAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAoCAQAAACGaBgIAAAAOElEQVR42mNgGPrgP8N/hv8MDhAOE6b8SBAiBfgwPGF4wuCJLPSU4T/Df4YnmMb/R9X4FF3jUAUA3/oM21RMXoMAAAAASUVORK5CYII=" },
        ["\""] = { 9.0, 10, 0, "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAoCAQAAABtX6MLAAAAI0lEQVR42mP8z4AJmBgGWvA/w3+GG0g0/WxnHJwBMio4uAUBH48H+al39bsAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAoCAQAAABtX6MLAAAAH0lEQVR42mNgGJTgP8N/hhtINAMTNlW0EBwFo4AMAAA/RQW3bDZPWwAAAABJRU5ErkJggg==" },
        ["#"] = { 25.0, 26, 0, "iVBORw0KGgoAAAANSUhEUgAAABoAAAAoCAQAAABK8SLjAAABG0lEQVR42u2VsUrDUBSGvxRL3QQVrOAk1cUtRZ1dxTfxSXwTcfUptGB0cJGKgyAVCnU1Cp+DScytTWp1EnoyXP5Dvtxz/nPDjWT2aDCH/id0hMhpoRdJkRFRHbQHwGWhY5pAD6dDF5V6IrQLvHNV6P2xnQEMny1Vk1LmXtW18luROfuziH5t+UK23mZrhxZwx1um26wAT4yqe4p8UVNbReZM1cOw8xDqqHpdyvRVbYdQ2FMXgKTQS2wCAwZ1xygGKM0oJgp0DZRU6tx3Z5zRn+aUz2iZdWDIc6abbAOv9L9RJStPVD0u9IGq546fz6C8z5+gV6knuNegC6TcTIe+Nt1RtVcq41HV1bryxr/bZgN4YDjB+/mtMYeC+AAPzcvOey8qBAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABoAAAAoCAQAAABK8SLjAAABDklEQVR42u3UsUoDQRDG8V+CIVoJKhjBSqKNXQR7S0WfxCfxSRTByqfQgLGxkYiFIBEiEbskxdhczotJLhFL8zXLf5hvd2dm75jrH+lYCBcpL+oJHYXvlOKIaR/cplxTQl1MN91M5LF6F/qWUj4XwkmeZVsIjUzkSQjr2aRBeTFjmwrja5pBC8n6kKxVZTzqJ1yxiledvMM/hJ5yGrkUwlHeuVUh3GciTSFUhtOGa9qDTO+WbaGllWeqgbsMF4Y4x9SYyJm+/2pGf5rTYEYrNtD2lnDJDrqaeRucCeE05QMhXI8mFkc+ivpENs7+KXQzr+FKCId5pl0hhvZ9EcJa3vV+XqZiE8/a89/mXNP0BSYNS/L6p0hzAAAAAElFTkSuQmCC" },
        ["$"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABSUlEQVR42u2UPSxDURiG39tKc2MRJhqTkYSFhE2MFjuJlUGsYiDpIiymkpgbRt2riyAiaSUGye1ATTaDJjoIfQw91XNub5umK98Z7s95cs73PefHQ91ETH8XQ0HPo/VZ70Na0oykpA6VU041Zw6EiLHDB3YUGaPRazCPU1rjhUEXWzEdR4wDz6TM956LXQGQQQgIEOcAlBpYvYQpSVLWSvlYNUnf8kSzUk+SlLCwvPKt3sqSpE35nVchI0ma071W23AI4XNhiaiwy2TTWbNSkWCLV8faLdOtmBBx5jmwwCqzUZiMtzIpvgC464QFiA0z4kj9b7uNdGaeo7aQaxVU0LojoB5VW8gjAA/EfyddBuAd385t22SSZQIoscgbAGm3BJ+biP32xEC40n7SfDrQJcPRepOscQJU2GcherHC3kKtywPo/d9vPWE/NJGlwpCy/okAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABL0lEQVR42u2TsS9DURTGf0+baiyiiQSjkYRFEzYx+guExIihsYqBpIuwl8QsVv0DdBFEJCUxSHTQmroZNNFB8BnuJfe+vr6KxNbvLPe997vnnfPdc6GrDhIPrS97frc34awzLLBCll4GCaiiqKxbvCInbhgNQwHHHmLiiQEfW7If9hlDVMnb5x0fO0eII6fTE4SofANJACYBKDobD/gEPghMI0lbG0DKwUqUWn2rAbBOup1vBjNVzXDLcpzJaU4dIxpsMxENptig7rl2xVS7g5tlzwGbTMdNSI087whx3WmQcjbjcDyWsVjWNeSCMmXWPNio6Wa4R4g7Ej/ZFhHixTd80/6iyDiiwjzPCFEI23sZMW+P9IcL76PAmwedMRTd4wirHCIa7DL3nxewq7/pC84di1l2TOtiAAAAAElFTkSuQmCC" },
        ["%"] = { 22.0, 23, 0, "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABX0lEQVR42u3Uu2tUQRQH4N/NEhEMiYWghYFoQAQbwcIUUaysJFaxU8G/wFIQH62lWIilVlqJnbHQYBPBShBsxEJwMfhA3ehigvks9uG96xXWUslMNed8czgHhinkb9ZINvg/w2eykFbaWcpcJXsg65EbpYiYtQrWwSnp74dYseNXJGIRzBt1Hk1FN3kMXC5dT8RXNEWMg0kRDc/x1liZV0ctuv0lyZnsS3IpKxUhHvWbuYA3CrFFEy80yrXVjHpSxEVwvIo7PGYsaGlbMidiuxYeD+IeH9zXwcHh+F5ruFNXqI7fw6rp4fghcLU7030fLbtt95/4E3yyTRz2XW+9M1XHT4BzIp7imglnwc3f+SYv8dpmsRXsFA1fes+kyjt1TouYBqMiXmFtkE94j2dGZJjqV8DR/rnT+3h975PaeFC6fqT7luCDXVV+Cz/sr8wya9E3n921pxMpNn7g/5D/BKnJKXmXzfsjAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABSklEQVR42u3UsUvVURjG8Y9eDCHRhqCGhEoQoSVoqKGiqUl0qq0C/4LGILTWxmiIxppqirZ0KGkpcBICl2gQvCSpaFqiok/D/XG5v6vRbxbfM533fM/D877n5XAUhzWumLRu02cjpfwle+JFGb5qW8SeiLstJx/EhtNlfFrELV0eirqOIj8s4nG7ld+iDnpF9IOar+KHnla0s3SxoRsw5gIe2WhX/9g0My4WdOC4uphT29+Xcql3wISI0WqNPGVdfKr6Ds9FXK4GD9kRb6pqvxPbBqrB10Q8LWp6b8Wi187/C/8iVp3EdVtSrJ/OHgTfFvEAzIhn+twX8XI/fMw3Ma8bJ0ScQc2v5piUoqFzDwyI6ALfxU473GdJzBZz9F/1JyJuNvcN770He++3KaZaMjeKWYpYdq6MvxK7LrYN37Q/1rw1ePRDHd74C6qJitOrm41vAAAAAElFTkSuQmCC" },
        ["&"] = { 22.0, 23, 0, "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABaElEQVR42u3Uv0uVURgA4Pe7mEggUdYQKAohgtQitEqt/ZoipMGxIcSpf0ACR7egoUECG4IIcgmHpKWIRq1F00CuSKRI1lUhfVpO955rXqux8JzlnPM9nPOe97x8hfibVopD/s/xK/E0yrEd5XgS/ft6P3thXN523RF7e204nNimBd/Bjr7G/B2YdlzosQrGGvMtcC3N7oHHjfkKGE6zJi1aHGnMH4Kyk79ecD/e7Rt45eif8FOmUm5eav0dv20jy/lbbQfx0cSWPLALZp1OjzcNntX4xYTvaxYGbIN5XcIQ+KK9xifBVPXIC9bTWZd8BUN5MGvgZhbjWUvZTV4r5bwCrtZdqt1Mwlt6a+uliFiMiIjBukJdjhdpVERHfQGPpH0e6RRCs8veZMFU9OfBnDBX/fTJB5vV2V3PU2bO53nvqttNqp4bwjHvwapz+asWrpswb0PFR5NuVSvnjM9gRbcoDv/A/yH/ASaTRVPW+kFVAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABXUlEQVR42u3UvWtVQRDG4cegIQgiRi2EiAEJgsRGsBVtNVqJiIWlhYRU/gMiWNoFUliIoIUggmkkhcHGIJZ+NMYPCFeCGBGjNwloXpvl3HOKe00dMlvN7G93Z96dXbZss9uYx1rWtDxysje6zV2pjXXXe+ETBVvx0R8Rfx3vjr8VMWsPjlgScbs7virifPEmRTzsji+KmCjedgMG7OiO3xPRsm9jIo74LeKFnRvB95sp2jy363/wNcs1zV/Z2wu+VbAFd6yLeONAubxZEU868OkCT+nHJWsi5g1jXMRPQx18WsRM5Z/yo5x1xi8R4/VUvou4XIuMWqhVMqevjrdFnGtUM+R1gVcd7YT78AlcaeBfPKs69WBTlxtlnwcOgX5nvawl0272/qD31dRXH6xU3k1PizIn6guGG7uldM9F7PZOxJJjzbd0wX3zlrV9Nu1q1TmHfROxaGTrd9qc9g/gBaat2eGgIwAAAABJRU5ErkJggg==" },
        ["'"] = { 5.0, 6, 0, "iVBORw0KGgoAAAANSUhEUgAAAAYAAAAoCAQAAAB3Y0OFAAAAH0lEQVR42mP8z4AATAzU5vxn+M9wgyqmMdLWoSOdAwBj5AUjT+2PcQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAYAAAAoCAQAAAB3Y0OFAAAAHklEQVR42mNgoCn4z/Cf4QYDAwMDE7IoOZxRQFMAAMFoAuGr2DBJAAAAAElFTkSuQmCC" },
        ["("] = { 13.0, 14, 0, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAoCAQAAABktANxAAABHklEQVR42r3TvUoDQRSG4TcBQaKohQhiIf5gJVgIKexFVFLZWdl6EzZ6A1aC3oE29ja2gmAhglpoFa1EEhQ0EF+LJOwkewQLcbaZmWfOsPvNbEF+bkX+DsvUkCbrgN3PvK+qbos9OOitqketcTceqHpnKY8LNlVd7cykeKrqWTaT0XS7biXCPVXvLWSYfecGAMekebZXzdhqi+nbdyqXAKhxFcVXBuCCrwjnALiJg58C4CHGUQCeYywB8B5jHwCNGD+S+hy+ATAcYxWAyRgfAZiN8TrJKRf8mqpNR9LgO50hP1XdjE6lznlyqj3b4paqDceja9Lvi6q7EeKOqnXHIhywquphhFhp36TlCHFf1ScnIix6ouqlSOG/fvvf4jcCqz9e64xB5gAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAoCAQAAABktANxAAAA9klEQVR42s3SzyrmYRgG4MtXSggLKVnIn6ymLNScgaaZyQkoZeskbDgBK8UhSM1WjkDZSZgFK2M1DaKM+twWmL7p96zlXr5X97O4e3mnfHYj2r436ZM/Ilaa1O9UxHZ1clPEmd4mzWqL+Fr1fojYr2jytfelwnURP3VVeCJivaIpETFX4ZKIa63Ox9a/0eDAU4Uz4Pj/c284Ac5rHAZXNb6seV9jN3is8aGj38A7MFjjJRiv8QJM13jUsVMj30S0DVU44K+Ixbq7J2K3xmURj0Yr7PFbxFrdXRVxa6TCPpcituruwutPmq95Q8QvYxW27Ig49BHzDHnTVDg9U3dkAAAAAElFTkSuQmCC" },
        [")"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAoCAQAAACLdmhPAAABHUlEQVR42rXUvUoDQRTF8bMmWiSgiIK1HwGLYC1oZSeWknQSHyJVwAfwCfQtBFu1EUQbGxFEsNBCGxEbI8om/i12smo8YxOcKQ7sD5bdO/dOgv5aQxqMV9URSrVuHbHJB5Cyhvp3FtsAPDPrucgJAKckjsUCHQAansUuAHcUPM/QBaDuWewBcBjjGgApE55LtAHY+Hr2vaivOpMkLcVqfixJWozxpSSpEuMbSVJJU54fQk56bocse34POeK5nP+i5bGQL56nQ957npMkPeaf2MdZvS5iZVmWpFD5vFN7u0K2VvyBtgB4oui4wC0AO75bauHVVcfDXAOw7xu5Gfps3nGVNwC23BCNcwXA0c8R6PEBAOeM/p7Q5H8vj0H4E2CAYNwVNP0cAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAoCAQAAACLdmhPAAABCklEQVR42tXTP0uWURgH4Kve1wYFRQyc8w80SLNgU5s0im2RH8JJ8AP0CfRbCK3qEkQuLiJE4KCDLSIuvqG82q/Bh9fI+3Fr6F5+cK77cM5zcx7+aS26EX1LbQ0rfom+t20NH0VcmK6564uIr57UDa/ciPjQdsCmiBOdmqfcinjXtn9LxE4bL4vom6h5WE/E+/ulp3/wT3tgoWY+g/k2PgSzbXzU3GGy5h9NPq+51+RIzddNPqt5ZPCJJY81eVnziyZPa54BZ4Mr/sV38zpoG8traCb/oGZFxJua10Sc61bYcSxi47G3EnMVDvku4lO9d7V5Zy8rnHMlYr3Ccd9E7Na/wLaIfaP+p/oNgMBRzQIyTtkAAAAASUVORK5CYII=" },
        ["*"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAoCAQAAACLdmhPAAAAxklEQVR42u3SvUoDURAG0IlJLEzsLaxsjJAiYCN5AAuJiPgEgRQiBHwzt/IRUtkLolhFI1gpSn45FhvdTZPSaud2c5hvGLglsa42ouBmCNFZcSFU7QhbYF/YVhbCkq8MHQkjc1UH7vUyrnnFRM/AowufeFH75YoziSm+fGMmcZrGp+EhHHoGT1p/veX0uVsLjI0xc6OTTae7567dedA1wZt6Fn7pw4nwbqqsbaSfP6yiIdTBnrBrM8/pa4LjXCdKxV8r+J/4B46Az7MK0ISOAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAoCAQAAACLdmhPAAAAtklEQVR42u3Sv0qCARiF8R+oDam7Q5OLBQ5Bi3QBDmFEeAWBQwSCd6ZTl9DULkjRpCk4FYb/4m0Q+fqIaGz5nvXhnAMvLxl/UBdC66coqOBQCDWU5b7rO2MNTG0VnBjqJLLoVVjpePCk7V2YKO513pWBtbDwIWwMXKbrOfMihGenaZF37d6nsLQUNvpaSXq3vdXzaOTGSpgpJflbby4wt5Zzbqqbrj9GSQhVHDn47WrN7H0y/oMvGKE4EQHSJZcAAAAASUVORK5CYII=" },
        ["+"] = { 20.0, 21, 0, "iVBORw0KGgoAAAANSUhEUgAAABUAAAAoCAQAAAC7+nluAAAARElEQVR42mP8z0AsYGIYVTpClDow/Gf4z/B/xIQAC5S+AhfhxhDRgVCM0FDBl28YyXYrIxw6YogM7yhgHC2IRpUSrxQAmnUJtEwUCEsAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABUAAAAoCAQAAAC7+nluAAAAO0lEQVR42mNgGAWjAB04MPxn+M/wH1OCiXgzhpJSFih9BS7CjSGiA6EYodz/eIxjJNkBo1EwCkYBCQAAsJMJdb4sO9wAAAAASUVORK5CYII=" },
        [","] = { 6.0, 7, 0, "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAoCAQAAACYoSi7AAAAX0lEQVR42u3RsQ1AUACE4d8rMIZJPI1BDKU0hF5iDjvoaeRXPBILiMZ1X6644jJ5JvDzIxbsiHSA2Ki6WkoAIgADe2pn9bASwdxNHSWxVrVNDERgYbqHItBzvZ699v4JG4YyPWOzNUAAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAoCAQAAACYoSi7AAAAWUlEQVR42u3PMQ2DUAAE0AdDQQZKCkuFVAgyGBGBAmxURHdYmuvwgwQSBm57ueSS48410thFvAsHEV8tNXow20u7ip+u4GETyzH0FPE6OIqPqqDWY5Kz3/wBhqUUmtist/oAAAAASUVORK5CYII=" },
        ["-"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAAAOElEQVR42mP8z0AIMDGMKhlVQlUlLAwMDAwMV3DI6jAwMDAw/mdgYGDAlToZibSIcTR5jyoZjEoAlJ4FTQ0ywtgAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAAAJklEQVR42mNgGAWjgN6AkYGBgYHhCg5ZHYSS//gMYBoNyFEwRAEA4eQCBV85lwcAAAAASUVORK5CYII=" },
        ["."] = { 6.0, 7, 0, "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAoCAQAAACYoSi7AAAANklEQVR42u2RsQ0AIAzDDPf1/wvIHWZC6gcw4M1ytgzpTL5e0mIRCgAxqkZsY08tYyyR8eSDG38JGcWknDlAAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAoCAQAAACYoSi7AAAALklEQVR42mNgGAWDA/gwPGF4yuAD4z5l+M/wn+EpAwMDAxNczX+E4qfIigcfAADPtgmNmjXsXAAAAABJRU5ErkJggg==" },
        ["/"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAoCAQAAACLdmhPAAAA/UlEQVR42r2UsU7DMBRFbxwJdarKVjEXxkrt2BDxFXwxFQtjV1hJmWi7ECTKYUjSOC8vFQMiHqLnI5/7LMdJ0Lkn6K/xRgjdS5Kw45JvAKYIZ3WmRNKztr48lyQ9DGV3sE0e8QnArKotvgOgaOpwVj2A16e6o045ALBoZrp4CcCe1M+u1I86+tmmMZtdAJC3MzG8BqBk1M6FnvpJpX/eds8G3/Yai7KnAByZxM0Go95o58tzRx1hL/mUPeYLgKvu+TerV0olvejVlzt7jrGfXGdf8AHAjb0U1SsD4K13Y2p5PqCu8VCyhAi8A7Dsy4WYA3BoP8B2JP/98/g9/gG4Xgdnbbkt9wAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAoCAQAAACLdmhPAAAA00lEQVR42tXSv0uCURSH8YcjhFPoJs3aGOha4RrR2l+suDQ62i5NpUsG6dNg8sb7Hm9OQWe753P5Hu4P+OOaI/KYY5cdIr2cHxBZ7BfR4FsAJidxvdp8INLPeYzI8rCMcnTO0zy6xRqRYc4jRFa08vB99IxtiSfHHmOJ+L2pUQNENrSrVjSin9iUeHps8gKR+xx7iGzp/GxGLXrOW4lrZ674pnQl53wicpHzHSLP9XaUzxynTD7jHZHLnK8ReWlClN85fp8cvCIyyvkKkXX1Af9FfQFnCkdyHtxoNAAAAABJRU5ErkJggg==" },
        ["0"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABPElEQVR42u3USysGYRiH8YuFc0opokQOWUtySGLpC8jSQjY+ifgQ+BYSNrKyYyNEvRI51vu+DsVlMY+ZedgoGwvPLO55un9zuJt/UyE/WZX8s9+yHpY54IEyJ6wxETk/j1lLxmsl7aVsyJfQvPDYt3C++JVtq3ruoIhtbqp6Z0Oe9YerJ9PHNHur6nyyT0aYBmCf7fSVb1jNdQIbBmAzmm0LgJE86wPgNGLJroXGjLUDcBWxy1DbM1YPwHPEnkJtyFg1AK8R+9xVZyy5T1XEqvJ3TVgRgNqI1YRaylghTJVfraEWMnYEQFfEOsO8xYztATAZsSkAdvNB6lX13dH0mzZ5repcnJANVc8cE7HDHVVvrIvZgM8hJfcW0mAufM0bzliMsvvu0vf0Ina74qGPlj113fFch4r/P9IfYB9RhxKkDlFRUAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABMElEQVR42u3Uz0pUYRQA8B8tHC0JBMFICKUU1yJihkS9RLR0IW5c9RjR9BD6AO5lUDfixmVtwqRgJBT/wsw0CnlczOfc+6XraOG5i3PPub974OMeLvfxj+KFT7440/Ldstd3o/eaIruqt9G0i/Rw364/6X7pb7YhhJ+mwFM1IZzoL6OJ9PabbmfQsRAWyuyDEHay+Z+FsNopHoAZUMvYOnhZZuNgL2Odasjjgg2Dg4z9Snm4YI9AO2O/U+4vWAVcZuymqhSsM6cnYz3lqR3WAH0Z6025WbB6OlU5nqRcL9g3MJqxkXTeRsG2ofSp4C3YKrfGhHBlttsZcCiE+XxD1oTwwyvwzKYQjjzM2aR22pJT9e5iLt5ezHca2e5e+Xj3mj9X9dW5lj0r5u5/Dv9bXAODYGjkJRkAYAAAAABJRU5ErkJggg==" },
        ["1"] = { 10.0, 11, 0, "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAoCAQAAACCncg1AAAAOklEQVR42mP8z4ANMDEMTWEWBgaGLIYsOD+R4TRMWIxBGy7MjdcQhv8wCAEOEN5QDZNhJsz4fyT4EgBsTxLNgNoDDwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAoCAQAAACCncg1AAAAO0lEQVR42mNgGFaAkYGBIYshC85PZDjNwMDAwMLAwCDGoA0X5oZQTISM+8/wn+E/gwNe1aPC9BUeGQAAkycFs9A8bDIAAAAASUVORK5CYII=" },
        ["2"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAABGElEQVR42u2UvUoDQRRGz+4ag6SysbC2ELGy8Qm08BXEVxAFsdRHiIi1YBtBsAi2okUKMY2FCVjZCGKviPFY7ISdNbja2OXeYmbunPm53/wk8puljJEqJGOdC55554VLNpmKGBFnvLZsPefM+0DM7ISOVx98C/W+jQLZCMFDG2Lmlp+q7hRIW9WuyXBqW6p28lYKLAFwTHHobQDm88YEcEcfuI1yeAKgXiCrI1LMAvBYJd0aAN1Yl7Iv+KHqSpFR2WvehAzTn5ADVQcux+rGvhtk3CtiZWA7AK1IxhKyH4Bza/HAYSX1KABnTpYXz4u6pwE4MfueAOK0VwFoxnsYeiLchwMb0BvReRESoepZJ3+63sn4Z/hH5Av0RTf5++62XwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAAA+klEQVR42u3Svy5DYRgH4KetaqSTxWA2iNhdAYNbEHEDIiRi5BKIuAFrJRKDWIWhg+hi0CYmi0QkRiLqNfSL0+o5FonJ7yzn+97n/Pvl8J9fpmLJmUdvnpxbM/YdTLgUA0fb1OAdmmnw4s5rOu+oZ2Q5be6ro2LdhxA2M3IqhJbS105DCM2MPAhhte/RK0J47i1GcKODa/0XQS0jC0MVTIL73qKc29IiaBXXOONdCPNFoOoqfWG5iOwJoWuuCGylGreLwEYCjb4aB7KTwIlq3rjsIIFjo3mg5iiBQ5U8MO4igd28dyjh1jToag/NZ3skfvhhS4ob/M/f5BOQLluUpg0ROQAAAABJRU5ErkJggg==" },
        ["3"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAABSUlEQVR42u2UvUsDQRDFXz5EUQshICJoFIT0gqitVUAIVlHQzk4F0T9BxEbQztZWkICNhWIniIWNRcAmGCHBSgJBIX7lZ3Fzt5cPtLLSecUeO+/evpkdNoJ+iqj+ICUefI1pUZPqV00lnSmnapBBiDj7fBKOR9J4OaMc0ho1phxl2jbPmaCHJJu8AHDpKLsA3NDhS7NmPw0gFJXUqYIK2tN7YDBn67Cz24xeUxn1VVpjTpJU1kN7lT5WeQZgOVy0hzR5StQBqLPd2BcPC0FPPsi4/fZeYjrWeuMF+IiRYIYjOyrTepDDAQDX31FS5imBUFzSrCJCpyEvRVuH9OR5qQCQCqmMmMq4X9GdJGklpJK1Sop+RRtWwRbdiChLNgwXzm4X+aBl95aGt/BIiUGummauynzzBcTIckKZVyrcskPSmY/8vwy/SPkCFp+NTuMDJAsAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAABMElEQVR42u2TPUsDQRCGn5yKohZCQETQKAjpA6K2VgHhyiiYLp0Koj9BxEaIna2tIAEbC8VOCCnSWARsghYnVhIIBuJXxuLGvT1zl9Iqs8Uu8z4zezM7B32LsoQ5LbDJEpO08bimRDMMDnLCN2KtF7Jh5Cwk+6vNcgCsqPOGRcZIsU8LQbgLkGMEocqQ8exo0BSAAwxTp06RT4OUdJ+Nr3Ncs8zHI3kEwcOJlifY5g1BKHSLWWp4dBCEDodR8RumJ1+4gTv6tgEu2CVGSrLKuV7l9nrcUwSh0gtJ6zcl/TeGNRIIVxbypPsMr/6hgSCkLWROs2R+K3oAYMtCcgCIycaeVnDAKOCQ12G4DWJGqJmWPaosfNgjBdOU/8xck/XupuW45Jl3GtxzRKr/5/+P/QCtg31UHNmhrQAAAABJRU5ErkJggg==" },
        ["4"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAA2klEQVR42u2UPU4DMRBGn0k6tEkuEEJPywGouEgURaFAnIAzUFIsEodIyxXo6IOQ0m9+yuhRsItA9jqIAlFkXHn87G9mNOMgP7EjDthvsG7Se8MAgEcWtcd4jW3sovHF0NAqxuLYSnq4L4UJl8B9dPmb4ImVurSfFy3pAddUudemqs5F2jMduVI3jlJYIxp4oABueU0WvOZnqj7bqfdJ0VPX6s7zzxASWPBJ1bsv6SSwK1XfLNqxIGw4znZRgCDsG9Xw0W8viaMzABZs2/stU94/HZlw+JH+AfYOhzkJjSAyKFAAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAAvklEQVR42u3SMS6EQRgG4GfQieUCrF7rAFs5gRuICJU4iVKhcAjVhivo9JtI9Msq5dVsRPaff7YhUew71XzzzGQm87HKH6ZUq5d2wJ1J/9YTmY9RP9o17bK1Drs1kMXiIjt1hJv2g/ZMxavt9t3GIo5psTMR97TY0JuYGbZY8SDiaj7vYecinqy32L538enwu1JhxaOI6x+1CrsQ8WKrnxXMbC7rokL3B7tsA8+VpQMw8dE+YWkjVfO7bJX/kC+UCFC15IA3GwAAAABJRU5ErkJggg==" },
        ["5"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAABEUlEQVR42u2UMS8DYRyHnzYiEsRo6GIUZdfNF8CHEIvNYDJ1rkUsOlgl4hMQgyY+QWOzKIYunQTJpe4x3PW8Ry9IDB36/w+X994n939/z12uJL+rMmPwP8CJ9HpbsN/kKA9WC8D5P4/GpJNak6IeIY+LnPBIRI9rtjMn38IcGxlWy7lBmDyo+u6DHeN0dVUEnlkRseJ5emdzGNiynJmb9E7V02Q9OO46AG3i7PARTRpALR9mWG+o+vbzm5kC4DX8empsATG7vATgEgBP4ehqGmYvGDxtV9WDfOqb1OG+syIueKFq3+U8WPU5fWrfezuZ1/pX4bgabCcVW//0GuqYccdLu0b2bHvoSiirNP6bjSj4AQvxRiWEl7FwAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAABA0lEQVR42u3UsS5EQRTG8R8RkSBKxTZKsfS28wJ4CNHoFCrV1jSisYVWIp6AKGziCTY6jUWxzVaC5GbdUezY3Jvdm6UgkeyZYs6c+c+Zc75JhpH9qY3F+a5gv+a460zEQLkAnP9yxn9aQhAEa8XAtzP+Prjo1JNE243tniZ9zZxIotcddXODwSD48KgpjavrIvBcCZRcxMjmILCeqXnSvSA4yz/hOmhIe2Ci5gCV4YpsCIL34TpOgbfs1RVbSO16zYBL4Dl7thyb2cvEprUEwWH+mtuo4b5ZsOBSEHQs58Gyl5i140Gzp2u1v/TVzHZ3pKqDm52x40pLoq3hyMroS/kP9gkBKGjND4qXTQAAAABJRU5ErkJggg==" },
        ["6"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABXElEQVR42u2UzytEURTHv0+ahJWVV1OKmprFZBZiNTspSfgTZmnNSpQsJH+BnY2VspmVJCsrNJKEDAthRtP4kWJmxMdi7vPunSyUjcWctzj33vO5p3O+73Q99BtrUgP7K9ahOe2rpIputaEhhyP4UhRwbQUviAZQjCcTfCDHm1nP12MZAEqM4SFaWQagSqeNdZvbw4RF7AIwaWNTABxZkPBJksSv7ZolSQOSpC2nt7zy4aaGxSVJZ5ISSqtX7bpWRuuquIIUARhliU9LkBN63E5rAmxSb5e02ViQo8wMUSLEWTMnCzZWNocTVqfbAFzZWPEHQQbNVR9hfn1BknToCHJsvB9OSE6S5DnYq/FeiGUlSQkHixl/F+rWZ+pIWbWtAnDhTsgeAPeM4CEiTPMBwKyL9VM1GR8558WsT2lxMTH+HQwsS1f9WAoRZZEDnnnnhh3SQSaEvMaL9A+wL3wsrqpTR1LVAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABSUlEQVR42u3Sv0uWURjG8c8bIlJOTr4gBAmBg+QQOrmJIBHpn+DYbFMURINIf4Gbi5Pg4hQhTk4WRoSoqA2iaYRpBPkj8nZ4j+/7nEfnWrzO8Jxzne+5Oed6bm70j9TmpfcOnNo1a/B6qN++yMakShm67yht/rDpOM1flbE5IRx4ooLb3gjhTHsRupdODxW8RSE8LWJjQviU1a/q0aNaWzSBPvAuw/bsNRY1rAusoduoB1ptmzPjNH/AdyE8NuG8EMiKzhyrBfC2lFvYcqeIXdY48VyHZl2mk/O6iJ0kc6TgzQvhy9W75YEMpKNVuAX2wccM+1zPr45tQulH/07fSgNbBt2lZqjpa8N6mO7RX8CmhLCRJ7ckhG8eqaDZM3+F8CLHep2liofW/UrzVS3ljhuub16OZXeva/MO4z746Y8dC0avVrrR/9UFhAKQlC++ahIAAAAASUVORK5CYII=" },
        ["7"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAA4ElEQVR42u2ToU+CQRiHn2Popgai0dkImoxuZv4B6VLYHH+QQQKFSNHurGQoZILFWdBNGHsI8I2P774jEbm33O/ued/73Xu7IPtHhSMAUAVGyd0bCEK6mWH/EfPMQ4jiHoABAJZFX9UHsRS49F8dr1WZhzanwMtGRflVp+qvtbWOgUdVXzMdA5+q3qWAW1WH25WiyQ7kDEYma87UH89TFZ64AHr8lVcITlSt56vmgYaqH7u28+JN1WYKuHapfnmyC2xNPlMBuiwKF9+QZ36rS6+Knc0mLVXf48cPx999IGAFUgoDLEm73EEAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAAwUlEQVR42u3TIUsDUBTF8Z9DBTUsGmXNoGltwbwvoN0VwU80QYNFP4DrsmrWsmywiEUHU8YxLIzB7rDYdtq7/3vePZfHY60/aQPPJT2aNWSVvbHi9u8adUTc1w13Ik4qvG8iXmaHZRkubKNf+Te9ii/NquFUxHUdcCiiXeFjEU+1/0pEr8JNn+LD7ry0uOa5PdwaV08zEnFYDeiKeKwDPog4q3DLVLzZWizPQ15q4MbPcv+OdzF1UA3oiRisP+n/6ReptjSnbCa9CgAAAABJRU5ErkJggg==" },
        ["8"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABZ0lEQVR42u2UL0tDURiHf9OBOHRroptDRBYNGoYg+AFkwppBjCaLVRDEYnDVIFoMBsOCQbCICuIHUPwDA8cwiDrGZphDJz6Gnbt7jjMYDXtPuOc99+He933O4QTQX6JDbcyJoDUPaUbTiiuionLK6ly+VLwxRQE3jhn03nrQGFVa44ZeFzsDoMYyw4QYZdeAKzbWZxaX8Is4AODaxpIGi1nYHADVRtYQ8mr6qVl9v0uSSra3vJ4kSSkLS0uSTlwhiwBUmCWACLFu8hG3U7HGp6kmTx2ARyZ/ehNhso6zOmm/IW8yzssvejdcbIgyAFekGSDMhLEG8za2DcAl3Za3HQDuCPjYAwALFiQS5ntRX2+/JKngHDEvi/t6nyVJUQeLmWfR13sIwAWd1k8zAJQJ+rWlTB1HJBCih1W+AMi43vaarkrk+Ggey4iLdbHVIveUeOtmiSSb3FLhjXv2STeMNUagfSP9A+wbak7goth+ZwMAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABWUlEQVR42u3TsUuVURzG8Y8lRJfULcySEHFsqEECwT9ArnA3B2lscmkNAnFp0NUhamloaHBoCFpChegPKCpBSMRBTBFtMFHDn8M93nvOvU1ODT7v8v6e8z3v+Z3nPYdLXUQd2XvFuDH9euxYteCTaJ8wal0Uz0d3WqH7DlqgEL7rKrFlIRx6akDFPa8T+CyHbibzSea9E8K3HBtO2O3MmxTCQb24An6nocMMOwK7ObZmC1QzrAYWyy1MCWHfhA5UPE/1YGskM/6mbtacCGHTSHu83RaKzE7SsoUe2P5HvLMldNeeEL6quaXbw5RaeJRjL4XwxfXMeyWElfxwbAjhcbHCUPpeXzO3XrBeYOdVfxP7BfV5DZ3/uJ2m9V4In13NsDkh7OlsWtXUxwdD4IZpp0KYKyN508hq16rjxrHsKbFrXrSFu1Rvv1XD5v2w74+f3qoV1+lS/4HOALsknLO+MFi5AAAAAElFTkSuQmCC" },
        ["9"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABWklEQVR42u2UoUtDURjFz9sQxSSLCjMoGFYMCxaDYnAWg8GqGC3+ITYxKKjFJDINgoJFiyCioE4UBsoThwxlsDDYJns/w7t73PswCBbDvlvue9+P98459+N66DeVUAf7G+ZpVvt6VV1VPWpNGYcjXH2c4FaTZdpdg3mcmmbAC+Von3OxedPYox8h0hwCcIdnY0cA3NMV/SbBBQBj4XNoIStJ2tBXJDnQliQpZztNSZKeHW9vkqRRG/uUJA06WFqSNGwHcgbANclIm8c5AB+2hSXjdNc4TbFt3tRsrJurKCsfnyAKuWVjYoDL2CmsUgYaLiaSLHBMiQbv5JlCVIFKHIuvHgCKdrw/1ZAkybdzm1ZBBR042Lgk6cHOLWNkZy2lNwDMudpuAfCZMNO3A0CFXhebpGW+WKVI3exX3HkTYpFGLLnN9rS5gYywzhM1mpTIM2PH43VupH+AfQO0lap/V9wFOgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABRUlEQVR42u3UsUvVURjG8Y9KJE3iWGBDgoOLg0NLQ9KQLg0Nrkqji39ImzgoWEtThDYEBS22CBEK6Y0CobihhCjCHQSv4n0bOvfHOVfBTRp8znLOe76c877PeTlc60rU5Yk3fjvW8N2c4YugPh9EMU7MnD/pY9ps+WWvmo+X2GTaeO02GPBWCJu6cuydELbcqCLd1oRwv72EUbDgtMJalqB97T+sH/wsEtkBIzl2AO4W2AAYzEOrQljXk9X+SQj7OfYsVfoqVdrvRYoc5dhNXyqv6upalclnpXN3fO54hef2hGbnS/SY8t6upj+WPUJDOLysFXqFsJ0bcpHugXqOPVZTs1JgD8C3PDSc0h7NMt0QwtPyiq9CqHuYuu+lEA7dKrExZ+nEhm3HaT57PuVpzQ7nFstua2vIvB+OnNi1bOL6e/jf9BfOnIxpU4ZurAAAAABJRU5ErkJggg==" },
        [":"] = { 6.0, 7, 0, "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAoCAQAAACYoSi7AAAAN0lEQVR42u2OsQ0AIAzDDPf1/wvIHWZC6gFMCG+WM2RIZ/KEFotQAIhRNWIbe2oZY4kM/+c7ugF9KjI7X3BadAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAoCAQAAACYoSi7AAAALklEQVR42mNgGI7Ah+EJw1MGHxj3KcN/hv8MTxkYGBiY4Gr+IxQ/RVY86mZqAABT/BMZDBgpYAAAAABJRU5ErkJggg==" },
        [";"] = { 9.0, 10, 0, "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAoCAQAAABtX6MLAAAAhElEQVR42u2QsQ3CQBDAnKenYQQmoECiywD5bRiGFZgAsQxU+RIkKrqYInq4CHqExHVn+YpzI++T+MMPsKOnkJ9UxKJqcdwm507NbG8xV7P5qfIbRAaWEbYAHDnFNw+qdvVNxJk39WyKlVbMgR1DrLRV7y6qN5otsOcSyyav6vrlfbvnAxs/W9B4BoO9AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAoCAQAAABtX6MLAAAAeUlEQVR42u3QsQ3CUAyE4U+PnoYRmIACKR0DJNswDCswAWIZUvFKkKjoYhpQHImCEiSu8/m3rDv++lSts6qbmlUI9TWWtIop2b07/xU1Qhgsc8wNODpl8iCENlszN6EfyylYmWNnyORWuFuMRnm+2btkrrgK6+/p5wFgyRzWJyrBegAAAABJRU5ErkJggg==" },
        ["<"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAoCAQAAABZJmIXAAAAiElEQVR42u3TsQ6CMBSF4QMDjPJaSpAIbwoGHwtGhOF3qZQKDc6k7Xbz5eTmJDdCxy9WQOdBtWYh1ChZZrj/wQxAS2KnLimZAHiuiYsK3ntkjXJDOtKfFRZ0ZQTgtSVflDEA0HPZEpt0M0mdP+nPnYS47xfg66n19yREddy4ELVhjWVRuOCA9AFYZA1uN3T2NQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAoCAQAAABZJmIXAAAAaElEQVR42u3ROxJAQBCE4T8i5FooFG5qFcci9AhasoFkduV0/NXOTC/8+VgGLoQYSSzSeeJs0nIixGSTmiNGKk9mUosU7Aix2CRnQ4iVLHR46V8KDHu5E0ATL+DZkwuzPt74y7/788XcdeU0A8EFxoUAAAAASUVORK5CYII=" },
        ["="] = { 21.0, 22, 0, "iVBORw0KGgoAAAANSUhEUgAAABYAAAAoCAQAAABQzcJtAAAAOUlEQVR42mP8z0A8YGIYVTyqmN6KWaA0/pTKSIHJV4lRzPh/UIXGFbyqdFDdTP2gYxwtN0YVDyPFABodCCSh4s1fAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABYAAAAoCAQAAABQzcJtAAAALElEQVR42mNgGAWjYFADRij9nxhVTKSYzAKlrw7B0LiCV5UOrYNuFIyC4QQAUHED4cYbgjsAAAAASUVORK5CYII=" },
        [">"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAoCAQAAABZJmIXAAAAhElEQVR42u3TQQ6CMBCF4Ve4pkFRuZURRdRT4s+CabDghLVJO6smXyczL2lA26dQRv+O9hqE0EvlD0WsAwMAPQVK6/tS8wGgW7L0zdHYLWWLxpyMXQk+Eo2xy8zWSPRMZ+ej83anOFPrzxS3u/vb1Rbnw88pJv6k9BKvjLzXBIX8gzPSCC4RDW5oTSmaAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAoCAQAAABZJmIXAAAAaElEQVR42u3RyRGAQAhE0a+maanjkpXlvkSpeGGOYADa51cUDfDnEym5EISDzGOVso3UY4EbQVh8ViubfNYoG0g81inrfbYhCEJuk/Z9UtxptElsN9vtgp5ztUm8+G4/plBy+r/78908S5I0A2tEIWUAAAAASUVORK5CYII=" },
        ["?"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAA9ElEQVR42u2TsUoDQRCGv4t5BAl2qbVPLShoc76BYOlr6CNY2FjmHSzsBCvFgIVgk0pdiwimUcRA8lncnptcTkFImZ1ihp2Pf2d/mEz+Pg2WwL+ANY65Y8gnfc7YmCJE3PLV6TPy0KIDYtthbLz5FKuJOwk4UfXDPRHXfVD1JgF9VY9KUbejSkukCfS4B85/xrqOuc2gHHI2WlGhI9b6sB/zY/pmESuuuumpY1V7acgiLmecGLtb3Ndb/c4BF0XZrLRueeGKLoPyogp0qmIJGPFV91q2sL3IeSaQ1xDRhaBqmDe+UaF/VcgNBvN5hWy53QsCvgFK5t+sPW4AiwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAA0klEQVR42u3SMUpDQRSF4Q/NEiTYpdY+taCgTdyBvdswS7CwSeke7AUrxYBFwCaV+iwUTBFEEojXZngvGeNr1C5nirnD+bln5jKs9Lfa1HVn5MNQz3Zu73oVc2vqeN5uGSXjzWOqPu1XwKkQ3h2CLfdCuKmAoRBOyvNe6tKEBvoGuCiB6zL6ZfmLmqlDG9aWAEdpf8iNdRt2nJkJoZ/blwuTmDmoA8ZljEaG3Xp25by6fw6088YVMDX53//Q8aTQ+RkohFB8NxZHHXURRX3ESr/VF+OWUg69Qws7AAAAAElFTkSuQmCC" },
        ["@"] = { 29.0, 30, 0, "iVBORw0KGgoAAAANSUhEUgAAAB4AAAAoCAQAAABDGoKZAAACUElEQVR42u2WS0jUURSHPy1LF/kIU6PAKJQQSnBXQpFFRK9VL2oRLcJF0KaV60CiZbSIotxFtMpSgsAIIQoMepCVkJOoNKKVohQzWvO18Db9dWYwglZ57+be8z/f4T5+59x/nvx9y2cRXoT/Jbw0h30Nh9hCPRUUk2SUN3Rxi/g8LzN7g3f9YWZLetmSqOd8sMhLptLuU36wz9GI5b21ueAqnwenHs+4wbxgL3Wfd0KIAVdlgyvtV3XYg2bbzh6/qHozE17uE1W7LcuKIm73u5qybj58XtUnFolY4xVjJh3xhuW22GG7S8Q2VVvnwjUm1c9WiXjUROSUX/pKfS9io6qP58LXVG0W8Ui4qJRDTqRDtItYYFL9FIWLTajDFojljqn61I0ingyhwlL9qM5E4WORz7N7H7Q4fRo3VT0RZjF1fHY8q+2dAHQCcASAVibTInwGQG+YlQFj0cSoB+QFUE4tAPcjCl4JpHgHQBWlwOsoXA2M8RVYG4CRCHwAiJEAoBGArihcAkwBUBSA9Wn0NJuBvjA7DEzTHs2qaTUu4upwMR2uEAs950xEkpv8oV6dK88RdcZCkSBSTdrvN3XSR2rcJvcbU4eDkNLwQ1V3h2yeiqhr1B1ui6TkuA3zU7JF1c5grPO2Yybs84KVIh6314Rxr1udWQzWmFT1VM58ytp/DS6qOmOLS/4czgvvcyFdbAVggDa6ecsES6lkHXtZxtkcZTIdp9QHZm/9Cy0bMd9mhzLQlHcWWvbvOt7ELuqooIApYvRwj8FcRT/vP/wn+QnRdhql4iSB6AAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAB4AAAAoCAQAAABDGoKZAAACJElEQVR42u3VS4iOYRQH8J/LMJMMahiiiEhTKDsUGZLcVm6xkIUslI2VNclaFiLsJllo3DZqJKURShSaMh8xmWnGLV/0fcZ8x2Ier3fMjMvOYv7v5j3Pef7nOec5l4cRjOC/xahh1mfaapklpqlV1u2pFhd0/tngUlf0iUFf2UmTfkescUIl2170Qpvu3MpzC4ajTvcwbbrvgHlZUJNt1JxMvDR1KGq9diF02DKk6fXeC6FpsGq8ViHcNmXYoFb5JlQ0/Ko4IoRWNWC+UwrKupxT57BrLhuD80I4NpA6X1l4ZzrYoZS75UceC8/BCiHcGUg+I4T9YHtKVMVrHzMTl0GVsvA2T61VEjpUoU6PEO5aCPYkUz9cfSP05sk7c+r+2F+pzbRNQtidpILwof93NFgDrien4ZhPGfkBeJKkKejJn3xPqJiAuhTh7Jz2qNCnOpVRCJfyJ89Gj8+YlQhdOfJmFJTSbUNLnjwJxVTb/ZibUfdZjLYkbcPXdPMJX0VqtxnJ7WsmotohvbmSXKRPOD0wy11Cb4qqNWvAdl+ET24JnRptUhA6UiFluCmEdambi7nq6rbaylxLfrD017o+LERKFQ0u6lHS5rh6sMsTJZ3ODshCNnTKQtj7bzNsDCiqtQIbfdMq/nUAVmuxHLx03m3PfDRWvTk2GOfgn8xMdmOIoRdC+994Mdp+rwdRK5r/dm6P1WitBtNUKSq476pXI8/bT3wHAsoCTh6AiF8AAAAASUVORK5CYII=" },
        ["A"] = { 20.0, 21, 0, "iVBORw0KGgoAAAANSUhEUgAAABUAAAAoCAQAAAC7+nluAAABGUlEQVR42u3UvytFYRgH8OdebumKGJRZKYsymGRgU9cfwMLAZrCYDQaDTMpis8hwFYOS8h/IpEwMFiUWGXDTx3LO/XmujJTvmc55Pz3vezrfTk78NPn4p7+MTocQ4jLDarz2pBluWmmiBc9Vuv49nVXLzff0AJRVwFh7WvQKppyDrfZ0DjzIWwL3cu3oCdgR+n2AyWza5x1MCOEU7GbT5YZNF8Cjzix6AbaTu15vYKaVDvoE49WlY7DfSlfBbd3Z5sGLrvRJZ1KF+YiI6IjDajmKERHRE6U4qq/LkPYpp1PzdTOzU4re+qnXYKOpIN3Jh16svdZostVIc5eS+pzV6Ca4aoFpKSsGUnoH1jJowRNYESL3/yf8Q/QLvW3gPPA0pqkAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABUAAAAoCAQAAAC7+nluAAABFklEQVR42u3Ur0tdYRgH8I9OQTYUDYJZGFgGhiUxaBP0D3BFg2sLK2vCgsEgJsGyZhGDggZBBP8DMQmmGSyCaBmCOpGv5Xo913vPMQs+J73f83l/cN6Hw3u93RoXEYev0z81Gp+rYaerOv1dTafqME6q6bqITfcihsvhR9cixuyLWCqn0yLOtZsTcaatjO6IWEGf/yJGW8NedyJGwK6I1db0e8OmMyIudLSiByKWa6MetyImmuGABxFf68m2iLVm+lPE30LyTcQ/XU9BR/0FfLBR+MrQbdJWcc3BwoW+fDYbt5+voDd6ivRYxMKL83+qXfTsc/SlNn+opH32noNFEUelTXmv/yk4FfGrZatfivjx/id5a/UIjL6IKxVHejsAAAAASUVORK5CYII=" },
        ["B"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAA9klEQVR42u2UsUoDQRRFT0xICH6AhQaCnVW+QBDSimhlY2WRPwhYJmAhdvmV/IWITUhjZyWojQpRJAnHYndN1J3dNCFN3hSPedx5b+5hmIIsEhusZUuX+WtNeeaWLttzOhHT493T5GTBSAvwwAiACjUqAIzZ5+Zvt4OfuSXP/VK1H1XSZYgdVV+iXdjpHQClPCANAIb/nc6GFj3zU9WjsNMyO1QBueA6j9vIk5mhLLwT22my5G5l9+w5VU06hrldqnqfJ6vH1d1svG9x3srG24zzYxgvHvqk6jCMt0iNzbjHMf28Z/lhKxvvqwOvIo/zQ9efw2pl313/cK1BaHKfAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAA5ElEQVR42u3SMUpDURAF0KORBHEBFhoQO6usQAjYimhlY2XhDgRLBQtJ51bchYiN2NhZCWqjQhTRMBZ5X/z6875litwphhkuc2fue0wwLohSDDy4cGQhTyvixXZBmEo0uNUHLW0t8GHV+e9p3e96xq53IZz9Fe2WFjkUwuOwmB551mWaW0PrgOucaMOONyFsjL60adEswoFenW99W/+z99N+Fa3YrWnFqYEQ5YlVvh0L4aaOtpS6y3nfnlOez9PWUr7Lia67F6J4hSp7G9rmUn/z5x+p9u3VXt7eJ1dOhjdOMD74Ah7AiF+beED8AAAAAElFTkSuQmCC" },
        ["C"] = { 22.0, 23, 0, "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABM0lEQVR42u3UT0rDQByG4S9xoza0KxU8gi48gEtdKHgHRWvVHsCF1xARXCiIKG6KILjwBO7UA4gpbQrif4RKEXldOE6SMWBcKp0fDGTmISEz34yHftN8dfmf44EqOlZDHbV1rZrmVHA8cc1yj9tumE8Iy3vZtuSNkBbv9nkH3+Vf+JRpehAioEzDjK6nedkMryY/jBjk3MxMxLzIAwAbDhZihCtCQvZjvgzAM/0Z3Clf0owkqaZ2vnUfkySd5d2mAUlSlJd7ku1z8FtJ0nBefiFJGs+VMcQKAC8EPy+kECUeAdjKAKPUadLkMBmCJbPVaw4e4tLMTKYjtmsjNmUiVmDBRmzTTWQfe6kAR4kAH5gXJLgQFZ6+HY87qlnH47NKVDkhosMrdY5YpJj+G697A/9D/gHw0qUjYyR5wAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABFklEQVR42u3UzSrFQRjH8Y9j4y1WKJfAwgVYsqDcA3G8nQuwcBuSsqAkspFSFq7ADhcg58RR8p4iSWMz/py/g//6dJ6pqfk932aemfnNUI9ajzbT9px79ezMjnGtv8NjboVUuzJRDW2ymiBvii69J+M1uTT+CR8Y0RgLyzuP6mIlnI/yfGqSLkcxM/gltrsTBEtViux1qqho80uaFQSPWv4/uhxGwY7nbHg/OMxyMTl0gnJWvIGkz4Bfg56s+DEYyGqsOUHwpC0b3uFeEKxUyfUpuXBh+7s4E696IQV3O4mZocrEemKx4WixVpOJxZbTizbbqDBw+ZuBt+IEqZj28ON53Cj8temCfWWvXpTsmtJe/5FqPz4AvaB5GbvZZtMAAAAASUVORK5CYII=" },
        ["D"] = { 20.0, 21, 0, "iVBORw0KGgoAAAANSUhEUgAAABUAAAAoCAQAAAC7+nluAAAA/klEQVR42u2UQStEURiGnzsmJhOSZpLfYG9rJSXKj/AHaHb2kn9gb0FZS4olZTep2VpgQVKYyeb2WNw7Ls2Mc3ZS8327t6e3c877dhKJnRJD9I/RMgDfI5N3HmhyyhFvP1gR+8+r245KdxML11vaQIlpaozkTles8dTruvjlMOGqF7l6bSVT+6PZbuX6bhjFPVU/nA2jVZ9V3RQD79rmGIClmAguAZiPQR8BmIlB0yL+EFoD4CUGXQCgFUbHWAfgPIw2mANSDgZ3INsNU1X3fwu26rInudpycnAJp6jnlYcmK9yFq91xx/HiQOWeq0iHe2444zB7z+4kw5/wH6GfDXUR8SZ0x58AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABUAAAAoCAQAAAC7+nluAAAA50lEQVR42u3TQSuEURTG8Z8xIROSRtbW9rZWUqJ8CF+A7ewl38A3oKwlxZKym9RsLbAgKcxkMdOxmLeh5vXe2U7Nc1f3uf9zFs85l5GGR2Mg/jjhy7O6C6c++wsi93yomcjv+qCJknlV49n7rW2v/V3XevcZW64z985UEdrVfuYfplGOhPBtKY1WvAlhD0qFUTadgfU0yg1YGQR9AQuDoB09KoVWwfsg6CpopNFJO+AqnWtNCG3LKXRXRwjHRYOt2HCeuQ2z/y/hnEXlrKhu02N6tVsOTP9C5Zwf0fLk3qWTbp4jDaN+ALYTawd9hzrfAAAAAElFTkSuQmCC" },
        ["E"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAAXUlEQVR42mP8z4AfMDGMKiBKAQsDAwMDA/bgZCTBBAh4wPAVi4r/DP8Z/kOAw38GTDgYwoHxPyIcUH2hg6kASzCR6AZHBkYkOJQSDO6AggYV7oAiNkUxjuZuKikAABxWJJDuA84uAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAAS0lEQVR42mNgGAXUAYwMDAwMDP9xyzERMoEFif2A4SsuZf8Z/jP8Z3DAJkXQCjooQA4HVF/oEAooRiKtGBLhQEFAQYOK8hQ1CqgFADPbEXHlwDnAAAAAAElFTkSuQmCC" },
        ["F"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAoCAQAAACLdmhPAAAASUlEQVR42mP8z4APMDGMSuOU/o8VNhDUzYLEfsDwFUXuFcxcCHDANH8g/c34H+JvdJdPY5iG7jEFJLYYUYYPYn8PfJiPZkHSpAG6QDoR3pueMQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAoCAQAAACLdmhPAAAARElEQVR42mNgGAXkgv9YYQMDAxN+fSxI7AcMX1HkXqEa7oCpm4DhNJVmhDoN3eXTGKahe0wBiS1GlOGD2N8DKT0KyAEAKfkZCth2vUAAAAAASUVORK5CYII=" },
        ["G"] = { 22.0, 23, 0, "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABU0lEQVR42u2Uu0pDQRCG/3OMV7QQiTYpBRFsBN/BQiysjEJKfQQbi7QWIgo2lsHCgIWFlUWsAsYHsJAgFsZbFFKIxms+C/dc9phILJXMNmdnv5mdnf33OOg35qqF/zm8Q0llVdSjXnSjQ6U1HOEJxhQXRO2DDAMB433EWKNmkBpXnPPqh5QYi+LrZumYJF0I4TJJznjLJML4vHGv0ka4PIcVs3IQ4L3cAZC1UC8gQ4ECBUY8fAGAJ/rr4JHhSpqWJO2p0lzfxyVJ+WauKSYpLkkqWZdRz5yv7I43aS57WQlJiZD3xGIGFfd3ROwDsNOwH1kATr1GLgJQbdDIHioAbHh4H/c/5E8bHY0GIkg1EIGY4x2ALVtim77EZn2JTbBtvHm6bbzdD4AalxR58OdHwanCG89w/e15PLMcLtCutJMUu5xR5Y1bciwxZJ/Faf2B/yH+CSk2yV6me0LZAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABO0lEQVR42u2UvUoDQRRGz8aYqGghIbGxFESwEXwHCysro5BSHyGNRVoLCRFsLIOIC3ZaWcQq4PoAFhLEwvgbwUI0GuNei8xOdrO7snXInep+c+abmcudgUH0eyTIYlLjg2+eOKfATDi8zB3SM34pk/KjcYrYCrF54JaWXlJnvhcvqalLsowAEGOJilJfmHbD60reYchjYrCtZs664jgNBMEMuI9BGQsLi1lH2kAQPpmMVr4TBOEwChoDFgCoRsHjQBqAukuVQNbouBtOEs29U1V3Za88TIa0e8dTBOEo1NJEEK6ddBNBaIYUcow3BGHXESZ4/ce/oPporivlQpoA1mgjCPteeU+32KpusUUOlFpl1IsP6wWCzT013nV+EXyrFR59z+OLLd8BdSTJccwNTX54pkKeqcGP1P/xBzczh9MgRUCGAAAAAElFTkSuQmCC" },
        ["H"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAAAQElEQVR42mP8z0AcYGIYVTgACv8z/Gf4z+CAIYskPhqOeAELEns+w1fiFCpQ3Y2ODIxocDSFU10h42hpNkgVAgBnVwrI30CThgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAAAOElEQVR42mNgGAWDGfxn+M/wn8EBnzgTsWaNTIUsSOz5DF+JU6hAdTc6MjCiwREfM9RXOAoGKwAA6eIIomclRAQAAAAASUVORK5CYII=" },
        ["I"] = { 7.0, 8, 0, "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAoCAQAAABpqnM2AAAAIklEQVR42mP8z4AKmBgGtcB/hv8M/xkchoBLh4IA45CJfQASIgWKyv2oWwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAoCAQAAABpqnM2AAAAIUlEQVR42mNgGFrgP8N/hv8MDgwMDAxM6HKjAqQKDB0AAI4YA2TY868gAAAAAElFTkSuQmCC" },
        ["J"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAAkElEQVR42u3TsQnCQBiG4TcSsXSGgBMEB3ACh7CxdgZnyAipXMDOCdwhiJYOYCS8FndHrCzERriv+/mea/6fK+RzJmTwNRCRVV7U34ESODAF9pwBmMWmH297VXUXruzSkCrMiK2qFxfi3JOqXeQg1j5VHex8xPfbd4CbSFKaVCeAta03e+8eXY+1FPl3/wi8AL6rfCfujpvsAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAAh0lEQVR42u3TsQnCYBDF8R+iWDqD4ATBAZzAIWysncEZHCFVFrBzAncIoqUDGJGz8JMYLKwCFt+76nH/4x4cR1Z/CiEsXmbwi87A/wBDVEbYOoJx6jQtdBbCJrl5Ove0BUohnMwwcRBC/bmmcBfCQ+2W5tfdJKuEvGv3HbZQumhc7S3z1/WhJ1NEKlH8yS7VAAAAAElFTkSuQmCC" },
        ["K"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAA7UlEQVR42u3UrU7EQBAA4OkhSMAgcKDhBcCSKp4AFBKB5AFOgCEIJA5BAggcCRaNJWgSLDiCuwRyuQ9xC9efuw2GBHFTsdPZr+1kt20hfhOdmLI/Z0KIsjZzlqq7IzGMUvwc+6l2Mjwfzzb1wa3OZLbqHTya/76wzRY8gVfLoyaabMYd6FmvdNpip2Bgu4qabC9l3Tqqs0Of4LKJ6mwA7s22WXWzioiI6Me4z6Nyt/M0XuQfWjpO2UGeFW5SvpNjYc4D+LCRY2HJC3izkmNhTQ88W8yxsNVcw0mvZTfVrhU5Fq5S9UiIYvpH+gfsCze44cXkgyJxAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAAzklEQVR42u2UIQ/BURTFf3+CjSJoZL4A1SSfgCQKog8gUEwQNcGGoNlUWTXZptJMszFzlBsY/6sKTnlnZ2d375539uCPX4EQovSiDU2te7amaX1vWpkbQiyIhNtynBBiQyL8bkm2CHEgE75ClCVCnCl4mw4Q4k7VC6RhrOXl1uGKEBM/3jtCrIi9G55zCQC4IX/ayM7xtzftGWv7toC58ZrfkDhrhLhQ9IuUZo8QR7J+3/KcEWJHyq9l5XOG77VsmTazNENLPjW1+/8DfgUPO7WK5osyeAUAAAAASUVORK5CYII=" },
        ["L"] = { 13.0, 14, 0, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAoCAQAAABktANxAAAAOUlEQVR42mP8z4AbMDGMSkIl/zP8Z/jP4DAaQsNbkvE/JLIZGBgYdjK8QJJJQJVE00aUsaMBjxsAAKwJC4YamUCDAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAoCAQAAABktANxAAAANklEQVR42mNgGAXEgP8M/xn+MzigCzPh0zMqOeQkGaGRzcDAwLCT4QWSTAKqJIY2ptE8QgkAANr3B2J3sdO0AAAAAElFTkSuQmCC" },
        ["M"] = { 24.0, 25, 0, "iVBORw0KGgoAAAANSUhEUgAAABkAAAAoCAQAAAChxpngAAABMElEQVR42u2UrUtDURyGn6sMHAZBDK6IgtgMVjHMYjBqEcEsfuEf4xgYFtYMJmXJblQxuWZRBFGEhcHQPQYv13u9dx9W3bnp8Hvf87z3dz4C+e0YYmD5UxYRqXVUHYaK4rf6a7SdlYwvsB4qimIiWMBeJmOFucQ8RtE3RzMo51E9RYExtlKMGVa7d2w/ZdlNaWLBHlRdToTK+xJVMoIdA3CQWHGT8aiSQSl6o747FaNcqS0nO/9+CRhmJ5ovsQCc8tSZkvdVfXYkZJyouhhTpChNKsAEGwAUWAOuueze5DLtqAXb5MKwdA6GeBaGyfmovpj/qUgf/qNwS9cpABWavSmBd2rLW/XDaelNkRKQYx6ocd/frazSiO1TX5YGVQDqXPR/90sIlMl844PBy/+PLZ+JwSS5pi3u8wAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABkAAAAoCAQAAAChxpngAAABHklEQVR42u3UPS8EURTG8Z+VTWx0oqAREtEptKJYjQ9AI76A9/gwNpsoFNspVESlVyIqOg2RCJEoJGIdzWQyszMTenu6O8/zv8+599wM/frvFUI4q9T3EkezF/k2XQoMuMsitZy0XYosmalqLLwZLkFOU71ZRMJGAZjSzSO1HsNOAdkqeDIpD0JYzCkNL6lSknIAdnPImpFUKUlpuha+TGSUS+HTWPVZWhi0ma4XzOHYU3VKw6vwbCj5fiSE+YyjkPLhEKNWwbhlXLnI7997gW3f6RWsqyfNqm4MTpJm6h6FF41eR3FM+8lIV4zj0MfvKQNuhU83Qtdk0VErwVuom8WZ++L+Ze+n4z0zpz8h7zrgzvlfEVoCbdH/x/UrXz8ZGX4Xh9/R6gAAAABJRU5ErkJggg==" },
        ["N"] = { 20.0, 21, 0, "iVBORw0KGgoAAAANSUhEUgAAABUAAAAoCAQAAAC7+nluAAAA5UlEQVR42u2UsWpCQRBFzwrGSrEU0ttZW9i8yjY/oVV6fyCFkC4ECZhfSJUPEDtJrVXaNOlSpJGEvGOhkCeat1sacKZa7uVyhtndIKlV4Ww9CauI3B2o2U7h17WtH7uy19lOQdwDqPBINZW1w6gEtgCguradAjADakwJ8dS+K1WH8dQvhuTALa34WAsegCb3MYBMrPum6lU5AMAn1wBMaMTvwDNPwCXjGABiyw81t1cOAPDOCAhMuYilYnCu6qyYetyKbdeFdf8JAPDKTcpY2666TEuFbwbkqW/rhUnxGM4/4T+ybgD5bgw18K2PIwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABUAAAAoCAQAAAC7+nluAAAA1ElEQVR42u3UMUtCYRTG8d+9YE1Fo+Du1hzRcqfWvkRO7X6BBmcJCewrOPUBpE2ca2ptcXNoEURPQ4KK3PveVfDZ3vccnvd/ngMvJx2bQgj9g/tiUzloXbmpas13Crk3jfKn873TtW491hAW2nUAxjg3lKVd730JoZNOoHBrJcw1UwBMvOLKSwqgwIUfITykXPn1BAYuq3OFdyO09FIA0DQX1u6qAWCmi8zQWcqVzIcQxuW5btW22Fl3KQB8e64z1r8aPuu5svRoXZ3rVlOD019yrPoD0BZpXYYPnDcAAAAASUVORK5CYII=" },
        ["O"] = { 22.0, 23, 0, "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABN0lEQVR42u2UTy5DYRRHz2sigqZmJqyBDbADGgsw0aDWIBKxDPEndE6wADEzZgctJiiDVpCQY/D+tH19TxgS3x29757kJfd37hfIT06Bf/zX4cNUOKbOKy/UOWGZYoq3Uwvemz5NF7uIBB90N0HebXjjR/JdcyiN70StM8sOiDjgvOfR7UEvXomu1wy6f23getSpdvCSj6pu9aBxbav6ZCnGq6q2LGbiRVuqrooUgDkADmlnjrrNEQCz8dynALjIzSbsTMb4GAC3uXjYGYvxcF2DXDyI8ozwOwAmcvFxiKkCcAnAdC4+A8BV7Ew4yGdHMwc56nMnqDCmpqr7mXgtHVNHgo0+CTb7JehVbC5RrJwoVusXeK9H4GvfvxI4XI+H765HWCMueWLDN19teOpKWrvg/wX+g/gnlw6zOxp9uZYAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABHklEQVR42u3TTy5DURzF8Q+JCJqadcIa2AA7oLEAE4Jag0jEMsSf0DlRCxAzY3agmKAM2gZJ5Rq899q89j0xFueO7jnfyf3d8+Nff13jVp278+HdnZp1hXx42bPQdxpWstBRh12ko+7BV/deNdaPH8TRpbIRMGLJVeyepOHV2N4ylPKHbMdJpWcWvQqCvcwX7QuCN8XEqAiCZs4UCpqCYBOGsQhOtTLxljOwkOCz4Dp3wFEyk+Al8JiLR0kpwUM8hTxFSUjwJzCdi0+RUMO4AXO5+Dy4TQ+ybTITntROf1RRQxAcZ+LV/m/qlWBnoAS7gyVIV2yxW7Fyt2LVwQIfpQp8r/NTgaP1ePntekSasKam7tOHugsbPy3fv/6KvgFj3IcxffL40gAAAABJRU5ErkJggg==" },
        ["P"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAAAq0lEQVR42u2UvQ4BYRBFz9pWolSg8BZbKhSiUXgYpafS6HQakXgBCgkRhUYkgqNYZIWPQlTMtGd+7s1kInkXOf7IR4iZPLJgSIfijRHxWaxtpjWRKQcwYwvElMkDsCNhct+ldptWd65qTwwg2Fb1YMGgogEAMdX3oqMwUgfgyDS0bsOlqv3nonNULqL3JIxfWbexlfZ8RE6uHNm1dB0b8iWTP3m70f8zfBE5Ay+zyLvM3BCpAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAAAqklEQVR42u3RoW4CURCF4W8XS4JElAreYuUKBMFU8DBInqoGV1dDSPoCIEggpKKmaUJYLoLdZkv2UoUh/CPnZGbOGR7cmlCrwsa7iW5cUtWn0bmZlBJY+UZLTxv8yHz8nZL/Th1YC4LXy0V5bfVYEBx0SCMG3kBLPy6pSOKSASgsY7cMbQXBrNl06rk0vZdZXIvuy0ss3aOduamnpgfkzZen///4/iQPbskJUtVODry5Fv0AAAAASUVORK5CYII=" },
        ["Q"] = { 22.0, 23, 0, "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABb0lEQVR42u2VvU4bQRRGz1qxrICFK6JI8AzwAvAGwcoDpLFjBLxCFIQoeASKKMRyaPMjp6GM0qVOQY0MSZMEiIQRLogOxc6uf9armDKS71fN3DNzpTvf3Y3kPlFgiv93+Ax12nTocUOHT6xTHuHt65m/HI1zawNEipd8kyK3nvrdv+n60Iej+EFIfbZqUcSiT/0Sdt8O4/Ww/cJosLSRL0Nmo4/PeaHqqyE00WtVL60k+IaqV5bH4mWvVN0SKQBrAHygO7bVXT4C8CTp+zIAX3PfJs4sJfgjAH7k4nFmPsHjcY1y8WjYBD8BWMzFFyChCsA3AFZy8VVIqbSR13FnM6p4repm/5nOVW2NxQ9V/eNc1gQ7GRPshkwtz2JrqcWqqcXeZQ3cHDLwmbfpuhkuGMDj8fhtNk4sZccj1qzPbduxZ89Tj0KF9xbG46PaChX2J8NxLxzYngzHVjjQEHnwz09Lg2NmgceU6UbTv0dO3AHN5wkjFvYB8gAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABWElEQVR42u3TvU5UURTF8R8DSJAJVBITfAao7OANgPgANnwY5BWMieEhKIhCgJaPYGNpjI2NjYW1GdRGRUyASIFuCs69w8ydg9SGfaqz1z9n5667Njf1v9dts/Y0nPqt4aVH6nn4oe+i7RyY6YT2WS2RM/u++FPeN/W34y+S9Nq0XtDrgTepu9EKz6b2E10t/S5Pk7LQbA76KYSVjl/0XAiHhorGghCOMi7UHQlhEWqYAjuOO+LHdsFkgY+Bd1mDL5TRAh8GX7P4hXKnwCO5kKtLSg3fwL0sPkJB1fABjGfxCUqqNPKk6WxLDTkRwuPmbzoQwnpHfFMIvwxWQ/CsEoKlpMzkIjZVRmy6jNhWNcBrLQH+7Ky8r6UHKuvxo7Ie4ZO+nGUD5tLyndr3Kk3YVrve7i6mCctFo/tK/L1bJnDfX2+vN2E9TZiHnn/i8z4awF31zEbcFM4BfQWXX3n6grgAAAAASUVORK5CYII=" },
        ["R"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAoCAQAAABZJmIXAAAA+UlEQVR42u2TsUoDQRRFz2pA0EYFK1GwEXtBsNMmCaay8iss9Se0sfUPrEUre2shIHZ2hkA2NpJAiMdiN+5iZsdGrHKnGAbOvLnvPiaR3zXHDPpjyNIa88YjZ6yVKBFD6tqc3EvMSIBXPoB5NlgCYMA+Tz8rHXy/2bSj6n12DkN4ourYZbGyu4e8ra1YBLXyXgW1APjkpcp44rGpqrfVEWyymEewRzseZmpj0msYGnruShFI2fghCbsILNCmH55dZvxG1WdrRaVpaNuRqqcxCK9V7RWuQtC6A1WvYhBeqDpyJwat+q7q3XQEhVIuATiiDuRjmX3z/4O+AKFZVLRbR0qfAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAoCAQAAABZJmIXAAAA5klEQVR42u3TsUpDMRTG8d9VQdBFBSdRcBF3QXCrixacnHwKRzv5Bk6uvoGz6OTuLBTEzU0RbLtIhaLHobc12N6sXXrOEHLOn+TLl4RpTCIiyW+vHpxZzUGDfFcftIsSghefmLVuEXTtefy/Um04r3sTwt3odrWkclLqW4KZiqPc63c3c9BcOlZBR+DHc5WmwrGWEG6qLdiwUFqwq5k3s+Uw7/iXhuW/dip8X2FHYF5Te/zd9YVfC+FpaMJYaEtPCKc5iCshfKSqRqE1XSFc5iAuhNCznYNWdIRwm38q52XtYPq3JxG/bwJ+SdxVsT0AAAAASUVORK5CYII=" },
        ["S"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABP0lEQVR42u3UsS9DURTH8V+LoULDghAmYbD4BywMlbBa2SymDtYO4g8wSCySDk9syiQGi4RFIjGUoXmaRqTEIiF96UC/hnfJeW01JjH0nuHl3vu5951z8vJi6Dcjrjb7E9alFR2qpECBfHmaizjCmOKW+nFAt9t1bJiy2wrwefuGx1G2BUCVZToQIkXRwUXLfAAyX2cRE9QAyIbzTknSiCTpyqRc0JJ6JT3aEkoAbJrb6iJ87ALwToaeVmyMJ5dyhRyrjDZnYpKLSM+uWaevkQkxwzZ3hj6TasbCGGeNMwerTP/EwpjlBYBcaybSADzY9npKSNrTkWlwUZLUb9t7A8A5cXPbjqvYvDTjUvYYQogkG24lbVmSvFuuUeaeDze7JBEtYZDThs/yhIFmfZsnS4FXKvjss2DrjrX/SP+AfQJJOMg/7XqnwQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABIElEQVR42u3TvSsFUBjH8U9eBopYEDGJgUFWWRgoViubxWSwGuQPMCij4crmZZLBoliUMmC4XZKELIrcpDgGJ53LvawGz5me3/me0+95znP4j78UlSZsuJCXl5MxWAzqcip8WWuqC6Fm13ErL+fxE9wqxBYEwbNx5WDIeQRHUywnCGYTpcObIFj+SCtACzhMsKwxNbhJb7sQBPOl2/DhpVsv+nDopTTc5jZafrJuUmspsNN+Qc+OzKgrjvZbdJagd4ZKG2g3ZTeCz3p+fuEB94Jg/bdRmBYEV2l7M6qwYjPBzkF9evJEEOwpS7SlWHESs9FyRhOoNReV6RSrdRzlN9cuvcbsQFWh4UY738ZyW0Ox2oYty3rwJGfVyP+//2vxDmL9gpAGE1YTAAAAAElFTkSuQmCC" },
        ["T"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAAAQElEQVR42mP8z0AIMDGMKiFTCQsDAwO+AGYk2pSrcJ42AwMDA8MDhq8oav4jQwhwQBEbjaNRJSQpYRwtGWioBACc2hpQ2ta9ygAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAAAPklEQVR42mNgGAW0A4wMDAz/8cszETaFhYGB4Sqcp83AwMDA8IDhK24N/xn+M/xncEAVJMKiUSWjSkYBXQAA868HOtMOP00AAAAASUVORK5CYII=" },
        ["U"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAAAsklEQVR42u2UMQrCQBBF/+YCWghp7TxCWm08gZ7DSrCw9ERewJTeQAsrEQxiISKITZ7F7rqb2Ngpkr/FMPMfMzAsY9BnStSAXwARQv03N6o3e/wTsJQkmZrn8zKAhSSpVQPbLl4DuJckZTUwc/124SfNADiRotdLyAFY2dwWU24AbBhgEKLHEqthDIoRpTMubDnitfATwqgxZ6q6M3X9K6DoMCHnwIOCNXO6kSfTXLMfBZ+4iJ0/dQlbmAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAAArUlEQVR42u3UMWoCQRTG8Z9eQAth23QewTZpcgI9R6pACktP5AW0zA2SIlUQXCSFiCBp9lk4utldkJQK+00xM+/7z5s3wzC0umWFEB6vxbv/zdWCtw0WoFPzzvOiBHPQq4H91O9K8BuMauAo5fsqQ29C2MgqRS2FsPi7NrMXwoenVNnQPL3G5+o2Y0Uytj6t0zjMmuef+LnYp3bw2rgJMPBiaeVX7t3UQ/tH3IOOk843fZVPs58AAAAASUVORK5CYII=" },
        ["V"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAABJUlEQVR42u3UMSitYRgA4Pe4hDLIJqXb7aZMDCaDjFIy2NjvLePNwELJomQwyKSMUjIYTDIYlOksDNdABoNSBoXwGP7/OOf/z0kmGbzf9L7f09fX9759BfGxqItv+MlwOIQQP2vub4YQOxHhhyswLapWizswJkJYBsUacALcaExgjyS6q+AuWBMJDEUwn2NtHkF/GU6B/zn4F5wlWVJq9wT6MvAAzFXCsAeWKliHZ/ArC8fBpcIb/AcOS3mp3OwWDLzBY/AnD8M6WE2z3+BeazUcBNfqhTALtsp3LsOCczAkhBMwUguGBbAh9KanN9SGXeBWk0WwUvmq2V4cpbNyUf38WTiZthJOsw3Nj8GDUsy8B8N2yl50vg9HU7ifn83C92/2ReErknD4btCqXfUAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAABKUlEQVR42u3UIUidURjG8d9lihsY5DYZiMgYmDQsLYhRBmKwbX3C4ljQsoFYBsOwMEyCUQQxGExiMAhLt2hwYWIwCIJh4MbcY7gfXu+9nzdPuE97n/M/53De9+HQ1f+qVyJiuHR1XcQWPHImYr4E6/dLxGy9XBZRKwHfiLjQVy/HistH28BtESsNoyZisQWr+iPiZcP6IOK4BZwT8eOuNeiviBdN4J6IT827d0R8ueM8dS1ipBl8LeJU5dZ5L2K/9X1PXIqYuHW+i3jb3rNVEd+K6pmIKwPt4KSIcz3go4iNsqlW/BQxBQ5FTJfHY0nEGsaL03vLweciLj32WcTX+yN3UGTlpKT9TXpXjDLiqFOIq34XSYqFznnfLLB/hjqDMwW42/0jHopuAPMqe7XA3XoiAAAAAElFTkSuQmCC" },
        ["W"] = { 28.0, 29, 0, "iVBORw0KGgoAAAANSUhEUgAAAB0AAAAoCAQAAACoLTmaAAABsklEQVR42u2VMWsUQRiGn9usiianBC2iFgo22tqIGtGDC0iwFbTxt/kLLKNJVIKEIMZCkBDkLEQs1EYNSjh27x6Lnb2d2dgolrfT7Dy778z7zjez25F/vTKm0qm0Jb2LSMnx1pO3iBTMJXQBEVkGnLdUdVmitmB93U74fVX3PSoZ33gNwK1k9P7kLuVVb4P9KusqADf/QroCgHhd1cK5yNgndXyAnw4hLoggzvi9leqSqi993+JV0ndVLwNGPGtZXgLgMesA9Ca8F3hU17VWqn5I1OZxUioj50OqWRFz99SvZp6wVAu7UdKfHmkMwwcGQM41AK7QBZ4w5gfbQM5iZPc5w3QjrkaGlqJE6xFP7VKv3R1VN0XcVEeeFHFR1VciDlQ9V693LZ11qA49ZtdC3Qq8yl3a9YyqO03ta8O/2AIOc5UeeVMASjaAGW6EpCt/OnRrobb91it12nZSmq13WdUX7qqf7Uz4xZB2oO55qDHcSDt+UQtVHyYH7aM6UvVRzLNo+qdAHm+1yHJ2wC7x6A/CuSidT2a9Nzn2Z2OefhnGUXWbdirwNynvTP90U+l/k/4GcgDFpPgVtUgAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAB0AAAAoCAQAAACoLTmaAAABmklEQVR42u3UPYsTYRTF8d9mo6JrlEWLVQsFG20FEXXFBFYRsbEQtLH1a/kJLCziy6osEtbXQhARjYWIhdqoi7Ismey1yMxkZpIUgnY51dz/3AP3cJ/nYaqp/p2uCCGxq8JfC6FnZ4kuCCFchHnJsBhpCRdK/JoQ1m2n5ruXoFlqWcq/ynxQrVinhnvg7F9Y21l5ekyqz8LmCN+XhjicgVk/KqmOCuGpDxU+SPpuUNTQ97Ay8jlwxzJo5byV8oJuCOFJXt8WwnGXhfAs5++FcL5oPZSmmgN1a8I3NbslQk+jkPSXbcOB+aiLulPghAbu2vTTC9QtFsZ9ZKNozRbULCVFmrY5bjGZLgmhAzpC3x6wKITnoCuEg1XrnA1hww4NPWE15YPciYb9QngztGQD/7aKrU5qqRcWkFjBrDNp0vaolfvpbpcqLVnaCUnhmBAeeyt8MZPzI2narrBmyzjrjK9CTwg3S38+CX0h3Cri4cDhAeqjR81y3tee9F5cT+9FYr7Er+bX/sAk60J6zToVvjflr6av8VT/S38Aj6Kq8gtnxzQAAAAASUVORK5CYII=" },
        ["X"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABNklEQVR42u3UL0jdURTA8fOeU4M40DAEheGaRTAsikWGIGNRbKYFgwvTYjCbFNOyYFGLwShLNpsymBgGwoQZdDJE8Q8fw+++3/v9nntgGSx4brnnnO+959/lVsRTpBrP2D/GxkMIMdbg2wkh9qIakRFb4Ei7yNd7cO+tkLDXLsFCDrU6BF8yvWaeB1feJP0TONVVxtp8B9tC6HYGpmq313MZlckHYQXsqjzGwjr4YcgNbg3WfUWs1x9wAZYKnhIWPqvJT53NsRcOEjZRsjcMS9yl3W3DREqnZvKgxzqaBe3xOzUZFptha2DDLLgx8DdsBFzrzwv5+hhr9a0QajhlONmIzYFfXiZ9FZzU9MzYl/r/MQ/zyjlYLmKbYF9LoaBpcJdNNoR3KZPRUg+r9urvpPL8I/0H2APyudd4REUrvgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABI0lEQVR42u2SPSiFYRiGL4fDIIpBihKbRRmMspykJKNsJoOBAYvBbCKTWVmwGIwy2c5GigxKUQx+kuico8vy+s73nb9RhvNM73O/Vz3Pfb8v1Ot/1CQiMlGinyCSJfUrHCFyQ0sMmkLkm5Gi1McHIuuRkuYakZ3kgDVEPhkI/RIiT3QksWauEDkGoJNnRObKjWSCkWlgG5EzGio53kfklmFySJ6hysH08I7IGyKb1RNcDoPlnrbqWBMXAZtJXqQSnRTCKV/r2RajoXe0VoO6eQ0hi2xUw/YQOWAFkRyDlaAxRL7oj4yclkNpLmOjRsOGs6XYKiKPtId+F5GHqAegN+Q/HyldvCCyFccOETmnMaYtIFIovux42CRTEny21j+p19/XD/a2gJnLIvrVAAAAAElFTkSuQmCC" },
        ["Y"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAoCAQAAABZJmIXAAAA4ElEQVR42u3UzypEURwH8O8Vw0rWslSKlIWFhWfgHZiSkqWHUN5BWSgLZRbeYJ7BZpJoHoAdMR+LudO9dyQb2ZjfWZxO53P+/c7pFPJzTGWCfhFtRUR2xnoW8xqR4yTiFnSlUU5B35xEbBrGdo3MewZHMkTRAZ0aOgFPZiu0YYCBtZK09MHhsD0aeQ3Oy9Y+eNRqonUDvFkShTtwMFq82sUVOBO74MHMV7TqAy8WdEG7OkY9M5fgBtxX8zTRinej2Ksntpnli5L0TH+PlkvUbl5R8xX0xup/8caLya/yx+gTdr0q13DytrwAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAoCAQAAABZJmIXAAAA2ElEQVR42u3SzyrEARTF8Q8xrGQtS6VIWVhYWHgC3oEpKVl6COUdlIWyUGbhDeYZbCTRPAA74ncsfr+a+c0fWU2pObtz+na7nXuZaNzaFhF7ffmSDxGnpb0X0e6DzkV0zJd2q5q104MseBNx0o1aIlo90JmIV3PdaFMhCuuVb+iIOK5vcCvisnKHIl406tCGQnxaxpQHEUeDVdyIuMC+iGezg9Cab/FuUVtEc3it1yLuRDwNmwOrvqrG4mD0ia4q5NHMaGilgpq/n7uEduvh9F8e5d9CE41bP5jIUv2Z8blNAAAAAElFTkSuQmCC" },
        ["Z"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAAw0lEQVR42u2TMQ4BQRSG/0GCTiOusIk9hELiHgpxDI3EPTSOoeAICsQRZLVW8SnGxOzOkE0o9001//tm8v73Zgz6Hg3VQCWgJelzM03FGw6Bmqgp6SZJIlwTbMwQEaDLBYAdJg6sAMgZ2n05nZIDsHRKMW3YA3CmEwfmr/LGb81PD8gAWPuHfGADwJV+HHDup8Wyy+631n0IWPd3knJfiu4XYeN990faccC5H0UGJ4OUqSfpoVMw9lQy/PqiTP27/wQ8ATXxHXUmrfufAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAAnklEQVR42u2SLQ7CUBCEvwIJ4DCEKzSBQ1Q04R4IwjFqSLgHhmMg4AgISjhC87AtYjA49i3myY7cmf35koVeaZQB8tzBvwkj4PZTzRkCr1jTGiHE1ranPBHiQmYHDgjRsbTtFR1C7GNYV4R4MLEDu+95pW0vCAhxjOGdEKJh7tNvfPqzT9+S+/SVT39n7NMXsYcJzIA3tbE6wUf1SqUPWVY6Id7Rh+IAAAAASUVORK5CYII=" },
        ["["] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAoCAQAAACLdmhPAAAARElEQVR42mP8z4APMDFQIs0CZyHbwkiybgh4wPAVhf8fBiHA4T8DMqTM5aPSo9LDQprxP2oWhGQiHVzSpOVQxv+D1t8AfK8dTvqpIYgAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAoCAQAAACLdmhPAAAAO0lEQVR42mNgoCFghLP+YxNlwq+bBY3/gOErdoX/Gf4z/GdwQBUkYPio9Kj0SJBGz4KQTKRDnRw6iAEAc94KUF/00VYAAAAASUVORK5CYII=" },
        ["\\"] = { 20.0, 21, 0, "iVBORw0KGgoAAAANSUhEUgAAABUAAAAoCAQAAAC7+nluAAABAklEQVR42s3UzSsFURgH4N+dbkRZ2NjYsJGFLGTDRpL81SgWytaalQWKQuT7sZL7MTPnKsqc1Uy/zvt05rxvR0Z9qvxtdCcipy1ZX2vSM5iT+vW962OOkiRbo1h326O9JdbBRROg96XrDiyVrMlbDtoI/efaru0rsgxudUvW6LgEayVrInvNhME70KYdKDMPnkyUrBFnYLtkbSX8IDoMmPGBd9NlwFVOklTZHKVhGgg/iNZdtymvYLZkTe5zXLdvfXPXE2pv/AY4L/3YiDEPYLFkTV5yOExoGkR12oZWXgE3qpI1KtdgtWRNPrI/SGgemsPaprFjATwa//rS+T8D/jejn0LPbgdDcM+mAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABUAAAAoCAQAAAC7+nluAAAA4UlEQVR42t3OvyuFYRjH4cvbiSiDxWJhkUEGWVgMksHm/0UxKJvNwmRgoJCTn+drk/PjPc/7bnJPz1Of7vviz8yeiKsm6Yw3EYt1QfXz6joDO+WUw/Hp79kScdsk7XgSsVoGfDoZR6j6fi20ayIedcrphDsRm2VAHNUTqoF/C+2SiFfTTeJrEbtlwBhCi3R45vXEl7km8YWIgzKgFWFfxGWTdNaHiIUy4Nn5KEI1cm8L7baImybppBcRK2XAu9NhQlWzt4V2XcRD7aq+a/ciNsqAnuNBQv2BFtplEV1T/vd8A6oSSk4MQVTCAAAAAElFTkSuQmCC" },
        ["]"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAoCAQAAACLdmhPAAAAPklEQVR42mP8z4APMDFQR/o/EnQgUjcLnHWVgYGBgUEbl7QO1AqauHxUelR6CEsjcskV/NLaZBjO+H/Q+hsApl4LuadkUdYAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAoCAQAAACLdmhPAAAAOklEQVR42mNgoAv4jwQdYIJM+PWwwFlXGRgYGBi0cUnrQK1AAQQMH5UelR4J0ohccgW/tDYZhg9iAAAXCQmryImlhAAAAABJRU5ErkJggg==" },
        ["^"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAA3UlEQVR42u3TIUgEURAG4Nk7gwgXDCaDgtXuic1oFBHsFpsmk1EwXZMrdlEsZqOgYDSZVLAIgnAgGDz5DLp3u49bMIhp/5fe8PHgzTCZ+E0aUbN/ZIchxGM0k7rimfTmO+ulesJ25bmuZmOeDLNYxTbAsy44rWI3YM+cT/TNjGJL4N2UcA46o9gZOBLCMuhppWxWH8z/3G/BTso64GLw9iZ40Cyylh5YGbBxL2CtyLbBnazw731wNWQN92Cr1PlpH2AhZ6vg1UR5QI7BSc4uwUGCQpu8zVm9zjX7C/YFSAtmSzCso1QAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAA2UlEQVR42u3QPyiEARgG8J8/g9QNBpOBstqRzWiUlN1iYzIZlek2Wewii9moKKPJhLIopa6Uwemx3H3uPvfdYDLcsz1Pv+HtZZD/l0MRT0b6oQnvImK9H9ttobipRqOeCxaLVWxDxIsjEWdV7FbEnllfomm6F1oS8WESFyLqvdi5iGOwLKKhVkYzmiLmWv1OxE6Z1UVcFn1TxGP3m2saIlaKZcyriLVOti3i3lDHti/i+mcY9iBiq+uMKZ8i5tvDqog346V7T0SctuuViINfL1qQ6jcPMsgf8g2eWFsWY0DePgAAAABJRU5ErkJggg==" },
        ["_"] = { 23.0, 24, 0, "iVBORw0KGgoAAAANSUhEUgAAABgAAAAoCAQAAABOBPLeAAAANUlEQVR42mP8z0AaYGIY1TCqYVTDqIZRDUNPAwucdYWASh0IxQivHwhVFIxkOolxtAYiAgAAq4sFTWwyTp4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABgAAAAoCAQAAABOBPLeAAAAJklEQVR42mNgGAWjYBSMglEwAgAjnHWFgEoddA3/iTOaaTSQaQEANSQCBZ2X634AAAAASUVORK5CYII=" },
        ["`"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAoCAQAAACGaBgIAAAAWklEQVR42u3QoRGDUAAD0Hx6dBNmqahHswJjME8HQSI7R2seguM4GAAMiXsuKXJMlSuoT70zweQlaxeCj2ajtxH8DCtF0Zpgo4iHzlek7GY/88+BLnziphNoBo5OQIQxSJbHAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAoCAQAAACGaBgIAAAASElEQVR42mNgGCSgkIEVXeg/w3UGd3Sh/wz/GTYzqCKEvBnOM/xn+M/wk6ETIcjIEMZwneE/w39U7cwMCQz3Me1mYxgFIwwAAC6jD3e9pCk5AAAAAElFTkSuQmCC" },
        ["a"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAAA+0lEQVR42u3UPUoDQQCG4Xc3hd7BYJog6TyBEBSx8QyeQLC38RCChWIRJaB3sBE77URUBH/ATWehXap9LTKGzUz8KS12phk+Hpadb4bJ5G8jp4Y1/BbOsMEZrwx54YRloIvI1/Uare147+TouxZWIy1i2/cQlg4cWKr6FMOGVyHatSnivPuVb4/hegi2pDK3U3iq6uUEw8zrKsyBRQD6UR9yFNczB8BjUt1DDEsAGgnMYlgA0EngQvQr9lS9Mf9pM4grIdj5rZ7M8xAd2BKx6d60wrHl2/gIC4twhHcpxLa30aU4dHUaxFk3vfDDoc8euyR2qzCrX7N/Cj8BWXRaQvYBR1AAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAAA6UlEQVR42u3SvUoDQRTF8V/WQt/BYJogdj6BIBGx8Rl8AsHexocQLBQLlYC+g43YaSeiIvgBbjoL7VLt2IxhM7vRwsZiz1Rz+DNz77mXRo3+rmkbzr0ZenWqh2VBEMaxBQ/R/j59a1Ww6yOahYGBQhA8p+CU62jtaoM5+6W3R1qPxtZYMdtV8EwQXCXNtdyUwQyLoJ+AwXH5mmEWPFUCe0zBIrak8nkC5jHJVPOpcSQIbmU/NQMr0dj5LZ6Wi2gd6IC2vbrA6XgfjTCXxxHe1y1F112yFIdW60BmbLr0aejFiaVJa9bov+kLV8N84dyVMFwAAAAASUVORK5CYII=" },
        ["b"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAAA/0lEQVR42u2UMUpDQRRFz48W4hoisRAhTTaQJgQRC5dhaWehrYvQQhuFNHEVQWu1UgslIv6UFoIgFuZYZEz+n0lhYSGSV945MPPufW8y+VlVmIG/B4pI67913eSUPu8M6LHFYuFExFGteWy5+jYMlhTBG1WH5g4cBu3NegqqHlkTccmDoFw5n4J73xeJuBPUzRi8NiuBeKlqVyx13SFeoA4Ajdie+8S8BwCqMZgu5BwAnzG4moB1APLY8LiZineqnqT27JbA/aC2pxl+aFXE2jjO89E9RfAxRPhsPo7wxeU0wg3PoqG4dWXaULTEdbs++eGrF267MHlxNvvN/ij4BeDzW3B582yEAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAAA80lEQVR42u2Uv2oCQRCHP/8UkmdQziIEbPICNiIiKXwMSzsL0/oQWmijYHM+hWitVtFCMUjuSgtBCClyY3GbQ3dPTafFzTbLj4+d+c3sLkRxhxAEoXANif/3rAcC8/TZ8I3LiCpP4a5LdNXub214DQM/EAQPBxdPaQdyJigIHSwAMrSUMiNpgu9neepKrejgnJhW+xRBsHXXA0QDBwC+oVNwZTRvDUBaB8UAEwD86uCLAfqtcW6ZibNEEHpmexpnYFOpxbCGt/3SsYJxjk/z+NKnGuEXTjDCHVlzhG8MtUux4PnSmyljs+WHPRNqpKLv5PHjCAwpfhnCXFP+AAAAAElFTkSuQmCC" },
        ["c"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAoCAQAAABZJmIXAAAA/UlEQVR42u2UQStEYRSGnzvu4i6s7KSUDWUlkrGy0xRZKEqZhQX/wc4/suYHiEhZiZVRkltMZmfSPBbuN/ebSWxkY87ZnDpPp7f3rZPIz1VhAP0TKGObI+54o8kpB4xGlJ897Y291XKr2BXQlK3u6rY7d1wvodRLVZ/dMBUT18xVzR0O0Kqq7y6E8+K8HVX3RFKgDsAhZ5HUc2bJgKcg/FrV3ehOX1eAMQDuf8HMBwDGv4euAKj1bWaoUmUiCF8pLFiMxM4VFuwEn4a8UPXFzcLMmo+qNszKWCZ9jWIJc9ulOLuvAs5d7g0YMbPusQ3bNj1x35FSYTL4Kn8MfQDq0xIZnlBlUQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAoCAQAAABZJmIXAAAA60lEQVR42u3TvUpDQRCG4ceY4hRWdiIINgpWooixspOAYiEoCKaw0Huw846s9QJEUQQr0coIIgY0mM4gGQvPSU78SUqbfNvMzrw7sN/sMtBAHSV2HLv3ru7MobGfyIxb0bUatruRaY126a4dt2x0kKIrIbzYVMSQdTUh1Ixk0JoQPizmei9oCWH/qwsVcOQ8B12Yk+A5S9wIYe/vixcwDh56Q31VwCOY6A1dg/K3yqySkslsu5pasJRD5lMLdrPEsEshvNpKzSx7EkJV0jk35S03lixuWu434JqV355KxYmqprpTB0YHv+f/9AnGalyQTzF5DAAAAABJRU5ErkJggg==" },
        ["d"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAAA+klEQVR42u3UMUoDQRiG4Xc3RQ5hiCAi6byBhIiNeAUvYGNv4yEEC22MIBjPYJNWO4kggoi4W9mkE5t9LTKEzUxQG0EhM83y87DwfTNMJj9bOQv427CLiP8xTJNdrnnlnWfO2EjkJJgdH5xdV26Hr0l0EVcdh2FlaWmlahnDhrdhdGRLxLYntX9P4U4Y7EttH6RwoOrNDMPMuzrMgXUALpKU53E9SwA8JYU8xrACoJHALIYFAJ0ErsWF91UdmX8VBnEzDA6/qydzGEanLovY8nhe4dj2bXqEhUU4wvsU4oqj6FL03ZoHsemeQ8d++OKlPbFbh9niNfuj8BPwvlpFgpb4OAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAAA7klEQVR42u3TMUpDQRQF0BMtsghDBBGxcwciio24BTdgY2/jIgQLbYwgqGuwSaudRBBBRPy/skknNhmLjCF5P6LlL3Knmst9M+/dO8MMtcGGJEnDzdx/q2ohbNpz692nV+fWfytY9ZRn/Fk3dsanHmJZP5MDpdJAkpRROO8+U8daoO107OwRdjNxMNHMYVV4LUnuQtcNDzGZNXAZhMlFtGcBvFSceI7CQR5J5fIgLLKTESuR6EiSXogzDANbmTj6y56GbqbOLIKWk2mG0/YxirBQ5Agfq0KW9MKj6NieJqRpX1fflzdXNuOfmaGu+AYb9HzuTBXqlgAAAABJRU5ErkJggg==" },
        ["e"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAoCAQAAABZJmIXAAABEElEQVR42u2UvS5EYRCGn7M2uxt3IJGNQtisC5Do0YhK6wIEcQMSPTegFQ2Nwh2ISkQohMSGDtlK1ob1F4/i/Ow5p0ClsTPNl8wzk3nfSb5Afo4CPeifQCXm2KfBM02OWaOaogyz5rnZeHEpqkXQiK2o9OZN8tbVLlT0RNVb5y2KOOq2qh+Ox9CMqi3r8XgRN1TdiaFdVTczCA6o+mpZAuGSGnDHQ075GADDXCM++l1M+Asz26FPF6ou5nZKZQE4BWA6N6FIhQql2PFJVT+dSnWXo/lbsQUFD1V9ctl+EeseqPoeehf2DdpMLnblfaJsJX07rHqUk95xIXtgxD5n3bNhx7ZnrjvU3TDo/Sp/DH0BpuBKphJopQgAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAoCAQAAABZJmIXAAAA+UlEQVR42u3TzyrEYRTG8Y8xzUzuQGmyENO4AGWPjaxsXYCQG1D23ICtbNhYuANZSWIhitihWWlMjH85FuaP32+Spc08Z/G+p/PtdJ7z9tJVV23lzNpz5VnFkVXFTqTkTCTixWISGVZtlN7ctO5hpY1kHQvh1pwsGLElhA9jTWhaCFXlRPd1IWw30x0hbKSm7BfCqzw9uFDCnYcUNgqGXMNjylcyxsn8ub/a93EuhIXfuQxOwFSqklVQkGumE0L4NPkDyTf6b7a7HQjhyZI+ULYvhPefuxtQab3YpfuWs+XkBEWHKet1850Wes3YdaWu5tSawe7v+T99AUB0cEK1ttzoAAAAAElFTkSuQmCC" },
        ["f"] = { 10.0, 11, 0, "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAoCAQAAACCncg1AAAAfUlEQVR42uWROw6CUBBFzzM2hsROaxrXQMuqWIrb0U3QW9gQN6ANx+INYAh2NsQ73cmd3PkkWdKG1eA9DVc6XgCY6+TdQTjiS6Cntwkf7VU9W2RbxlV4D9EbkbuIfQz5SZgfMX2dewu0FJQAtCMXsZ4m/oxc83d+j5P/sOUbvzdVzcWh5Q4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAoCAQAAACCncg1AAAAbElEQVR42uWOMQ5AQBBFn41GNtFRa5xB61SO4jpcYnuFRlyAxirMxq5wANk/1bz5mf/h78rpGFnYfVgzY2U8DYI2phuWHFgsPdr3NuItHFAAZLKtDicQhlxMvbdNAYOmAsCEx/bZ+ONJ1DgOnToHG+PU4zJlAAAAAElFTkSuQmCC" },
        ["g"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAABX0lEQVR42u2UzSutURSHn/dQhkopRQjJzMjIRLkDIX+CjA0YmJmYmyqKCbo3md+h1JmJ0b0pHyXiMPBRygTlPAZnn+M9++W6MxNrT/a7evZev/e3VjuR/4sc3+A3+CFYxzhbXPDIGRsMAgOIlMertLfHQ6tjw6GwK9EidnkfkkUvvbSo6mkM1rgXUgu2iNjqcuruCjgaEtOSWrNZcFPV3SoME/+mwRzQC8CvyA9Zj+1pBuAkY91xDBYBqMmASQwWAOjJgN2RFNdU3Tf3r59BHAyJuc/sScyH1IptIra4+J7h2OpNpYUFC6GFf7IgdrgfDcVSRVIViHVOmvfeJ8/8ab84EGpEYHaNqXpV+qoF6ukDimxHPvYBcPrmY2PQMlF1X5PXqs6kS/9W9cX5YE/OHx6pemdjGmwPp1VvPUrN+1i5QrlQpzvGcevIm5R0b4dd9cAHnz0375QNac3J1z32r8MCA0toKevtAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAABS0lEQVR42u3Uv0uVURzH8de9BY2CIASJSkq0NTm5CDpEin+CNDfo4ObS3ioU1KJhSHujBHeLnBRBDULJq4M/QGjJoOfr0On23PNcdHBx8Hum8+F9nvP9fs6Hh9u6revXPdNW7ftlz4oxjAoh2rHHtpP8b614WgWHnCWxcOBAIYTdHLxjLUkLekGft6Vvt2oyCbNtzcxXwY9C+JoNV7NRBut4Aj5kYHhf3tbxAHyvGPYtB4s0ksrlGdhMTub1KBeWhLCpftkwMJaEl1fZU9NI0jv9oNfrTobT57j1hE3N9ITrnULx0GYWijetlioxe6HhzLk9y0ZaMSuuTuiUEA7/bu6iyzAKnzNwGOz+F3pSL8/bsPuOhDBXFj8J4Y9XyZ66cTtCONVTBgfS6RBO7JTyPpU3PuhLZk84MdFpxppnFm356bcfGmZ035D/wwWdqq5hALG3ggAAAABJRU5ErkJggg==" },
        ["h"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAAn0lEQVR42u2UPQrCQBCFX0SwstAmEAtbLxHwVFZCyC1yCk+RWsTaRrARJeBPKXwpMoHdaCGpRPY1OzvzwfAe7EboGw0UsP4YQmj5D04nyrTVTXftlSt2JgjRaMUFV2dSLAQXa3TiwMvqK7NPWMkCIaYU1inesSPjdgliA0DFsIutHUik1p0jPKc7z3V7S7qBPD3sYecovIX+WBR+pB/Aav/GnC4sAJ2PAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAAjUlEQVR42mNgGAU0B/8Z/jP8Z3DArYCJOHMGgTJBhnqGcwwfGT4xXGJoZBDH7tMyhtdQFgS+ZLDFpgwCnzDcYfgDZb9hkMam7AiDBgMDAwODEMMMqMgMTGUPGXiRxNYx/Gf4z/COgQVdWQ2KQ2yhovLoPr2AogzGk0JX9gVF2WcozT604nRwKRsFgwEAAFZyO2m9t3BOAAAAAElFTkSuQmCC" },
        ["i"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAoCAQAAACGaBgIAAAARElEQVR42tWQsRGAQBAC96zMAq7/CqSONXgDNTM7CXdgBih5a2MMag5CX0zEqBoRH0HvrjbGXq76sHFf+XFPzEPln9uf97Uh/LLdoA4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAoCAQAAACGaBgIAAAAOElEQVR42mNgGMzAh+EJw1MGH2Shpwz/Gf4zPIVwmJAk/qNqfIqukTjgwPCf4T/MLCZM+VGh4QEAqs0M6AMt1OoAAAAASUVORK5CYII=" },
        ["j"] = { 8.0, 10, -1, "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAoCAQAAABtX6MLAAAAdklEQVR42mP8z4AJmBgGraAPwxOGpww+UN5/CHz6//////+fQnio2v+jqvT5//T/0/8+EB4jyX53gJoz2ENp+AkyI8cmTNCOgYGBgeE9LIoT/h/4f+M/BGyBRtT/hv8w8P2/CXIK+cvwnGEFgznDGYhuRsoyAgAQU0jwbkeRQAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAoCAQAAABtX6MLAAAAaUlEQVR42mNgGFrAh+EJw1MGH1TBpwz/Gf4zPIVwmFCk/qNrf4qpnXjgwPCf4T/MTCZsKkYFaSPIjBybMEE7BgYGBob3MLUJDAcYbkBjaAtMsAEq8J/hO4MJsva/DM8ZVjCYM5yhSroEAI+FHgDVQ/YwAAAAAElFTkSuQmCC" },
        ["k"] = { 15.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAAAx0lEQVR42u3UMQ4BQRSA4bdEs629ALWGOMB2EokTSDTuoNA4gehl7+ACKg1XoNHSIooV+RXzNnbXvqgUkn3NzLx88yZvJhkP+RYVKYlNEAQJ/7WjhTawEz9pxkXo8gx1fSBAKCBt7gCcaboteVLnCMCNrtbMkSprAB70E5Anc52N3yBLljrO0iBLXERZQMG9xB+ZVJWVjlP7oJBIZyOb1NgAENOziBDo1V3pWERocQHgRMMiwoAnAHvrGQVhopktPuKVP8MPyQsZRF2AtiYWOwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAAAtklEQVR42u2SPw4BURDGfyEarb0AtYY4gE4i2RNINO6g0DiB6GXv4AIqDVeg2ZYWUazIpzCJ5s1uIaLZ7xUz772Z4vsDJb6CEKIf/qwU7/95ZGkE9tTDjEZ2PxKFSXe4I8SZVliXBilC3OiFpauyQYgHQ0/dhXUTz4CV1bnv0fskxbpkeU6vrc7ywpBYN/ZHamwRImPgRyoy6a50/dS1uSDEiaYfzJgnQhw8GwGm9rL7hKHEb/ACFQduO1rELrsAAAAASUVORK5CYII=" },
        ["l"] = { 7.0, 8, 0, "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAoCAQAAABpqnM2AAAAI0lEQVR42mP8z4AKmBgGk8B/hv8M/xkcBp/DhocA4/+h4lIASS8Fis+oV5cAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAoCAQAAABpqnM2AAAAIUlEQVR42mNgGNTgP8N/hv8MDgwMDAxM6HKjAhQLDB0AAMkhA2ZQ5IfLAAAAAElFTkSuQmCC" },
        ["m"] = { 29.0, 30, 0, "iVBORw0KGgoAAAANSUhEUgAAAB4AAAAoCAQAAABDGoKZAAAAv0lEQVR42u2VPwtBURyG3yuDRcnkZrDaZVTKB/BljEZZzMqn8CksTEqZDJRkuEpdKUWP4R66/9xBmZx3Oj29T+fUr1/HQd8nJytb2cofZIRQW65GWusqTwv1VDKdqgZayZeneYi+vSBDfMLZ0kB0OcdoE3NbWA6yZ8PdnA90uCXokUqaPKOOEGUmhjxS6Tgp7yi+HoSYZtAT+bjcD5VEK5PWEJFRLSNzWGZSNz7nS6TmZ9KCXYz/kR37S1r5p/ITwqH8GoyzbA8AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAB4AAAAoCAQAAABDGoKZAAAAsElEQVR42u2PIQoCQRRAH2KwCGJyMVjtYhQED+BljEaxmAVP4SksmhaETQYFEcMKwoggKGPYCTuzw4Bhg/DfL8P7/4UBQRDKQKPRDIlYkPAkZceEhtm2mbFHkbLNWSeeo8wrmyM9YMzdsX1fnM2ZA2/zvjDiVbBXWr54QxeAJitjPl67LMYn6jm3DtgbVTeeWl8ZBG0HoJJbxNZZHLSRGz+sMxW0NTf+GYn/JhaEcvkCYyNkguDvT1sAAAAASUVORK5CYII=" },
        ["n"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAAnUlEQVR42u3UrQoCQRSG4XfFYLFsWpPVOzAJ3pXFbLALXoVXYbNYbBbRYtjiTxNew87C7GoQk+B+ZWYOD3PgMEwin6RFw/6aiciYjDk77uRsmJBGTsQiMy/GOTo03BCzIif3PsL+bPaOrR2ImLoMlcUrO9gtm4grVXPbdTaNEI5CtS9WBrKtzKA89epzu1XYNayd5iF9z5LmR/oB9gSYSJwx3SB4nwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAAi0lEQVR42mNgGAWjgDD4z/Cf4T+DA4MEQxfDVYavDG8ZTjOUMwhhV9bG8AnKgsDHDObYlEHgE4Y7DH+g7JcMEtiUHWHQYGBgYGAQYpgBFZmKqewhAy+S2DqG/wz/Gd4ysKArq0FxiC1UVJ6BgYGBCUniAooyGE8SXdkXFGWfoTQHujI8YFTZKBiEAADEPTtiZvY8GAAAAABJRU5ErkJggg==" },
        ["o"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABD0lEQVR42u3UIUtDURTA8f9bVoMTUUEQwQ9gFFYMBi0azH4Es9j9ApoMK4Ir2hYWNQmahBWDTBGmSVAwjenfsHPde75iNOy8dM/5ce+758DN5C9RYcRGjBp12rzxTps6tYJz8FVt+juaTkU12KSdKH36ZNevWD1YzbOWqn0PnBZx3qOArSHbiNROOkLE3ciuJ9ZQ9bKAEG9UPRWpACsAnJe60IBUrQBzADyWWAdSddi3foll0bFgLwAsltgSAN3ErgHYKu21A8BVmsJmXH27cM/9yK6mhmReqNpzzwkRFzwOdJafwozdSPe89/lnWG3H8gxnY8d8nDheHP3g6DUb3vnhq7ceupz/02z0Iv0D9g2o/iUBPlJZDAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAA+klEQVR42u3ToUtDURTH8Y8vq8GJqCCI4B9gFFYMBi0azP4JZrHvH9BkWBFc0bawqEnQJLxikCnC0yQomMb0Grxv2/MtGA37nXR/53vOPYfLZaSR/qqqutSbd6m66jCkoin8iqbpIjSlHVOfnmS+4ulBZRBrCYKumhmw4CiCrT60Ga3dwg170d3IjYYguCzNeyMITiHBKjgvYQ3ybIJ58FjC2uTZpGd2S9gYCDn2ApZK2DLIcuwabJd6/Wx+lRtbcfWdAnYQ3bV+3YUg6Ng3CRYdR+hssHJWFu2Oe8+9x0qNFyeZix0H48SEIeuva7jz4dWtQyujn/Xf9A1nf2WCXf28XQAAAABJRU5ErkJggg==" },
        ["p"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAABAklEQVR42u2UMUpDQRCGv5c0OUQkFhLQwgNoEwKpvIQHsLPQ1kMoGJuIabxECi1F7JSoiOCztNBGLMxnkVXf232CnYWZ7X4+dnb+mdlMfhc1ZuAMrARFpAOscMgdr+SMWKdRIEWcRs++5Ri7ZLilCF6rOjH30UnQXmynoGrflohz7gblzHoKbn8mEnEzqGsxeGFWAvFc1WOxZM+QeIGGACzHPt4k5t0C0IzBdCHrALzHYDsBFwHIY8PjYmpeqTpI7dkqgTtB7VYZvmdTxJYHQTmZ5imC49DCB/OvFj45n7aw5340FJcuVA1FR1z1yHvffPbUDRvfL47BH8//XNfs7z77D+x2clMxEBXkAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAAA8ElEQVR42u3SPS5EYRjF8Z+rsQgyCpmEwgJoJhKVTViATkFrESRGM2Iam1BQiuiIj4jEVSpoRGEexdyRmffeQaKQyJy3eXPyT56vw0gj/U4hhAYW7LvzKndk1UQ1uKxZ/HrvylwVeC2EjtyjTuG9qJfBEJpqYMp24ZwaL4ObA3XWC3clBc+NJb2fCeEQsj67LRKwDeZT8Ka0tlswmYJRArtjvKdgvQTOgvy7YTKXQmiV17MxAG4V7lLVwne6ravZK5zj/jq9y3ZP+CD/POGT6apQ7CahuDAzLGaLDtx78+zE2rCYNb6KbPbTbP8r8A/1Abv+gRQIDFfQAAAAAElFTkSuQmCC" },
        ["q"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAABAklEQVR42u2UvUpDQRBGz70p9B0MpgmSzicQLqTQwlfwEcTexocQLLRKQNR3sBGstBMRUSSCN52F2Gh1j0XWkOxefzoLM9MMH4dl55vZzeR3kTMDZ+CX4BwbnPLEG48c0wUKRD7Xa1Tb8dbpOHItVCNaxLYvQawcOrRSdRCDDS+DtGtTxEX3J84eg+tB2JKJ3E7BE1UvpjDMvJoEc2AZgMPID+nH9iwA8JBYdxeDFQCNBMxisASgk4BL0VXsqXpt/l0ziN0g7PxkT+ZZkA5sidh0r85wbPk8HmFpGUZ4n4LY9iZaip6rdSDOu+m5r747sO+KWNSDaRbxCP/fc83+7rP/AH+fcXjczEKSAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAAA70lEQVR42u3SPUoDQRyG8V/WQu9gME0QO08gBFJo4RU8gtjbeAjBQqsEgnoHG8FKOxERRSK46SzERqsdmzFsZtcPsBAkz1T78jA7/w+mTPk9szacePTqwZEuOoIgTGpLbmL8cQ6tVcW25xgWRkYKQTBMxRkXMdrVBAv2S3ePWY/B1sRjtqvisSA4T4pruCyLGZbBIBGDfvkzwzy4rzTsNhWLWJLKzxMxj51MWUyDniC4kn1VDHRjsPNdexpOY3SgBZr26hpOy9N4hLk8jvCubinarpOl6FmtE5mz6cyLN0N9K5+tWR2ddIQ/4l+Jf8g7TyeAOQvMwskAAAAASUVORK5CYII=" },
        ["r"] = { 11.0, 12, 0, "iVBORw0KGgoAAAANSUhEUgAAAAwAAAAoCAQAAABgQdNMAAAAZElEQVR42mP8z4AdMDGMSlBJ4j/Df4b/DA4MUgx9DNcZvjAwMDCwICmyZdjEwAvjMP6H6ICB/wyPGT4z6MBMgYGl/6X+Q81Fljjznwkm/B/FVcsY/mF37k1c/vg6HOODccSmdgD0qDHVCaRzxgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAwAAAAoCAQAAABgQdNMAAAAU0lEQVR42mNgGAW0Bv8Z/jP8Z3BgkGLoY7jO8AVdopbhE5SFJvGf4T/DP4aHDFcwJZYySGGz4wwDE0IIicmwjOEfdombyIYgS3zFJcEwhCVGLgAAvucg1pg7U3EAAAAASUVORK5CYII=" },
        ["s"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAABB0lEQVR42u3TvUoDQRSG4W8TbGRDRBchlVjaWAhWK4idIHgLqQyWltoGmxRpvAAbqxVFsBFvIIV97LRJsSSSQoTABvS1mJ/dTWGVRsiZbnjOzHcYJkB/V0UL8O/Atq7U16cyDXSvo4JAiEu+KVfCEkJIiBO7OeWdkSfdHLwC8EyEEDFDACYsOzAB4Nh0IE7tGTsO9AF4oGZBlZCQkIoDLduR0iGm6k/yGcQFmQ835oaDWSA2aNurTD0SloFZm5zxYsldDtaIiEwkipkaDpi5Dz1YtWDXgVsABuwhxArXAPyw7sAWX7ZnxJufJymG3Cedeawe9fIUdc7p8cGUlCeaeeRg8bvnBH4BP5lfq6jVJS8AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAA/0lEQVR42u3RPy/DURTG8U+IRSoVmiYmsbEYJCYSsUmEtyAGYjSyitXiBVhMFSKxiDfQwV4bSxONikEklf6iruH3r8Vokp4zned8z73PuZd+/L+YdazmVVvdhdXv7UMdoScrhvL2ViJGHjQz5CgH7gTBjRJY8CQIWoZToCUI1rOBneSMuVSoCYJLI0k9qKCgYCAu+LCGaZvK3j3qiEQiIXexr52Ze3Fq+ec7TDpIrorzSuG355qy6zZBznN5XEkptgS2E2QiFeK9VzJgLAHmU+FMENQtglEnguBTOQVmvCUzTffZPpVuc0sa3z6rqtjrv2hP1bNIw7WNLsv9+KP4AlUzcf+T/n8vAAAAAElFTkSuQmCC" },
        ["t"] = { 11.0, 12, 0, "iVBORw0KGgoAAAANSUhEUgAAAAwAAAAoCAQAAABgQdNMAAAAdklEQVR42uXSsQ3CUAyE4e8hqChYgSXoUzIAizBhFqDNFDRpkKg4ioBeUCI6CpRzY+tsnfTLJea1sgijEZEfZZQwBVy+XKzR2dqDbuREpMkgtf4S+2O6NrT9azp8QmTjaoe7ixuObyRyzlii0jmlTV+NsthvfwKVb0MA7dEX1QAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAwAAAAoCAQAAABgQdNMAAAAa0lEQVR42mNgGNnAgeE/w3+G/8hCTLjUki7ByMCAajZMFKcOFgYGhqsM3AwKDAwMDAxX6etc+kn8w1QGYX6A8kxRA5GBgZXhNQM/AwPDD4YzDF8ZGBg8EAoKoYGCETQMDCEM+xk+YJMYaQAAmLMbAL5PTqoAAAAASUVORK5CYII=" },
        ["u"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAAkUlEQVR42u3UPQ4BURSG4XdGJzQKO1ATK5hNqBUWoLMUC7ANobAEtYqENYyQV+End9wpJBqJ+5Xne6pzkpPJJ8lJ7K+ZiBRvXTBNe/uGnQFoVZp2zI4A9CtsELMtABOaQTONDzfynrU9ETvOfaYQHyx39Rrv3XnROoZdN4a5Oqtj2HDs0pOlBxcOJWRZ+kg/wG5J04G19itzXgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAAi0lEQVR42u3SMQ4BURSF4S+jExqFHaiJFdiEWmEBOkuxANsQCktQq0hYgwl5mslkxpsJnead7p7z597iHpKSvisIglm7m/22J2GNWA56taQfYzcwrmGTGDuBpW4lWcWn58X/DkZgYFM4tU9n9qV9cfYsp49CDB0rUfCybu5Nx8LO3cPV1rS1Xkl/0xuB8jPThFc/7gAAAABJRU5ErkJggg==" },
        ["v"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAABDUlEQVR42u3Uv0pcQRTH8d+9gmC/KKTRRtgirSA2SsgTWER8BUnjS1gEH0IUCwtbC7GyEoXYiaQQsRCUpEgVWMJ+LObu9S4WqWzCnoFh/nznd86cM0wl/7I6E+S/QL5F5O7NzllE9pL4qNiSdNqsv+CTRFyD3TFkCzyoC7LdTKsOcg52pCBzjehKC3wwBH2ROslTTpMkG22oX1IlucptkpRTm+BR3ahcgK9lVpZm/AarIubBQK8gJXV/ctxxVfqT/GzcNtJr4NmU+A7WR8GPkMo9+GwR/DI9QupW7LBxUtwcZdDer81Fvzl9A5Zf09hN+qWR/egWo/sYDtrR/ljNO3zPAAwtdFWqyc/wjsgLahEUIRVcZKkAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAAA9ElEQVR42u3Tr0rDcRQF8M82EOxTQQQtwoJVEEGU4RNYxFcQg76EQSy+wdBsMSyZTLKgzWAQMRhEg0kYsmPYH39zWi16wpd77j3ne+He75d//BUciLgbyZ+LaMCCiFgcEkx6F1Hv0msRh0OSbREPyl2616OlguRCxH6fTvUuXR4IpnVE1D49TRFHA74rolXsvCXisd/ZpYidomTcq4hVMCuirdotdn1vTsFm4Wx6Hh7UmognFVyJ2Pg6y5J7EevmRbwY65cqA9GEFbTNqKPhbHRXtZ77RsTS9wtt9bYVt8V0uRCfDKLjn55FVVtEx9z/H/ktfAAoQVku1bSkGwAAAABJRU5ErkJggg==" },
        ["w"] = { 23.0, 24, 0, "iVBORw0KGgoAAAANSUhEUgAAABgAAAAoCAQAAABOBPLeAAABWUlEQVR42u2Uv0odQRSHv7vqrUQUtQiohTbGQsEHMNe8gK2dlQ9g61OIrZWNItiEKxYhgoVomUYCAbFSBMH/2Fy8fBZ7Zh1DmlQWuQeWOfxmfnvOtzOzNfm3KOgYOoYPM6wjsp1pnxCR1UxbQWQHCpoANLLJ+Ri/ZFo53wSs+6DqpPFiNyzjye5QCm/VFweloMX3P2p8jbGX2chmGABOuCmh3zc1xjhwCsDcu4b2ABCHbKtXUX5J1QVVm6F9U3VKpBSOMopN9d4uT9U7i4rgvDQXFX0qPA8c0uYA6Ge6ImjmG/dmmGAUOIinpMgJSJ/yLCiWVf0s9vmi7gbBo/VyZTKsBcWWehnaiXodBLtpl9JZSk01qmbgBzDMYk7w1lKP9+pPVZdCa6j6S207nCpQHYgdU4yEUvc5lONqVXa8U9HfXETW4iiyvb/dh33akBHkeWaodf7e/4nhFcGjHMm/6Oc5AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABgAAAAoCAQAAABOBPLeAAABQklEQVR42u3UMWsUURTF8R9r3FIMmkJQC22ihWJjqcknsLVLJdja+inE1spGCaaRLFYGBIOWNkEQ1EoRLExUbCTLsZi7sy8bv4C4F4a577x33jv/mWGY17z+nbov4nGjnBIRdxvtjoh1BjbBSjO5WvfrjdbNb8LQdxHL/eSDOuGnhVIGvol9J7rhExG3e8OHMsTVUq6IeNl5zYQ66xx2wLUDgUaTHU8aiy81WhNxQ6S24qmIi1Ok7YbiodhzxI7YNegJPk5wzIRaxQtjWzjuEi5b7NccMpx3Blt1dRQzBF29L4pbIi7gmH2xUQQ/DA8a7hXFI/G5tNfiaxFs0Eaahlrpw/AcS262BNM6ak+8EbHWP/2It2Js6fBHuN6/39OlDP0q5dV02aDvJoe+86m637arG/3N8MyYhqDtR/O/wP9XfwC2hXncCcgdHAAAAABJRU5ErkJggg==" },
        ["x"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAoCAQAAACLdmhPAAAA8ElEQVR42u3TvyvEcRgH8PddpAyXTUomBtkkKeVPMJuUSbFajExm2UzKpJSdiY2NwSZRFotc+ZW7l+H43lfKYDLce3xeT0+f3vWpyG+ppsP/jpci0shEMevNbUTmk6g6BWeqImIdHIlEjHsHyyKGPOHZ8BfHJnjQL/bAautSi2vuwK4ZcKG7zDGnlVs0TH1OC45DX9kqZiUe8QLu1NrcruU+j0mSWvpKvRSb28Xxg5/HZzRx87kw+517XKJp0j641lvmNbAjBtXBRptHvaJuQMQKeDPW4oqTco26nINjFYlFcKWneO+0JliQSueH/oE/AHlrNI2r36DPAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAoCAQAAACLdmhPAAAA6klEQVR42u3SvSvFYRjG8c85kTLIJiUTg2ySlDp/gtmkTIrVYmQyy2ZSJqXsTGxsDDbJqbNYRHnLOZfBz+84MdmUa3q6v9f99nTzr7+mJRFNk2WkV13EPFSdijhTLfC6iKNP94Q3Ectg2KN4MtJusCnizgD2RKx+7d+nIWJXTcSF7s4B50REXTRNf9/gsDDE1k8LjnoW0dDXDlbL1637Yo7+n7K3y+IH32FNS9wUhtlO2ONStEzZF3Gt9yteE7GDIQ8iNtpwzIt4MAhWRLwa/4AVJx3f2OVcxLEKLIq40lNWm9ESsfB/7b/TOylhYSIUhb4nAAAAAElFTkSuQmCC" },
        ["y"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAABHklEQVR42u3UPSuFURwA8P/1FilZDQwSpUw+AaPFxmSgfAiDQUqKJBZlNCifQFFkkJSV0SBJdJO6lHR/hse993kuTzaD/M9yXn7npf85nYL4KRrin/wJshRCvEZH3chCCHEaEXqVwYxIlYJrMCVCOABHGTIKHrUmZAKU9aTIDlgRCWnxAOaqoEMJZX0VElbBZZXMgv2klXQNSGL4k5yC8TQJJ2A9NeFGY5ZMgXtNwjKYr2xbIa2KYEyjW7zpqidhA+waA3u1BNTIEHixD0a+I+FMJa7SmU7f9Ha1tpW50JRv9wxKOvNWKcVFRETsxlPeKt3eMzn+5riL4DwL0qTZHZjOJ5OgqC2fHIO1elAjg58vrz+fbILDr0AUfus7/AByscd5v3Xi7AAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAoCAQAAACyEdkUAAABH0lEQVR42u3TsUpcYRDF8Z/RBCWw2KbQIoiCkCpPEMtt7GJlkYAPkcJCBBEUCUkTMF2KgE+woKBYLCEPoGWKICLKFsJGCGGPxa6be9e9tUUy1ZzhP3zMmfn4H/9KbIi4URuor4lownMdEW9LwIgfIpa7cl/EYQlZEHFlvCtfi+iYLiBfRGzdyScuRbzrAzVt0THzt2dbxElfr4hoFF+eExEve7opYrE84rGI94WGn0bLyLKIC2PYFLE6aOC4loi6UWfit2f3Xf4g4qu6iL1hi3gh4peGiFfDt/WtN1ecFsuPCvluP/tUtfOnrkW0TVYfxqGIz9XAlD8lj4fEuojv1cBj5yLeVCNLIlomqpEjETvVwHzv8markY8iDh70L94CcktynPvpn5AAAAAASUVORK5CYII=" },
        ["z"] = { 13.0, 14, 0, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAoCAQAAABktANxAAAAsklEQVR42u3TPU5CURCG4e8Qg50JNZZW6Bqs2AINmyDugnVQuQYS1kBlRWNhayhJSOChuBK4FwzGhoY5xcyZNzOZn0yR36WVG7wKvEtyfjHlD5EfNc9T7pNskyTq79UGjEUDPvgEc+1TOAErz9X/GA1U8rb3HFDXN5gpTVhMwdLjIdfeGP2kHB7XUKmeFXivNxbRNgdfOqdwDLb6jYGkSDZpJVlnURvjS1L8dyvldmUX4A58XbxXEtvgvwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAoCAQAAABktANxAAAAl0lEQVR42u3RIW5CQRQF0ANpqCOpLrIKWAOKLWC6iaa7YB1VrKEJa0ChMAgsQf6EBG4NhjwoAoPgyjlzJ3nzeObx0kKuSfu/5guWZycfXnG8dHnkIGJaqWstYqFT8UdEY1BpIiK+K73biphr1al+Rez0au/r9ORnpb5GxKxSx0LExlvFqYij8aWPP2hjb3Umw3u28syt/AHeeCy2QwWI7QAAAABJRU5ErkJggg==" },
        ["{"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAA+0lEQVR42r2UvUpDQRBGzzUWgthZCCpKsDVlOksrwcbHyEvY+zCKqWKrVTrB2oA/hSBi4AopNMciCe41d1wEcaZZZg/Mt/OzhfxsC/w10OKcV+Qrs6nvWjqzaawKnE0v772pB15UPUljVQ0rAPRikSUA7zHwlHvmIAfcArAZA3cA7MXAIwDtGHgGYCMGlgFYqsSSqjW8ULWfVnJ2aNrxWtUPD+uAY1XHXnpQ6c43DQWNuQmZSzGuT5EVOfEjVctYwxsAo7hQqwA8xMA6AP0Y2ALgKgZ2kqbXAtu5iVrLAZN2L8bAEID9aB7wNLd62eXFll2HKVD8/xf0e+ATRWUJxhaQihgAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAA4klEQVR42s3TPS+EQRAA4IdTSLQKCUJE60qdjkqi8TP8Cb0fQ1ynpdJJ1CQ+ComIS04iwY3i3uJedm47MdvtPNmdzOzy59F16lWIcnrDQDSrGCdN8t51GbwI4Siv4EMI2+Nb0y0wAJ85ePp9aBvc1sANWM7BHdjKwSPYzMEzWMrBHJjN2tRxJoTLUnLNgSshfNkrgUMhDJ3bndSHKZ0fO4UrhuUrqkWOYl+IZqbFGt7Aew7mwUMOFqFdQxusgIscrI8NvQhWay9qoQZG457JQR/s5J08rn296uelq6c/CfzL+AbGuEreCsOEbgAAAABJRU5ErkJggg==" },
        ["|"] = { 9.0, 10, 0, "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAoCAQAAABtX6MLAAAAJElEQVR42mP8z4AJmBgGg+B/hv8M/xkcBpOTRgUHhSDj4Eu0AP6PBYr8XJ+uAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAoCAQAAABtX6MLAAAAH0lEQVR42mNgGLTgP8N/hv8MDhAOEzYVo4IjU3AQAgD4hwNwZrOB5QAAAABJRU5ErkJggg==" },
        ["}"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAABC0lEQVR42r2UPUoEQRBG304gYmSikS7qFTTzEIOgiFfwFAseQ8TAxMzEK4iBhoqhP6ws7CImCqLsPoMddQa77ECxGxq6eVR1f19Vt+TnUfA3QAcZcs8e898IETt+jL6LUp/jCH0ueQBghp1UBMTCXVV7qQgAI44AmI5f8QrAU+6ZgxxwGwPtHLAKwE0MrADQjYG53CUna2sSuAJgK5Ia1x2peuzG12lDd0tPK1cTXgAMecM4xdpnis10ijNVD5t21zfPqpZRPcBLbU3q0K2KLgTOa4IngRMAFmLgDoClXEW1c8BsDEwAMBUBBSUAjykvtr1wUPl4kJI627zj1uuxzzLXzQyt//qCfgO8A+0W2ZVJESTsAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAA+ElEQVR42tXTvUpDQRCG4ccIIrFVKw3RUuzUyjuwCRYi3oJX4X2IWNhYWXkLYqGlaOkPSsCANopiSNbiBHIMOxxsBL+Faebd2dlvdvkj7Ul6nhyYj4FiPVv4mRoHS5rG1TFl2km+Ss2+JGnHnWxIko/RfUN9gbcYKNSpAu5joFEFrIO7GFgFjzEwV9XkZClmgRuwk5tFoRdbxixb03WdN7vlfDDVwKiebjk5qk19SXJqOw9cSJLjuMK7JGnF1/wsxSxQmDwTA5clw7PAGWjGwANYrHpRjSpgNgYmQD0CagOLXnMe7rrSGczx6Jefd3hEX9uhFbf+n74B4ihGmOho+B0AAAAASUVORK5CYII=" },
        ["~"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAAgElEQVR42u3SIQoCARCG0X/NJrvVKgiCtzB4COuewuQVrHsBwQsYTDYvIBisisEgPMO6gkXQvF8b5sGUKeR7nbSgBX+AWdbZp8roNRfZ5ZBpEhELTQ9LXVGCgUSMfXZ3AlupwQpnEz1zlze7GTbgiFJ9rK9ydbOp11K0b9+CX8AT9ztqMw6BppEAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAAAdUlEQVR42mNgGAWjgBYgmGEzw1mGZQxGUD4jw3GGKwz+MOk2hv9Q+Iehh4GHgYGhgOE/w38GNYi0KVwaAn8wPGH4z/Cf4TBM/1yG/wwvGCwYhBjSGT7ClX1h0IcpeMjwn6EAypZlWMbwieELwzaE9CgYBSQAAKLjKC8a3uIcAAAAAElFTkSuQmCC" },
        ["ç"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAoCAQAAABZJmIXAAABR0lEQVR42u2UvytFYRjHP/dwk6SM4o5KKSZlopBkkpKBgQz4C0z+EvkLTDaLzWKgrkGJ2w0Tl1jE9SMfg/d0zj24FhvPu5xzns/77dv3ed+Tk58r4h/6I1AzC+xwzjO37LJKW4ryY/VZsrYuHQ69APV4H1p3nvoQnqv2J1DeoqoVJ43EvMs+qXpoLoYmVX2N94m4EtRGRRqBOQC22E9Z3eAYgHJs/FjVpZROZkVAJwAX9XPKAfBWH7oCoKM+VARgONMpUKBAa2x8XtVHu1Jmp0IE43FOTWEkJ/YGZMgbVfeSMHHEqqpvHrjtUVCpxNqx/ITXmQEX7a4dMGKba+6qWnbTGRsSh9l0VduziX8FXbjt2E/QRy1+D2HkoC9qqR6EeK4+J++NqUHkaQEiBugEzj5fBMTpmpyWas9Ttp4oMst68iH3a3/fd178mYoql9oaAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAoCAQAAABZJmIXAAABKElEQVR42u3TTSuEURTA8Z9BkpSlmKVSipWyopBkJSUlC7IYPoGVj+ITWNnZ2NlYkLFQQsLKW2zEeGmOhWeaGS/PrOycs7nn3P85955zz+Vf/qUszRZsufDq3rYVbd+RPqeiSq8MVyM9HpOtByeeknVBfxlplBfCjUkZNFryIoQDdSVoUgjvlXGWk2yj0IA5sGG3AlpzBM5KjiMh5H4vPINOcJkOfV6umA5dg450KA9fWycrK6u1ZM4L4VlXBTKVtGC85GhKnuRYb+IZcieEnXIzGVEQQtGeTYdJlpuq3Jhw++WB87q/l9Bm1bYQzqybUf97tSG01xq9EC5tGqsFfepiGpYx6E04rXXohfBaNhtUTmgLMgZ04vzn+OmqPuXSoYJ9s3/zbz8A+1h7L0NfCCgAAAAASUVORK5CYII=" },
        ["ğ"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAABr0lEQVR42uWUvWuUQRCHn70cxE4QIoRICBrJYWOVOoEIipEU2gmxSSdBEMFCm4D/QVIIBkSFECwkjaXNWQlp5BT8IJCLGpGoELHRyN1j4XrZd98LaGPjbLM7+zC789vZCfJnVuF/B2eZoxrnVeaYLZDujoZai/NjaiPZK0RcB+YZYR81FuK6a8TzFm06jZiCwQcJtmJIwVB46x5mOMtBPrDCbVrpVvj7oujlAo94yzeaLDMBjP++XppMzZdZKsueirMkmWG3o7Ptppu2VV3PwR5Xo2vBQyIOeiuJ3QHPRMflVA6vlcH7qq4WMAw2UrACHAdgKdND7uXyDACwVpLudQ6246vkFnLwHQAjJfBoXj13VW0Ui8Dg0zzriei4XgCvluUJ1qPrZhS83/luguOgH6OzZdOmLVWflUE87POsKBY90Q3EXi9ad9vvbrjkmDgey6T0FfIxper7X6sqsJ9RYIfHmY6jnb8ZdeyLdzlXiNcfE7ySHv1Q1R/ecEDEiiddU/WzfSk45Fanwrd85ZfOair/10d8Ym6fnOzWAIKnveMLv7rjG+te8sDeDeCfNtKfNvVb8PNVLhAAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAABlUlEQVR42u3UvWsUURTG4Wc3QuwEIUVQgvhBFhGsUitEUKKksRO000JEEMFCwcb/ICkEbVQIwUJsRCxsVizEgMgq+EEg60csokLERiPZY3NdZu6MEawsPNPc+85vZs459z3D/1gjBgrrUyY81APrXLTL4/qHOkIrrXcKneLNZmG9gCmj1muZTvvaOCJK19HfgQ23CthtjbVKO+GeJ+46Xirz72LQMfe9803XrHHsTUmUouVlVsqsA1Vwu+Uk9ixa1BPCQg4OmEvStM1gxJXCu/txKAlnSsmcr4I3hTBX6WqnCDaxG8xkYLiRn/UmMF9p2Osc7FUM9+vjGfgejFbAHblwXQidzAQNT/Oqx5NwoQSeq7anoZ2ky6nhw6bqGs6Ij0lc1dW1KoRndabY6nlmiqv21YEMOqlt2XdvzNjTt1nvzw6dFMIHaX7ZYAwrHmTgWH82UwylXA6XsOFU4NmieEcIP1xK596037wQPhsqglss9R2+5JUv/d1knvg2j7L2hE8O1o//hGte+GrFW22nbfxHfqQ/AWl6ym5rcL2CAAAAAElFTkSuQmCC" },
        ["ı"] = { 7.0, 8, 0, "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAoCAQAAABpqnM2AAAAIklEQVR42mP8z4AKmBiGvcB/hv8M/xkcRohv8QkwDpnYBwA13wWK/ajDBQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAoCAQAAABpqnM2AAAAH0lEQVR42mNgGHngP8N/hv8MDgwMDAxM6HIjS2DoAACjOQNc0i1fIAAAAABJRU5ErkJggg==" },
        ["ö"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABMElEQVR42u2SMS9DYRSGn9vJgEFFkEhE4gd0lFgMBhYGm+hPMIsZi43J0EWiC1uHxsQkmCRdDFIiKZOEhKUpj+W77b2uoYkwOd9yvvM+Ocl5z4mkm8jxj/0Mi9jmnOV2tpLijF9B1ed29mJHS2A9HvvmRjvbSmLRr+10mhI1nnmhRonp70bIW/FrVBxMjzBgPUjv3tvwI/xuzSexqqotNx0ScczdAFY72HwoFZMWuBqqczFWVvU0BSFeqnogkgOmADjKuFCGWM0BowDcZbA6xGrHt1YGi4JjAXsEYCKDTQLQiLELABYzvYoAnMVbWAijL6XmXA/VmdiQyBNVm67ZL+K4ewE6TG5h2EYoN73xob2smr3psxwJHZOxb1/2eiNnLXvtq09euWPhb673H+se+wRV21nqd47LugAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABF0lEQVR42u3UPy9EQRSH4cdWChSIIJGIxAdQSjQKBQ2FTvgIalGj0VEptpHYhm6LjYpKUEm2UcgSyVJJSGhkGYW51657a1HsOc2Z33nPzJzMH9r2J9Zh27mlNFrOxyYEwXMaveRjnY692Uijrb9pYkpR1bMXVUVTeUifsvDLy/pboV61mPpwr+4zjm71NWMVQdCwaQCM2I1g5Qeai9JKywqrUZ1NhJIgOM3s91IQHEABk+Aog5VIsgUMg7sMViPJFlKxkXMZICTYIxjLYOOgnmAXYCEz13fnZ4kwH1tfbMHWozr9U3ciCN6t6QGj9iJ02Fw5qB7ldzce0sOq6mrdyVCcsdn3dee9hRkl1149ubJjov09/Df7ApS+c5faEmk0AAAAAElFTkSuQmCC" },
        ["ş"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAABRklEQVR42u2Ur0tDURiG37td1AWDcIMIgv+AiEmFocVgMmhZ9i+wCDa1OW0LmhZFQWHFMpjZYlODIGOyIIqIBmUO9TGcc+49+8GKSfD70jk836+X75wA9baU/oE/B4yroGu96kN1nWjBIxBiiy9a7YAQISTEir1sUuUxRvIJcAVAmQgh5ngG4I2MA94BWDQRiDWbY9IBNwCUGLRAHxERkelCiFUbcc8Os64550IE7HpTvHDIfCsgxAR7PHhjnrqCfroU0+S5s0ipEzCeZsMiIw54okGDbIwMWWDKARUALhmzhTYB+GbYAVk+rdTnlKnb+CO/h5xVM7FK+xSjbHMBQJVjlgjadTAOmMqdQiVAnTNyvTIY2+8OiJCcL1M3JQcsMGPOYbyc/cpISmvZrmrNX1oh1lt0KLr7sOMhNHWrogruGPz6l/sBJKDeNvIh0oYAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAoCAQAAABd07IqAAABNklEQVR42u2TMUvDUBSFv5qgdnAQAoogOLqIOKlQcHHo5KBLVv0Pgpu6Wdw66NRRFBS6uBTq7OKmDoIUJXSoiOhgaKv2OvS+JH0aJyfxvCn3ffeedw8E/vX3NEWRa15oEXBC3r7e5gPpOQe48fWaFtvUeIiQQgxcIQgVPAAWeEIQXskaIEQQlqKGdZ0xYwo3CEKZIf3ux8PD677CAVzywCSrjNCizhshISEdMyHDbmKLZw5Z/JrDNHs0EmueRoYJ9TFHgXtFymmZOmwqMmZKjzRpkouQYQVmTaGKIFwyoUZbCEKHUQPkeNeoz6kQaP9R0tfXNONTtbcYZ4cLBKHGMctkvt9AkNg5DQg4w/9pQvfsp81w8e2YbA0qMG86jAbIAg4ranZnd2705FCKPW21uaVE8ff+qE8Oko/h+Tj8VAAAAABJRU5ErkJggg==" },
        ["ü"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAAuElEQVR42u2ULQoCURSFzxuDIFoM7sDszwpmE+YRXIDNJVjsLsBNGESDyWw2KWgXDIryGebvPWeCMAiGOacc7vl45V6eQd/IU4kVxYbaaSYjKUhSLFJfAeg5KbKNTbmxpOqkyOYHOw1f9j86a1quvgj2kCTVnaaRxc6SpI6DdbPYXpI0Us1qxtnFDQi1oY0QTebE8tN781gn4yMHnpCHiRZbbL2Y5GGiQsCKC3dOLOgjGzPlj/QH2BsMcbak7oIXoQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAArUlEQVR42u3SLW4CURTF8R8gmhBqEN1BNR8rYBPVQ8IC6roEDL4LYBMIAgKFRle1SfEkCJo2DzOZzOvMJBjAzF+dd8/Ju+Ieam7E2NZMA0mmSjgIgkGkSpg6WniI1BUJgmBUPW1e9k8dK439gE7kPBZj36AXxfrF2A5MtHPOa3H1S3q/tWfQ9Z5Ooks3rbLxpw+/2etfIZ5sclbw5628Ny2Jpb2TL3PDynrV3I0zxPJB7hR/eAgAAAAASUVORK5CYII=" },
        ["Ç"] = { 22.0, 23, 0, "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABi0lEQVR42u2VPUscURSGn92Mui5oEQQj5EcINqkiVim0UbSIEBCs7IX0giA2qULS2Vi66VIEtFAiNpIYLUIg0S1UTBGy+BXJB08KZ3ZmdkccixQBz2nuPffhcjjve7kFuUkUucX/O7zEE5bY5ZwLDnjDND0NvHGOemRj/HDeUsxEi1Zf1JE/Hlr1Z32/ZXcjHsFvHbVNxDsOuR5Wdywn8YmwPGPRZHuBL8OTZzHe6TdVF1LoZba4YtWqn7wb4VOqntqZgTdkERgCoMJxvrn3ArCRV6YuAPZvpmoxL34EwP28+HsA+nN5TJxU9cKu6weJWParqpUMoOSmNWsexjLhSCj1c1tScJuL4cls2mKRNz44GTbV4WPfhdWN0HZ1vOBcwuWnfk/sVi8bSeKIw35ueh41nxrETMH0WB8xSB8PgE0+skyFs6seX5T3VK92ZHZ84RV9WTJl3676y4FmmbIycFzV1/lwbFd1O10Nmror0woEjAGwd13vi4mp//Zh3smcsEo/a+li4Z/+fH8BE6IcGKWOlLgAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABZUlEQVR42u3Uu2tUQRTH8Y9x88YUQUgE/4hAeoOlYKPEQkERUtkL9oIQ0qRRtBNDSrVLkSJFRNlC8ZVK8LGFhliIC4Yk+ODYzO7evZtwp7KQ/G4zc+bL4cw5vzsc6n/XkMse+mjHni9WXXfiYHjWlih9uxYM9aID7raRPzY1/GzvX5so4y34qVmD4KiznqXohpEifDWFb+rrSlJzL50sdoJjvgnh/j736bemoeGd8VbomhC2jeW1b0UID3LQPkyBei5+HHzOxcurCnwLnMzFX4GZXGPNCWEv3aFSI74K4dG+Hn2hqWmzMybOp1Hf0d8FD1pOJ7e6s7S88cZcKuqYi16maD3Zrq0j5gsu3/a9sFsvFtLROe97fo+mG2oHt/WM2+pCeG7JFaPVnZoUosoEZX3w2HTOHCbblf9yOm90NZeEsJJrjWEhvC1n6bXEAGougE9VWZcLXf/tVG5nflg348m/fHP/ApL9lUzogf9VAAAAAElFTkSuQmCC" },
        ["Ğ"] = { 22.0, 23, 0, "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABnklEQVR42u2Uv09TURSAv1doS4gMEqEhghE3Ryf/B4MYNzAwwuJgQhwdjCObhMXE/gFGnaoDMZDAAouDAyxoTICkBjDGKFFS9GPw9fXd10JqXDTxnOXdc7577rvnx43kdyTHX4tvIP3xd8RHfp6O7wFzXKLAALP0stsU3rTeNZTHhv4M3uVKCt60lMWjTN4LTDNCiU8sMs/n7L9Ef1KmAuM84S0HHFJlkXsMn3zVUXfMypFlzzZftdOHCfLDbbc9StZbXs7ic7Fr2RvmRSw65npsrTqQxm/F5vtGQeK6fRl7Kg38jHuqlrNZFntdcs01Vx2u41OqfrWnBZ7RHHAdgGd8aS/vVwBYbadMnUAfADtBMVpJ9Ct6lGxsK/oug8BgyvooYK4xBNTqTVBR9fmJ+Xiv6ut6ZioAjFBqef5VLgLwoh69x/105QLNuazqoecbTTCZDFsxgPOWY8+DsMXmY/OGt71gh9jvhG+SjukI8XyyQbXm99Rqwe5Wo33TatN4HHgn3aXhxYpO+tR3frPmB18547nTX4J/9wX+jzfkGJfB+OdYx7OtAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABfklEQVR42u3Tv09TURjG8U8ppYbIIFEMEU1kc3TyfzBR46ZENnFhMDGODOroBnExsaODUSfiQAwkuMDiwCAOakyApKTIJARJq8fB09t7bwt2cCK+d7nvc77nSd4fh6MSq4Kh+F+w7Vce6MlkW5gxqs+wxwbVDne/L2S+Z4fjx7xLwZ+czgPFTNbwXE3Rjo8qbtv+p53pc9MLn+3aVzVvyvmD4as2cqUGDRUn2tFe0wny07p1jSRfcyGPz8SjRdeUQNkNH6JaNZyGx6L8QCFj0u9NPJlticdtCYJKh3oGLVi2bKlV9IQg2DHw99b14Ap45Xt3+EWw1M1genEKbKTU0JEt/HEvJBe7cq8ZwUhKfZphLjuLejOdFQSvD7T8KgjeN9M7gmC/fbvBpTioh01hwLf85FKdW4xmZ1riePLYyhm4pBJPHmVdnkR51aRzihhyy0qyMdlXp5RcCIK6H6lsTn+noq6rtj2PXXdzW5qKsnEvfbGnbtNb95z0P458/Aag1qRlmfBU7wAAAABJRU5ErkJggg==" },
        ["İ"] = { 7.0, 8, 0, "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAoCAQAAABpqnM2AAAASElEQVR42uXOoRHAIBTA0PyaztMN2IRhkJ2HIRiHu/pganAVGK6RTyVk7mAVFB4qJwAidlUv8YVs8zZE4uOHiKS1p7+FcJfTAcg6HXu9LqmcAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAoCAQAAABpqnM2AAAARElEQVR42u3MoQ2AMABE0RcQ7MAWbMBuHQXRCToTmgR/SBJcBYKEL98lx2sVp2a64RCxwAh2s2rrOY2IFYbn9kMvfKcLhnILBfj9zo0AAAAASUVORK5CYII=" },
        ["Ö"] = { 22.0, 23, 0, "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABZ0lEQVR42uWUz0pUURzHP2dgGMxh3LnJZ1Dc1xs00gMYkajjM4gQ2TJ6ALGiZm9kEO6inbjUN5hRN/4LcUSDiU+Le+8M91/opsV0zuqe32dzvt/PuUHusyqMDv6aHt+oUWOHHus53vS+VHXWWVUvM9Mc/tw93xgMvnXPZ1k8/MPcH7DAFzrcckOHbZaol1913lOz69wXRVet+X6A9O165O/Bd9uxLP4uHn13zqqIVZ/6Iz79lMYX4uNVQyq44Fo8aQ3xhheqbmRTFnFT1Z82Eryl6pX1QrzulaorIhWgCcAWvcKoe3wG4EmS+wwAu6XdRJPpBJ8E4LgUjyaTCR5pE0rxEPcZ4ycATJXiDyGhKsA+AI9K8ccAHCTOREFeO1EY5ITXw6Kims5V/ViIt7M1DSV4mZPgVV6CtGLNgWJzA8XaeYE/pAQ+tP83gaPncXbX5xHtcRfdtusvb+361eWsduH//QOPMP4Hxr3wFtqH/ggAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABcAAAAoCAQAAAC/D6lTAAABT0lEQVR42u3TTU4UURTF8R8Q0kGxmTEQ1wBhrjsQ4gKcQBBcAzFBcBXEj2gzcKQRE8PMOHMMO6CBYPjQEJoICeYyqKruVHUVOCNRzhu9c/6Td9+5/Ld6oeWLmpo1LUtX4UdCGDcuhKNi3Fe477rrvRU/3NHnuY3re+gt0z7ZdOq3TaueGKyGH9sXhXNoqgyted1GzjVt+9O+NwwU8Vdp9NWkftDvkW+p+y4PT6f2vJ6c3+NZmsx1zLqfQlgufdFLIfxSz4w5IRxXTGHQsRCeQi8mwAetUrzlI3iY4WPge+WAk2Q0w4fBTiWeJMMZHukUqpQkkeF74F4lPkJG9WId3K/EH0CnyskgTwyVwkNO8h9VdyiEt6V4o/hNnRIsdJVgsbsE+YpNtCs22a5Yo7vAb3IF3nJ+WYGT9Tj42/VIdNuMVU1nTjV9NnvZ8t3oX9EFKqmWcFVS5IMAAAAASUVORK5CYII=" },
        ["Ş"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABf0lEQVR42u2UPyiEYRzHv+85ikmUDCJlkRtOSooijAYlioFiMoiFRSkZZLBYDMqfYjNYxGYUAwv5byOp03HdlUs+hnvu7nnvXn8Gmfy+w9v7PJ/3+f1+31/P66CfhE//2J9gOerTpm4VVVSXWlGjiyOhKo7IjBVyza7BirgxWzFuiKXAdTc2DcAr/fgQDr08GbDJxk4BmEl+i+gw2ELi3S9JqpQkHVgl72hSPklXdgsPAIxbp2Uo8dgFIELP11gr76aWE6aow/HGxDBxy7F7FmnwwkQ1y7y47N2lLBsTIo925jlPgdcUe2FJBdk24NxXmHDYAuDMxmoIEKDQBXaaGVvYs53AaBCAOxvbAyBERQrK5xiADRvrNgU/MkEbzQxzAUCcoLuFJbLjjaFM3xxGCbmgI1q8piDy6WAWgDHqvWeaVClAto/eFzCsffV53aykSggTMdWNfJ40oVoADtMrftfRBcqT5FO5JCn+WdJVlyUD37UQ1aG6tJZecH71T/4Bb/BYXtPLieIAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAABZUlEQVR42u2UPyiEYRzHP/c6V2cSJYNIWeSGk5KiCOMNSpQbKKYbxMKilAwyWCwG5U6xGSxym1FuOAv5ezaSOh3XXbnkZ/D0eh733nuTMvg90/t9Pv2e7+/7PL3wX3+pKgizxx05clwTpdsJaiGJ/FhRKk2ohpTaypMib4M7JraEILwxjgV4GONZgT06do4gLGtKSGHrX59eAJoBONGwQxawgBu92yOCMFcujDiCkGXUHevnQ3k5Y5EOPKXACAUtsQc26HIGW9ni1Yg3ToMz6mOQNS5t8JZaN69BDhS46j6Uh30E4UIX2wgQoNoAh9Qda/XicMAkgnCvS0cIQpomW/FziiDs6tiIMvzEPAP0EuEKQSgQNC1vFj1K4Z2p4slmSBtQkj7nEPyEWEEQZul0z6seQYplyxHOcEzYrVsdGbLK3XS5Z9qOICS+Ba+xXYUPsGgEoFCqS8yIZKLcCDkSDLP9W/+hT1lEot/e57/qAAAAAElFTkSuQmCC" },
        ["Ü"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAAA2klEQVR42u2TMQtBURiG32MxMiirzWyysvgFjPITTMpgwiZ/RsnIyC9gMEmRDOiWLPcxuDrnXiklSvnOcDrnffqGc77HoNcqpt8C4xrJU1tSR56GiodI7MoBcEQcAcg5WQg09JlRRdSY0cO4oPnQO966Fx5S5/7XfuYPPgF9SZKJZPezb8GtJCkRAZPBfrLgSpKUj4D5oN/STlITgB1pZ6ZjTAAYuyqk8QCYUwwEyDLgVqWwM2X8IDiwYMO9uo9yVdgTrjMNK5hrYYo6E9Zc2DKlReYbFv7Bd8ErDt7UIM2Pvv8AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAoCAQAAABUOBJQAAAA1UlEQVR42u3SoU4DQRDG8R+cqCIgSJqgcOiqWjA8ATwHigSBIC1vUoEnaZBUojEgUISkhSAouYRgbhAs3PUaCIoU0lmxs/P9Z3Zms/xTaziT66Ar19f4CmwJYYyxEFpVMav495ZkjlwaWnOi9xtjhBA2v4sv/rTWHJxtsAALNe3jXJTgCCzXwJW0P5fgLWjXwHaqd1OGDoTwoDnR1EAI59XcplwIV7ZSZxtO02/cnrxmR5GEJ9eGyQ/H0/PvevyU39eL/amXAKv2DNx5NXLh0Lq5/QF7A2fKRr2yW22lAAAAAElFTkSuQmCC" },
        ["•"] = { 13.0, 14, 0, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAoCAQAAABktANxAAAAYElEQVR42mP8z4AbMDGMSg5PyUiG6ww/Ga4xhCPJ/ofAyP8IEAEVg0teR5K8BpNkhKahnwxscMN+MbCj2nkLyab76HaGIxkbi24nw/+I/1f+f/t//n8gXARu52h8Dg9JAKHIV1967qAyAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAoCAQAAABktANxAAAASUlEQVR42mNgGAUjEEQyXGf4yXCNIRyb1H84jECXvI4keQ1d8ieS5E+YIBOUvoWk8D66znAknbGYTopguMLwjeE8Q+BoxA1XAAAoDSFE3te55QAAAABJRU5ErkJggg==" },
        ["…"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAARUlEQVR42u3UMQqAUAwE0fmeL/c/gXuO+aWCECxFkmqKB+l2yZs7GDZs2I9YcRIKmhajamz6enofk2eLZYxl02sW6QNsA+idRMG/wV88AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAoCAQAAAC25AkpAAAAOElEQVR42u3NsQ0AIAwDwRfzZf8J8ByhQymi1Ej4qq9sMLP/BBsRYwMiSTT1uptZ9tsOVI76tgccBUccoTImUd0AAAAASUVORK5CYII=" },
    } },
    ["Bahnschrift"] = { h = 29, asc = 23, top = 3, bot = 29, sp = 8.0, g = {
        ["!"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAAP0lEQVR42mP8z4AOmBiIF5rD8J/hP4MB6RqHkRALAwMDA8NNhoMMDAxfIEKMJITqGob/DP8ZHEixkfE/vf0IAPicC3ncV8p8AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAANklEQVR42mNgoAjMYfjP8J/BAMJhwpQfCUIsDAwMDAw3GQ4yMDB8IT0I1zD8Z/jP4ECKjfQHAIBaCGVa4eT9AAAAAElFTkSuQmCC" },
        ["\""] = { 11.0, 12, 0, "iVBORw0KGgoAAAANSUhEUgAAAAwAAAAdCAQAAAA09kVSAAAAJklEQVR42mP8z4AdMDGQJ/GC4T/DEySaAqNoK8H4fzC6alSCChIA6V8HzQ0iAHkAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAwAAAAdCAQAAAA09kVSAAAAH0lEQVR42mNgoDJ4wfCf4QkSzcDAwIRL7YBKjIJhCwAJ6QWjBPFhzwAAAABJRU5ErkJggg==" },
        ["#"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAABAklEQVR42sWTPUpDQRSFv8REjIU2am0nMmksFMTGQtyFCxCEbMINZANp7OyE9DauIBorCaSwFCwEJSqfxYvzJi95ahO80xy45/6dw1Tk96gyH9Il0h7jAXIyixSAPgDLbEYM5q/uSD0QcVf9tJFl0k5b1GN1AAa8To9rAo88R9yPGRHfLI9z/yZBDYBjqsA1cEEHWOEKaNEDhul1S36oeyLuq+8ufufycdssIPdx7QdG04oHYMhLxHezbAnJ0WFCAGrADqvAGbDOIQBHET9xmy1+84NK3aIt5TE+MzX0VO0lxsdOqaGFtfPrUkObZaRUmYJKk6SseoO1YqfKf36puZO+AEZIrQSX3f/8AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAAA7ElEQVR42t3SP0oDQRzF8Q+rEbXQRq3tRNbGQkFsLMRbeABB8BK5gBewsbMT7G08QUysJJDCUrAQlKiMxSaT3Z2NloJvmi/M+/1h3vCHuhKcj7gvOC4wq5hy9MCi9cgVtQwF+2BH8GUh7bShFatz9L2lpi08eYlcG/YuTD3t+uJTNAuOZLjFpQssucaZDgZl+7xPwS7YE3yYG19Nxm2aETzEtR8NU1OOgdfI3cmQrOG1qzxafNsyTrHqABxGfnZfGO9+eKWbNOBfVA70RNApX2alVceB5vXcslK4vQZOOnUbODEV1WtWmv/kf9U36llRTuiawPQAAAAASUVORK5CYII=" },
        ["$"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABNElEQVR42qWTvyvEYRzHX3fnR8pwRVJKYVCUzCxCGdgslusGg1L+AX+A4SI2ZVE2owzKxGSzMOiKyGBQbBff4mW4+/re83XH4P1sz+fV83ze78/zZKROecaBR27rN7F+Tam6GeyR5W990wOWjHXuun1xJQaWrBgqctusSAsAIxzQmjq+lRY+k4v2VL10tdZuvyUvbK+/6EbVscBRJnTUC0RcpXzUVEUioI2exp6ryB0A+3Q1z2UtsHua9JG0m/MogJ7cdTAdXdaCZwFWcT5EqmuuVn5T9dXun2N8B2CLYcpAnsXEUVoPbAAw2hyBFwA6E6TAYW2gsSYAeI5zmfRNvXTGaVV3LBqpuhA7WvbDRro2l5ie9f4HUHYozKXNosff5RNX7Ein+78fkPn7q4XIL0/qv8gXjVRrg+UJ3pMAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABJUlEQVR42sXTvyvFURjH8dd17yVlUCSl5MegKBnFIpSBzWKRwaCUf8AfYBCxKYuyGWVQJiabhUGKyGBQbDducQz3Xl/nXlcp5fNM55z3c57nOc950r6q0aAOac+qakQQrMWbNX6hTqtC0U4saysHZuQ+gYLlbRRiZECvXdkyp6yM92S5LQjOLBbTbbfqVN1Xj0tB0B9VlIorakXeeRQoxEgetVq+L7WA3IAdTdXfZCkq9yjJI1HafgQ92NJVGXDWcYTlTH4XcKJ4/CIInjVXtvEVrOtxhUbT1Tt9ZwX0/fQZnkBDgszaKza0pCHwWFoOexGcGTMqCDbNyQuCqRIy763srxTsQjq5dtxtBXClO06v1pyDz+NDC+r/dgJSZaM2gHvX/kMfTwp6vHp8g4YAAAAASUVORK5CYII=" },
        ["%"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAdCAQAAAAAj4ROAAABcklEQVR42sXTwYuNYRTH8d+9XNSMpdnJKFtKWdlMygKLscDkTxBqyoawsFITjWYhRSnKgti5C6Ish1LSXdBQSpGFxTTGuKOZj8W8773vdRUbzTmdxa/zPT3nnOd5avJvVs//AUcynbm8y7msqeQmI+/TKJQYtqC0U1L4Fj9wtNQRZ/HJQffR6oC38VKtCt7APTGK70VihyXs7ZSlnqSRZLmIdUVHE6nncZ70DjOfZH2SDUm+JUn2ZF/kTM/Y4iQWTGphWtS8wJ3usWWPG30sZl42KsbQtrUfjCETHrppRDTMYKoXK8Gqn8CsTX8DB33B+b7yPvACPhsQw6Y0XbP9T+CQORwTm80WA7bt7Aev4q214jK+uuQD7v4ObrOIQyKauCLGy/uvvseLaeR5HiRJBpK0ixjsfbi7cjjJ6UL9LHL1JIvlFa74UzQ76jpaDniGR9Ue92OpXIXYrWtjXbDuFW71bOCI1+a9cXxF11b7u64K+AtN2qIFmbbZBwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAdCAQAAAAAj4ROAAABVElEQVR42uXSsUvVYRTG8Y+3bgbqWJuo4JogNLVI0KANOpjinxAaBC1KNTgFohgOIRgEBQ6Kbd2hKGg0QYi4g2KBIBQODmJq19Dj8nb9XRXu6NB5OcN53i/nvOe8hwu2Dot2fPfEpYw6KfyQPxGa7Yt0HpXVJn+EgWy+x8JPPRaEYll9IyyryYIvhXl0C3tJa3Mo3DmBcsjjKPmVpI/J+eBjJbiLWlzFb3BbpzByuucHwr5JRWERNZaE2bPDabCRej7SjX6hpOW8OV435p1XOpC3JkxVH/6QsO1aNazepvC0er5R4Zc6NJtSMO3G+W/dEe6j0XZqsKT9LPhCWHUZE8KWcevC3Gms1YHQCwrCczz89/+5DPhM3hdvQR1KyesrwZvuYThFf9NdDgeVhT8JhXI0IxTd9Vl4n8W6hMPMKG6VVzn0Z3foq/C6okKfb3atGPQf2zEDlHUShd/ylwAAAABJRU5ErkJggg==" },
        ["&"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAABVElEQVR42sXTv0vVURjH8c83LxRCCGItgSg0SIuDtDQF0dYQhKv4D7gnQavR2BToIggSYRJUQ9DW0hCUYDm5KIm2JJpUxn05eL/fe783iZbqOcP59T7nPM/neU4hf2Kn8rews7mb9/mag3zM/QzUOGXrt6rTNgxVex3YPGhas+InePUr1usHDl0XMWoXDHZjl8FSdf4BuFHOG5X7SbJeufwkzSSfukO4BBba3tRbOThjDzsaJ2Olbt/yNMm5TP5e3iKbSZLZDJ7IiWhYrmR9p6/11C0w3n50OjeTHBfLaJ6nN0nSlyTZK28rfMZ3Y/qtgJdOi3tgpIz0IlgUcd4aWNbwGrt6SmwMzLQ8umAdvAGP27oNg2eVSkM2qoCutbHCFphQzzDqWbjdWnzroRmLvlTYnU6sxyPdttPqp+plOe6FbYf2fTDnqrhiH02TUvzvD/jPsCOKF6V4S0P8igAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAABPElEQVR42uXSv0sWUBTG8U/1QmFIINISiEGDKOggLU5BuDUE4Rr9A+2G4Go4OjW4BIFElEs5CG0uDUUJlZPLC4W2JP6AUt6n5Xr1fdMaGzp3uDyHL+ee85zLP45u0z7YteezWb0nQz0+yrHT1H8S9lhEy5pVByJe/w51+Sn2jYMRWyL6OrHrIp5XPSfi1qFs1PZhvWIvtPCls9qgiCd/M+OCbbFZq3fEuXIfGDLsoqZ3f6p2xsPiV9/pUMNitfW9SyV7R8QEnAUP3EaKZ690QcG3jx78Jn4Y1WNVxLLzlDYGDrFrIhbAZWsiFjWsiK06pFERM0VdsS7ijYhnRwNcFfGy6n7NOtDN42Z8FXG3Y8MpQ9WYLMm3Hpmx4HvFptp38bTtS0Zslvt+e8UJSzbs2/HJvBsYsyNa7vmP4hfgzopu2hgF+QAAAABJRU5ErkJggg==" },
        ["'"] = { 5.0, 6, 0, "iVBORw0KGgoAAAANSUhEUgAAAAYAAAAdCAQAAAAj1NWbAAAAIUlEQVR42mP8z4AATAz4OC8Y/jM8IayMVA7jf2qaNmQ4ADZvBQKxn/tLAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAYAAAAdCAQAAAAj1NWbAAAAHElEQVR42mNgIBq8YPjP8ISBgYGBCVmUYs4IBQCuqALYPKVyDgAAAABJRU5ErkJggg==" },
        ["("] = { 10.0, 11, 0, "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAdCAQAAADWKl4rAAAA5UlEQVR42m2SsUpDQRBFzxMLiaiNha0mhdgEIRZ2+g1pLKz9IFv9APtgYWqbtAkSBQVBOxVSBMTmHYvNy3s7ZBd2mbOX2RnuFLJqrWXREUN2AbDeW76pL26b4VtVb6SJTyzVqRs5flD1LEUVPFR1WImqSi4BuF7WtHgfqz+uV+p07Viqd3VVKUmXAhjFLvcBeI54D4DPiDcBmEeczjLiXwBaEX83fmjgdwDaEU8A6DUMWfT1ob7GLuEeaHMc1ee1M7kNT+qfBxFfqDqIuPBR1ascY8e5OosDgX2/PI3q5BMixeoZ/AfFuNoWsAgO9gAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAdCAQAAADWKl4rAAAAw0lEQVR42o3SvS6EARAF0LOiEMI2Cq2fQjQiodDR6zSewJN4CMl6AL3K1hotESQkEjokik1E812Fwn6zGzHFFGeKW8zlH7Omb77irEdxb67NJyJ6bdzSiFtTbT4XsdPGVRH9GnckYq/ylXg32cauRpz+wgRY18Fl5UVwV3kBvFSeAYPKP7up/AmmK78NJQzxE1iufA02R//yLB5G+VjERuXdcZ+BG/FlqfKBiLPKHRciDuthxUB81EKw79X2uF51/2zdN0+gN1M94EU6AAAAAElFTkSuQmCC" },
        [")"] = { 10.0, 11, 0, "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAdCAQAAADWKl4rAAAA30lEQVR42m3SMUuCURSH8efVBAlrfx0igugLuAit9g0ahZaGPkPfI8KpzTmCRsFJB6eClqagscEhicB8Gkq897zeM93f8Oece08h204NuOCm4l6qeiVp4YlzdeFxzthX9SEyjlTtRu6qOoyMM/XL1ppr/w0NgSZnad8AjwCcbvr+q8K5Oo4h8gocxhB4B8oqfwINGpF/0vuGd4EV35FL4KOafQS8RS5pA0+RewBM4pT36sp2/oIHLtPR1zxQ9Tznjkv12XrKe76o2sv/8lrV27gQO945tRkZcT9HKbbv4C8ULtwIQPOXJAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAdCAQAAADWKl4rAAAAzklEQVR42o3SoUrDURQH4E/dYIiu/xdEBPEFLAOrvoFRsBh8Bt9DZMm2LIJRMG3BpGAxCUbDgiLC3LFs+t+5Cv7K5Xz3cC4HLn/m0GmJR0I4zrxlJLzZzBcHQrgsB10LoZu5K4R+2X8rvFuZlYvTs4+WvcxXYCcPWTASbnJ3eMR6Zp5RlfyKpmbmz3r9w8uY+Mhc4aWcvYGnzJUO7jLvgkHe8kKY6MzjmnF99Vl6Qtifx21j4d5SHVc9CDF99DsnQjjLcxvODbV++1dt/8sXqLI1qxPhUmAAAAAASUVORK5CYII=" },
        ["*"] = { 12.0, 13, 0, "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAdCAQAAADbNC5sAAAAnklEQVR42u3QoWpCARQG4P/KGBsW+5asJrX6AAsDZX0vsLrXWTKMYfAhjL6BzWIwXBgi1m9hd5e7gSAIS/7p8H+cE04hx9LKCdSJyP3JW/20f3W3GSRJFDYO5l7Aq5m90pVE16e/2elJxLVH07p+N3Ej3xQxrGlUNRW1rbC0wFqnSW/Y6bpT4qNJD7aeRTwpjZuUnyPNqTjzvRf6X/oCVIeWzGbZlRAAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAdCAQAAADbNC5sAAAAkElEQVR42u3QsQqBARTF8R9J9C12JqsJqwcwKLJ7AavXMRkkg4cwegObxWD4SpL1GhQfMpmU/11O59x7u12+oyKE2sPIf+7Noyl58spaN5Gzd7EyFsLE0lmqAHVH8VInjdtcUc/sbs8NlLL72/eo83xMYitsrIWdSjaaCid1VamwyEZdByMwlOq//uJd/fkprq0PLRKgoq8CAAAAAElFTkSuQmCC" },
        ["+"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAXElEQVR42mP8z4AfMDGMQAVvGP4z3KG7G1gYGBj4GTZCecIMDAzKDAegPGeGvwwMDP8Z/ov8xw5Y/jP8J2wFw39k+Ob///93UETo5U0E8GdgZfiOqoBxNE0SpwAAF5U28+LJZKYAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAR0lEQVR42mNgGAWY4A3Df4Y7qEJMhPRQroCFgYGBn2EjlCfMwMCgzHAAynNm+AthiDD8xwpZiLJisHgTAfwZWBm+j6Y4sgAAT9QU88y523YAAAAASUVORK5CYII=" },
        [","] = { 6.0, 7, 0, "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAdCAQAAADMFr6lAAAAQUlEQVR42u3RsQ2AMBAEwX2LKqjpi3RgiaJczDoASzghIfVlk1yyIe8VNj+ZiLQfVx0AMdVqiA8vi0yeHjck1kYDSQId5PQon/sAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAdCAQAAADMFr6lAAAAO0lEQVR42mNgGAWkAB+G/wz/GZYwMDAwMKHKEMu9jWzUAgZGBgYGBmYGBgY1BiaGeIb/MFkpBhYcTgAAVBMHZWi+GAQAAAAASUVORK5CYII=" },
        ["-"] = { 13.0, 14, 0, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAdCAQAAAAwA5VvAAAAMklEQVR42mP8z4AbMDGMSg5WyQsM/9FgAkGdLAwMDAwMZxg+oIm/YGBgYGAcTQmUSAIAW7sOBdqCQkcAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAdCAQAAAAwA5VvAAAAK0lEQVR42mNgGAVDElxg+I8GExgYGBiY8OlhYWBgYGA4w/ABTfzFaHBSDACBmgvTRQQNDgAAAABJRU5ErkJggg==" },
        ["."] = { 6.0, 7, 0, "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAdCAQAAADMFr6lAAAAIElEQVR42mP8z4AMmBhGuXi5Pgz/Gf4zLCGsmJFmAQsAsboFJU7fPOUAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAdCAQAAADMFr6lAAAAH0lEQVR42mNgGAWkAB+G/wz/GZYwMDAwMKHKMNHLCQB5fALzS9MDtgAAAABJRU5ErkJggg==" },
        ["/"] = { 11.0, 14, -1, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAdCAQAAAAwA5VvAAAA+ElEQVR42pWTrU9CURiHf/cyx+YIbjBHIOjGDCYbkUSmOQd/DwmTwSSJGWlQSZIIJC0GgjOYdKMwvh7D5d57vgyeU877/vY8OzsfEfp7xIFeVTuhx3B4p4KkZ0n4cw4siQiEVwD0EAFtVzpKA+Q7sEjWLtlQPeM88gHYU0sqOyrwBUzT2ta2dG5IHXIIrDlLazM6ZQWM8o6pbatkSS1yDPxQzDt5VGYDDMw95NpbnThSg3wBPolNMl1ccADu7fNKtR1FnjQjX4E394YS8kbXAe5I9gG4dEkhYj6Amf+aYklN1YJSCfEEbKn4pCjyDUwCT1TRf79DNn4ByMgXh3dB0CoAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAdCAQAAAAwA5VvAAAAu0lEQVR42q3LoS8mAACH4ccnfJtkIwgCRbhEEiSSrMkSSZBIgkQSJJKs3dVLJwkSRRBMkNgU4/jdP/Art3nrs5f/bMpfcdJxW8RSxytxb6TRnIiD/u2L+NHxTlx3WhSx0/FYfJpuNOpJ/O7fqoiNjufizXijMa/ion/rItY6/hQvho0mvIuz/m2KWOn4RzwaNJrxJY76tytioeONuO00L2Kv46GI2UYDD+Kyf8sitjqeig+TjYaexS/f2j+UiEU0jSBVAAAAAABJRU5ErkJggg==" },
        ["0"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAyUlEQVR42t2SPQ5BQRSFj5+EQl4jobEFO1CQ2IDlENahVKr8rIPoRBSoiEoEhfj9FDPmPS+hUog7zcm5XzJ35twI+lxRfQ8oqaOVztppqJpSzsecKq81IWM6pl3gDsCWIXOru0GgDUCLJEIUOQJ3cj6wAC54PC9sAlBB2CHTkpbau8HGzrVATNIp8Daj49/+qJ8HbpISAdfoqw9sJOXkOSDv3FBYiXdhFewWbBkws3H3g3GLRmhhpmRfAVGmx5oLB0bU/egj/EMWDyTXy49U0RXLAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAwklEQVR42t3SPU5CURDF8V+QBApDQyINW3AHFJKwAZejkXVYUloprkNCR4yFWmmszItSGD5kLHh57/ISLS04t5k780/uyT3DP6rv2qulDxPnDqvjM7Fz7h2l456NEDITT3l9kwJXQhhpghNfwka3BJ6FlVZxvxTCKdRAGy8+C2BWdHPgAIvkyW1dL4E/tE/ANxpJd1uvS+Ad3eSrj4tuJazGb2H18i3I3HnM477d9TKsLMyDTtXuwNiblbmpi8TPXugHe9lJ/wHtJAoAAAAASUVORK5CYII=" },
        ["1"] = { 9.0, 10, 0, "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAdCAQAAAA56DUVAAAAVUlEQVR42t2OsQ2AMBDEHCbIWgxByV4MwxBZgIIuTGCKpyBQIQok7jtL/rsk93Q8g5kJkXJQsXcxUkQEcdYWhr4ysJ2eiqNZrK0eV6/6y/G/h8kv23dx/UBi1pHKKAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAdCAQAAAA56DUVAAAARUlEQVR42mNgoAIQYFjA8J/hP8MNhJAnw1OG/+iCR6BCcEEmBgYGBoaXDLEMH1FNTGUQYGBg+ICqHQI+oGtHA6OCgwoAAOKgFnpKkVXwAAAAAElFTkSuQmCC" },
        ["2"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAA/ElEQVR42r3SvyvFcRTG8efea1JMZLv/AGWUiclisNhk4w8wWRT/i5LBqCQGm0EZZLLc/Eo2DMqPvAz3fu+9X91kwDnD5/S86/ScT09Fvqtqfgcv5CgPeclNdjLdVkXUbCvXuogWXmuJl048tubpAvd7wodFEQN2wWaB58BWc50YA6cifUkaWU5y3LZznySpdayVexZsd6yV+xDM98ZL4FytFx73jDcT3XcXPegCrBZKGe+APZVeeAXcGu5oHTjpFe+muvcVw5BrsFa22nyq9sGBai+8Ae6MfP2FimQ0Z6kmuUqjKyivmUn6kgy3MlNPvQu//CBrlf8J8h/gT2FDMv8cCVreAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAA10lEQVR42t3SvS4DUBgG4KdlkjARF0FiFJNOFoPFJjYuwGRpwr1IpINRIsJgM0gMYrI0/iI2DEKJ19BqqjldDd5v+XKe5D1nOPxJVpx48u7OntpvGtKQX7PVy/XO4bUzz5292zDiRXxZBaP2Rez88JKI3W7XtIhzGEbTOk67/Nh5z4AsimgM4mMRy2VcE3FZLp/xKj7MlnDMlYjNcvGeiAOVEm6IuDdRwjkt8Wm+hONuRdRLWHUo4ki1xNsiHkz2QwVTLlRxo9kjLQvtpdb3Fdrz1r71n+YbYQtZoHFYHn0AAAAASUVORK5CYII=" },
        ["3"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABH0lEQVR42r2SMS+DcRCHn9I0lUhJSDoiMRCrgVHHbtJNfAczq09gJbr2I1iFqUlrkhgq0cRgalp5VYPyGN627/tKmXA33f+e/+V+d5eSn22C3wN2ueCRF5qUWY0RIk5aMW49i4aZAbA/SDSs+6xqy1wETNlW39wWMW9d1Z0IKKp6OixqSdXDMEoDlywBrVFbDwBkwiANBAQJZQsA3MZVxH3eK7XtbFxF6DOeWzVQnywkZQ7/hnbnSvQ6DtCupXFAOJOCDbXv2ngAcUPVk++BlF21GkYTQIYs2cT+AiAfrbtMjx5bI2COPNCJgDMAjlgEIMcxAPVokmlvVO17bc1A1Q/X400u20wczLt7X+cw7YE1O756b8XNSFPqP8/+z4BPnbZClTUWRT8AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABAElEQVR42t3SMS+DURTG8R8aqUSQkHREYiBWA6OONrHhO5hZfQxhknTyHYRJgohIDJWQGExNyasE5RhK37a8q8G503Of/715zj2XP6xVBx68uLFjqtPsURIt69lCO7D+ZZSdeBJCxUBq96kKbxZBwYkQllNgQQjbTb0khM2GyOHQOCpN4A70pkAiaUs0Cq6y2h1xKlQN/bQG7TuSCI+Kv59tNHttMuvy74eqWcpK0KeoLNRNZ09lVghb2UCXmnDUEN3olZdvAUKCQrqxK4T5ph4WwlkKrAjh3BgYsNcxGzmXQqi7cCwRwoeZ1lgTbto+zLu1zuT9Nhy79+pWyZx/Vp9sn2bzQZl4zwAAAABJRU5ErkJggg==" },
        ["4"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAA4ElEQVR42sWTPUpDQRRGz6SKaRMtRQhYWAciiEuwcQcuwM7eXlDSGEgdCCktBFNaiSsQBHEBav8E0WPhI7x5zGARHrm3mo8zH/dnJsh/0aIZ5AH5YruiGOeBqrOqVkduVB3kkV2/1fv4WoxMVD3KI5sW6rMhRqodndIGrqhPc0l3/FDf3ag1UHE5oQuMKYA5Ir3YpeWL+umWiHNVe7HLMX1gyltiA6XLo/rjXnlKuBwyBO54yq/xDIDL9KaDsMMrgYKLpXoOwDW3LP5q2TcXo/p0c2Eqk3NZ7e2G9X2ShpBfbB/sL31Dl6AAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAxUlEQVR42uXQrUpEURTF8d+dptWPKIJgmCwoiI9g8Q1MvoBdMArClBEmC2I0CBpN4hMIgvgAar+C6DKMDszlngsmg2uXc9b573U2mz/TrXi3VAY2RZx1ZVyIWCsDqz7ETVfGSMR2GVhQiwdVGTkUsVcGZr2KFzPNh97ktGsOJ2qci5hvoo/izSJN5CdlxwpOPZcnuROf+t+3lpQt67hy39Y9RvbBcfsHFZY9qdSOJu4BGLp0PTY2pFCD6b38Uq176VDPP9QX1pxArSmsyUQAAAAASUVORK5CYII=" },
        ["5"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA+0lEQVR42r2SvUoDURCFvw0G/CnSaSGxMTY+gOBLiGBnbW/nE6SwC9jaSB7AykICgtippQg2NmIVNIIha6Hhs7h73U0WRMF4prkzHGbmnLmJfI8Kf0NoYimOfthhqvC+oVfI7sqEPU4npyJgnTNeeeGc7UJVxKbjOIxqR0ekXPMEwE7sUiR0WGKNBVoA7IZiIsAKy8AFKQBV7qkzpMYg7jAex6o2yjtEdAGY+8UtaiQM6X9V5wEY5D7cqqmz2QZVH9SPkIcRJ8AMB0wDFfapA1eZJhEX7av67KXdzMut0C8K2/BtxOpWlJxrX7Xto+/27LiZe5L817efKOETCeGuAtI5E98AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA2UlEQVR42t3RMUoDURAG4M9FQWJhIdjYauMNvMFWIthZ5wyewMYiegAtJAewVkGwEoKlCNbBKmiEBGOhMhYbzC7PsNpYONO8efO///9nHn8UeyLJk6KV1b2dLZ1v9UvVfQrYdZYy1Er8CrDh0sCzKzv1Yx59LzFy4xE0qywFw7klZA6E0CkD1uRyjXE1pyu8W5hu/VQIq9PH7EHB8MO/WDTjw/Drdhm8TGB3wigx2ZgA9oVwbB6ZlhCuy0IrhkJ40tEb73K76mXTa2XVh6nddW0P3vRd2PLP4hPrs1E8Ng+oDgAAAABJRU5ErkJggg==" },
        ["6"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAA/UlEQVR42r2Svy4EURyFv5liM4OOhk0WPaVGPIFHUOhEI6LYiJcQpeU9VDqdEF5ARDZZEiLxZxOZJfk0ZubO2Kg2zu3Ol3Nzz+93I/lLMaPDDbpIRqtwDM+Wqp3SCWFiT81sDcc79WyIUx/q2RC3f2dLPO6jOnB2ON5T9agKJRJgjC6TwCFzDLjgmKew96ZVPbsUXn5mXXcmOZ7wS9UDm065YV/VtRwvq3pZPGi3rBgD0wCcFms4AaCZbywC4K3AL5C7MXAPwEKBF6FwxcS++umqiDNeq7peFtv/qXPjlR+q9kxLnNaav7pSnXnDbc99N/PWjvPVmf/LRx4x/gbFTUIeV57qugAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAA4klEQVR42tXSzyqEYRTH8Y9ZaAY7Nkz5s2dpI1fgEizsZCNZSG5Clob7sLKzE3EDkqaGIuXPlGaoY8H7Z97e3qVyzu58z+/p+fY8/FkNaws90+V4UwitcljXqcpuV2UbHqqyO1XZUY9C30w53hPCUXE8BEa0jePQrL4Lx57ySxtioJ8t5vFZAYc79QSO+RLCgaYJ67pCWE3wkhAu07N2M8UaJsFpik9AM8E/t39L8UvmVMM9mE/xAukUdV3h0wqYci2EtUxs/1fnxpUPIXQ08q81aP5qufiNtpx713OrZc6/r2/8AV7hdzwbpAAAAABJRU5ErkJggg==" },
        ["7"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAAzUlEQVR42rWSvUoDURBGz5rV0oRgYS0BQduUeQCFFXykfSi1kTTBLm0KC61TicQui+RY7Lo/d68iSO5tZu7HnG/mMon8dg74r5xj5N7+oTqtoxVvVXTJCbAFQMxVzWruq1o4FCPwC86AJzZx7wyA+yrrtbxQ9bzMQnHsp/rynYfwawbA3U+/VjrXched+q5+eBSHzxgBjxRxeHeoHvxZ3XnavLTFiarLdkEbfhN0HcDnqk7b1U14bKGuTeLwKw6BB4zvWhZxJtn3Iu9N/gLnO62YmlvTDgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAAr0lEQVR42tWQPw8BQRBHn/OnJBGFWiQSWh9ASXISH8kX0h2dRnRahYJaJULnIn6K4xyZ3UShMNvMztt9M7vw4xgjY40AAv/NQpqtOTyyDjXg8i4P04M7REzFlrdpAEtONk4sU9c0C4Ro2bDKFbF9bj/lA/JA5MJJ58j1C0fEmZKNewgxeRWCbx61Qdyo27CJEKtsKSsf+qaGOUJ0bVgmRuzJ2fI+RWCGbBz6O/9b3AFnyTTocxyTwgAAAABJRU5ErkJggg==" },
        ["8"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABPklEQVR42r3TMUvVURzG8UcluYPQHWqRCBrEQHBwCSM3h1qj99BUS5tTgYIvoUanXkFDc0ENwb3o0lVclBaRuGRcL5H343D/3nv+Li7W70znnC/n9zzPOWdCrqrJXC8yn3fZTz+/087rNAvGcDxzqqwDc9VOhdzTB31tuwZgx1SJbIBv7ohY1gWrJfIBPLw42hp4NZwN5U4nSTojgbtJkkbpaC9JsjBCFgqwarTkDC13RTzyCz80Si3x0hn6WjoG+Gm5bjpmfKrlsjGSXiE3fHW5NuvI0OR3TzTNeq6LgQclcoiTSmzEU7A1Rm6Bj+PuJvWwM47uZpLkpLjbQU5H64logMOLHMQi+FJq+Qzea4q4bxusl8jj6gH0tHT8Bcdm69G98KeWypGVy+nGorf29HS1vXF77G/i/3+Sf4ycA/O3kUurP0ruAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABJklEQVR42t3SMUvVURgH4AcjcRByyEUkcJACwaElDN0cdBW/g1MubU0FCX2EGpv6BA3OBjoI96KLV2lRXCTiknHvJbr31+Df6/nr7tB7pnN4zuE9P17uvZ765Lue35remrgL1nWlWKdm62BGT0RP07GBiEMPSrIlYt80WNAWsVySryJeDvdvRLy+2oyAUdAakmMwVpITMDckcwWs6rm+aHgCFv0S59evXNemvuhpaBmInxZu5zJup5bL1m3w0F4NRHyok6tPHlk1YcqGthh4UZIzcVk1C2siPt+AxyK2iysjOuLwJpdH4LIgA93heZVixFmRw7yI3bKXbyK+VFPyzIGI9yVZqQago6Hlr4gfpurffuVPLZULS3fnbt5HJzramt6Z9B/XP9V+gDwZB6vAAAAAAElFTkSuQmCC" },
        ["9"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAABA0lEQVR42r3STyutURQH4N85/nQHZjIR3YFrIEbKJyEy8AHU/RbmUld3JGXiK8jQhGKkSEKZKEpJBjipx8B73vO+yOhea0/23k9rtdZuN+SraOZfcHcWs5v7POU8fzJUuohe26pxa1JEwUvF9aVDLXCup8097sCCiBEXYKbNU2DrrZyYB6sizSTDSZKDsp39JHlrr5mkK0nSKrlVzFLwTZJkrOTxpLwVfZ7wbELEDzvgd2ewNfBgw4qTYshfHe53qh571WeJfquutJy5BtN1bq8BDzjS+JyXwWz7XMdBj9Xc9/y3nlvnn55xrPk5r4O5ar3OdtTL+9wqb37MlcZ3fOT/wq9xBk7azYnNzQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAA5klEQVR42tXQwSpEYRQH8J/LyMJushFZYCFWypMQWXgA5S1mL2WykrLxCrK0oVgpkoyyUZSSZmHmpo6FO3fm1u0ulXN259f/6zuHP6gR2y586mjZN1XEUWdioN8tD3IjGz+7kQqhpdbDmg8hbIFZT0JY6/GKEE7ztzaF0IQE0+A65yv4/V6CYZDmnGa7ZPwGFnJeJJ9iXEfoWgJjzoWw01/sUAhtx/bcZ0vO9bnuoXCWcFm8W13Ti9SjVyGslt9+Qlu4NVTOu0JYL8dJX1XZg6rsjK5wJynnIyFslOO876rsSVX2/9UPjphdq6lrz4EAAAAASUVORK5CYII=" },
        [":"] = { 6.0, 7, 0, "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAdCAQAAADMFr6lAAAAIElEQVR42mP8z4AMmBgGjuvD8J/hP8MSwooZ/49oRwIAB2YJEc4im38AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAdCAQAAADMFr6lAAAAH0lEQVR42mNgGDTAh+E/w3+GJQwMDAxMqDJMo45EAgDXXQXlAz9YRwAAAABJRU5ErkJggg==" },
        [";"] = { 6.0, 7, 0, "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAdCAQAAADMFr6lAAAARElEQVR42tXPsQnAIBhE4feLU2Qmh7QIZCiHeSmiIIGQUrzugyvuQuYk1rEgcv6Xww1GfrIBIBa1GmLnZZLBw/zA998bnp8h0KicJFYAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAcAAAAdCAQAAADMFr6lAAAAPUlEQVR42mNgGDTAh+E/w3+GJQwMDAxMqDJMQ9CROLm3kY1awMDIwMDAwMzAwKDGwMQQz/AfJivFwILDCQCx9ApXTzImvAAAAABJRU5ErkJggg==" },
        ["<"] = { 12.0, 13, 0, "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAdCAQAAADbNC5sAAAAnUlEQVR42t3SvQnCUBSG4femiYVgJQi6gti4gRtYuYAguIIrWFlZiJ1TWNs4gWWwFiys/OG1SKIJJAvkO+Vz7zmnOEHqEtEo6rKnD4DFCs69qQOxRCNPpilR27UvVd9ujf809Zq9PzrMuyDuzLMoTkbsuPGj6sOVrSIhjj1nPxNnZcLIpfeqDdPqeagjxImXlELFAcTIk0pq5m388gVhEbAEDaf+uAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAdCAQAAADbNC5sAAAAiElEQVR42uXOsQnCYABE4S8RTJNWEHQFsckC4gZWLiAIzuIAFmLnFDY2FjpBSrEW7A38FgaM0UyQK9+7g6Mt6dkZ/OLIwl0wrIuxkyDUVWrtKQgKG8lHzNzK/sGoutiWOFhWcQdHqUyEidhZ8X0hcymXV/P6v9jK49/Dd/r2TQqm8iZFoqudeQHveidsOShVoQAAAABJRU5ErkJggg==" },
        ["="] = { 13.0, 14, 0, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAdCAQAAAAwA5VvAAAAUElEQVR42u2RuQ3AMAwDz0Gq1FooS3mIbJWR3LhxQQ9A+BnAVHcHSBCYxDgXR3IDD9n4RwWEQp4QWq8tvMYLQFq1Esgmtl5p/Mbb1s0jZ7ID0y0qQ7O34/AAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAdCAQAAAAwA5VvAAAAQklEQVR42mNgGAX4ASMDAwMXQxmGeBfDNwhDhOE/BhRhYGBgYMJnLAsDA8NHBkcM8Y9EOYp8O38zHMQQ/z0ayxQDAKXtGSb2Hkx5AAAAAElFTkSuQmCC" },
        [">"] = { 12.0, 13, 0, "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAdCAQAAADbNC5sAAAAnElEQVR42t3SsQ2CQBTG8e8QQmViookJK1BROIML4AY2VraOYaM1hRUbOIKFGxg7a0NsLDB/G4gHHgPA97r73Uveu5xBXfHUc5rqpLnDEDPgyQYP2VUTwIWkTQEHSgBK9oxtEiLmXPU+WDVJiDV1MptCdrwA+HBk8qOUe3X/ysI1YcGWkWv4nMi1141l8xghg+TL1/v/ncyA/0ZHvsYxrvIKI++QAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAdCAQAAADbNC5sAAAAhUlEQVR42mNgGL5AmGEJgzh2KRGG/wzvGTIZmLBL/Wf4z3CSwRBdipVhKsMfhv8M/xn+MExg4EWX1mbYCdX7lCEU0+AUqOR/hgXIwuwMFQyfGf4z/Gf4yzCNQQAhEcJwD6r+LIMpNhd+ZMhnYMbm+FUMUtj8dYfBHXtosDBwMIwCBgYGBgBlHClgJ/1FUQAAAABJRU5ErkJggg==" },
        ["?"] = { 12.0, 13, 0, "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAdCAQAAADbNC5sAAAAzElEQVR42rXSsS5EURAG4P/K1WgkEt0+iUJolUSt8CQaLY9gO6Gj1HkAiUSxhUhke0QUNtndT3HdPZtFY5npzpecM3NmKvkpFvJ7Ws1xHjLIS66zNzHR8Wg6TkQk4hLcO3JqBLYb6hijb1nEPjhvaBccNpdYMsatSJ2ndJNcfT49SpWkasuYzi1w1pZRctEd2PxKB+CiFN/muiH6Vmap1sPIRntSaKd0NEtdsPYd3WCgLlRP/rmX1zxnWIZSzTnl98jb/LtR/c+y/SF9ADBy4IsDzvs7AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAdCAQAAADbNC5sAAAAu0lEQVR42tXRr0qDURgH4Gfjs1gEweaVGESrUTEbvBKL1V3C1kTbjGtegCAYFkSQdRUxONi3n8ENj35b0+Dvbed53/OHw59kQ8eDsRfXjkrY9ChFdb/oSsS9M+dqEfvzmakYWQPHIi4/6VDE6WyHVVNxC5UnPQxmVGuhteiueyIumrDiTsRuk05E9JuwbSJG1n9CZShqO82Zg/JF39MTsbWIbsRYVZ4wz9CrZ5Pf+8538VYutJf3tv3jfABrMUITDDOJcwAAAABJRU5ErkJggg==" },
        ["@"] = { 25.0, 26, 0, "iVBORw0KGgoAAAANSUhEUgAAABoAAAAdCAQAAAAeRrT9AAACA0lEQVR42r2UzUuUURSHnxktm4GmjEpyamUULYKICIQC20SgkEEgtQpyG/QfREQQtHAj9EEtWgRhikXqpsCFIIGBUZvMIjAEK5nUwMZB5mkxr693ptFw07mL934995733N85Cdm4JflfUG2VuQSN7CDDL3JMU81/w5a0w+fmXLWcL7xgTdmuMuioE1a3SY+FUCK+/TT9pIE8Q4zwlXky7OUkraSAPOcZrHQv66yqj91T7ooNPlJ1zqZK90oLXRXASrup6pNyaLd5ddxaETt85awFvztkWxSgUXXZfSF0SdWLIt6pCMINEc+qejmE7qsFU2Krqsv2etsBVYseF+tcUh+G0Kg6JmKfqu2R952q3hVxTB0OoQm1V8Qp9UMcgIQz6hsRB9S3pfmS9uqBHAA7gU/Be3wGdgEwD2RCwW4B8gBsjnsl+w3URQfE8k5GEoXiRlMjEY8LQCpYT68NFWPwJ7A/WG0GGuJxMYQW4p98BxzgXLSpM/puisIxFyZhjiyNAPRwBnhKP184RFsE3eMjp4DxUOU96pxJscbhQEIFb5WNjoSPeyXQQdrrTrjkD1/aIrb72kUXHbGlXOVZl9T3ptdIDaqn+wNVB922EWi7k6pOedXsv6DVGtFEP4ej/jQzLESv8ozu9UpYymt++6sSda93U8nqOEEzB6lnKzUA9NFVedEfP4REvuWjCTsAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABoAAAAdCAQAAAAeRrT9AAAB3UlEQVR42s3Uz0uUURTG8Y9a2QhZRiVprYyiRRARgVBgmwgMMgikVkFtg/6DiAiCFm2EflCLFkGYYpG6KXAhSGBg1CazCAzBSiY1sHEQT4t5HV5HTdt17uK995z7ve95z33ew39tZcv66mxV7ZesMbHaEeVaPZcVxZH1wjkVKyOHDKe2p8eIw8und0KXKuT06vfVlGq7HNMsg5yzekrfUm9CCI/tLInUeiSESQ2lUCFwe4XEbwjhyWLnDjlhyDrQ6pUJed/1OpUUaECYszsNXRDCeXCnpAjXwWkhXExD94W8DJqFMKfDLd1CmHcElWaFh2loQBgEnUJoSfyXhHAXDAp9aWhY6ACjwofUhYwLb0C38HZBA1CDLNiGT0UofMZ2MIXqNLQRObChOCvYb1QmByzsTh5lmF+7ystLxJRHJhWvWhmaL4I/sScVbURtcT2fhqaLH/kOe50plrxg65NyTBaWBeFk1asD7U7iqS5f7E9ExD0fHcdQOsl2YVI5KvSlJJR3c9HqYBq6nNJBlWuGzfrhpSa0eG3GjH5NpX/TrPB++VqtbA+E0GPzv0BbjAhh1BX1a29hDbocSOZjxk0nt/JM298OyLjq25JO1LZ6s6x0VKN9amxKul3n0s7xB1DbvCK/GpqFAAAAAElFTkSuQmCC" },
        ["A"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAABJElEQVR42sWTvUoDQRRGT5aAEQPRJk1AENKopbVYpLQIWIggKL6A4BuIL+ALiGBnkDSCIDZqZSMpRLCz0SbaCAF/IHoskqzZ3azYqN/AwFwO95vvMpORnyjgN7EqIusJzuiqq3oZq8awMV/taCqKRU2XGAIEVr4zvVBvPFbvDNJMy6puuqZqJQ3bUnXSUd/UvcFYxlv1SsRDteXIoAizTAD70N3zLAyKsKNqWcS8z+pJ0jTnU2SsB+q7pbhplQJQC01qQMBy3PRI/XA87DZsS73unTMCFGkCcN536TkAZmh8ddswTdv9ERqpWNNsD5tW9Sz+eNxVdb6XdDXMFlWn0nkrBt6rbYuJblkf1RcLElChBJzykOjWpg7kWKQ7kH/+gH+CfQJ71l6wB19JJwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAABBUlEQVR42uXRPSsGYBTG8R8pRGGxKKUsGM0yyGRQJqXIYFW+gXwBq0HKRrIoJRYmiwxSNguLLEp5KVwGnsfzhlU5d911zv2/r9N1Dn8gxkXM/4Ztizj5GerwJCL6yx/qy7JJjQimf1I7Fhf2xFWFQEn0ilg0K2LkO2xJRJ92z2K9NlTnUpyBHXGvpZaFIT3Y4PNuNVFLbVVEL2j1IParoSZ3ZWPdEq+6KpuOa8NmEdtEvalKtV3xpruYN7sX51/+oNMNOCr5OAwGnX6VFj43WX2WS1uefovdaChAAyIOq9yviRgrOJ0peiuPj8p0YSTX4kVnFdbgVjxqg1ERBzX3vCJizj+Kd6lGZ3L6V8RoAAAAAElFTkSuQmCC" },
        ["B"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAAA/0lEQVR42sXTLUuDcRQF8N8j4vAFLBNNFqswWJgI2swWTRb3CWxGQdvAbBFBFvwAMow2DSIYzILBIsoY2tRwDdvkmXt5DKL3lv+Fc/+Hc+69SfhJDPl9WEV05IdHZ9ZSuBCiEr3juN03nOo4d9F6TSspouzS0fffljqYtyMi4rZZ9Zew7wHzRrOU3iExlgWbxYv6YNimOVSbRVrp7pfSCQUruLaX5dtzbMV4W3d/0rwdG71muixpZU7BqbxD5W7STntzcR8RT5EbTPqmhikLWb7VwUwWrAgag2HrVvHuqp+9iUkli+DAa/Za1mKkey3TK91wo+pE6/CS/zvAP4Z9AkfXuH7wZ/79AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAAA5ElEQVR42uXSIUuDURTG8d+GbGwKFkWTZVUUFiaC0WzRZHGfwGYUtAlmmyALdmEYbRpEMJgFg0WUMbRNwzXo65zzvTcafE65F/7c55znXP5Me8JAvXlwajWFZXWUASPf4DPnn6cpDXU0XTj8+drSgMOWILj5uBRz+913j1mVOMYtCqopbAbPOnFsQw2t4Ul3viYdM28ZV3ZTuT3ZNJoB+aYTtq3/toV+biVzTgRBM4ZB2Z3gUTlu2tPGpIVUbh0wncLqoBvH1qzg1WVevAXjGhbBgZf0t2wrDS+rr6DrWsux4J/pHWtYW5mzjP7qAAAAAElFTkSuQmCC" },
        ["C"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAAA+UlEQVR42sXTsS7DcRTF8fvvJBIMIgZ9AAwS8QoSE8/RTmJjMHgDHQzeQCLB4gWsBh1+uwQbEm1Co8LHoM3//+/QWui94/kmNznn3EyMnkr8BbQYh5GiFS9xE/sxV1D0d9uH4jza6mt9pNaTOq41fYKujSK04BUcmxZC1Tl4MJlDu+BMfrziEtRz6AqsFaCwLEkaOXSLjqwEFfbHgtmIaIXhPlXGEcsI6Os30HNEzEQ2HLqPiIlYLSkrkSJFI2/BHjgtxXIBarnjVW/gyFQv8BNwVww41AtVSbrg3Xq5T2FnoHRPNgdLF8KShqStrenAfK5k43upf4C+AV5CIai1n55uAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAAA6klEQVR42uXSMS5EcRDH8Y9XiQSFiMIeAIVEXEGi4hy7legoFG5gC4UbSCRoXECrsMXrJeiQ2E3YWGE0m7z/e1lrC4nCTPeb7yQzvxn+LBYcyLU9u7ZndhCy5V0k+WCzitT7pa4rLR9C6FlPkXkvQjgyBWrOhHBvooB2hHCatGUuhNAopEshrJYGWJLLNQvhRuga+27tDMygLYZD2XADs1Fc/m3ocxToCdM/WXCHcSulynLVzF0hnJSaz4VQL6SaVyEcmuwf/FgIt+mBaSSvkusJ4c1adbrtytM92hi0xKKmXEdHy745/yS+AIUGWk/4mz5ZAAAAAElFTkSuQmCC" },
        ["D"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAAA20lEQVR42s3SsUoDQRSF4W9lO9dOsPABArY2gkUUK3trQTtfw8Y8hRY2NpZpDBjSpckTaCdipyg2gngtxuiurNkUCXimmst/Z+aeM1mYRgtmj3VEab24cW63woUQnajTdayMO/NKzwAUWgpsu7Lp9fdpW9/35nEQzxERcZwq9SO8O7MHjmSTJ+0ZYtlakyEjsNqEpccvTWdvNq+wZoBFE1aAxyZsHdxPxnZs4M7t31hu3yU49ZEKP+p/faRFreS9kZNxX1ntyq7r0FsdlvTkwdCFXimx+JdhzQH7BIbNXcZg7h6mAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAAAv0lEQVR42uXSrU5CYRwH4Oc4GsfGIHABZ7Na3CwwRvAm3LgVil6FxWKxmWDT0ShcATbHDGwyGNnXcGR6Dh+vjeDvX5/3cz+Ollvh16xM3buKsc08a2xApcBHIJVJ0TZwaV3ereVncc9SEPS3D20Vdu4KgrkETvY+a2iMmrPDjAloxlh++dMYy5P8jTkGCzGWgo8YOwezw6zjAm9e97OKa4/gzme5SC/fRarK8r83cROv5ZP67lrmWXg39mDoH+YLuW5CawsxEYkAAAAASUVORK5CYII=" },
        ["E"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAAAXElEQVR42mP8z0AYMDFQV1EHw38c0IZok1hQeAcx5D+iK3JkOEAf31FDEbLD96P57ixDMbYgsEfh/SHbuiEVThQHJgMDA0Muw2X8gcnAwMDAT7R1jP+HaDgRpQgAK5kZuhZzpqkAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAAAWElEQVR42mNgGADQwfAfB7RhYGBgYCLGDBYU3kEM+Y/oihwZDmA3iSjr6KwI2eH70Xx3lqEYWxDYo/D+kG3dkAonigOTgYGBIZfhMv7AZGBgYOAn2rrhDQACjBeqC58AqQAAAABJRU5ErkJggg==" },
        ["F"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAASElEQVR42mP8z0AIMDFQT0kHw3+s8AeRprCg8A6iyf5CV+LIcIDWPqKDEmQf7Ufz9CyGZZjhYo/C20GWRcMj6KijhPH/cPMRAGhLFiqtPnp+AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAR0lEQVR42mNgoCvoYPiPFf5gYGBgYCKsnwWFdxBN9he6EkeGA9hMIcKiwaQE2Uf70Tw9i2EZZrjYo/B2kGXR8Ag66igZfgAAhr4UGlt9bl0AAAAASUVORK5CYII=" },
        ["G"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAABIklEQVR42sXTuy6EQRiH8ef7CJpF6EisziEKhbgHGp1r0OjEoRBEpxCtRKXWSLgBhSg0iCgVttJYm7U27HoU6zCDIBHMVO/ML5nMvP9J5Dsj5bdYD6uckKfAMct0RM7nOemd4bhy/GXvhU08bZY99NR7VSuOxazTG1U3bBUx666qlzaHbFbV7ddDbHBf1emQ7ak6FDAcNWfOrZCdq2XTiEWz9iDtwDUPX71bCnzatfoP1jbpCqoRbj9mw/QEVd0PW99LQkLCEUDtYjVWBJre8QxQovTKckAL2Qi10Q1chIfuATATsSlSYCcMUr9VVVfMiNjonFX13r44SAtBkA4sPFXzb/OWumgliuWDSyZvGeKAa56Yt+iZ6w6GrU/++wP+GXsEBigcZWmxdKMAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAABEElEQVR42uXSuy7EURTF4W8mgsKI0JGY0iUKhZeg0XkGjU5cCkF0CtFKVGqNhBdQiEKDCJ1GIRqXuMWY2QqD888MSoV9mrPX/iXr7JXDH1ePFcdu3DmypLM+NOFFJOfaWC00Xh0+O3CiJIRXo1moy4MQ1rWBoh0hXGlNsRkhbCVKoz0hTKXYrhCGMg4jLlzYTKVz4Vn++xDeRx24VfkNyyN+irShjrahO+mGPX1c74XLz8FZJuaWL9Nfqx7WKycn5xDeF8tXTWmuwQt49PglHAihmIHalYWz1HQXTGewSXlsp1K/shCWFUCTWWWhpC/7jvnkI+27q3ZztRsveM3kVbEoVy+cAauO3bh3as2gf1lvpiBp/xRc5SwAAAAASUVORK5CYII=" },
        ["H"] = { 19.0, 20, 0, "iVBORw0KGgoAAAANSUhEUgAAABQAAAAdCAQAAAAAj4ROAAAAR0lEQVR42mP8z0AcYGKgjcIOhv8M/xkc0OQcGP4z/Gfooa3Vw0QhCxJ7P8NBFDl7XArRpKjgRkcGRhToOBoz1FfI+H8k+hoAueoKUlGBbH4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABQAAAAdCAQAAAAAj4ROAAAAQUlEQVR42mNgGGDQwfCf4T+DA5qoA8N/hv8MPRAOE7FmjUyFLEjs/QwHUeTscSlEk6KCGx0ZGFGg42jMUF/hyAQAAd0IQiWMmO4AAAAASUVORK5CYII=" },
        ["I"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAAI0lEQVR42mP8z4AOmBiIF+pg+M/wn8GBdI2jQhQIMf6nt40AFvcE/Z1vYL0AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAAHklEQVR42mNgoAh0MPxn+M/gAOEwYcqPCtFCiP4AAHGIAu2tMjflAAAAAElFTkSuQmCC" },
        ["J"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAAhklEQVR42u3RIQ7CUBBF0duGEAwei2QfeDAVyBo2VV1VwwJIsKyAFdBgarAQehH9hFaAIEWQ8NS8nMmYieRdYvrlCSKb7xz/8yc8BOD2iqcAnNs8anECwCE0ceHJlYi49qrWzpqOS5sc3VuFOQ/LYGxmNzvHT0acW1h6sXJr6uCBEvmrL7kD9Ndf2/sm4O4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAAeklEQVR42u3OoRIBYRTF8d8Ys6PoqrjvoVMEUdmXkiXFA5hRPYEnYJQtKsMVfDs+gbjBOLecc/43HFrVQAjrZ+h8//3jVnABbp/wEJxz3MvwFOxfxdjJLPnKVbgrGzgRQjjYqZNf5uMWqWxuq/8+Z2Tl6KK2Mdf1A3oAmzEiB7uPH0UAAAAASUVORK5CYII=" },
        ["K"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAABDklEQVR42sXTsUrcURDF4e+ftRAEsVEIYptGsEs6MfgG2wXBIgg2gqCFmnRpwmKCjSlNkN1GLPIQdmrnI1hswEaRFArKSeFGXXEvFpLMbS4zv3uYe5ip4inxwvNjDRFvuyrDjkUsl9RqdoyhaaOEfTaNffOl3upW0FZ32Rt7ZRsX6n71/umAnwYx76BkyJZxfNEq+bbkHS6sleydtA7O9fXGXtrtlEduTL0XEWnkb1ynlST5ndG4Ow97WzVrDwO+9lZrRmQiV0mSqTu1bqy/k95Mkhyl9hg2c/t6KCdJksXHemvf3s58BJ8Ml8fyu0MMaZSxWBC896Y85Id+oPJNVd6FD07x2hzV/1vAf4z9Aa2mkydJZ/tNAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAAA8UlEQVR42uXRsSvEYRgH8M85g1K65ZRktSgbm8h/8FttUrcoRVJsFl2UhRHpbiCD/8HIbf4EwykLSaHoMdw5nfv9fqvBM73f5/28vb3Py59VVQhzXb2yOyGsQV/GwaJzY6jZz2M75nGt0orpLLGBpsR7Nht3ijeJ++9WLxt0aQgVNz/NXnZkAnvqeQNZFcLr7+PdccYueNafzUZctLeHW0NNvzSET3UhvBjNY+u4EsJZNquBSR9CmM1iA+18IIRbxTS20MklD0JYSXtps7N6sgW2lfO+nmMNlFTzWVgWWDSdx2g4QcGhQh5j0yOmLPlH9QVLjk+FtcM7SgAAAABJRU5ErkJggg==" },
        ["L"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAOklEQVR42mP8z0AIMDFQT0kHw3+G/wwOtLdoVMnwV8KCxN7PcBBDPpfhMguKgD2GEn6iLGL8P9yCDgB22QgPiY8IAgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAANUlEQVR42mNgoCvoYPjP8J/BAbskE2H9o0pGlcABCxJ7P8NBDPlchsssKAL2GEr4ibJo+AEAlUwF/6sbwi8AAAAASUVORK5CYII=" },
        ["M"] = { 22.0, 23, 0, "iVBORw0KGgoAAAANSUhEUgAAABcAAAAdCAQAAADruD9NAAABBklEQVR42s3UvyuFYRjG8c97OmJQJhmUxWKQxWAzKGWQRSmx6JTyo5wz+g9MOpQTqyTFH2DwB8iklMxKZ5BZzpHX8nbC++O8lDrPdj19u+/7erruJwj95hT8P74jFJpNJLaFQsvx6pUEuMtG2jBTxmL4gsH02eP1K1lWFw1805PGs/Bu69ndvuIfWNPT0sPm8JiG76HfUktvKXhXS8PP1FGOVJ8VXHhKwxsOMGoarOqNOqZaPfQaGSzaxI3rLPzFMWaMmDcUrx2PWFUoUFZB3Xk7/MElSiZQ02wf4F0U8eYoT96v3IFTz/nWowr2k8JfTLg7ca/pNi/e+Pnaf97VoPM+jg7BPwHdgTM+hqleMAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABcAAAAdCAQAAADruD9NAAAA/klEQVR42u3SvyuEcRwH8JfrEYMyyaAsFoMsBptBKYMsSolFSvlR7kb/gUlHuVglKf4Agz9AJqVkVrpBZrmTx+C6nnt+3WUy+Gzv7/fV5/ujD3+u9oRCc6l7u0KhlZ9QiGyUUnC3rWiM8mnjCb5oKIun9Y+ttPIlgy15ykQe77GZf1qUf2FDbzOPmMdzFj/AgOVm3lHwqZLFL1RRbKR+q7jyksVrjjBmBqzra5yY+dRj740HBrZx5zaPvznFrFELhpO945yyUJeiEqou2/En11gziYp6O84+Anw4SU5ckt94AOdeO+GUwWHa8Acpa2ce1d13ymvx386/zH/9or4BTuUxLshzjvkAAAAASUVORK5CYII=" },
        ["N"] = { 20.0, 21, 0, "iVBORw0KGgoAAAANSUhEUgAAABUAAAAdCAQAAADvTe9wAAAAxUlEQVR42s3TMWpCURCF4e8pgmBhbWNlly52Nm7A0iUEtBIUUiYINlYhBGzESrMK3YNZQXQBamsnN1UgIPimCcnthvszHJj/ZEn0FfweOpUknavfhSRpXG+dqUQD1E3iWQeaUbRorhhBP3FvEEGHTpio56MHI1TMIlmXNujoRq7Vd8abaj66M0bNNOLAiw/0tPLRiwcXmblSvllbr7jzGJHw2R5P307dQs/6KGtH1F57j7dg6BhFj0bxbq2sf47Z/yj3H6JfbWAl0OwUyuMAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABUAAAAdCAQAAADvTe9wAAAAv0lEQVR42u3SMWqCQRAG0BclELCwTmOVzs50Nl7A0iMIsRIULCMBG6sggo1Yqacwd4gnMDmAprWTP4VIfgg4W6bI183uY9hhlj+RsUym+et8IZN5OBeF3MVM6Vq/PK0YpVK6HlNp0Vwxhe5Q002hPV8YqcR0r4+SWcpbl97Q1IopHUdMlWP64QX3xjHl1RZP6jE9aTu5MXcbUd5NUDWIKUOfeL78qWv0qIM7jZiysY7H+lnzIZUe9FMpKxv/yeUbbcQjwOxB77kAAAAASUVORK5CYII=" },
        ["O"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAABA0lEQVR42sWTPy9DURiHn2uR0BpMXaSTRHMTn4xIjC02JiGp+AQ+hNhNmBBmYRbVKy3FY+i96TluUpbyvsv58yQn+b3PSeQ3NcWksEV2ueSJDte0SSPOotd8M6x3WybFbQGt5Jd9LzzzJd+1YqxuT9W2cyLOuKPqwDTENlU9kqAPVN0LsVNVGxFW81O9DbE7NYug4rQ7XA8DmQeyUlhdoML0KLdkTLLJZIf1IzbOJkfYI1ApAVUg43WE3QOzNCKoxgLwED56AkAzwpokwHEoUt1+PvpqPvrtXKY0Fmk1V6fneSDSxnffcN1BpOWHW2UtEZfc98qOz9546HKoQfLfH/DPsC/suBwVgenJlgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAAA7klEQVR42uXSMS9DYRTG8d+1SGgNJouYJETikxGJscXGJJpUfAIfQuwmTAhzwyyqlZbiGNzk3tvb1CQG513e97z/k5Nznoc/jkX7rjxpu9G0Mhra8CZy511dMgytpZ99l869pK96EVrQE0LTDJiyJ4RBsfW2EI4LpYdCOMinzoSwXMDmfAp3+VRL6JaGagmd7+sEmGUE1kHFZIYlY7aZZNiP8RtYjCEiwx5RKQFVdL1m2D2mS+udx0O+6SmoFbCaBCdF6fup9NVU+t3UTEOuW0+t03ORM9JWeaJNg4ItP+yMVmdJw7W2Z7eOrPqX8QUoh1y0Uh4vFQAAAABJRU5ErkJggg==" },
        ["P"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAAAt0lEQVR42t2SvQ7BUBzFfxWDhk6NmK01m/EEPEFfRyeDVyBmo1jwDoLBaJCIRVLdHENpen0uIuHc4eYkv/v/OLmWeK8Mn4UCZJyQFR3KCSWEAj3SQc34TdaoO7vcDh45HAZUWZiV6qmOrsaSpL7Q08H3+ERA6/V2W5ZAnuLrCE7vcypRAY7snkMuPWxgCBgRTJIICnjYQET7FoKa4UJ85vfQVREbRnRZxzYNNZh+56v8IGTpn7c7A+/OWG4Q3ljxAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAAAs0lEQVR42t3RsU7CcBDH8U8Ig410aowza5mZ1SfQJ+jr4MTAK2CcGQkL+g5GHRwdTIwLSe1mGaCEv6WNmwm/G+4u983l8jv+QbfKIHKvxvrt0CZWrjfjbgA/bnMsdSJ2b+g53HS5hycWSqU76DRc+SVT4KYN4sMLTp21QfxURTN0boBvn81QYirC7LcFy50FPakIhVHdp4ugy2We6lClwru5ibe641ceDh/Y+cv/jxs6bq0B4fMygnAg9sMAAAAASUVORK5CYII=" },
        ["Q"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAABEElEQVR42sWTPUuCURiG71NCINnQVFNTkAiO/Y/+RxG0SmsRhIHS0pq0NjfXVE32Nbc3ZBqK2ns1eN56HoteF+k5y/m4pvu6T0CTzIymha3qUE29qqV71VRyHOnapo+dIRVC+ppCm/Gxxy3XvMdTxWMrdAGosYAQefYAGFCy2C4Ap8isOgBVi10BUHTYEgnwZLFnoOOg9LY92o8CWZTU+RFWW9K85r5zC38kG6YrKxMbb9O6s/nl1AeyQUKDvA3kt3jPAXiB8Xi9rFn2SaL8qlffi+oLUf1DxC7I2SJtxesuN6ZIAJcsY2q5w8DV8oMDzgA4sZhY44g7WrzxyDHlWNcmBRQyP2BOQ02A6Z/VZ84nKQFwhSG7IdcAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAABAUlEQVR42t2SsUuCQRjGf58JgWhDU05OQhE49n/0fxRCq7gaQhgYLq1Fa3NzTdVkVrN7Q6aiaH2Pgy949/mpUwg+t9y99zvu7nleWLPyXNDkmw4t6hzGQ0VGyBm/lAii0IltDnnlmb6tSj6UY4AQdXYASFFBiLF/dRkhbryjVwhRc0tPCHHgYXuEiE+31Eb05j7VRnSn0wQAuxCDdYE02zMsWOJmMMNW6j8wRapHzlyLDDkm5JaUa0icvfcI8YWi9vphbXFOaOHX/OiHFn3Gon837IGkC55aecCL00hCPJJ1wTPGXlv+UeUOIa59G/a55I0OP3zQoGDt2rSHrFCSzdAERmx2Y2ME49IAAAAASUVORK5CYII=" },
        ["R"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAAA9UlEQVR42sXTMUpDQRDG8d+TgELSREQ8QRDBMxgvoLWdhTmB2IhFyucVtLAQWxFbi5DOwkoIgYAXUDCFRbSQsUiE92J8z0L022IZ+O/szsy3SfiJ5vw+lorcevPgxFqGCyHSmKVR7Hyeq+Rydyf7vHVVC8703E9na2burUc3IiIuxvF3JQy1wFZZpQNPqFksa0gyeVUh1rCEF8MirO4UXI3DbEM6Uw3h1fFXjI1cNLKrNwvL6lFTf9boNyUSiW3wbFDskGu3WLVXZqRD0FYtxjpusGK/zJbjfAeWi7E7l6hpl43+yDtaGsVY3zkqUkj+7wP+MfYBczBlsGywJQ8AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAAA4klEQVR42uXRsUoDQRAA0HcSUEiaiIhfEETwG4w/oLWdhfkCsRGLlPEXtLAQWxFbi5DOwkoIgYA/oGAKi2ghZ5Ec3sVzUlo4WyzDvh1mZ/mz6EgL68OTMxvz2GSN7WWgUuC96b5oU9WSC32Ps9WauQt1PanU1SRd+KXbkRbYiRlDL6hZjhkJSGPWsII3o4jVnYObnwPpzgyEd6dlc9sqZGP7+mUsH8+aBlmS721bIpHYBa+G30dlT7h1j3UHMeMYtFVj1nWHNYcxy+odWY3Zg2vUtOd9/YlPtDRiNnCJio5/FV9kyT3GJlstXwAAAABJRU5ErkJggg==" },
        ["S"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAABPklEQVR42sWTsUoDQRRF7yaRNCZopSBBbCxSRhG1CdoIVjb5hBT5AlOn9gMEbQVBK7UWG7FQQYgoqNgYQbQIWUIMJHIsZnY3uzHaiN5X7Lx5h3377uw46GfF9PtQXAXt6VFNtVXTgUpK+zVMZLggKpd1hhAWSnJrCw2uOePJZq+MB1AJgBoFEvbN02zQYtVkZusQgHkUilFvZR6XQDuC9ISZriUpqYnvLbiRJO0oM4BCiDk+AOhyTIUVUuF23qJEp8ehLueUGYlCIsum74/RG3lTcyJ/wZhyWtCi8kpIqiurF2nQ2JP2mMrhdtGYBWA38OkrPUiSUoFPU8r1QUuSpGfPpxRVOmwxQ8y2GqZIHYA175sq/tANrjjljnebn+B4UJwyLv06Ih02M02Rfe5p0sWlyjbLwaTOf12pP4E+AcHSbxZUaO/RAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAABG0lEQVR42uXSvyvEcRzH8YdfWRATpUsWg/FIWMSiTBZ/guH+Ajff7A9QrEoxYZZFBpQiCllQYtBdOld3+hjuez98j1sN3u/p/Xk/+3zer9f7wx9FmyXb7r0reLQrpSeOJJwKscxZ0VFDOl1HjaxLxx6i6sVADUoJgkdL2qOTEavyFuof2xMEk7ER+r6XZ4LC75paQR6dBptDV2BToplHEz4FQcmBjHndP2MpxTqHSk6k9TZio9aq/pTz1Uy51RJD+yVNmTajHW9GPf8+5VC0pnTzhY8Lgq2aBT/FHZR1lqFhyQZoFjxVym4XitaNVe/tsuxNECxWoExVdNa5Izc+ovqwpr5NWq7hywX78b/ZY9mOW+9Kci5smPNP4gu2MnD0QrnPUAAAAABJRU5ErkJggg==" },
        ["T"] = { 13.0, 16, -1, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAR0lEQVR42mP8z4AfMDFQrsCD4T9OeIAIE1gY3jEchPPsGRgYGBieMtyB8i8wMKCaueL//////6sgi1HDF6MKho8Cxv/DwRcA5Asna8iv3QMAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAP0lEQVR42mNgoAPwYPiPEx5gYGAipJ+F4R3DQTjPnoGBgYHhKcMdKP8CuvIVDP8Z/jOoIAsRtGJUwYhSMDwAAAXLFWvAIfJVAAAAAElFTkSuQmCC" },
        ["U"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAAAqElEQVR42u3SsQpBYRjG8f/HZCI3YFUmuZUzKJdgsrsMZXUHLuEMShZldAE2JgyUzt/g6OtQMjDxbG/Pr97lCfJOSnyerZDLUzdBpPmtp3/2VZa9EFlkB6BM5QFUAdhHtgGgU0CBNnBiF9kMgEGBJTSART4wEWseVB1ZFTHYda9qT8ScYd9bzi6du82v1HKR4dDMYlLr9zYybDl27dGzG6cmhtgFf2UhV/BJfqHnYEH0AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAAAoElEQVR42u3PPWoCURQG0DOxslJchWAlbiWC4AaEbMFlCLZuQFyCnZ1g6QKmi5VaRJC5NoPjTETsIpjbve8d7g9/Vhvh/CudCaENH8/1+Wevw7IHIivYATX1CmiAfcFS0CuhRBc/dkU0EsK8xPpCWN5GTQchTPJBiYG9EIblPb6EEE7WVr7z11KtetFYln/GFbXund4xtXV0klr4lHjDugB5MjOV0YTdSwAAAABJRU5ErkJggg==" },
        ["V"] = { 16.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAABD0lEQVR42r3Tr0tDURQA4POGoBiMNjXYNBn8kVzStCYYjGbFJhhMLikGTWqxiE2wmPwDxKbJMJaGgsUgKCjoZ9je9jbfsMjOLffc+90L93BuIv6OQvwf2gghTn7tTIYQ1YiIMOIbTxLRNrbArhAh3IKZDnQDZlO0CcptZNgXavX7QxgH921oFRzUs/rSHRjLoEswn0XbYL1JBrzhWSGLJsB1E5XAUZqnyw/4NNTIjsFCJyqDZSEkHvGirxNNgTMhTIPT1jNa76k2T++AUh7aA8VGQV7156E5sG8UnGdL25omaqhYA0v5KByCCt4NdkNFaVy0d0Q2KXhuoJXuKK30R7PyuWgRXHW0XyS9/lI9RT+EVMJ0i1FoewAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAABAElEQVR42uXSry+FYQDF8c81GxNEDUEjCX4kEkmzCaLMNJsgkZhAQlFMsymSP8A0kmCSsSmCjY2NI7iu6/VeUXGedM6+zxPOc/hjzYvY+ZH3ibj6MJ3exK1KAVoUsfppT0UMFqATEUOfdkHEyjekw6u4/nq/R8T5N2hGxEZ9dCaiuy45FDFSDy2JmKv5Vo/iTlM91CviuOYnRGwVW7kQL9qrblvEWBFaETEFKm7EveYi1C9iDwyI2C37nqva7WURE2XQmojRaiEPWsqgYRHrukTsl6+h4lpcmhUx2Wg0myIuxZO2RtCoVM9B4/k1uatC07+t9KPp51rzpRoXceRf6R1ZV2ur5PdfAwAAAABJRU5ErkJggg==" },
        ["W"] = { 24.0, 25, 0, "iVBORw0KGgoAAAANSUhEUgAAABkAAAAdCAQAAAD1cQ/+AAABlElEQVR42s3UvWpUURTF8V8uKKKQaCy0SGEnfhR+FPlAJUwqawt9CF/AJxB8gDyEvQqBBDMYgsTCiFqIlQasjBLBgElcFnPvnTMzNjaS0xzY6/zPXnvffe5Y/Ouq/B/kgYj7A9FbYnvouiciLlPpgtkBuYNTrhaRMTP46h2VDbuYG0FYKCLnTeKFUPnlJc4528rHTRegwkW3KX/Y2k1HB/a+utogqwxY6wxla9QfXjfIur2BLB288a2oZsIFrDlokF2vcL22cdI1PPO8yDddFFD3votjdVPnVViyjBknCtMjSGOtg5/WLOOIG62ya6POGZHx7Cd5HJG3SZ5GZCvJo0iV70lW0jtbZ9mxWd91xiUsgZW6ARdN9G31x7KLKVN1wT1kGVdMlp9xGGFOB1vet0hl3hz2rI8iwayFNgdbPqBjlnoSi/Kbsj8lSe62scUkn/M7ycM2ViCL6a2DnG5jd9Ks239D7tXiRl/MZA6SJPsZ70f7L2+13peKkd/uDaJNO397+198HEF6XSsaDGOH96d0SJE/Vt/Ywr9UbhoAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABkAAAAdCAQAAAD1cQ/+AAABh0lEQVR42u3TPWtUQRgF4McLBj8g0ViokMJS1MKPItlFJWwqawv9EdaCnY0I/oD8CCsbDQQ2mEUJsgYMRAsRBF2wMohCFmLW12Ln3p3rbmVl4WnuzDlz5v2Y+/LP4p4Q7tS468KOosY9FcIFCh3QqMktHHcpYw5YwFdvYcqu8LFm6QjhbsacFcITKOx5hTNOVfIR81WsEo10FYpykaV2zVTtO1LXS8s6aNYqyaOV6g9vyu1he8KLSu4KW3aE+4mZMRBWhpsCfa9xJaVxzGWseJ7Fm88KSL3v4FBq6qICq9pYcDRLesxSltjCrpfaOOhqpfR183eYti88BtvCM9ATHqHwTVgrDw+jfLeV7jrpPFbBGpZwzswoLdV/1MGcuVTw0NLGRbP5M/5poamFnneVpbCoiZ82xi2BhqUqBj3v0dJAV398CLaFT0K4VXHLwme/hIeT5mZZCGHgRMXdTFy4MclyO4l592cNhLBvepLldLI8qLGbQtjMqdGwfvEha3CJdr3B//E3+A2IxH4FCqaoiAAAAABJRU5ErkJggg==" },
        ["X"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABHElEQVR42r3TTytEURQA8DOTWWti/NlYWCoLLGRjoWRlLWU9xAYbH0QpsVE+wGSt2FKW5gtYUGJYKMn4Wbx5M+8NspH7Frd3+t3zzjm3VxC/rWL8DZkLIepRysVH4zXEQ/RHhHAMtkXmqYGqECEMauDZUBvMgwuFlIR1cNQCPepomkzek2DRJT7MCGEL7KY509RTmrhSVPGEO73dJOyCVYdgpVN6h/S6la7zbHfZRpdb4M3YTyRa5DQXy11AubUPd11Lxu+1a1n7/kNp2zd4NPCVFFygacJSbtIZUgX7QjgDs3nS5wENFSGMe8e1UpYcgM2uSe90yLQP1PW0Sdk9XowkpOgKLOQGltRWS8gGOMlPtH1wURT+7yf5J/IJQ0OgxTUm6HcAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABE0lEQVR42t3SP0vbURjF8U9CnEXa2HZxcCw4tA7i4iCUTs6l0DmKLtqlLyQgiC6CL0CcBbtayGjeQIcKkmoHQcR4HPL3l8S1g88d7j0P33t5zuHy32pVRNNUoTvvTrS87sgjEd8LyLGIWk++cS3+edsHPok4Vxrc2RRx2FUVTdH2cfjZsl/i0TLYEVEfHXpRWzSUVd2IS9Pjzuoi1h2I+DbJ/LQ/0l0/n0voaxe49/75GDvIabFZHjrPdPd3hW6hdvuzbEwGerZ/i79mx4GSc9H2wZdC0kNVE7EHzkSsFIFXWuJaFSx4EBfF77EvYnsk6R8DYMmjaKoM2b8St+Z6yTREfJ4w23FHbIk4MRpp5+KaF1hPtttt2OVz8EEAAAAASUVORK5CYII=" },
        ["Y"] = { 14.0, 17, -1, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAzUlEQVR42t3SrUpEURQG0O8OA76CQRAMChoslikWq8EiWI2+jMFisGjQYrFoEaZOGHDAIjaLryCKMy7DeJ3jRbFo0L3T+Vgczs+u5Ltq5WfIYkaR+0w18puIrCYRx2BHit4ElyIR84a40y7IAHRqEodg+x2sg4vxahzNecat1hvpgZWSxAHYErEGzuo9azLrCdcq0cWL5SaJfbChA04nR5+QGY/oO8fI0mck9tR1Ur5RSaY9gKGFr0jsgqMPWeMbr5Ikg98Zhj9FKv/tRq+hcgAUl/D8AgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAx0lEQVR42t3RIUtDARQF4G9D8C8YBMGgMIPFsmKxGizC6qJ/ZsFisGhwxWLRIlgNgoJFbCv7C0Nx8xh86nvzzWjYuekcDpd7zuXf0DIRQ4sVtelJxPYnPRNxULHsi7j+omvGYmChZHkQ0f4RTkR0v/muiKvy2lVv4lmz4LcitqpHH4vogB0RF9O5VryKRw3ciHebv8MfidjTFnFe18+yF3HnUkxs1Jd4KMX0Z/W8ZCRibH32M3oiTk39ooz7otk/LLWYP8v84QOsr0OwHAGX7AAAAABJRU5ErkJggg==" },
        ["Z"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA2ElEQVR42r3SvUpDQRDF8XODqYXYpBAES0GwUuwsBPE1rOzzCvZ21mJvYWNlI1gFbMVXELRI4wdKfhbXkORmFRF1t9iZM3+GYfZU8vVp5TeAxSjei291mEvyksuGuppOkockKfVe8ohXK6IInILDOpstb4M782Wg7QbsjZQm0AN9VRnoGmBoY6xNAyfgeFKbLG8aYqBbBlquQW96qnG4D261y0DHPdhp7mUUHIGz2b3Wz5o3PFv+DLgCByVTVJLdnCdJ+nlqfPtW7YeFj3T9R56s/sf2fwy8A4TsIb7EJj7FAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAuUlEQVR42uXSL0sDcBDG8c+Gy8IsC4JgFAYmxWYQxLdhsu8t2G1mWTesmCyCaWAV34KgYcU/KHsMmsbvsK3sLt19n284OJZSm9LsW+j+Z6/h093CdqiP10ra8ia+7FSBaxEXFT4S8Wy9jXseRZxW/kjEVKeNB2Zibr/yxyKuKnxgLmYGbdz1IGJU+WcinvTauO9FxHHlX4qYVHjXt/iwXQXuRZy3UAcnbsDU+wI9/P2Hjb9xr339StQPB3Q/gBPjgxMAAAAASUVORK5CYII=" },
        ["["] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAAUElEQVR42mP8z4AOmBgYGBgYMhj+Q+EVmBAKYEFiH2Q4wPCKgQGiPuP//////ztA9GLROCpEJyHkGGpgOMDwimEacgz9/////xWsMcSImSYABg0mZhTA3pUAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAAQklEQVR42mNgwAEyGP5D4RUGBiZMeRYk9kGGAwyvUDU6QDhYNI4K0UmImYGBgYHBhMGHgYFBkUGBQYvhNHFRiwUAAItYEWuQbY/9AAAAAElFTkSuQmCC" },
        ["\\"] = { 11.0, 14, -2, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAdCAQAAAAwA5VvAAAA4UlEQVR42n3TL0uDURiG8et93RAVWZkYBEEUZHHY9gGWBYPi51mxiMVgs0wQzAbBPFiwWLQIpgWxCIrgn8twmt7uOeGEw/XjKaeS/6dmjhfkIr6Kp+q7Lfl9amAIzLKTyxkn6vXfslxH6pcriS1wzV5iEe/Vm1zCGdClk8sNVQdpIcSx+pDZstQavcTisp/qcWbxSn2ykdgCt+knFhd9U4eZxXP11YXEFnie7cRi02f1MrN4on64lNgCN9hNLFY+qqPM4oGq64ktMOwnFvFWvctlaTfZyuWq3+qhVNO/w5T5ATcgF15QiUC9AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAdCAQAAAAwA5VvAAAAxUlEQVR42qXMLy8oABjF4ccuwcwkE2wKRVFMEbRbBF9AsMk2QVFMURRTBE0RbLJwN9kmKArFJgmm2NzdzZ/jC7yvck99dn78uGGv4rzjE/HPWI2/RazX+MuTuOzCh+LTZI0LIra677246XBXxGyNMyL2uu+1eOhwU8RijRM+xFH3/SOeDda4JmK5xlF/xWkXPhNvRmpcEbFa45AXcdGFj8W78RqXRGzUOOBRXHXhfRHTNc6J2Om+t+Kuw20R8zVO+RIH/mPfJwdE/9cm6jwAAAAASUVORK5CYII=" },
        ["]"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAASUlEQVR42mP8z4AOmBhmMPyHwiUwIQzAwrCF4QUDC0M1kth/hv8M/1n+//////8SiH4sGkeF6CTEwuDDYMLAgi6UTlAjI2aaAAChsBZiku9+EgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAANklEQVR42mNgwAJmMPyHwiUQASZMNSwMWxheMLAwVGNK4Nc4KkQnIRYGHwYTBhZ0oXSCGrEAABLaC2nmelCAAAAAAElFTkSuQmCC" },
        ["^"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAAgElEQVR42u3QMQ4BURQF0De/02lEOVuwAIVWbMEaNDrbsAWi1qKYxB4sYCqtqFRHQ2YGkUh03Nfdk9fcTLxLig94ENMHV11b6aJXaxq8AgetVzx2z/yZcyeUdmDY5GQPRnJnHHXqPANLIUzAuuKujcL29pEsFAp9IbIvrvbnH+crU0+NCsqn4EsAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAAeUlEQVR42u3JoQ4BcRzA8c8oNMXEKx7AI6jmFVRVcM1reAaTdU3UpUv/CZqZzSb9LhAY1y7e9xs/1NdYXo09ydOoirdCOOn+w5l4v/7FzE1I9kKYfGPLQQhTmbtw0f/klRA2YCGE3QvaGFg6K8w9cDR01VFImprqqwQBtiTTbEU4AwAAAABJRU5ErkJggg==" },
        ["_"] = { 12.0, 13, 0, "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAdCAQAAADbNC5sAAAALElEQVR42mP8z4ALMDGMSo1KUVfqAsN/LHACXl0sDGcYPmARv8PAwEjt1AsAUYYQJwRkrSAAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAdCAQAAADbNC5sAAAAJklEQVR42mNgGAWjgG7gAsN/LHACAwMTbj0sDGcYPmARv0MD9wEAoCwN9QRm1G4AAAAASUVORK5CYII=" },
        ["`"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAAVklEQVR42u3IsQ2CUABF0aexkCEcggX+DC5hwwYkbMFabmEonICEmBwr8gkTUHBvdyJaH52sx92ERakUxYyvR6V4+uGtqRQv0G8pBqObyEX2XXPSsekPvnFF4n+ODEYAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAAT0lEQVR42u3IwQ1EUBQAwEn+hSIUoQE1aEIRe9GgjaMOHFQgZHkusvktSMxxEmqDzeCvMAu7RqaxCosqz9ZP+Crz7ITwgXTX6DDpnV5PdAHyHhM+Meh4eQAAAABJRU5ErkJggg==" },
        ["a"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA4klEQVR42u2SMUpDQRRFz3zSCAmKaQIWEcwyBEllkyZg7wJcg8Tewg1YqL1gGQLpUona2IkgCGIRkzKBBHIs8smf/0UXILnTzLw5vLnvMkH+VsIaiIEtTrlnzIwPbmlGhIj7fplXx+VNChz6qb547bm9FDmIAazaNkn3J6re5IF4BUfq0/JUWpnZpEGZAMCEbSqxyT27Lgo2X7MnNnzzp1IgAVrsAnfUSQgEAo9ZDCWgAcAZ778lOQWgHlVr+Q4DAC654Jk5NY7YKUZ9lbO3KE6BwWP7Dp07tG/LhwwI/+LbfwPwNc6H8xe1BwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAz0lEQVR42u3PsUpDQRCF4W8vaQTFoE3AIoJ5DEGs0qQR7H0An0G0t8gLpFB7wVKEdKkk2tiJIAhiEbVUMJBNYTB3F1OkFDzb7Mz5ZzjDv+ZS1YFr7748O7ed25texeQdpkDTi+jeqWNXE2QrRVbtKCb/fVF0NjtP8Ca6/S4qP+1lDYsC+LBiqTyz4dIoi/kwtRc8ZmYJKNCyjgt1hSAIbqbTFTTAkaffEhf4BPVSt5Zu6IGOtjtDNbvW8j0nSbxRfgXBnq6BoYGuln4O/HWNAQVnTOvE6NwbAAAAAElFTkSuQmCC" },
        ["b"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA0ElEQVR42tWSsU7CUBSGv0LYTVgYXFkccGAx4WkYGX0AXGVvwmZcnfQJfAXTEBJCWFmMRBxIE03N59CmtgVdUBL+5Zyc/Pee/365gfyuGn9jiJDkf1cc0NDniZgV95znMxEjNTH0W7E9EQsG1UdH3rpWdWZQNQzTM576ompXLGUIs7pkDECnHPKTt7yfA3Dy8zM/AKjvAaqRLS0Z6jTzvg2QZirecJnVFgMAJmWSKahrb3xVdVolmfhQQL3xYtvQ8MqF7z5751lGlcCj+3I79AVeGKXyTWfyNwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAuklEQVR42t3QsUqCYRTG8Z+Je+Di0NriUENL4NV4ITUJuX/QFq5NegXegjgIEa1BRKIN8YFRHJeXL/00HISQzjucczj/w3uehz+KsfC1fXS0a/fwgLaR3FTf+TaZmSherlUGQhjq6pkL4UGlDFyl7sSbEC7KN2QpP7sFZ+vAt/eifgTHv8v8BNU9jKqlT9eAqnpRn8LKTUlmJ3UNLz8yy0bduDMTwmTT6sGK1R8uN4Gaa08WXt1r+lexBE2nSP4TggEgAAAAAElFTkSuQmCC" },
        ["c"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAAu0lEQVR42uWSO4oCARBE3whqpIKCguGCt/AiBkYmnmMRDA3mAEZ6lM0ERcRABD2BsCzLqMEzmPE3isFmi11BQ72kq+hAXk2Gd8dNRmyI+GbBgI/ENVbf+9nbERPcTsxfZ06MVB1d8VLVoSURC37aMzjjmqors5JWBqgD8MXx+eV5AHZ/zB0BUHnKxaqqa3OPp8VrngQrilg2NLwGw9allqkTD+lasJcq9WD3FmPTsVv3/rg0tBG7wb995BN2oMruOyDfxwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAAsUlEQVR42u3SMWoCARCF4c8FTWUEAwZSCt7Ci6RIZeM5gpAyxR7AyhwlnZAgskUIJCcIiMjuppg06uJG7QN5080/xbw3w7/OamjmQ25l6VH/ED6IgyqMKni3bW68msuFMKtwJoSpDmi7N9HYwWshvGn+XijBDXj2fRxfgK9jdpLzbhPk4OrUSE8I71qnBhZbY5egK5VWxrjdx/JirqzHwqQWamlcP8mTT4W1TGrw1z/sB8ajQlmGDM2iAAAAAElFTkSuQmCC" },
        ["d"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA0klEQVR42tWSIU9CYRiFHxCLuxsFxeTGJvwJEsVg80e5m0lY/AGS6BS6gUJgk8GYYyMSKMguj8HL7r0IFncDJ77fs/N+5+wtyN8qkg8wQCTIc0UuwC0dPtkw5ZmrDCFi1bmJhr6rGoiUAAi5AyJ6TKjxxGXWoeRa3dnyx+8hdgpEEBuq9uNnxGUCFIEyAB8p23E2xQUAX//oYQeQ+fkBsALgPjWtH4sZ2YwzPB7GxFdVt3YNfXP7G7hxlqp6lK56X821bWduXPhixUECFDyjkzupb/EEt3KToi7RAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAwklEQVR42t3SIU9CYRTG8d8QCmOzKJLc2NQvQaIQbHwoRzZB8QNoolvoBIvBDQdjzs1osCDjvpZ74b33uhkMMp+Tzrv/OTvPs5c/0kQQNKDyE7tPQMvQi5W5K/UydmIpbOvBdGezCgZOsTH2rK2vlp+v+hAkumnfSzc1MuBCENxHI2/5JA/BLAKe8i4OwOcvckigeHkMvIOz6PX8O5sbnbS/LNrkRhCs3Rm4tS4DTYso6sc46kzHri2svBo5ir/c/9AXl3BF0ptFbA8AAAAASUVORK5CYII=" },
        ["e"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA4klEQVR42u2Sv0qCYRSHn08MMRAicvcGxEGitWZp7Aq6AReXFtsiAheHxha7CcH+DEEQLu0tXUBIgR8F+jT0fvl+gV2AeM52znMO5/fjJPJ/FFgDeWCXa1755I0hhxHhT7adG8dZqAfgILTv7DkwVbUVAyNVj8NUw1R9WABlv9T7bKnYV7UqUgRqbAAl9n8Pewegzg0UgQoAe9z+UbiTyUyWWFDOZNZVPY9uiBJxy7k6trAMwEdVL62IuOmJp3mgFfyb+uyTU1UvYgA7znJWTzzKA9j0yhdTPxzbdTurJyvx9t/L3eZqouG1rAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAzklEQVR42u3SP0oDYRCG8Z9BkQQEEey9QEghsTZ1sNQLeAEbGxvtQhBsLCxt9BKCQQtBkDT2Nh5ARCGLgpkUrmY/ZYu0ITPNDO8zzB+GmU1oTZeefXhxZeu/vGcoCt5J5VYu3zhxIRNCuwhcC2E3zxoy4W4sV30Kt4WCUyGswjzWLGDR5i/wBup63+lGMt7Yd6CCuZLFqz9BXQjd8hMtGwp9lXLkXghnlkDNgaMUaOdjDTx6MBDCcYrs+0o2eLX9t826c08y7/oOrUzXJ44AJVxPVJmV53UAAAAASUVORK5CYII=" },
        ["f"] = { 9.0, 10, 0, "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAdCAQAAAA56DUVAAAAeUlEQVR42s3QMQ5BURSE4e/xOgtQ6lW3tRidwgJU1mAJlmAtOksgL+rXj4KbECIRBX93JpP5k9PEMwOfhhM7JxEFERnmkEqJFsxM0duLvjbnSZJ1rtdtcwTOb+0iXe4ped1ssbEyxtEWXbUvkySLR/vXD/mjsMkv7Rf/MUgsz5SPKAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAdCAQAAAA56DUVAAAAbklEQVR42tXNsQ2CYBRF4S9iJzvQ20jrMHYUzMASLOIQuoCdI0CMNf2j4TchIVQmhPOqd3KTw18o3PVCKJPKvMV0JUdwdcbgJQxpeRNCk94DOIHvXC7w+UWm0OIyAxc5Oq2nR+rXQqhWQ7uW2zICAcge55w2UsYAAAAASUVORK5CYII=" },
        ["g"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABFElEQVR42u2Tu0pDQRRFV66xCQEF4wNfKKiNn2BlI2IjfpNIaitt7GwUC3sF09hoIfhAIWKQKFha2NxckmWRe80kio2tZ5rhnMXZszdMTn6viH8gBMbYoU7ME1sUqCBSBEDEUZ/t1JWXqhZF8gCUmQaaHPPILBv0Bxpi3g+15bLtfSvppqII4oKqJ+kY8a0DRMAAANVg7UO3iz4AGn/IoQXQ9fIe4B2AuaA7/5PNpkuph7Vem7inauKhZQ9MvgMj1oKob8Oos2iG3bZm7Ku7lqyoWgiB7nOvNtr3rFVy8Gs8aUO9CYFx7zx3SsSJVGAzBPZTFxdeG6v64lAIlDwzrKqLmWAu/Zs5Vllnhog6pxyRZEF+AublJyihUCWQAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABAklEQVR42u3RPS/DURTH8Y+/WhoJiXqIp5Bg8RJMFhGLeE0inU0sNgsx2ElYLAwSDyGpaKQkRoOlbdpr+be9rYrYnTvcc+753nPu71z+7U82ZkdJ2bMtWeeCoL+VHvUiNNe1qxaQAXnTqDn2ZNaGvvbyGZ+CuuU0XkkrNVssCIKT6Mp7C0gwAAoR8NhyE/SCSnd5yW/6E9Sh8+Ux8AHmotP5bjJrltJ4rVMme4Kg6lDegep3YEQxGvVdPOqGDdtWVPZmVy79rOzP2h6EzrnkDDb9SRXBbZwed+/CFJhIG2zGwH6q4tKNsiB4NdTe4CxSERQsNlI9zX3VuhmJklNHqg3gC/WmZchxljZ2AAAAAElFTkSuQmCC" },
        ["h"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAjUlEQVR42t2ROwrCUBBFT8TGVlfhEoKrEMGVuAKzJysXIIiQVlyCkO5VxndSBOPDFIJIitxqPoeZuUwm3zThf0iJ1EMsGhzZciJQcWCVVEUs1drCtx6ubXsJotHgxZtR1buzPnJ0IWJupeqmjyxfo92pum+z9NxrF50BmH86ehK7OAAwHcGPfkUyx+aoAapYckAh0CknAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAfklEQVR42t3RsQkCQRCF4Q8xMdUqLEGuChGsxAq0JyMLEA7BVCxBuGwjdcdsA1cRDETuTfKG+QfeMPxUR+H2bjj4vP+/yNJe0tlqXh+9EaWu5jUSsuTgLAvhYlQjOxMw0wlhUSPT0q+EsK7jnoprwfgZucvFJzDswY++RfqnBy/GLHQavweYAAAAAElFTkSuQmCC" },
        ["i"] = { 7.0, 8, 0, "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAdCAQAAAA9HeUoAAAAJElEQVR42mP8z4AKmBiIE7jA8J/hD7FaGOliyxAWIDuASBIAAGZwCMs17X09AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAdCAQAAAA9HeUoAAAAIUlEQVR42mNgIBNcYPjP8AfCZEKXY2KgFiDJliEsQB8AAHoTBbVG7XPfAAAAAElFTkSuQmCC" },
        ["j"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAAW0lEQVR42uXNsQ2CYABE4Q9+S2YhDkRJaeke7GLCBgxA4RywAMlRoI2VxNIrX+7dVfGZ2veoF3E/I1a/PXYibufFP0UtWF8sY7YcuUZErSjgYT5KF0+NxWR4b+238htux4BJKAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAAVUlEQVR42uXNsQ1AYBiE4ScozSIGUiqV9rCLxAYGUJiDBSSfQv5KJXSuu/fucrxSK4T+Mtk9z3ytRgjdk8dfowrsCU4OIYQ6tXI5GC0XKqxKm9mQZicZ9RBrXbdqWgAAAABJRU5ErkJggg==" },
        ["k"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAwElEQVR42tXSPUpDQRgF0BsNIpZmCwm4CTvBFaRzAwGXYBNwB1aBWNlZWwhprCRlKrHICgKpDZh4LPJjHnnPSgXvVDMc7jcMU5Pvs5efAaPI/HdH/DnYz2NErpMkIkaYy2rdgNvlbhd0wIN6OTjzjqGjdV8RnIBXjc24wiUbeU6S3GW6dbpp4MkyE8dfDduAmR7ol4OFthjgw2kZuBTRMsOLg12wru2Cq6qHikNjvGlWgTgHg2oQ9+BCav7plyvkE/2zFWt/LNk1AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAq0lEQVR42t3SsUrCcRTF8Q8ZIY35Cgq+hJvgE7T1AkKP0CL4Bk6CTm7ODoFLUzQ2hUNPEDgrVB4nJ39/2yQ86/1euPecw5n0Ln7Ko6u/dv8rUPMsYlj15kjEtMqHvoiF6zLQ9S3e3JadbItYaZSPbHgFM+tSFvEiIr7clYHYGouYlIFf91iKnU4JeAQtW/Hh5hg4aCDiqbowdZ9io1ndqJ6I5anKzUU8uBDtAeN2VAxdd5cZAAAAAElFTkSuQmCC" },
        ["l"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAATklEQVR42mP8z4AOmBiIF7rA8J/hDzkaR6jQNwYGBmYGEWShOwwMDAwMJxgOMMgxMDD8Z/jP8N/qPwxo/IcKMfwP+n/x/y+IEON/erseAMChIh0sisc/AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAAQUlEQVR42mNgoAhcYPjP8AfGYcKUHxVCFfrGwMDAzCCCLHSHgYGBgeEEwwEGOZhaK4b/UKiBMCCI4SLDL1Qh+gEAwQ4OH02miuoAAAAASUVORK5CYII=" },
        ["m"] = { 24.0, 25, 0, "iVBORw0KGgoAAAANSUhEUgAAABkAAAAdCAQAAAD1cQ/+AAAAx0lEQVR42u2UsWoCQRCGvwu2aZLWRvAFktYukNLK9/ANfIg8hGkCQkrxAUwR1E44ECwsTHGV3JHC+KXIerfRyiakuL+aGf5vhx12NpFLdUWN/F9kgeyBHlNyMl65A6DNMx8UzOlHh4u4UPcOrFTY8d4sqgz98UaIfrnz3VWwpC7V1JlFqHTPkZHXIj76GUwPIt46UfXlHGkdW/uk6luZN0NfxF+XWpfxDIBxmW/YAjenQz5Q7UEOwC6abA406jf2Z0hSf0oX6hua5bFj/YX0yQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABkAAAAdCAQAAAD1cQ/+AAAAsUlEQVR42u3PMWoCURCH8R/B1iZpbQQvYNp0gZSpvIc38BAeQpuAYCk5QCyCsRMEwcJCCyvZJUXipFkei5siTRrZb5r5D/Px3lBzVSyFL/S8yRxNdUHH2EHuQ9/Nb8pApMo9uHcsTUZVJXw7ebcpVtZWwtpCXkyeq8pEEzz5LJYewZ1XIbxUlXbKQyHMU24V70LpqLBN/QLMUt7Z4/ZSOYvUZ+BU+keGxqXyZ2ql5r/5AaiAS6sWDUfxAAAAAElFTkSuQmCC" },
        ["n"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAiUlEQVR42u2TMQ6CYAxGH8TFwcUbeAziKQxXcXXxQIxewUEHdhZ2ExbDJPIYCPJHYtzRb2rTl6Zf2kbyTTF/5DOSIw2Qcqam4sQ2YETM1caDox7u7GsBok/vXi1sVb25nCKZKxETK1XTKbIZWrtX9dhncTBU+YovAKzfTbeMd1EDsPjhTUeze5IOEFBzHrysIn4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAd0lEQVR42u3KIQ7CUBAE0BeCQWC4AccgnIL0KlgMB0L2CggQeAyepIZUAV0EyYp+ULiGWTOzefzzU07CA5W9VqO2/Ew2Iu9uVZLwdHN01gnhalKSnSlYaIRQlWSeey2E7XuM8h0u2Q9g1iedyN6CcZ98zfDI8PICcMUtRiF99BUAAAAASUVORK5CYII=" },
        ["o"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAyUlEQVR42u2SMWpCQRRFj7+IKS1NoesI2YJ1Khsbu2QrdkJcgandQlCC9oq1ErSJ2kkEj8X8+RlBxDrkTXM57zLz3mVKcr0y/g3nhgYDVvzwzQcvlAtuOG+e18RK6IR2O8cbJy5z/Z4a5qp2vBPx2YN6tB4NVVVnZsYHe6o2RTLgAYBPjsVgI4g8g3ziXbJb0Pc357AHoJLQoPfR8AXAY3LbExRcxOnFNWu/ObSKoMYuct1Pg8Lu9agRGw5ce3Dr0FfLkZf+xLc/AT/RzFMXNyDvAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAu0lEQVR42u3RPU4CQRwF8F+2EEpLKfAcxCtYU9HQ0MFV7EzkBFpzBSMh0EOoIQQawY5Awliws+wqIbE04U3z8t6bmf8HV/wRj3qWdj69ayv9tF+Ewhm5zdutVF4bmaf8LR+YCoInN6BuLzi4j/adIJhIsgtdQdCABBUwcMgCfaKekFb8lfvyyMsxcBEJtlBo68i3MbAAtdxrD2Q6GJ9ts3oKNLNBDc1S/lqs5fnyqOOyVvY2PnR+L+t/4xvFZEq3N0qTTwAAAABJRU5ErkJggg==" },
        ["p"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA1klEQVR42u2SMUtCURxHz8vcG0NcWxpsaBH8NH6NhlZdRYgWaXWq0Q/grm8IJFqDEEUdRCheHoce772rErQ19L/D/XM5l3t/595Ifq4T/oEciJEEaDJiw5xHrjJCxFhN7JrXxoaIBUB1YMsHl6pOjPaBm+89Vp2pei0Gl7xP5zfuAKiFKbYssv4FgLMQKL77JwClX4oqomUAvsLliErWXwCwCkVpJ4157nseMxQ1tG3PharP+yYTnwqq19YPgbK3vvrh1L6X6XEBwLHxF77cKQBj1iTHgR1XetAuz+gLggAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAyElEQVR42u3RMUtCURjG8Z+me2NEq4tDDS1Bn6av0eBqqwTREq5NNvoB2qshiGgNRAptECFJX5fL9d7rVWhq6TnDed7Dn/ec5z386xd6En5w5sHUp56jMuBSpGvqtAiE0NfWNRbCi0oROE+qAx9COIZqps91sr+7Aod5YGGU+lewmwci02sGdopXlKpa4qiDef64Yj/1DfBVjNlJqj2DVcz8oO5duDESwvP6qO8yo544WQfqWt58G7rVLP/NrTH9GVADjyabHrkEMpZPnKM67WYAAAAASUVORK5CYII=" },
        ["q"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA3klEQVR42u2SsU4CURBFj7tLQzaxQaWiEjq/wIovoLHyfwy1lTb+gImJvc32FJBoJ4EQY2+iDZrlULCEt7IhsbJhppt3cif3vjmQ3RWxB0KgyQ1vzJlwRZ0MkRQAEU+cuamhA1VTkQSAPi0g55ExbXrEwQ4x8Utd2HWld1EopSKIHVWfimfEzw0QAYcAvAayo7KL1cbvAMj/mMMCgFowjcvABwCnAXBWZTP3vPBw+dsm3qn64719H8y3gWOnQdQvYdTraI68durcd29tmG0D5c7KSf73ySWV02eS9ZctAUyQzDGlEYpLAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA00lEQVR42u3Rv04CQRDH8U+OsyEmNv6holI6nsCKJ7Ch8n0ItZU2voCJib0NPYUk2mkgxtCbQAPmWJuD2wMisbDzt83O7HdnMr/hX79SzbUPM0MdVT1BsF88n3gXVudJvwBS0FVH5sGbMxcq5fKpqWChlcftvNKqRUMQPEZfJgWQ4AC8RsCguCbkHecRkJWBH5VgAfaibKUMfILTCGhuGzNznseX62NyKwi+3Om6l20Cx0aR1S+x1UsduTIyM3bjcHNZ6+qVndzpwx8D6dbss3S5sm9DyEuf85/b4gAAAABJRU5ErkJggg==" },
        ["r"] = { 12.0, 13, 0, "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAdCAQAAADbNC5sAAAAZElEQVR42t2SIRJAUAAFl6C5gyI4jeI6upto7mHGjH8FqiZIxooIuvFe3LLz5kXylpg/o4DsQEXPxkJLDogY1N3aK403pIerg7M6mjxRZypiaSFPlMm9l6FMb/IH/mj56PNnOwFrfVhnofSEDQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA0AAAAdCAQAAADbNC5sAAAAYklEQVR42mNgGKHgAsN/hj8MDAwhDCcZvjG8ZljOoIoqVcvwHw47kKX+M/xj+MRwhuERw3+G8wxsqFLrGHgZGBgYGPwZNFHt+s+ggOoAJjjrP8NDXFL/GP7jksIAg19q8AMAjWgifzarGRkAAAAASUVORK5CYII=" },
        ["s"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA/ElEQVR42u2SPS8EURSGnxlCJtFIFOIjIdlGxB8gWVFpNUqd/6AVHSqFrEYjkWiU/sAkKEWIZrdUyFoSWUHW8CjWjJkp9BLv29zc8+Sc957cQH5XyD+QByrscsMzHZrEbFDJCBGrvljUhzVDkV4A9oiAS2LajFJlkpAGn2mHMVVPDOTbC66lZ8QpVTezcsGBMMADfbxzzDVN7rjliqQYcqsUseWO0c8IxCWPrPuWg/aLQOpBp121pXa6PbrXQQnbVnVCJAT6iakxnsWKmAfgCSAQDlgBEk654JVhFhkBzphLXzFr3bLuncmH7HHZQxu2TXz03HWH8ov6+3/yC4ao52rKvJnDAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA7ElEQVR42u3SPS+DcRQF8F9bwYOlicFrQtJFxCwhaWLqJzDafAer2DAZpGaJ0SIx2SpILNIQi44GqbJUSKr8DTxNn6aLVZw73Zx77jk3ufzjV8jZdetFQ1XJhlySznsVEvWhKA09YE+EspK6cXnT0io+Y/2EIDiWam1cstZuMCMINruHS2HIk17vDt2oenDvWjM5ttURsWZH9E1lwImylH6DP6EHzBt11M0ya9aqmqAR74iTtGNbEEzFbZ9TRZMtOnIpCLKxdt8Kms5ceTOiYAznFmPFgruOK4JHc+2eGcsOVNQ1Pbuwbvhv/eIXIqxP2DdmEdsAAAAASUVORK5CYII=" },
        ["t"] = { 9.0, 10, 0, "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAdCAQAAAA56DUVAAAAdElEQVR42sWPMQ6CQBQFZ4mFJ7Ci9DLcwNIjeATtOdSewoQDkBgrqKAbCzeBZBMaILzuTfH/myB5ClbBEwAlV+DNN1ERH6re/Le1jxA/Tnku3qzpAWh4EfeatAkcALjMNbFStTN6FxM82+buIxUxyQLBI41+lCtSQ3lK4/EAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAoAAAAdCAQAAAA56DUVAAAAcUlEQVR42s3PsQ3CUAyE4S/QZAIqSnZghrdByozACCzBPm+KSHQ0SIgqqZLOVEAiQKIIEufK/52lM/OrAGsbNK5jayeE6r4u3p1/D+EiHrP/mFyCrRJHB9npN5VmgT1YTa0khFZWP2Hp/Pr7IMk6f6EbXSUeGbC/Ez0AAAAASUVORK5CYII=" },
        ["u"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAhklEQVR42u2TMQ6CUBAF59PgGTyBFaGmovQInsaKE1h6HqkhNh7DxJjYiEMBIZgfY4++cjJ5m+xmg3xLwl/5rLTIc0ZLRKqf30sHJKQTTWPlCgTyiRax0gBwYA1Axv5tkoiZL1UfNl7sHFKJOLacx3usyNkQOMYtiDtr7948ubWct4TFPUkPuMJBk/CpDZMAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAeklEQVR42u3RsQnCYBRF4S9psoNDhNRWlo7gNBbiBHbuo3XsHEMQwcbkWagh4Rcs7EJOdy/n8YrLxF+chEcvL4SwfYX89/1YlQa5omuLVLkgU3XtPFVqsDMDpXX6rtQK4a521oj+AB827zqE1v6bwsrRzdXBcjjj+HgCSIIk3HIgZ6gAAAAASUVORK5CYII=" },
        ["v"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAA10lEQVR42uXSMS8EURSG4W82kew22wmVUKkUKr1WYyt+g1r8CL9AFKxEqZOIhoZaR5Sio7KVYpJ5FGNmlohenNu97/luTs69hfxWvfxXvZQqcvOFnkRkPYm4RmVBPk/fBE8K6SU5TlJkq81uZJhkHHV6YIK7Nn2GyqJIDQ7Bsoihd1zVrfXkR0mS7STJKP2WpLnwAY8iLvFmUPNG74FVs0ocNHM0el6JfTtg7buOczy7xX3LpvRIU7s/6RmvoDTX6e5JypwmSS7yMrX9rtMK2JwiKf7sR/4A+J3WdskHbk4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAAx0lEQVR42u3Sq04DARCF4a9NSKipI6AIKBQCVTQWAwqBwKMJFt8naDDQBIkjIRgwoHEQJMGBogqxyR5Emy0L+wQNM2ZmfjFnLvxbo60qxX2tNhSxNU7uRGm5gvNG4lWLNs7QslfhbV2cyzjtGInHCl+K0sq016mINdD1JW5/StkUcQIOROzX9T+LF3AjPnXq+FjEhgWFGPyefkkh+g5F9P6u50q8eRBPTdvblYkfNeE5HyIKi9Niu4oKF+Dae/Nx1kXszManfQPFAkJusNWqSwAAAABJRU5ErkJggg==" },
        ["w"] = { 22.0, 23, 0, "iVBORw0KGgoAAAANSUhEUgAAABcAAAAdCAQAAADruD9NAAABPElEQVR42u3UP0vVYRjG8escNc4QggZuiUFbUIOEjin4AhocdHKpt1CbETT3CsRJHC2hghYpcE6iNRxcBf8sZtr5NPye83g41NDU4r38uK7ry8193zz8WvIv1c41/r/wg8hZOtWbj/zMeNUPI7LVw7eTdDJb4+UkI1ms+lGS5E2SRCyAFyLihiPwqeh4h0u3RCJGHPXFjzXVdVvEkBPsNGk7yUXeJ5kp0y8n+Z6LtLKUJJnOaB0lTcdFMCdGneG5t9gT8QxMNd0b/KYfeClW0DVZGtwTH/Clt0f/Op/Fx7JFxzFeGXaK1UH8Cc7dcYmnItawbxY8GMQn/MI2zo2JmKc4+/WkFY/dcsCtotsOivP6Cr96M71TbZRvN5sDST1kxF1wrFOd++DQ0J+GiW9Y0+98xXq/07r+cfylfgMpYVNtFhg3uQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABcAAAAdCAQAAADruD9NAAABJ0lEQVR42u3TMUubURgF4MdoJEMRquBmUegm1KGUZqxCf0AHhzq56F+wW0Xo7C8QJ+loG4gFF2nB2VK6FgdXQe2iaWxOB798TYJD10LOcu95z+Hy3vPeyxD/Cc7EtVrJl8QvkyV/JmIfKmigpl7KK6haLvkL8KFLX4rYLNi4CxGfS3tT3Jrq0qqLHvmViOiYAaOuxNGdWEHbAZ4X3a/gh7YRr8FTE72twLKIRUy4Fm98FF/BhojZXvsDN2ILq6LjUXHAPD6Jk8Ewm+ILDotb1FyKd8b8FG8H7WuiZc6tWAc74lRdxMKgfdpv0RAtD8th3VVO75vtcRHgvm5mZ0Vl+6+pUu66Ue0Va8f7AaUPj0Vc9rydJyLOjd7/1L6Lnb7KN7E7/IP/gj8buGwo284luQAAAABJRU5ErkJggg==" },
        ["x"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAA00lEQVR42uXSoUpEARCF4XMXVlEQrF6wGiyazGr0BUxit1m0+gLCNkEwisFqtWwXBYtN8QFctSyK3M+wd3fvGuzilIHznznMwBTyW7Xyf/FZRA5GWpm3SC9lEjHnCX1LIuIS7IoMhA0VugqxBa4G1tQTHbBn1iN6ykk84wHvLsbBTRxrvmgGT+I4qXE51pp3L9R9qqGNnDuG1dX6Gb7oFS9OweEkLlyDbW23+LDSxPvgXMSqT9ybHuJlfTybryOPwPEAt92gsjlasu0OlXUp/uwjfwMQe/+XSOCaVwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAAy0lEQVR42u3SvytFcRzG8ddVhyhldctqsDCZMfoHTLLbLKz+AWVTyiiD1Wq5uyiLjfwBfi030nkM95zrHF1/gPJevj29e57v8uGfXzgRsTvMXa/iWXcQpz2IvvlKn4vY+u6vKkVPB+siLtofHIrYNuW+OVwz6U68Ofs5XLPsU0YN1xxVujE81tCz1Ts+qrtZdaPXKoE5L+LJsYi9tuy4FLGhcC3eLTb1johTsORD3Jqo5YK+eDRT5X0RB4NQuBKlteFW4UaUVv7ynX0BzhxKL/JJu0sAAAAASUVORK5CYII=" },
        ["y"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAABBElEQVR42uWSvy4EURSHv5lsQiHKkQgFhQdQKLSeQaLQeAHFPgFPoNNJVkOxtYhEIiIUkvUCIgqxySYKhVCQ+ynuzGTuDl7AOd35ne/c8+dm8pfl/Fd5gYCcJNEr5IsCEC/VTwspfdagnonkQA/osFGz62TAEUR6yjf1tqav1Q+nRWLgUNUlEecMaj+mxs57AGy2Spd05qP6IOKN+upEpKv3dlVddd6gHlR9VPKiQd23q+rauBynf3GgDs3b8paV7dWxhhynV135Sa6mv29EkotdAHD820ELaCyksZboA/WuWVo6ZdYkXZZbbElvlz2/O5PSedLBDqMUjsWfOeeJPqfjf+0buM0A8wWRtZUAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAA70lEQVR42u3RMS6EYRDG8d9uNqEQJYlQUDiCQusMEoXGBRSiUnECnW4TmlVsLSKRyEYoJOsCIgohkSgUQkG+UXzfrn3XuzcwU838k5nnmeE/sjGvEE6S3qXwbaosOsJXr8CMQjiDOg7RsNbHq2po9coJ78JNH18JnyZ/dx0JYRHMKoR2CepU41nPjYaaB+EeXAtvxlJ7e0JYNqcQmsPuFxTCgS0hrPw9T0d41RWeK0VJbIgq93PHLd2HsJS/fun+brA1uOUCHI/C5VNao17bFW7zaNyOELZzcLPS/GE6BfVEwa6XFDfAk3OP2k6Hx/4ASYNOJK0PJSQAAAAASUVORK5CYII=" },
        ["z"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAAq0lEQVR42uWSsQ4BQRCG/72QkIhSIVGp9ApvcIVSQelVeAKtWnuPoFYqhFw8gEql0J18irWxuy5oxUyxM/+XmUz+rEHvItH/4pp4yeKr6YqkQjNP6Wsoafvooq0tTsCFru1DmLAGYOyUEM8BWD4VH6bcgB31MtzhDFzp+ftcUWUDwDQ81RULAFaxO/YZAXCkEWOD1FaupqRMB8+eTHtry4CymCA+eW5+9iPfAURcvfbN+TD2AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAAl0lEQVR42u3QIYqCYRAG4EdxQUGMGxZMJrthb2AwGty4V1lPYDVbPYLZaBAX8QAmk8H2yxgsoqNYBd+vDN8zM2F4506q4uYVZyo/nqyg8Hfx09HDIm//tBX2WhmWzYQwyGeHQhjn2HUUlmoZNu2Eg3aGH+ZC+M0Xj4QwybEvhI36NZTwZa2Bqf8LmVqdi+/k5uHniZu/bk6wGTRiOXMRKwAAAABJRU5ErkJggg==" },
        ["{"] = { 10.0, 11, 0, "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAdCAQAAADWKl4rAAAA0UlEQVR42rWRsWoCQRRFz26MErAMBiysBT/BMikC+Rc7C7tUASGkix+iYOMnWIofsKRTSWMlZDkWu7OOYcvkTvUu57258waJzotLd06lwUVvTAC4gQs5tNDOkZE9U/XTW4ntlardokqryXcAfBdFSq3+2G4DkJdVGe/RH/UQ4jaAHlnJLKpesW9QN9ApYMU8xzR2fFd1HehwZWKmnuIhRdMX0KRV/5zkX3ZivX0E4OG3vQHglWa8QRyYq7p3FH/xljEC9/Suk3zwxJw9OSTWBjwDlqCULelPJMgAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAdCAQAAADWKl4rAAAAvElEQVR42rXQIUuDURQG4GeKk4FFEYWFZcGfYLQI/pc1u0kQVl3dv1jRZlgQLOIPENsUi0lwvAbHx70fX9TT7nMPL+ccyjo3t3RdmSsRMSnxZI1L45KnIm5s1RG3Ioa/j42GB+CjzVX9Me+AVf196lu8lzRa7xezko8aHpbZaRrO6uQDExEP7Yl6XsRXe8B4Rd929zq9f7lJuvkTHLb5CVzq13HHViLejMvuZxeCfSM2i/6Fe7v2PLrrns8PRxg2aMbR2vkAAAAASUVORK5CYII=" },
        ["|"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAAJ0lEQVR42mP8z4AOmBgYGBgYOhj+M/xncEAWwqJqVGhICTH+J1MjAEfNBP3gwuflAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAAHklEQVR42mNgwAE6GP4z/GdwgHCYMOVHhYagENkAAOUEAvd05ulGAAAAAElFTkSuQmCC" },
        ["}"] = { 10.0, 11, 0, "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAdCAQAAADWKl4rAAAAyElEQVR42rWRPU5CURQGhycJCcFQGliLBXEJxIKwDOMCKGUBdLAEGkJp4QKsYAlGQ6OFwcKoDAWPd88TSvhuN/cnc76Ld777aE/iwnt3mZRx39d8oxsxZg5UnZYx1vxRFwlnAHzzBdQpknE0J8V/QOMQr4Arbguemz64z00aB5sF7qVx4DpcD4/MVR3bjp3gi7q2Wu5kJ7fi979g5YydJOOA61wCn2V8wYAMWMabfd/yNjrxi9u0ABjylA5X2fDBMyNm0aTiUcEtmmWkC8/4gTUAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAsAAAAdCAQAAADWKl4rAAAAuklEQVR42rXSMU7CURDE4U8kISEYazkLhfEIhoJ4DOMBKOUAdHoEGmNp4QGsJJyAQGy0MFoQhKXgH3jvUdjolL+ZTHY3y7V3T3oK3Qgh3Of4yqwyLnOjpi+EUVnUsBRe0yQsfKNZ4gP9KV6hdWhPhNAt8W21abhI8ekO99Luzi4QafpRCHfaefdU+FIvB2zhzU+Jj/7xJsXEW9x0gs8cH+urYZw/xLy6xnmabjsDA897XLf24cXQg9+1ASWvN0v+65MlAAAAAElFTkSuQmCC" },
        ["~"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAAfklEQVR42u3SsQ2CUAAA0fsSYycLYMcEdsYlWAS2gBlcwFYL4xAsYOcCJsZGI7E5G35sjI0JFde+9oL8asLI//Cc2RcXMbNVX25diHhWN2LPO2MPa0tVm8jBu3r1YOenInKqaiXmHntsTUSCMGUNnLgAsGTFjT1PgDDuMDi/AVVSZCPYWC9HAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAAe0lEQVR42u3RsQnCABRF0RMkrS5gukxgJy7hIrqFzpAF0sZCHCIL2LmAIDaKIsi3MImNpWCT+5oP9xUPPj0/Z9BdQzy/l8Zq4aGUgYNQfHQlmlytLISwbmXiIpxs3btamLd6JIQlcrtG1u9VCVIz7B3BxNTZxq3/2394AeBIJi0hyPDvAAAAAElFTkSuQmCC" },
        ["ç"] = { 14.0, 15, 0, "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAA6klEQVR42uWQu0oDURRF10TUxgf4CqQU/Iv8iKCVjV9glUoDlinmA1LFJpWNn2AXVIKkUMHSThBMxqRYFrmTSWaGFLaeXVzYC87d+0SybCr8d1ynwzsJXzzT4jC4TnXt4vx4JgZ8GsyhT/ZMVO1keKBq220RN720aZTiqqovrkpeFaAGwD2T8uTrAHz+sXcCwG4pFw9UfXOtGG369EOxLRF3jI2zYng8O8ujPcf5s2Azd9Sx5/MY694ENDD2aP7vVB/qSTFaqm9VW1mHRXwX1jfK8J4b7ttXu2X4dpb7oogjHxw58tUrV1L3F7OiObeDP5uIAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAAA8AAAAdCAQAAADfwf5RAAAA20lEQVR42u3RPUoDYRCH8V9W1MYP8BMsBW/hRQStbDyBlZUGUqbYA1jFxsrGI9gFlSApVLC0EwTNGoux2WTJZjcncN5unuFlnv/wXzNrX8ebzKcnbbuTsCUm3o/jAh7lzW+PujIhdArcF8KlVbDsXFNjBLeF8Gx+eqEEO+DObzVeBB9VOsls2wQZWK8b2RLCq4W6gV4utgLWpNJCjINxLA+6huVYaJZCHTopn+QqR32pvaod3oXDes0vIbTrHG7z78+q4IYlm3rCdRW+Ge99Og0b7g0MvLgwN2r+AQBWWHeJlf/XAAAAAElFTkSuQmCC" },
        ["ğ"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABZUlEQVR42qWSv0pcQRhHz13/FLqQYDZR1iQkmASJvkEqGxEb8SV8A58ghG0VJEmTShslRcpABG3SaBHQ9Q8oLrIKFhZbCGF3WY+F93rnboIKflMMfHOYmd/hi+T26oz3IjNAiTrQyyywwDkAXq9hVYdEHFV18PokAbr9q5ZEnFNrRlkAF1Utu6vq56SfAv1umdSmfUk/MvzwJO+RMj9pJc3orpg57gkM8IUqdY74RA/riORTD/0em9YfN1XNi7HJEi+BFj845DXTdAVviJ1eqJeOxdHG45vyiYd3qv4ydXKWAjngEQAHwbX72RQdADQe4OESIPPzNqAGwJug+/Z/MVt+iDNMtsfEb6o2XbHkss1/gWdWAtXlUHWi5qnzVqx76lcLrqvak52ocO2pjezIFXx8c/zchrodAkV3/O0LEQfjBz6GwFKcYsMt66qe+CQECq4Z1oEj7VMdMcEUr8hRZZXvNBORVwWbhxDJb2kAAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABT0lEQVR42q3Sv05UQRQG8B+X1QJMNIpgFiUS/4Qgb2BlQwgN8SV4A5/AmG01IUpDhY3GwtJEEmxsoCDBRU0gErKaWFBQmJjdze6xudydvUBoPFPMmZlvvvN9Z4ZzYiCfqxZR08SwJ1hymAKnhHAHzAhhvJ/por9CDTwXjgruIlaFUPdVCC9PqhmzLfKx6WpZJFTMmxbqPuj473HDKw1NPzwz5JMQLqUCDwqBYctmD1ABNRPoeG/PpMcu9NNX/BG6HuXr2ZypKHFfCB+TK797gAyXwW4C+N5LMwyC1un2svP8Z+hCWXkKOAJ3k917p9nseJiv58s2WRFC21s1b7RPAkbtJ62up60+jute2Nf0y7KR/LGGzvb2TZT7MuJKkd/UEr6kx1U7PrsFxvMCT1PA69zFhm1NIfx0rb/AeuIi7HpQ/tUD5iy4LdOw5p32MeAf0I+D/NJXs24AAAAASUVORK5CYII=" },
        ["ı"] = { 7.0, 8, 0, "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAdCAQAAAA9HeUoAAAAIElEQVR42mP8z4AKmBgGk8AFhv8Mfwajw6gswEiXaAAAJ1UFAoVzAs4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAgAAAAdCAQAAAA9HeUoAAAAG0lEQVR42mNgGNTgAsN/hj8QJhO63HASoA8AALd4AuYiMy4sAAAAAElFTkSuQmCC" },
        ["ö"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABAklEQVR42r2SvUoDQRSFv13EaBesVNBKfAJB8RVia2VjoWChPoqdoL2glcW+gihiwMLCkFpR0/jTBQP5LGZ2HUGi4M+dYg7nHubec5hMBlfOTwVD8R5jG7jiGJhjCSi4BMBwZlQ9EHFD1bXQ+XJEFl2MMg90aAGTzAJt7lPBb9hsUPDAK4+csEmt4qOLPT9W03rohPZ6pJ9sehvxUSpoq7rjsIjL9tS+06VgXNWWueXAfVVXyqAmADinXy12BiWfQ9z4JfEW8Mi3c+gCUE/YgLul4A6AheS1Rah4Ea8/tTn1nsNqFdSFNxEfpkHh7uCoERsWduz57Klb1ko++/tv/w+CN5P768+fkLiRAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA6ElEQVR42tXRuy5EYRQF4M8pXDpRIaESTyAhXoFWpVGQKPAoOgm9hEoxryBETKJQmExNMI1LNzHJbMWcc/wHkSko7L/4V/Za2Ze1+fMYyP8xO7h2gjnLqLlKhTNCOASbQljvEVm/LUbMo6WBSbNoevjtfZbUPHrz5NSWoc/0vqi8utGU3sjTz+rucnycCppC2DUIVnSErumCHhdCI/HkQAirhVET4EK3FJxT5DPyiV+Tlj083JfVGdpQWauH24XgHiwk1RYp8+Dm2zWnPgRrpVGXbnN8VJ1l72eri2O1dLw4s/31WP873gEFvFhLrX5ZpQAAAABJRU5ErkJggg==" },
        ["ş"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABJ0lEQVR42u2QPS+DYRSGr7ek0sQiqUR8JCRdRPwBkorJarGx+Q0sBmHCIAapxSKRSMRg4Ac0wdhIxdKOhqYYxEeFchn6+TblF7jv5ck5V865zxPI34rwDzQDCXa55YUPiqRZI1EnREz6ZlhfpoyIdAKwRwy4Js0zAyQZIUKe79qEQVXPDKTqaZdrb8RRVTfq7ZADoZtHonxywg1FCtyRpRwOudkS8cEdY40ViLMemfO9CdoPAzX3OOaiD+pHZUalHLRgW6oOi0SALtKkGKrHijEFwBNAIBywAJS5IEOJPmboBy6ZrF0xYc5W3TveHLLDOQ/NV5tXrhpv/smGC+p8OHAYeFV12+hvwHl1yUp7IG63vWbV4/bAaf2GpXZAYMaSJfOu29EAfgCm9VweyQ++cwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABF0lEQVR42u3RvyvEcRgH8Neh47Aoys+ibpHMilImf4GNzd/AYhATBhnErEwyUCw2Qlmu62Rxo0F+TH5c+fUxuO91py9l9/5Mn97v53m/n+fhH39C2qoLj17cODQnXUkPexYq3rs1VVAD1qWQdehBh2E9quR9RPWdgmBPotRxxHS5Qa8gWIgPl0Cje0mvtp27ce1KzlulbPFbxDsrUl9UNTiQlVCnoRi63oA2u3GWTfpMuhO8RD2iJOVYEgTd0bfWkTVdJTrlTBA0RbUbJvDmWEZBq1HtODEUVQy6/DZFcKu/3LPamE35InlqVnP82q4F478d/UkQLEv+JNgvmszE080atcgJtuIFO6UZpuLvmlFQkDdfvBD4BN79Zee1L0cyAAAAAElFTkSuQmCC" },
        ["ü"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAqklEQVR42t2RsQpBYRiGn18Kt3DcgOlktjAqZXYvyuQKjGYXcgZmsrgBu5KyOB6DQ0dnkELxLV+9Pb1v3/cGeTYl3onUSUgYAtAnIaF3Q8rZrtEGtgBEtIHZC0HhuxetkFNO7SAy/sTrfgpJgRKVu1opIjsg0LyrrSKyBGBCBEDM6CFJxNizqkeXbky9zljEzGWd9VGlSYPAtOiCOHDhwb1zu3byLsF/6+gCsGNI68i3fW4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAlElEQVR42t3RsQpBARSH8Z+bkle43uFmtjAqZfYuyiBPYLN7kDsws3kBu5Ky4FjuFV2DSfItp/M/X51Thy/TksuNwVAuNyhH9aI2dbEHqS6WpZL4NbbC5anvCWH28bn/qlyRaDzSRlU5oKb9SDtVZQPmUpCZVNdlbkI429i5iucHlEyLOISbxTuFkbWTo5X+6xv/jzsvpSs6A5VH2wAAAABJRU5ErkJggg==" },
        ["Ç"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAABLklEQVR42sWSMS9EQRSFz3uReJGgEBRWj0KIH6ARKn7HbiU6Egr/wCsENYVEggidSkuyW0yhkyzd2sQr2FjhU3jPzLzYXY24093zzZ3MPSdAnSvUX0Bj2pJRoieVtaFBRyE7y7zhVo2lTMuQYio1uKbCOwBNFlxohGcA9uhDiAInADzQY6FVAI6xj4dcAFCy0BUAMw4kJjAYYgvdAQ0CD3LO1woGJCWi/Z7C/7ClA/TxG6guqV9Be+heUqRpT5mUkVFsU7AGwJFnyykARbvxAi8AbNObGn4IQNU1WJScqBiaALwy5+dJrORC98hiPnRCjBOnQIVNhq2Sd/wAKNP9UwpsRZKmVNW8181NmmWHBLhtPWlUQzrTTZqwFpPWv/+26/a7vBt1nStSTZfad9uft6ho8wYCvm4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAABGElEQVR42sXSMS/DcRDG8Y9GopFgEAzYMQjxAizCxOtgEhsJg3egg2BmkEgQYTNZSdqhg02CjSY60CCcpdF/G60OEvfbnvveL3fPHf8WQzbkFT3JWtPzE7LoXSTeg7laZL6cKrmU8yGENzNJpN+zEHZ0ggFHQrjXXoGWhXCYKEs5E8JCRboQwkRVAyPy8jIV4UYoaak3dgp0oygaQ6nGBqaacfmvoc9moAK6frPgDmnjVZnRWjNXhHBQVXwshPmKNOBFCJs6ygvfF8JtcsEsJE4l700Ir6Zqu1uqObpHsz8NMSxTBnLW9dW3ZE/IamvseBpjbk03MnfSlqJwXf+nQb1OXJUvrE6sfs+2nZRbq6CCU2kPzu0m5S9tqWza8usHJwAAAABJRU5ErkJggg==" },
        ["Ğ"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAABPklEQVR42tWTOy9EURRG172ejUfoSNCNV6EQ/4FGpxSlRicehSA6hWglKo1GgfAHFKLQIKJUmEpjTLyCsRQzzLnjGZ3vNGffvZJzzre/i7yvYZ8sat242IskUBcjdFHBBdtsho0k9qXiYJ9iiRMyZDlmgaYE937+mI+GunKoeLe3zWih+eChp4WnPDuYxJq9VXXVehFb3VX10toQm1J1KzCn0n1VJ0JsT9XeAMMB06bdCLFz9SG0s3TlDWkErnn5ybcY+Nbn8k++rdESVP3cf471kQqqstJh/XKmb2onIiLiCCD/sDx2A1R/wGuAO+6KWBqoozUBNdAGXISH7gEwmcDGiYGdMEid5lRdtEbEKqfNqU92JIM0GwTpwGyhminNW+ycz4lYvjhvVIohdrvsiRlvPHPFnnD0f/hl/in2CgprOksfRx6eAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAABLElEQVR42uXTOy+lURTG8d85cSsQoSOhdC0UvsRMo5tSlJrpZFBMEJ1CtBKVRqNgMvMFFJMpNIjQKSgmmkEwgmMpvJz9OicUSs9u9nrWP1mX7E1ZI27F81lVLKcKUvUb1a/WkR/WvU/dFuw6dW7HnPbq0Fc3SWfhny+V0FiWvLZlLxvlznAe6nAphGUtoMsvIZxoTrFJIWwkTp3fQviWYptCGMpV+OzYsbXUOhSu03W+1GOqDWfu38KKiNdWWlPFW9GZRJ/8f7peCH+fEwe5NTeWi76paliPgoKCbXgcrJgVpaECb8KVq7KxJYSuHNSqJBykRTfBRA4bV8TP1OpTEsK8JlBvSkm41ZvvYzp5SH+cZ9H3yoln3OX2dW/2xU/JNGDRrlMX9i0Z9CH1AI/mc/2c9q1fAAAAAElFTkSuQmCC" },
        ["İ"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAAQUlEQVR42u3RoRGAMAADwC9X9mID1mJIRqhHBgGix4EDR+L+4iIiLckaRyuYjTZnSlwzgEXE1NPN6qd36fGOz2gHdhESBp0HXHEAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAANklEQVR42mNgYGBgYHjD8J/hDgMUsDAwMDAw+DOwMnxnIAQ6GP4z/GdwgHCYMOVHhWghRH8AAALMBwN0sAhHAAAAAElFTkSuQmCC" },
        ["Ö"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAABKElEQVR42tWTMUuCURhGzxdBUNoQDS7hFCRCv6UfUgRNoRU41BQFRr+gvxBEu1M1VVS0Rc2RZWlZnQY/9X4KItHSe5d773vgwvOei8RrWtVDEVdVXej0GKVdb5SAWwAqlICbTo9IhqmRYD/LNuc8UeWSMvkE13l/2Q/D+rRo1O62ocW42fDME1/jUzGJZa2rWnZSxHG3VG2aD7F1VQ+6AYh7qu6EWEXVXALL+K1eh9idWktA7duX1r4VyBRQ6wvrBUgx1s0tGpBs1BvvkFP4K2zQ/O1ij0CqD0gDNd672D0wQS4BZZgBHsJHjwEoJLACEXAUipS1EY8+HY9+M5YpnxRpKVan7mkg0lqvb7hiM6Hllxv9WiLOueuFVZ+9ct/5UINffJl/iv0Ahek4/JmleBQAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAABC0lEQVR42uXSTytEYRTH8c9loRgWsrCRlSLltXghpKzk346VqJFX4C0o2VFWWCHW01hK/oz8meFYuNx7zUQpK79n8zznfJ9O55wfH+oTwhaYEcL4Z057dtWwZ9cJqNqz69LvNWTFsWs3TpWNtoamPIvcaZiTfIUm0uSjIwfu09dcERr0IISyHtBpWQj1YukFIWwWvq4LYTUf2hfCSAHr9yqc50MVodbUVEW4e7+2gV5aYHco6ciw5JtpJhn2o/4Ci2+IyLArlJqAbtQ8ZVgVXU3jHcBFvugOmC1gsxJsF1f/mK6+O139UmqmL66bTK3z4DBnpPnmjqbVC7Z8sdh6O8PWnLhx68yGMf9SbwbZaOPmMwHKAAAAAElFTkSuQmCC" },
        ["Ş"] = { 17.0, 18, 0, "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAABdUlEQVR42q2SMUscYRCGn9OTuyJ3JAgqhEPSWFgFE4LaHEkRIVWa+wkW9wu8wsraXiF2JiBoZSxFbIKFBgMGFRNSJAZECXIiKmh4Uuzu7e2eFxvfKfabmfeb2Xm/ycjd6OD+SZ1UWOQH51xxyDJVio2cgZXcMo0zJ+wSQ1LOvTBR96sb/gq9Y/tiUlXVQytmw8oDTnvhm8ALQh9VHZaEPYpOweezepWiNFkw3QWQ4/H/JdgF4AOlNiwRX/hX1RvXnHLMQrJddKh63aTQjZvWfJgm4aCzDX0CnFgOcpnUFvQyxAijlMkCpwxyBO3G7g+fqZZsl7bnqi7EOt2G7wAUYp2eMNRCegnA70ingjte+85ndoStHjjuqapvo3+aagxd94ufPPAy9NfNRKROa57ZihWLSTGLjrvktzC945yvWp8lsvfqtrnbViVGHnjKT163bkFsZWesq/vtK5XoYZktoLt9pcnGZLPN8Wzixh9WyHPCKvPN4X/zbrY32ShJMAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABIAAAAdCAQAAAANkfQJAAABVklEQVR42sXSMUubURTG8Z8mJQ4qLQUVJBQXB6diS6kuwQ4VnFzyERzyCZrBybl7Bbu1hUI7WcciLuKgYsGipYqDtVAqIhFRQeU65DVvfJM3q+dO55w/597nuYd7ioyiL/acunBgXkl3EslbExLnxBsPYiRnO2pU/LTiT5T91xdDJUFwoCgbVQa9dWai/rJvguBl4gmP7qbrgot0Te3gDDn9raEt8Em+lUcvXAuCK4tmjOtqjpVc1jl0ZVXZw0ZsyGzNn+o5VKi22hJor2EjRhVkcWzIv/RXPom+qdz6w58Lgs+xBc1iF6o6q9CA4QZoDPy9TbtsujTnWW1upynHgmDyFpqpia74Ydlv51G+FKvPKDtpWLlgIbmb3aZ8tRO1N733Kl34R8GGXLMtiKMDT+173crCgncqgl/pk/J6zFvD4/Q50zVls/Xl7B3oyIIOh777UF++AXcLg1V9aJhpAAAAAElFTkSuQmCC" },
        ["Ü"] = { 18.0, 19, 0, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAAA00lEQVR42u3ToWpCUQDG8f9VFkyOsTzBNDDJoi9hMAz2CEtrBh9DsO4NLHaDMFYGAw17AJuu6MIEuX/DvdfDVRGjiN9Jh+/HSd9B0nOv6kDEtqrNbUckaW5oAL+MgQeqwIR5VgZ2NAUAvpH1XveOyGNgJ752ZefA4iMiDmwJFCntgDIAi8CmADzlUEQd+E82l7ARAG851qICfKYDE/HWpapdyyJGPrtQ9SUZebb2V5Os/PLDWXobWswz7Bibz9C7rA0Ma/b88c+VU/u2jA79rEtfyAbe8ZwW0hzLbwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABMAAAAdCAQAAADiU583AAAAwklEQVR42u3TO0oDARSF4W8MFlaKWFtYCVZi6SYsFAQ3ILgBC5ch2LoBsUmfzk4QtHAB6dQmSZGAzLEZJzNJELES9FT38XMfcC+f2hDRBeciDuqcoraW7ePNIzZt4cmrn+hBvM9Fr0Vsw9L36vxjvwcrvyDKKTZEx8oMsAoGU6wP9lpQYRfj5s2dirhpYUcies3QmqGIy6pR4dhAxEl7jjMRMXHvzkvl9XRmN7pQVsnU0Pqi1XdceTYy0XfrsPFOf0gfTV09ItHDbuYAAAAASUVORK5CYII=" },
        ["•"] = { 8.0, 9, 0, "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAAK0lEQVR42mP8z4AOmBhGhlADw38odKDILBYGBoYHDAehvA8MDAwMjMMtVAHfCwmGCbJTdgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAAAkAAAAdCAQAAADS344WAAAAKElEQVR42mNgGLGggeE/FDowMDAwMGGqIE6IhYGB4QHDQSjvw7AMKwC2PgdYQ+HjpwAAAABJRU5ErkJggg==" },
        ["…"] = { 16.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAJklEQVR42mP8z0AIMDGMKhlVMkiV+DD8Z/jPsAQHi0oWMQ67TAIAcUYLAdNqYlsAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAIUlEQVR42mNgGAWjYOgCH4b/DP8ZluBgMTARNoFpJAYbAECzCM/Z8HsgAAAAAElFTkSuQmCC" },
    } },
    ["Consolas"] = { h = 29, asc = 21, top = 3, bot = 26, sp = 15.0, g = {
        ["!"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAgklEQVR42mP8z4AfMDGQpOAow3+G/wziuBX8YGBgYGD4SUsFPxkYGP4w/MNvwk98viCo4CfFJvyA+4SebmBB4Z1kaGS4h6qAkbT0IMtQyGCHpuI/ArL8f/z///9//y2RxFBMEGCQYWBgYGTQwWUCw/+m/5/+7/vPiyzGSOVEO1QVAAC+qEblsjB/UwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAd0lEQVR42mNgoC44yvCf4T+DOLIQE4qCHwwMDAwMP2mp4CcDA8Mfhn/4TfiJ6m4SFfyk2IQfcJ/Q0w3MKLy/DC8Y9jJcJCmCUU2QZUhmYGN4iEsxC8Njhv8M/xgscTlSgEGGgYGBkUEHt4VNDJ8Y9jHwMowCDAAAP9cl2epIqoUAAAAASUVORK5CYII=" },
        ["\""] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAU0lEQVR42u3QsQnAMAxE0e9MkhGzQ4bMFpZwH86dESY4KYIrqzg4eFyhJMa38REcCHECO0JcPTAAHMihB+AtC/cTsI75COS3BYsL6bc/LLDAJFAB0IEb0JAD/soAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAATElEQVR42mNgoBYoYPjP8J+hmYGBQYHhP8N/huswCSYo/Z6BgYGB4QMDA8M7JD6Sgg9w8hPDX2wK3qMp+4BPwTtCJrxHNmEUjIIhBwAb0xmkdzs6iQAAAABJRU5ErkJggg==" },
        ["#"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAsUlEQVR42s3SywnCQBRG4ZMIgnvF1yKVWIFNuLQGe7AHy9C1DViDEF9gAaJy3CTRjKiIIt7ZXC4fl/mHieR5xXwP9JB51s+QfghawPam33wAKtSRXQiaBWgQs+eYzcWpj2rh65iYn1RNRByok3yeb6jS4kwKQAIsw4dKiEk5PQPXYQng0MdVfyPFWB2JWFMPRmGKDrACoAtsMLxkG7KQV1oC5Q3re9AuQLAh+uWn/WNwARUdg++EGObQAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAqElEQVR42u3Pz2kCcRTE8Y8rCN6VaDxsJVZgEx5TQ3qwh5QRzzaQGgLrP7AAMeHlsLqrP1EJgifnXYbhy/CGB2oozPZ+KoxKm1VAD6sjv7wDaOoI6xR4qYCuzMaufu9TXLiv44abKoQcjIWPQ3xoaOn5VYAc3ymQyxR+rgF1eALwdnFD6PxjxUR4B21hq5H+8Io5GGApUqDPfmSNXmlYnAP9Ckganir1B3X+Qht+OSS8AAAAAElFTkSuQmCC" },
        ["$"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABQElEQVR42r2TTSuEYRSGr3kb8hEry5Eio5SNYiMLilJ+gr2VfKzZ+BNKRCmKjSKlrNmSKFKkfOx9DWbmsniNMe9rZOV+Fk+dc/Xc55zOk5DfFcQiz+SpLA80UM0db+WBRuC6JGLhDLjsuS9qzgPHrQvjYbLeHaOaDoHQYo0hXpmlg0VggkEWeCxatKs6JeKe2m/RmABoA+AQgFbgIlpkp6qrBlaZM2Pw/YXw2lJ13zH19Hu6ANR+IqrHpuIA4pB75lXNum5LHECcVzOqZhz9CdhVBxzxVs3ZEwcu1EYxbVZdigJJ37+avFa3iqMO1USSS/JAmhRwCpAEJulmkxOagSta6GOGBA/MFSY5bVw39obGSWCDWrpoJUVAlnuO2GaFp+jC4LY6XDro0iLTwFl0hxNfa1/BM1JDthzw53/x/8AHgf88rO6aPtUAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABF0lEQVR42tXSvyvFYRTH8RcuKTEZibqhxGKVRVFKVouRTPJjNvkH7CImykqkbIpVKYOUKLesEhf33mPw6/a9X8roPNvzeZ+e8zmfhz/Xo5K6n+Vm4bb8ojoBtOImvXfIhgtPQtGJWY3lYpM9kTiL5U9sGfFsSa81zBm26uG7v1sIC+BQGEwO2QVOQQcuk+P1CWFTtXpF+Qpn2BHCsRnhPM1iwwcSwpmW9D2MOFQSQsG2bDq0IuSFkDedBhwIQybkhKL+SuBSaEWngrCelDNev0zeCDvJNNtkXCmhUwvfhudtGddjTNiXNelauNf+CSxWJBluDbyLNbjz4FlGoyoFOUeWTVUmwq4w+tt3vRA6fpZrvXqR8R/rDYsDbP2L9UGMAAAAAElFTkSuQmCC" },
        ["%"] = { 15.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABWUlEQVR42t3SzYuNURwH8O/zXENZGS9bb6lpNEgaSqym/BF2UjbKgqRJSVM2s7NS0mwkxUI2pNTUSEbTJP4BGw0LSlzcOzPmY/Hc+9w7U2Jh5ZxOnZdP/b6ncwr5UyvzV2RjrudDWnmRo30n45HZlEnEPd22ZFhEDGtpVasYxSeHDXqAmyIaZnGp4nEBN0QcwzMRF/FSoyJllpMsJ0kanTGUibRzKj87qZzAeyO2eIxJpecY72SKRGmujvvRVucx1y1SkdjmtgXfPLLLHt+1jfRARXq9MIPLq/bWkHOYt+73ZLemRftXg35SmMYVG0xa0DZvbC05i1cGTNX3WzHaT3b6atEBQ1Y0HbfJHTzskcJTXBUncVfEPrytHiBJzmQsr3MtyUD9HGU9E9t9seSgiCP47JBB9zHVLfQEE3XsmTpu046KnMYb62uy2S3v/DBtb7VT/LPv/X+RX63pgBPh5k+bAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABQ0lEQVR42u3RsUuVYRTH8Y+vWuCUWatpCKKYEmFC6CT4R7hJ4CI0KCEShAgtbk2BhEtEYIO4FIEgKKIiIvoPuIg2FITe6l41j8N735dL4J0a+z088JyH73N+55yHf6UGr31VtOFJxe2UsClJgwVRXuc6ykCHomIW9QrfPdZoUZgDtTaFySzhhPAG9Atr4LmwpTYFEhe4KL9Nd7sZJSP+ZFmGhGNdmnwWZiXWhanKfhLbebnf3DEubGcmme5658hPn7Rq80tJ1/UTqrEqvKg2xGfCjrrrgfsKznRXM1kRXrpp1pGSHYN/I2PCrnrzeX+XeiuBFqfO9Gh3qWDALe+FpUqTZWEaw8IH8EA4SAcHowbteYX6/DuS/IRmJ849BH3CD480+ijMZ8gXYSY3Xc3LLbiXXj0V9t3IkdveOvTbik7/VUVXJbhvAmo+k5YAAAAASUVORK5CYII=" },
        ["&"] = { 15.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABSElEQVR42t3SMUuVYRjG8eto0dGhlpA0iCAhaTjUFBRUn8BwaMjABvd0apWG8wH6BBY1FQR9gSAMGpwkxILCRROktAz0mOGv4ZzX9/Q2RNDUfQ/PPfyf576ui6cmf6qe/AVyI3PZyk4WMlW5qN1N3fVIym4f58FjQwY8AJerSBOb+kTUbWOmRNpbTydZzk6SpJUvSepVud+SnOrMwxlMslSVewuMi6Ne4YP+qpYjVrHuuiV8del3RzF6YPiNc92AHEqS1HIyezmc5HWuZq8Sr+gxCz6C2yKm0SoXTWPfpOPeY9cVMYO1Aum1jlkRZ23gkzOe4EWBjICxjrhrdvHWZ9wrkAvg5oGDiY6zfSMFcswPPO+yeR/Md+fyFDzUUDfkjo3OO5MlMmDRr/XSO7RcLNPtd9e8Ld+temZMTcM2VpyQ2j/+3v8L8hOtAHpsIXLygwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABNklEQVR42u3SP0sVUBzG8Y+WdHPQRaQMQihQGsQmIaF8BYlDgwY6uJdTqzT0AnwFFjYpCL2BIBQanCLEBKUlDcT8F+g1w6ehe73X63Vr7DnLOef35XnOA4d/qycWHDjyyXON9YBXUrVmLgK9It7q0O61iP56Hruug4JDMVkZ/k3txFdHoGgPhVrkJ26X9nfdxEpt0FMRI2ixKNY11yLXbIgtg1bEvgf1Sj8+K/zZvfOjq6DBLSea8NEjJxcdGk2L2BQxBiZEsYJMiFPj2qyJYw8xKb6XgSu2xDTosiO23TEr3peRbhFDpdOAY/HFD/GyjNwXMXwWO1pqdqq7fNXqt3hX9fwpEUvVjeZEvNGjoMMzOyWf8QrSbvncb4kPVkVRXwVq9sKSA79smDekQY9D8c0N/3WJ/gDbjXpKSCsQXwAAAABJRU5ErkJggg==" },
        ["'"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAPUlEQVR42mP8z4AfMDGQpOAqw3+G/wzWuBV8YGBgYGB4T7GCD/gV/GT4jlvBe3T9DAyMVA6HUQWjCmiuAACIqg+iiYtZFgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAM0lEQVR42mNgoC64yvCf4T+DNbIQE4qCDwwMDAwM7ylW8AG/gp8M33EreI+ufxSMgiEIANPtDXY95BXGAAAAAElFTkSuQmCC" },
        ["("] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA7ElEQVR42p3TvWoCQRSG4U9BUGICFtr4lyYQsZG9hNS5mpRWsRFsUqTQC7HPsm26aCmIjZEEEkRIFtK8NtH9yZ4BM9PMOeeBYT6YHHKvfEavo0DNY0V6d3gDHg91elxlCUwpZIM8T8CMctRLgjsg5Drei49r7IB+8tJ48QC8UrJAiU/gPv2q6HgLwFUaREHdSFppYSfZlfTiirohae0CZ5K+XSD8RSZ4l9RygbmkngsEkurq/hHHSM75AkZ2kmICfHBhg0tCYGgDMQB+8GxQ4BlYULGAaLMBfIoWEB5bYGwD4eFTO1S5//ys08AefJQzPyU3DMkAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAzElEQVR42r3SLUuDYRQG4IvBwOEHGLbkVxGUFXl/gnnVP2I0zSJYDAb9IXaH1abGgVhUJigymC9YjsWl7TzB4F3v6xzOAw9/yK4b66V6JJxnddujcKU5v264Fu4tZfOHQm0nqzvGwlF+3pnwopXVLR9CP5/vCWF79u5p9vFkmIMu7ua9fJo1PJfAIr5KoP5FKXjDRgk8YK/0Cw6E0M3BsolwWtpxKbxbycGWWjgp7TgWvlU5aLoVhlZzsulVGFjISeVTuChdUhno+L/8ANXMM5+vb6odAAAAAElFTkSuQmCC" },
        [")"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA4klEQVR42p3TIU9CURTA8T8vMJQvoIXCpk0kGU1+BAsmg4FisjASGzSLha/CILkZTZot0ChujjkZyv4Gh8+953lz3lPOvfd3yznnlqR4Jd/ZgN6vwq9oulb7ko00PVe1HQMcqO8exSDxTn2yEgHcc6V2Y4BD9dlqDPZVvYgB3qujdJ/kCjMBjtPzPHgEtqjHYArATgwWAFRjsA3Aawx2AZjF4AB4KQInwC1m52ETNT/UVlzJa3X+s5/Z92/qZdzNsfpgOQIddWkjmqhT1+pZNJOHrtRO0VTfeJW/ltLff9Z/wSc1QDQXXJ6R9wAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAxUlEQVR42sXSLS8FUBgH8N8E8/IFKLfYaLhJlHwEhSQIiqTcSTaacouvYiSbKJEVmmIzM3a5+4vX3D1nmiee/++8Pefw5zpx1Iq7huK4RXZE7LU3iU9rNZhwLe5N1WTRQBy2tjkTz2ZrsCRit7XGjTj/ebDfdYn10fg4uMO0hRo8gLkavMLoHuNgBrzVYB481mAZLy2wgSup2tTxJbbqPp6Kp/o9O97Ffj3/QtyarOKe+LBSxZuGYruKVw1Er/UP+g78T30DYZIzAjVj7YIAAAAASUVORK5CYII=" },
        ["*"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAzklEQVR42u3RrUqDARQG4HdTJgYV41BZs+kV6C1YvAerwmwG04oYxSYIgtnimkm8EIMwdDoQDP7gs/Lhvk0YCAaDB045PHBezqnI+KrmR2Atcj4OPBX9DSymnYUkvQJUs5dmIUQcoGvDFHbUXeHRtChAzbYHHHl15h6XVmUAIma1vIAb61/TUsj3POctSXKbTimliElb7nDq04WeDyca5RWH6No0g10N1+ioDcCytrpYQktM2NccDRmxguOhycgl55LMD1+y8svf/Ad/GvQB3VekkLvdCxcAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAuklEQVR42u3QsUrCARDH8Q8mhkNGo1S4ueUT6Cu09A6tCbU5NLlIY7gFgeDsoptT9CAOgpQlCA5mdC2G/i2a2uwLN9zxPfjd8beUhXZylEp0r8v6JhzpOcRkKaTUXK5rDWHs1K5QldcXXmRXQsaFZ+HWXMuT0FXaDJhTNxPCo8pPIRem3sDAaHM77dxQuPehY+LdncK6cCOMndkTrhQ8CCOZlVDUk8exUMeO6+SZX5wIzd8+uY8D/2wvnyjpMuCxi6IAAAAAAElFTkSuQmCC" },
        ["+"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAOUlEQVR42mP8z4AfMDEMPwU1DP8ZHgxBXzD8Z/h/4z8u4PCfOBMQsOb///8PUESGRjgwjsREiwUAAIOyM9Vc35uIAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAALElEQVR42mNgGIGghuE/wwNUISZCegaDAgYGBoYbDP9xQAciTRge4TAKGBgA5GsR2XoYLz8AAAAASUVORK5CYII=" },
        [","] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAjUlEQVR42u2TIQ7CQBBF3xICglThEBhOgEFwGa5CegIOgUFgK0kVhhtQj+EEgHgImrA0XRyqzLiZl5n/xQ/yvXr8gc4CGXOGDcJ3T72qlZNo9gGsfNUmBuIXR24ALFIaKnIARmmRBQDnNLAEYNfmYuDMtQ+1NLS5KGsHB8fxWvr1oTsXTmzZ00hS+H2ynkMDW9yMKvyoAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAfUlEQVR42u3RIQ7CAAxG4Q9CQKFwCAzhAFguwz2mOMIOMYPAIskUBoUFj+ECBEQxEyxZLWrPNOn/0qYpPT0ZU2uTPF54CnfzTNgKIZSZsPISwjlfUgjh+tsatoQjuOXCBuy7ho8t7XyE2qBLqJsLTmbtYNTUt4eLykH8/T1fRSIdwTU3Er8AAAAASUVORK5CYII=" },
        ["-"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAIklEQVR42mP8z4AfMDGMKhhsClIY/qPAE0SbwDga3cNIAQA5+Qpctg7KJAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAG0lEQVR42mNgGAVDDqQw/EeBJ2ASTKNhM5IAAE9rCCiE6qCvAAAAAElFTkSuQmCC" },
        ["."] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAT0lEQVR42mP8z4AfMDGMKhixCvQZihgc0VT8R0CH/7///////38akhiKggX/IeAUsgJkKx5D6Ye4rOD9v/b/5/+H/ssjm8A4mmgZGBgYGAClwT87sMjQAwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAASUlEQVR42mNgGAWjAAGYUXj6DNEMHAwPcCl2YPjN8J/hP0MaLgULGP4z/Gf4z3AKWZAJif0YSj/EZQIvw1qGzwyHGORHowYTAACsUw3Qcm6jagAAAABJRU5ErkJggg==" },
        ["/"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA10lEQVR42rXTL0sDQBQA8LcpikUEMQiC1WCwWAwW64JlacXgJzBYTBaD1WKwGyxWi8FkMPgFBgaDMCwDRRT9LYyxf/cWRO/CvXfvx8Fx7ypi8qjGr8BOiHbMR0SE0rzGWTculVd9+7GWg1Pc9LLx8pxX1HKwj6ZqDh5x0M9Hy9t4s5CDK5wP7gyXV3xhPQcnuB0+czCZ1cJuDvbwZCoHDzgcvXY/3MK7xRxc4mL8ZXrBsk9s5OAYd6Xe6C4zXlDPQQPPpnNwj6Ni80UIm/iwVAaVf/oXfwo6j/aCdA255bEAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAqElEQVR42tXKoQ5BAQBG4TOMKWazG2w2VRAURVBU4RZJETyBoEjKDaoi6IKiKoIkCF7AJgg2U2zMGL8n+KPg1PPBb2ogrmQ8WCDGfhd586HkwQix9DvNBdH0oIvYE/Ngh+j5XUfcyHowR0z8LvBClD2IECu/U5wRoQcdxIG4B1tE3+8a4k7Ogxli6neeJ6LiwRCx9jvJCdHyoI04kvBggxj4XUU8CPjfvpe0Man0XLabAAAAAElFTkSuQmCC" },
        ["0"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABP0lEQVR42s2SvyvFURiHn3spdS8yGBXJIItCpJRFJmVQZhMG2/0HLMogUgayYjAp/gGJgUTdq2RhEaWIW7h+3Mfw/XGvxSR5z3Y+z3vO53zek5CfK8nvAQ3Mcc4z9+wxTkW8b7AGfbC8dk0HSiC3mldP7DdliwuqrpUD2+qldUbnzaraFQENFtWxWMZqH9XFCJhUC9aUARnf1VwELKsnsVjnVmj03SpJAo3AZfioDo4Z5oUNoJL6IIda4AmACQ5o5oIeViBQkkAC+CDNGstUsUkXWYphSFSG3W0c0sYbGZYAqAYgHwA3QC9wxShHoZcmoMBtcEUWgG06Yhm6gTM+g1m0qzpSlkPKO3W6FPWpmjMVAzPqq00lYEDVfftM2+i8xajfeNxTfn4b96qJ7wB2uu61BW/dcajkJ/GXn/YfA18udBXaLCBCNQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABK0lEQVR42u3Sv0qcQRQF8J+uIOzGYGGnoEgKO8G/jWAjYiFY+AJWmsLOF0gjWIhip1jYqIWVoEXaINqIKOhCSLOVIAiGRDAuxr0W3+fu5z6AlWeqM+fcOXfuDO+IDst+enDnyKxcvTzut8isHwpZuce9cG5U3herQtjOGg6EktYqXxLCQC29IsxkCj75I6y90q9CWUvGsOBJuHql68J5VWy1nzb6pJlGdKKUyn3OTPlnF03aEsNn/AVzTnT7ZdgGidKIBvxXsG1dsz0DLlVAJMd+F04UhbL5NGpCCO0J2UqbKhmUvdmjXBJxmQ6rz2nVMISi54T0CmE6M4e8W+FbbeNCuJKv8kXhUVfNMCaEYyMKOq2ovK2Hec9vnntTQ/2P6LfjWtmNQ5M+UIcXjAlpVspuEoMAAAAASUVORK5CYII=" },
        ["1"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAhklEQVR42u2QsQnCUBRFzw8fdQPBATKDpWM4QSZwhvRiY2mRkSwEWwstHMCAHIsgGvKRFKkk93aPw+VxgvxOxpDAjA13pGoRNo0WXmxSyaeIwbVn9ekuDUy9qUeX0gUi8GDLhJI6+aXtdhaG9fDHQAQgZ/F1m7MC4MrprXpvKodeqoOjaoAXhDl5FXT09awAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAeElEQVR42mNgoCvgYChheMvwn2EJNkkWhjSGJwz/Gf5jU8DIEMFwm+E/w1+GydgVsDO8ZPjPcIXBgoEBUwELAwPDT4aJDGwMbQy/iHEohglMhHSMKkAENQODGoMUkpg4gwMDAwMDwwuGGzChGdCIRoULiLJiFEAAAPghJ1FY8dqYAAAAAElFTkSuQmCC" },
        ["2"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA5ElEQVR42s2SMW7CQBREZ1MEn4Ai+AxpsZQT5Aq0ES6Q6JJzBCFLKEUaREWTJlKUA4DSwAUQUgoEBV1KwHkUjuVvYrtCUWaa1Z/Z3f9n16FqXOhcBqeW3rTWThuNFRgHQlwxxSKmQ6L8GF6ADXfU8bhlBcRcW4PPO/V0D00AIms45RKYJOviKbaSvKoxG5I+yw2BfEmvdkzLGjNgwWVxk44hsOcmn0PGHgBhVsnLjwA82JqV+wDc58/M7o6Ab7qnTafyAIhp/07VIUlPCiU9a5TL40vzNIcDRfgofwsD93ef9l8bjjLxA1hXL+ZQAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAw0lEQVR42u3RsS6DcRTG4YehegUdcA3WNnEFbsHWiA4SG9dRkSZisIjJ0lFcAOnCDYjEIDrYjPi8Bqn0o/+OJu9ZzsnvPTkn5/BnWrDpwpNXY+c6P/Gya5mKyk7dMBRjW1qaNjyKytq0YdWl1nfVFjGYt9G9uPpKF2cantGcZ1jBQ3lAR0S3hJfciDuN0sFOxZv1Uv+BiF4J90Xsl/ChiL3S7IH4sFvCR6KyPQvBsR5OnNXYi9tJ+l579iRG5VP/65c+AQ8OQoO5yiNUAAAAAElFTkSuQmCC" },
        ["3"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA7klEQVR42s2SIUhDYRDHf5PnmKDYhA2boNGuUUGDzSLDKMxkM1u0azYZFKwaBJPNbhNMa4aBY7g5UX6G59P3zfeZZHiXvrvfcf+7+0ryu43wN0DCOmc88MIz9xwznyNEXDW0NxummU9g2Svrzlmx6oZN9dWZPBD6oqq76atI5C19YCo+xThloJkXGfqO2rNWpCFx1n37vrsZToF4+DXkk0vfRUUaJrnkgHKRhsRpVzxX9SS+B9xTdSEOVFXdjmmAMQAeY3vAI7XjxM8Wo9Zc80I1u2eauBk4d9utrCgJendpccc1p7SyUGlYn/afAx/OSQRqv97K6QAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA00lEQVR42u3RLUiDURTG8R8yhwPFJmzYBI12jRtosK2IGAWXbGaLds0mgwPrDILJZrcJpjXDQBE/JspZEJzv9l7j0p6b7jl/7nOeexiRCuqaHnx4de/U8iCwLjLny24WqLmyZcmUsk1t4dNC2nBVCPs/l4kc4FYXc2lgWhHttMWe8K6SH3fRoa5v28PN49+QT6r9ct4Msy4dKeZbzFtzIYSz/77+QAgraaAshEZqBkrgMf3CifBiZrgxqWJDS4jsPm8G1v1spx/sr9503Ll2rmOsjHqFn0MHA/A6ngAAAABJRU5ErkJggg==" },
        ["4"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAArElEQVR42s2SoQrCABCGv7ki2AzWYfABxCcw+gZmWdBiWJtJEDSYDCpi2QP4HqumPcCKYB4ICzuTaftnGeJ/6eDjjvv/c4x6tWgaGPDCMCIFXGjXTZgxJuOhgB57IOSpgANdYk5qxYQpOT5FNdDhDGxJ1JkbPBJ2yocRSwp88mrA5YrLkVg5GTAkZaWs7rMGFmQiDJub1s2+p4mV625m0adr/mFKcn7/tH8JvAFhP01XzPdBpwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAqElEQVR42u2RLQoCYRBAHy6IoMlgN2yxmoxG9xgmL2DwApaFBYMuYvEA3mPrlrWbBLMigjKG/cH9PmcRBJNv0gxvfmDg57hcEYRtXqgZwppGuVAWxgw5c9SEDj4w46QJC9pErLTzRgg3ekD87sgmITBnr/UHCAl1MCek9LnzYJBl1gqHDQ5LIm38FOFAq8iNFV0uCN5LgyFMEDV29i8+Iq76psX3wp+UJ5LMN4boDGQdAAAAAElFTkSuQmCC" },
        ["5"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAvElEQVR42s2SMQ4BURRFzwyJygIUIiqF1gL0CluwCuvQKxV6iUg0ColeYQkKEqIQlXEUghmGKEi817zi/J9773uBvK+Q7wB1fOrWhz9kb1MUm38g8jtABolYMadHI0aIWPexRuYvcSTTyVqw6UTVXhpw6dCherQgpoo80QUyVF+72N0NpAM1QBZ3F8kuu1YHaSJzVmy7UZcW40DnIYWp5euj5IoPLJnRZ8ztVAMBSoRs2RM96w38p3v4GXAGzbqdHEeFvg4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAqklEQVR42uXRLW4CARAF4I+fpIoDIEiDqsByAHwFV+AUnAOPROBJSBNMRRM8giOsKAkEQVAsU9EUNrDbdRjemMm8+XszPAg9cWeDX6paVlu/eGnGz6C0w0MTakLq28rEe/kdPjTyRTf1fQph8t/YuXDSLFrybIyaTrGK/VVAfkIXYV20Q9tGmOVRL94MbYVEK0uMbq7wpX3/bjhKLE0txF+oAl5V7RyknhU/aJ86axq75GUAAAAASUVORK5CYII=" },
        ["6"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABFElEQVR42s2STSuEURiGr2GKfMQCNSU1pYgSC1lpoixkazHKz+APWFnOD5hZsPIDlKxsR9lYyG7CNEpNjGZjUJfFdOZ930xWkufsnvvqPM+575OSn6uH3wVWKHBJnXek2G6lO2KGEptdrrB9Jn1QmxZcd8y0od8BztRbs5GQBHJqy+nvcgBO1KNucgAe1Xx3oAeYIgP0ckiZZz6oc852/BXLdqtiNGJD1Rv3XHTQfnNeqboTgC1VZ2OTR3xSL8IOTQCGY+69cgoshSyqAGQTBteAvgDc8QKsJoAsUImyKKkNxzs7zPmmHkRGzdhSr11zwAnz1tSqo/Gwdv1MuFBxPpkmLnjsvS0blt13KPRTf/1p/ynwBZj3Eka5h3GqAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA+ElEQVR42u3QvyvEcRzH8Uco8iMGlJK6UkSJQSaJMshqOOXP4B8wGe8PuBuY/AFKJuspi0E24aLUxekWh3obdHffu+6MJq/P9P68n6/3+92LP9aSjAtFH0L256ur1hyTs9HeO+5BKMtYM5yw1XQq3Ei1868IFZPtFxwLh79d/ySkW7c6MGEMnQ7kvfhUdGYrCS2KFi9bB9aFcG3XvD49VlwKYbsKbAphOjFz0LNwXr2hDAYSwJsTLFSBAjSF9IjuKnDnFcsNQAq39TInlIzU6hnvwn4dmFIRrqzqNSrtUSgYSo7c8dWQwq3Z5kznHLlXUZK3p9+/GvQNiIVQ47WOVoUAAAAASUVORK5CYII=" },
        ["7"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAt0lEQVR42s3SMWpCQRAG4HnP2OcCaVN7AA8QQRAkAUEQS4tcKQcQLMTCA6QURAiBaJHCawjyWYioz7diESS7zc7Pxwzsbiaurzz+AgxC6R7f1OEhIiaxLKSVGMVj/EZElHfvYeNJKAUVK3zsqzLQxdZzCuR+MDzUl6ADaimQ+cb0mBTBG6inQOYLn6fZOWiDlzRYYH4+9LRogdc0mGMpT4Em6Bfv5XicYa2aAg3wfvky2X0+7b8HO8D3JxD5+IWMAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAmklEQVR42u3RPWoCABBE4c+/PhdIa50DeACFQEAMCIFgaeGVPIBgIRY5QEpBAiGgFhZeQ5CxF5d0qTLT7ZtXLX+SqdztCpq/2W2s7W+uLUsPjrX2Ls4eK9xyEPPafxMX3Qo37cSi9scinirc8CM+av9VRK/2v8Vn7Q9F9OvBl9jW+EXEqB5sxb5+37OISe1vxEmnwgMRM/8pcgWljjXd0k/CkgAAAABJRU5ErkJggg==" },
        ["8"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABL0lEQVR42s2SvyvEUQDAPydxdWRAN8mPjk6STKYrAxO60WiRRRarbrEoWS0sko3/4DIaTBaRpCsMIl2EjuM+Bve9+57BJHnj6/Pe+7zPexH5edTxe8A4u1zzyjOnrNNXmRcx4oa1o2BaxDKwoH6YscdG2017ruZtrgLH6ubXChFHVJ0Syw5dwF3I7BqAWFXyCpikvgKMAXBWlVxSdcsGEZPeqAdhyahZVY9MOeO9mrMzDGDUFYuVS+7YFggHoYpc8lRxGKC/NlSTWfXZjB0ueqcWnQ0fsafeOlTettV9tehwAPSqOhcK1eKLuh04DAJwEgr1QA7oDEIVAJgIAd0kgMtAMuatWnLVpFHjTnuhlkxVJUd9+Pbcb87Xhoq77KF53330yDUTgXDkLz/tPwY+AVUYI2TMIqsDAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABHklEQVR42u3RMUubYRTF8Z9BaiBKBxUnqRYriog4OQkd6qSSsaNLcZEuXcXFRRBXF11E3PQbiKODUxZpEZGAzSCGIhEtatTroEne1w/g5HmGh8v5H7iHyxtqwraSW9f+WNWfNpusidS7kU8CP4UHCz5r0SnvWLjQ1gAOhfVEYEwI05ABPSgngBLINYC/mNJcB76Bo0ZiXggbPoABZ8J+csmsXSEUjJvxTyj6lC6ataRaL7mlo2ZkXv6qU1d1fMhgOt9qV7i2oNsvZaHqRxLYEc6NvEzt9oSq0Zr9RQizicBH/4XN2g7D4HcCqCjy3CODGzCZAHr14bQ25pwLj5YNyOry3YnwaLyR+Kry6tx35tJFuyw6cOHepYIVfd6V0hM2mGIBhKTcBwAAAABJRU5ErkJggg==" },
        ["9"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABGklEQVR42s2SsSuEcRjHP3d5L4Nc6VZKXWQ0KKVbKeXqBtP9Af4Eu0EGkwyWG2SQRKEM/gFlUAaDgTAQ6RKSe3N9DLze9z0xSb7f8ff5/X7P93mejPysLL8HjLLBNSE3bDOWIEQMXDGted9PPoBFtemCA7bbZ03Vagz021RnozvilnpmJgKm1dCOBFBSdUQkC/QCdzwlCtsnBIajFCFQSAV+5QIoRsAREFBJxX8E8lHMvHW17pQ95ux20nWb6locc9xnv2opKhJ2GaTGOSEvnLJKhRPgNu5kq3M21In4i1aX1dCu74DAQ3U5OYukO91UHyy2AoEFS854pTYsp6c5l4p37FD8Yttn7xrcc8kBO+yRWNTMXy7tPwbeAPXEHY234ArEAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA/klEQVR42u3QsSvEcRjH8ZfLXQa5kpVSIqNBKVkpRd1g8gf4E+wGGUwyWAwySKJQBv+AMiiDwUAYiHQJyf1yPQb93P2ubjV5vsv36f1+er7fD39Y43Y9SDw6MNEI8zZF5ixnhVWhasWgNv3WhTBbwwOqwmLdwL5wrSVt54VEe50wJoRRyKEXz97rhBMJRlIhQZdcnfDlFn2pcI68UubZbyimTVFZKJvTo6DbjB1VYbvmT/poyCGEtXQFR4asu5H4dGVLySWemsdeUBGmmgvTQqKzGc47Ezaa4Q57wutPCtm5LmMW3AsV01m4lPneheEaav29Vby4c+rQsfBfDfUN10RcKtnFgpcAAAAASUVORK5CYII=" },
        [":"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAfElEQVR42mP8z4AfMDEMPwUdDO8ZjjDIooj9R0D7/xCwBEkMxQQhKC2MywSO/6f+////5b8TsgnIChj+s/w3/C+CIsLAOOjigplBn0EQTQWSi9n/H/3///+n/7a4vBkADcltuELyI5T+gMsKhv99/z/+P/lfYXAH1MAoAABoGXf/A8/13wAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAbUlEQVR42mNgGIGgg+E9wxEGWVzS9gz/Gf4z/GdYgizIhMQWgtLCuEzgYDjF8J/hC4MTbjewMBgyiAy+oGFG4+kx/GL4gUsxO8NRhv8MnxhscSkIgIbkNlwh+RFKf8Dtoj6GjwwnGRQYRgEGAABAaBceeyrILwAAAABJRU5ErkJggg==" },
        [";"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAtUlEQVR42t2RMQ5BURRE5/GDRCjQic4GfpQKiQ3YiIVYgF6jERuwgF8pCZVe8RMi0RBxFF7iPflPKeLe4iaTydzMjEGfJ6f/I4x0VKKWh/HaHs+ZOpinULO3HlIosQTO9F0FlyAiYhoeIvNzXRQVq/LG8GxugJQ4ZLNjk1yECGX2ABzCQQ0AuIQJBe7AOlSW1JWRNMtykafJkBOwo5r1YmwdbGn7ZUVW6KZUK8010dXP6QttPgB9S8sgAc7KTAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAApUlEQVR42uWRPw4BYRDFf6ywyYYCnej2Al+2VEhcwEUcxAH0Go24gAOolDZUesUmKxINEU/hKzay04rENDOZ9+bvgz+0KWc29C14iBBiUUxWC3Hb+47VIWSLuDKyd6jh6P76oxo4mjYcskdkOIuQ+E+uLULECSFye8gYIW42oc4TkVpiwYAKsCyrDegx4YI40iojzPwFB+JP/d72IGPHijn3r8vzAl/BKKaXrk+SAAAAAElFTkSuQmCC" },
        ["<"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAv0lEQVR42t3SMU4CQRTG8berMXaEUNpro6eQhhYKehpbGjmDWlB4Bs5AYsEJSKg1MZzBRCgo8EexWWCBJaHEmWLme9//zbzMm0QcH2mcKZDGa/TXyu6sGIJ6pnftW5/41cojRbvhB9/uN7Ft+9kSH6rbSfnm2gC8SYuXZsuNMebaeyVHCBcm4GnfLp6w0CkDNjW8uzwMhNCzxEitDMjfYeqhDAh3vjDTLAPyXvx5zHTiUDdf4iq6mUj+7ac9DVgBMtn+FaoOsr4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAmUlEQVR42u2RPQ7BABiGn7QdbCJGOwun0MXKYLc4AXfQQcQZnEFicAKJmUR6hiZlMNRraAyS79Nd+q7PkzffD/xrAlasfdxkjxCxjbtcEDkTG4/IEDf6Nl5QIA60LNhghxAJgYU7nBAPpnZ1yBkh5v5qZcOTma98ZtgS+dKSAnGk7SvlHVIGvtLjirgzrvrFi+GvbyZsqPOVN79BK+e4pZS4AAAAAElFTkSuQmCC" },
        ["="] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAJUlEQVR42mP8z4AfMDGMKiBagQHDf6xwClEmMP4fdeSoAhIUAAA8sxqnTxtFkQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAHklEQVR42mNgGAXUAwYM/7HCKQwMDAxMo44cBVQFAGwEF3cFCwFNAAAAAElFTkSuQmCC" },
        [">"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAArUlEQVR42t3SPUoDURAA4EnYJQcIEtBiIRewjGxhilzBXEG09DRumasYbbYWxNJOyGKnhSHyWdnIe1ukS940U3wM8/MGov8N44DARayjSgohFF6xcSn+x19yqsXWTQ6EkRW4V6ZBCHd2eHCSA2HhA2/OcyBMPePTVQ6EsQ4/ZmlwpsWXZbpC7b2vh2vf+SlKDWjSe5h4wtZtepOFF3Tm+VvUHlWJkWNwVJ92f/ALT9QM/EmvHWkAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAlUlEQVR42u3RMY6BARRF4a8gFiATCYXEBpQmCgpbYAtCaTWUtjIzGrVElDoJ0VEQ8mzgfxYwcdtzinff5T/l269mjkt2wlEvV+rWwt0kVyqWQpgr59LMQ/jxlSsDZ2GvnSstG+FimCtVJ+GpU4wb1sLVqBh3Hd7dMHbLW5QthLAo/kPNSribZltshZN+Xq3r792an7wAZh0rs8/7ajAAAAAASUVORK5CYII=" },
        ["?"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA2klEQVR42tWSsUqCYRSGn1+kzamhkLqBAseKCBG8Im+g8hKCRi+gG2iKppaoJRqzKZ3EpUSn8GmQT3+/3y8SXDrv9B0eXs57vpPJ71Xiz8AbX7xyxVFEGPRuqFt3590cUHLbph2/1Z7VIhB05kh9SAPYUrU+e61KcQNAIx1zCMBOGqgB0I9jzrTlqS/q1IPikJcu6jx0yznrCQADHrnmLjRj4Inj9GdNgHE8cd7hmTbdGMjWuYc9WtQLxDxk2Q916snyZhYOFfaBjMOUA1746b2VZYdsg0f7n4EfQ0Kx4rIB0coAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAxUlEQVR42u3Rv0rCYRTG8Y9/cHNqMCRvIKExI0KELqUr8AbUWwgavYBuoKmaXKIpaguXsklaUnQS35aUn/p7hcDR5yyHc76c53AOu9O7kVfXTmNAX/iLO4dpQNaBS10zwUA5bnVhLOht26YpCOqLwZu6BY048A1KceAEfKX7F5x7EcwdbzY7y0sErUUxnwCmYOjJjfsY8Ky2fr9VYLLum0vkM0MP3v755OSEI1cKPmJo3qdg7iy2ZFEFGdW4XduPR0V7pegXXesxOWRY/DcAAAAASUVORK5CYII=" },
        ["@"] = { 15.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABtklEQVR42q3TP2hTURSA8S/PBElpUyq02qhUB1sQqSBCFQSHojg4uPsHB5Xq7OCkbkU7iIOCUEFBiDgJOoiDBBGrIChmMaKiKLW09oEmJa00+RzynkkDVgTPWe6598cZ7rk3IX+LgH8iXZznNXOETHCSFb/3jXPYafWxY171o5q3rX4Sgz0uGLo3qpKOqzebSdZZK2630TNlwZqDDXJbPd0EEI+rF2OyxZpfTC0BCderr2JyRT0n4kHfWfGFj7wlzjpvUCeTVs2KIzZiVHyprpWATfRSYJIeLgDH6KIIFIEfQAck2Q1MAIfIkOc60BmRBSANAUPAM+AAcAfIsCYiKaACAX3AZ2Ar8BwYAGYIgXagDAHdQEg3GeBTRIoAZFlkCgLSQEgHAKWIvAdWkeUDixAg8DOa6UpgGPgG7AOeACQpAW18pUbAEP3sBPrp4QyQqz+GB+oOMR9dWs6ZaPUwnvRl9Yi40aeWvWenh53yuzfMxOSoOt4y5SWJq606bXo5gnfVs8uTzc5Z9UTT9gZ3NaqEAPvJ0U6BPPOsY4BtXGOk9Qf0eck3li351vuesre1y//8jX+IX6+UauwGsd15AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABjElEQVR42r3SX2jNYRzH8ZffdtJZnLHacKRxYaRFLTVKuVjkwoV7f1qJcO3CHXeruRBFLqYomdxyIRc6k4wimptNiIi12a/WOadja+c8Ls7vcLZlV/J9bp7Pp/fzeerzPPzrWe2CEUWxYac1LAZ6TAieuOiaT4KcpvnAPjNi+xPVaEBwqx7ImlKys85Jeati+x/jruDsgotPCPprolPFV6l5wDIbBG9q8qrgPDjsvZKXHruNKT9FVeSbsixOCb9XH14L1sPmJLDNtOC4VUYFvRgSbKXRXgzjiIycG2jGGGaQJtKN5ziEe8hYmyAplIi04wt24AW2YFKMFSgQaUWsVQafE2QsKXTOOJE0YitBPkE+oEXWR3NEAmaThpajBz9wAE+rD5ZHk+8qIt067EaHNucwWD35ULALuaS0QZPJ7lGt/suCY9jkmYL7mh01btpNmRrSKxhY+juuUTYh/XegQVGXLrOGlsrZpqjsZJ2z0Z6F0EF5wYgr+t3xSnB9cVK7S0YV5L3zwBnr/P/5BXPBgLHpAqBBAAAAAElFTkSuQmCC" },
        ["A"] = { 15.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAA/0lEQVR42tXSvSuFYRQA8HNvGJQkkrIomXQHGfwBslgMV0bLLSmjySCTicVsllXKomRQ/oCrpNwsNpMM8nX9DO993Y/3LYuS8yzPc/p1Op3zFMRPUYzfJiNRDyH2OozmWZPEvUJLto2cowpm8smwOmY9YiefrOJB0QHu8skZ9oUymMqSIR+YF3o9YztLVvCkRwhHuMmSUxw27stgsp0MesdSIzngDVvtpIIXfVprVtNXV0RELEbEdUx/j7wWc1GKibhNF5AUzsZGUqUYEQvRnbvicnONJ7honaewCcaSdvu9Yr2DlEiz6RTGO0io4TIhx7jKgLCLT6Oi8Bff+x+QLzgvWCEYVxCXAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAA6UlEQVR42u3RvyvFYRQH4IdkUJJIyqJkkkEGf4AsVjJKKSmjySCTicVsllXKomRQJhMlRRabSQb5dX0MF7fr+72zxXmXc96ezuk9L38QvSoithqTJRFxp6kRORbnIsbKQY+KGPcgNsrJorjXbEfclpMjsY0pESNF0O1dTKLNk1gvkgXxqBXsiasiORS7X/msiKF60OVNzHxVnV7FWj2ZF8/a63qefxctYBqXRn/IjQnDBl2ra1w8K7Uxc6UgzmrkQJz8euGqiP5q0eFFLP8iw1K7rW5hoLCpG3FaTffFRcmfbYoPff6jQXwCLxJjdS1twMkAAAAASUVORK5CYII=" },
        ["B"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA3UlEQVR42s2SP0uCURSHH+UVl2gKGlokgoSWghDa+iJOTn6IQBz7BIGzU0O0tgQRNAU1CO+Wo4iCg5SC8TTc/oDc+04RnbNdnnv4/X7nlKS4yvwOkONnr5jyQIetb0LE3PWaeBh+/AAXIlbcs+u7+hQHQvdU3RUTIm8A2E67qAIwSgFlWsCAlxiwyQlXnPJKu8jmo/tfglM5DGzEbW544JkT9S1MiedQd6lepnPIuQeOirZZAeZpoEYDuIsBGTs0uaXKjPOidQ89DoKztQkLxjxzTZ9FeCj91dH+c+ADbdbYsPvXeIwAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAw0lEQVR42u3QMUuCYRSG4YuPxCWagoaWiCDBpUCEtv5Ik1M/IhDHfkHQ7OQQrS1BCE1BDcK36Sii4CCpULwNJZi8r25N3We9z+E8D39ELvzMh5FndbspYTFDJ6vCDSg40vApeI0L39wKgkPIoj89gL20UAT9lJCpoaMbE3acuXPu3eW6mC+ON/XQUY3H3FZ2ZSiYLl9Z7aFkLmilY+baOE0LFDBJCweqeIoJW/ZdeFQ0dr0uZk9lsfGbmYE395pm/lniC2ZXVxy0GQEHAAAAAElFTkSuQmCC" },
        ["C"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA70lEQVR42s2SsS6DYRSGnzYikUb0F1KDRWIUkbgAF0C69QKauIBOhl6A1WSTsFiMrDbpoo3uqEliaEj9aG2PwS8t+v1dpHHe7TvPd07Oe05G0iPLXwJL7NLkiR4tztlhDgC/VPXd73EgMpH83qMCPHNIjQ4Rq5SSjIibql5akAHNiwnQVNufDz+FuK5qdVhassAGACfhMVeAF27DwCzwmGbU5CgnYyBKA+6BGRbDQB2ArUAJMbKr3jgVMgr3VT0199vqjADTXLEMPHBEg5g8a5S4YLu/7gVrOmzdgyWLHnvnq29ee2bZfL/F2I723wIfrGnBRtLMva4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA2UlEQVR42u3RvS5EURSG4ceJSETEHCEU00iUIhIX4AKIbi5A4gJUirkA7VQ6CY1GSauTaRDT+6skCiGM325pJuYc7ClV3t3s7O/dayVr8adM2dDy4N2VQ+vGynHdhyidLejvxA1reLKt6VFuVq34e1EIxyZKNce715ZwV3woMy+E+u9hhgWwlxZm8OwyLYziPtU/w0Cv6WVoI+8l3GBENS2cgKV0m9ybcGEwrWwKYd/Qz1H3gWFnpnFrx6m2ijk1R1a79qTmt2V31l1k2a5rL16dO7Ci4p8vPgHy+z6z0ZYHFAAAAABJRU5ErkJggg==" },
        ["D"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA4UlEQVR42s3SzyqEYRTH8c878ZaNP9kpFpqlkiuwnGxcgBVuwMIFoGY9rkOpkSuwYWdhJxZKshmjSGKKY/EaPaMeK8nvbJ7O+T6/0zmdIvysmt8AmuIzXtw6smM6IUI047t6sRVF9affoqtQGDFr1Zlh21qDDnfx1SfKOIiIiMXUIVXPugds5qe4t4+GMj/mMUrzeeASTOWBRzCWB6r8cx6YAJ08MAeu8sASzl3ngAUNtHOLmrGnpmsXhgZKo+qWbRj3akUnBSalt3dhzUn1TB3ePblxqu3QWz9Z/M3R/nvgAxjeWOHC+Z+MAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAyUlEQVR42u3RMUpDQRAG4M8gD6vEYCdECFgGxBNYhjQewEb0Aik8gATSew5BiHgCG+2ElGIKQcQmKigiGtBN8Qy8B5nWKv80y87HMszyL+lLf/XlyaWeRgRmNXFsqQyewYqmfUNJcjIP5MmcS5IdqMyZaeLQG44iwKsztGUR4AqZrRiMwHoM3kEtBvn9ZwzqYByDFriPQQe3HiKwrY1BtKgNpype8t9YLrWqNu3qWvVtz7gI1qQCvHPgOj8WX/j14dGNgQs/FillCo8JOeEttgVjAAAAAElFTkSuQmCC" },
        ["E"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAQElEQVR42mP8z4AfMDFQR4EDw38M+IIMKwwZGJGgBHUdSTcF51HCYQ6RJrCghMOFwe9NEsOB2PTA+H+IeZNGCgBhBBy+NFlZQwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAO0lEQVR42mNgoBNwYPiPAV9ApJgI6UVWYMjAiAQlyDBhMCg4jxIOc4g0gQUlHC4Mfm+SGA7EpodRAAEAgZ0aqsG9C3wAAAAASUVORK5CYII=" },
        ["F"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAQklEQVR42mP8z4AfMDFQR4EJw38M+IAMK3wZGJGgAnUdSVMFEE+b/McENZDgIMkEn/9YAnRIhAPlChj/jwhvElQAADupOLYmXZHPAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAMklEQVR42mNgoBMwYfiPAR9ApJgI6UVW4MvAiAQVyDBhoBTgDocaMkzwGazepFtIjgIAfGYWwip//C8AAAAASUVORK5CYII=" },
        ["G"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABAUlEQVR42s2Svy4EURyFv5m1SyKZSCRUIiqh8LfRqLyBXuUFPIJCsyoab6Cgs4XaNkwj0ZCtUMgWIkQiMdmQTzEjOyM7W4k4p/rlfPck93dvIP0V8pvADHUueSLhnibbTAJg6poHfljUmcgAAFVOWQMeOeSCFyJmWcduw66qR0aS85gI4oQdtWlYiDMj7qi60CtOgVi96h1LCMwDcfkehhkC2tm8kjvcSoFBADrlDa8IjGRzTEBAwH4X+KQNTPd7i3NglWo5cAyMslFSIVa8Vp9dzN1/T219LwrnfFPfrbtsZMUpT4oALnnrT93kAay5acMHExPvbLjluEjwt5/23wJfXGXeIiR+bqoAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA7ElEQVR42u3Rvy5EQRTH8c/u2iWR3EgkVCIqofC30ai8gX4rL+ARFJpV0XgDBZ0t1LZhG4mGqFDIFiJEInGzIaNYu3uvZJQqv2nOzPnOnN+Zw59qRs2FJ6l7DVsms8mKfR9Cbp3CACg7sYZHB869SMxaF/r3dwTBoSRXcqwbTGgLGooxc9uCYCHuvim4jCWLmEczDgwbQut7v5Jp86YDDIJ2/IVXASM9PwUFBXt94FML07+ZPMOqchw4wqhq/B9KrgTPFjNnu90uOprzJnhXsyxRMuU4D7Dk9sewg+t8oYoNdQ9SqTt1m8b9q6cvDa9MnrEWDX0AAAAASUVORK5CYII=" },
        ["H"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAPklEQVR42mP8z4AfMDFQQ0ENw3+GL2jiPQz/GZ5Qz4pBr4AFSnMz/KfQiq8MjCiwd3gFFEEFjP9HhDcJKgAAqDcJqll85XsAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAOUlEQVR42mNgoAuoYfjP8AVNrIfhP8MTBgYGBiZCuoeHAhYozc3wn0IrvjIwosDe4RVQTAyjgCgAAMjQB5bRt3I6AAAAAElFTkSuQmCC" },
        ["I"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAPklEQVR42mP8z4AfMDFQR8EShv9YIA9RJqBq6vj///8bVGOo5chRBXRQAImzJf+xAR6iYpPx/2hIMjAwMAAAgSM50rGeAAQAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAALUlEQVR42mNgoBNYwvAfC+RhYGBgYCLNpA6G/wxvUIUImjCqYPAooHZ6GLkAAMHgF97uHH4rAAAAAElFTkSuQmCC" },
        ["J"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAhUlEQVR42mP8z4AfMDFQR4EHw380+IdoEzC0/mf4X/P///8/MB61HDkiFbAyMDD8xqdAnoGB4SXuuOD//+b///8LYXwIVfZ/1n+H/4L/Of6b/j/y////P/+NURW0/EcGf/9nIkyEUHr/5/6/+v/r/9//n/5fjtD9n+E/A+P/0dhkYGBgAACGkHP2fxSzOQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAcUlEQVR42mNgoBPwYPiPBv/ApJjIMa+GJBNGFeBWwMrAwPAbnwJ5BgaGl7jN5Gd4w/CfYSGqYBnDLAYHBkEGDgZThiMM/xn+MBijKmhBSQt/GTIRUswMDAwMDG8Y2BnYGbgZGBleMGxlSGTYxDAK0AAAOGMgnK7ic6IAAAAASUVORK5CYII=" },
        ["K"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA8klEQVR42s2SIUtDURiGn+uGMAximEWTySQ2122GWWYRNAgWk0X9C8ZbBLsDEba/YF8YmrRszbzgcCgbeyx6OVfPNYl4Tvu+93zvy/ecRH4+M/yOoIekQXWLKXIBgIg9NZWPu+JAvbUsRiwqtFmgT4NJPMMl6wypM4iHPGKfKbs8ZJVchppv6mmWBnOCRZ/Uq7AdhixxwxIdDr+YZhOGqq7m34cT7hkD5yRFq+5yAmxzVmSRii114mbcAuCAPiWuWS6i+cwOr1RpMVuE+45jYCNgG6HZVHXv+yY/BXM+qiPX4rjhhQYjKrSZh+SvPu0/F7wD9Oi0vv6/DegAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA0klEQVR42u3RLUsDYBTF8Z8vCENQDFo0LZnEpt1m0LIVQZvFZJl+BePKwK5F2L6C3SCatMy2ZFhwOBTHrkFhbnseo8nTDvfPfTv8kZpC9Yff1hdqOaCoLVybhsmxbgUNC56U9NLAuXUdO9pfdhQ4cqBvz0N6yU3vwknuiiUt4WK4NBgx5cqyG4e5P3SEsDpaGnS494EzEzngVgW7Tn97dV3o2coDc5rCs5XUCHhR9mZR3Uwa4M4xNoayHUvzUgj7eWDWo9C1lk6TVyVdBQ3z/vWtT1MYRm2DcOkQAAAAAElFTkSuQmCC" },
        ["L"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAANUlEQVR42mP8z4AfMDFQS8EFhv8MK2hrxaiCIaCA4T8EXviPCSr+M/wnbALj/9GQZGBgYAAAZIIe27MyCh0AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAJUlEQVR42mNgoBu4wPCfYQU2CSZCOkcVDCcFyOkBHVaQZMJIBwD3jwzXznr99wAAAABJRU5ErkJggg==" },
        ["M"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABDUlEQVR42s2SvUoDQRRGT1YStthFSVohL2BlY2Fpa0AQLFTEh7DLS/gCFklhoXYWWthZWdgotoLYWQQRIT8kORaZXRYXgoWIM9Xce+bjDHcqMn9F/AbQRuSkUG0h8pIBCQDbxDlwCEBaBD5ZpBXaDTb5yC5GgbwC9gOwS40zoEoNEC/UA0eObIh4r66rWjdP6HFDlR1ghVXueMwsMocJXWAvCHboQ+iID+qGse9ObfrqwLo4UdfME4YMOKfCMctc0gOGs07mMAC6wBbQgVBJKCTALc/AG9c5kELEAnEAZhmnjAHoZ5JLqjbl235SjyQKkxiWxpg7pPmxDKT8PGEOkABjpiUgvKLyN5/23wNf02h5a0uQPp0AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA+0lEQVR42u3RL0tDURjH8Y9XNhZ2UbYq7A2YLAaj1YEgGFTEF2Hbm/ANGLZgUJtBg81ksChWQWyGISLsD9uOYefeDS4IFpNPO8/zPT++zzn8SbUEwelcpykIXiFBFeyo5MARSOeBL0uacVy35TO7mETyGgcR2FN2jpLytHEpODQ0VAcPgg1BUJsldN0q2cWqNfeeMovMYayD/SjY1iPX9yjYVPFhouFNXw1jwfosYaDvwoITK650MZhOMoc+OthGm9ipzidw5wXvbnIgJbGoEoFpxpkR6GWSy4KgUfihZ8ExSVxlUAByhzQ/FoH0Fwk/AFWMTApAb/bU/8U36/9Hh5huiZIAAAAASUVORK5CYII=" },
        ["N"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAtUlEQVR42s3SMQ4BURDG8f8SHdkLaEStkjiASqLV6FBoNCR0TiA2oVz6LbVqnUTrCMiWsqWNjHJtNjMaEa97k19mXt58jmCfHN8APQThTumtPkc4pju4DD+NGFPQQciFMl0dPNkAU2vElpgaLR2E7ICZ9UgPaFLXwYlDtkf6JxdAh4oO9pzJM9GBsAT6uPqyAq4UGeggZg2Mknp23T4RVdo6iPCBhhWYFQ87UTeC5OL8JrR/D16U2yPf2QCmSwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAtElEQVR42u3QoU4DQRQF0JNtcCX9gZoGXUXCB6Ca1NbgCgJTAwk4vqCBpJVb/EosGkdS208AsrJZyYYsDpYur7KqV83cnJl5GXaSsUpl7bDW3am8QvJTdVz+dzqpra8cxCD3pussBl8WuNn2xKNS3yAGuSfcbhvyAaeOY7D00rwj+bObYqQXg2crLdcxqNzjXCcCZN61XcSgNMfkt08aX5cqHBnGoJDiJAbMfMYzwIfMPhv5BrV0Ics9m3d9AAAAAElFTkSuQmCC" },
        ["O"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABIElEQVR42s2STSuEURiGr/dtMFO+FjajUbKym0KxspG1UlP+wCyVtfInLKz8ARaUbNTYKGz8ADZSygwpH6FmJnNZHPP1Lqwk99k999VzOvd9IvlZMb8HTLDJFR88ccE6A6254RSt2qlb88EJdkHVkrNmzLrmu1pxpAkM+qgem7K5b8FPdasJrKoNJ1s24q76ajoAJ+ppl41Lqi5KTA8zwFnidRcA5CEmSwYoJ4AHAHIQMwxAJQHUeQEGISb1PUiqGqYxbwAdyQVFDAHPEHOHwHgCGKMPuA4bboC5BDAPwHnoYkutOdqVQ0m9NApBTdtQdzrsFVWL7bK2Vd13yrQ5N6yrJaM20Oue3Tqyv7NuxGUPLFvz3kML7euiv/y0/xj4AqzO9koLMHXhAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABBUlEQVR42u3RvyvFYRTH8ZdvfpZfg4UomWwKxWSRWalb/oE7KrPyTxhM/gEGShZ1LQqLP4BFSnFJ+RGKG8fwdbn3sZucZ/qcz/uc5zzn4Q9jyIpTL+4cW9KR2kWvouZcGKm1C0IomdCm16Jnoaynane6FfY0fhdMexdWq3JB+DBcd+WG8Kg1F/vCQTLTrBBmyDQZx2ECHIMRMr3acJUAN6CfTDcoJ0DFAzrJvmav/Frca57NPMGvzTXowj2ZS4HBBBjQgrO8wzkmE2AKHOViVXjTVweUhBMNuRjzIazX2PNCKP4k1oSwZVSrfssqQqlaD8026z477GpP3z1n25U313YU/EcSn24qVNbA5QliAAAAAElFTkSuQmCC" },
        ["P"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAArklEQVR42tWRIQ7CQBBFXxtA1BRLwgEwGLgEd6hDQTgC10A0iDoOgUNgQaAaHKYcgGAI4SOWQLOwqwoJ8+W8mcz/Ewh/hVQD5OihC0eWTIiehBDKZddBXTPxAlIhFKuvVFdJhZqfAKNEkjQVchy5YA8MfC52QMsHNICzGwjpARs3MKINZAA1qxXRYcgYyFi7g7ppprqxbG84UbBizvY96nJQJVX17q8Cgf7gyB8AdztBhybjiwaiAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAlElEQVR42u3RIRIBcRiG8d/sIGyhmnEARVmXcAdNYhzBNYRN2xxCVxVpR1PoZhRjrLCUnf3TjOB54/eEd96PL5Ernrk6WZuLQ8IrB4OqkIK2odRN4ahTJ5SMFQoLiGo7rewxCgvs0H0ntHAJC5EE27Aw1UMGjcop1jcxQ2YTHupuqVm/5FkuldT9IhXo+4FfEP6UPAA5lTjFJD9myAAAAABJRU5ErkJggg==" },
        ["Q"] = { 15.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABWklEQVR42r3TPUvbURiG8Su+gMFoUWgVUigZBcGKiEscW+nWjoUOXUrzAUrFxS/QrZNboegiDk6OKmYJoRQ6ptItJtKlBGlRE7w6HOP/bXARnzOe3+Fwnvs5ObmtBrhbUuIzDf7xh++s8yBmDOut58ar5fz1zjV56ZXa9KMvfO2uqr99GJGCp2rDR/1zflB1IyIVVZdvAGJVPTPfJ/vqjwTAN6o+FxlgkEXgIPXSIwDmwqOnKQDNFGlyCTwOZAKAdopccQaMBTICwGWmqT2gG8hfAAoZMg50AmkB8CQFiuSB40A6nABLKVIGoN7P6It67lSiL3vqz6i7ZVU3Y+CVqpV4jDuqbvvUEYuueaFWHYyTcQ9NVtXJ5DDgsO+t2VV71nznUHRtMrxPaj0VaGp2vwELIbzsYIY16qn6y2cWLLnq1+xFuJKY4QtnsgRn3bJl17abzork7us3/geMrloZgvegTgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABPUlEQVR42r3TsUubQRQA8B9NC4qxolArKJSMgqAOxcWOWrrpJIUOLqX5A0Tp0n+gW6dugugiHZwcbTGLOBQ6WnGLUboUCS3RxLwOXzX5PpPVd9Mdvzveu3vHvUfBJ0f++u27DwbugmU10TYqptNgQVMoW/XKaztC+OVJC+SdC0eGb1dWhPC5RYpCeJE6tyRU9d5M94QfmdzeCGEeHsh5jq8Zsg8mEzIij3KGlF1hLCGD4CxDmqroT0gPuLpzUw3UE/Lnf+HZeIyLhFTAswwY1YvjhFw4xUyGzILDm+m6UPM0RXaFn+07QthsA4tCKLbv+SKEbVN6jHrvUijJpbP/lmqFUDKULfGRdw7UhYYDbz3s1nkfRauKzrEkXCeP1y36nAsn5uQVrNnohF6mevjSeCc0YUtF3ZlNE/f6B/8BFcdsQB5unuEAAAAASUVORK5CYII=" },
        ["R"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA3klEQVR42s2SrW4CURCFv0sQi0IQBK6KB0A0pIqkBIWgKZKnQLVInmCDwtciqYGEINjAMxAEqqSyCNJN2hwE3CzZHzCEcK79Zs6dM2PEeaW4DjBAx+fzxSetk0IhNFBYY2UOFQHpYTBkeWIEVHkPd5hZFzlaSlqFOwT6ZQo8XJriOxko0AAWcYChQJMJeXZ0z4251qP9cjrGYsgLf9GoPQw52vxTp3eCR3LoSJKerUUUcLSRNLdAKiYmFyhTSc6hzxbsLuKAH/pAjVJy1C4+8JYMbPgAXimCudXR3jmwB/Kpk3cd3mrHAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAzUlEQVR42u3RIUuDURSH8d8rCzMZxPA2kx/AIGIaTEwGRaOfwqRGP8FYWl81bmUDMSj6GcRgcizOIBso17DdvWy+12jyf9LhPJzDfS5/lBthVhNvus6spIBYfavTUUE+yGTW7Olh3+Xyhvt5V/UseFneUGTsDptpYJphGsgd4akMyORO3drw4fq3Z77aiaNKyYmOY5+xWfSw7tyXQ80y1dHDlSCop4GqgeDx54lCUwO7amkPLe/EvygDRlo4sJ1W3TDBRRoYaOPElv/M8g3XEEGzmy13qQAAAABJRU5ErkJggg==" },
        ["S"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABBUlEQVR42s2SoUtDARCHv/fUx0QxPESTZSgsiCKIJtPAtGT2D7CLbRisgmgSLWKfRsEysBsUVsQqNnGIKNONz/DeEPb2TCL+LhwcH9z97i6QnxXye8AShzRo0uaZBueU07qIAx7bq6qIKbCr6pGLjjrkpAtuuPoNjNlST5JCb4TALBFwkT/kGwDLOTbE0HtVd4yyLZI076uqD2453g/AGeupvZanzmUBxBVrfqjacd/hLIA44bZPql4a9AMQY69UXcsDMPZTPeguKqsX2kCQf+4yBeC6u6h196xYdMTQgiU3bap3iQ/EqlndWkzmGQTqTFNiipiIdx654YwanaRb8JdP+4+BL+PVD2lTXauWAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA60lEQVR42u3SsSuEARjH8Y+Xu05kuMR+pQwiJSbTlclkvj/AZpDtMjAqMYlFdhmV5cpuUbfIpKy4pKvj9Bi47nLvu5r8nunp+dbz/J7n4Q+16EhdQ9uLugvl3uKgE/Erqr3AnhCOLRiVM2neupVueUxLOE3vnGBGHpfZQBMsZc+fuBfCjnwWMudNCI+2jKcjU2o/9lrOzKZDy869C+HTgeF0aMK2JyFcGciaqOhaCGvZvoo+hMPOHvr1qs13i3SgrICbTlqxb1XJiETBtE0N4a7ro9p36nCr1PkE2oa0JHISTQ9qdm149q8efQGZB046L2VBuAAAAABJRU5ErkJggg==" },
        ["T"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAANElEQVR42mP8z4AfMDFQQ8EVhv84oAURJqBq6fj///8bVEOo48hRBUNEAeP/0XBgYGBgAAClcCGYgACDZwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAKUlEQVR42mNgoAu4wvAfB7RgYGAizawOhv8Mb1CFCJowqmA4KRgFEAAAc7kPlISvOJMAAAAASUVORK5CYII=" },
        ["U"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAlklEQVR42u3RMQ4BURSF4f8ZIjpRiHIkOmuwEokFaOxB9NZiBQoLEA0rkEgIrUT4FZM3MhKqKefe7uTLucUN8n9qlAEWyOUrz7NyTlTgNwjAK4I70CYpgB5wi+AIJKQFMAT2AIgDVZeS70jViUgWrNSnc/vW7Tj2pO5sfEDXrcU5mGZtsbTp1LVnH17dOLMVzwWrdwO8AWqJZcPkosAJAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAhElEQVR42u3NQQpBARAG4I9HspOFLCk7Z3AS5QA27iB7Z3ECCweQDSdQitgqMVav5ylZKKv3z2pmvmn4S2bC6dOs/O26AD+CEh4puKIhyYE2LinYI9HJgT62adMTwvxlPRDCKBsshLuproqmoYOwUc1Ay1rkavf2Us3Y0tHN2cpEXZFcnjj0I+8aMBjDAAAAAElFTkSuQmCC" },
        ["V"] = { 15.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABEElEQVR42tXSsUpcQRQG4H8XtEmVwlLRJRhE0VrB0sJySR+wtFUEBSFFSh/AJ7BRi/QpxUAEyRLCFkFMKsHKVGkCfhZ37957V0IaEXKmODPMV8ycc1ryr2jnacinyF3GHt1sRmQhiS2wJiPrI/oiMQUOR8BLf/CuIHGBG60GeQvmSrIDlhvkA74W+4gZcFADL/zGfkXiElc18gbM1skeWBySI3wpT0V6Rfl+Me4XdpskeugN9uugU5KyAadJltJJknSTXOZ6WOeBfQ22RdstdqrHV7/4hjOxCqYrUnX6JMlKJtJN8jk/aw0d6nmw4Qe26pWuF72P77g3+TfyXhHnza7Xp+5kkI+bs9V6vvH+r8gDnFBB8dyFr9oAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAA50lEQVR42u3SPyjFARTF8Q/FYjIYCYlEbzcYDWa7MprU0ytKvcGorMputxtFEnlJb5CyKROTRRyDh9/7VyaTM91z+9663XP5M52KJ31t/VURs1AWsdCGHIn6ZzkiYq8FGPQqql/2XDzoaUKWRUx/2YqIuSbkUFz/2DEROwVgwIvYKs5ciruCXxIxWUQ2RZS+/YG4at5/Qgr793sWG61XqIlao14UMd6KbBXa++KiPYYpEevo9SgqnbK6EceYFzHaCamKN0N2xVnnxGdErLgX5W5vURe34t1wN2RbRJx0f65SA1nzr1/oA0YPWPRB7C5dAAAAAElFTkSuQmCC" },
        ["W"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA4ElEQVR42tXSvy4EQQDA4e/ucI3sXsETSPQegIZGciH+JK4QT+AVvIyKkBCliEan8Qg6nd0LUYhjNXObsdnbRiIx1Uzmm99MMa1C82j7PdhXyGp2DhVuacuQ1IAE+Rh0zE4GOUibC40gL5cTwMhrWdhWuKgC8giwHuYRyAKY0UfXVl0hwZrUMwYlyH4WdnCEVfN1V3RseHfswZRd07oYxo9cMefamzMMpHjxGRc2cY4TLFsMB6NC34crPLrXchCDDEsW3BgSGnvVQi9cAKe+9KoFRi4DeHLHGLT+4tP+A/ANvpBEzZ4TzYEAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA2klEQVR42u3RsS5EQRiG4YfFNnLOFtyCu6ChkWwItthCXIHGBbgZFSEhCoViG53GJeh0zghRiGUUZk+GnN1S5a/mm7zzfn8y/MHsiqqG+33RgGkVigagQBgBLfPjgQDKyYaJQKjjGGDopTZsi85/A4QMYD2dM6BKwJwu2raaDAXWlB7Rr4Hqp2EHh1i12FTRsuHNkTszema18ZQvuWLBtVen6Cvx7CM3bOIMx1i2lB5mhq53l7h3a8reCICeKIiuUj5IeZAbOqkATnzq5BXf3zV0kYAHN+QV/8MXMoFF7tPi5zYAAAAASUVORK5CYII=" },
        ["X"] = { 15.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABDElEQVR42tXSMSjEURwH8N8JoVPKYieSiWI0GJlEYlcmu0EsmBSLwWK3mRQyklUGZSCkDAZZOLr7GP7u7n+HLFLem96vz6/3e99eRvy0auJ3SEvch7iKxor6YggxEhERwhRYFqXd7hnbySkp7SOnq0R28agtTZKugw8wBmaKDcW+eTApZN3iSKaa1DvHnWareNVTnqw84qACdrxhKTV6ioQtybrQ8B1p9QRG00BFur3RHBERE1XxlnSTS7yA4a8vWkPBkBtcy34mA/LYFMbBejWpc4YHrULYQ15/JVkA0x/FTjmcqi2TbjmclCO3AuaKpMYx8vqkX3eNZx0JmQUblXEZBYdCZP7ue/8r8g6DFG4/Sq3boQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAABAklEQVR42u3QMSwcABTG8R9BEBKJxa4hYmqTGjsYmS5EapeY7AZhoVMTFoPFbjNJaDoSqxgkBnJE0sHQdDlXufs6oO6OW02+6X0v//fyvsebqc8vcamrrrsiYvLJzopYqwEGlcRO7cyBKBv+7/fEbwNeTP14dFMi5hsvWhLxFT2uxaGWRqTDmbjR67v4a/S1ZF9Uxa57sdos/raIONfZDOn3R0Shvt1aU3/UC2aa7eh2Ie5ETLyOrIuqcVeiqOclMKYitjAtYqMRaHcqbvWDfVHxuR5ZFjH36IaUxYm2Z2BEWRzXvPybiMXn2Eei4lNduqIo+fBgF0RsNlxXEPHTu5rqH3o9XSyOlexfAAAAAElFTkSuQmCC" },
        ["Y"] = { 15.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAA1ElEQVR42tXSsS5EURAG4P9uQiVKHoBCUG2j0YqotAqPIPEK4hl4BIvoNSLZFlGIVqIWUVFt7P0U69p7kWjYxJxq5nyTTOacQn6KVn6HnEXKtL/cHER6mU2ircSpNM6cPvZFIo7AcoMc4sV0RWb00K2BeX3sDrJBaQ+sfJBjPJqskynPuHwHi0psVw1V3w5YF3GCe+OfyYQHXIsFJTaHkw1H3AKrOrjR+o6MucOtV6zVF1DfxYZBdJtrrCeFK7DUJPVnlPMkT7n4m88wIlL4V+OOjLwBiPb88p86J6kAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAxElEQVR42u3Rvy5EcRTE8Y9NViVK+wAUgmobjVZEpVV4BIlXEJUH4BHWn+g1GjVRiFaiFjqqjb2jsXL357KdKEw3J9+TnDPDr+lCVLpf5j3RNwddlTgvgHkDcTi0JyJWRpBj8aoztLP64rIGLBiIvfrOgYjVT38qnkzXkRkv4urDLanETnn/rogNcCYeTJbIlEdxg0WV2GrKZ1vEmiNxq9WEtN2LO29i/bucN0WK9wtNuBax/FNf++K5HLbG9/yXkH816x1tTT+Y5wj4OAAAAABJRU5ErkJggg==" },
        ["Z"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAyUlEQVR42s2SPQrCQBCFX4InECSIFhY23sHGOwgWghaSSjsbD2RjIyJaWVmJtWCVG4gYENTus0iC+VttRJxpZuZ9zLL71kLvw9Y3gKbIzcWnDUhSQdJBrZQ0VFvSNMQy2eABzIIuK9vsgBMlEzAGoBP1abnODZi/JknZYguccUzACIBufBaXa1yBZfLQeLMBLpRNgAtAP32rqKjgA+vss0XFCvCpmoAeAIM8Sy0kR0cV5clNWXbXPjBrQn54CNmh5cawfvNp/x54AnNYEy+cUNiIAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAArklEQVR42u3SsUoCUBQG4E/xCYSQqMHBpXdo8R2ChqCGcKqtpQdqaQmRmpqaojlo8g1CFARz+xvCRTy6Nfnf5cJ3zoVzOfxLTmXjGUJzS2OghU/9Nbpxhoeq88RSPFbc9C6+HVQFdyLOK+5ZiKeKG97ERKcquBVxUXHXXIzqj3kVU4cVD0RcVXxkJl7q55/FzHHFlyKuN09Ox5e2scGa/fj4u9wX+zBe7UPLPjvzCwpTQN3UMj0TAAAAAElFTkSuQmCC" },
        ["["] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAMUlEQVR42mP8z4AfMMFZHgz/kWAJpgIcgAWF9xeNT4wJowpGFQyoAmYykj3jf5o7EgAumg5jHDaGhgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAALElEQVR42mNgIBp4MPxHgiUwYSZC+lhQeH/R+MSYMKpgVMGAKmAmI9nTAQAACF4MXYAUbpwAAAAASUVORK5CYII=" },
        ["\\"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAtElEQVR42rXTMUoCABgF4N9MO0CQCF2hIaKga7hEGHiNhgiETtEgFIHQJVxEFLxEECFdoNLha3KK/6eh3lve8K2vIersxK/AfYjnRAjhCBuH4me3Y4K7CvTwbi8HTS8Y5CBcY1mBfR84z0EYYVyBY6x1cxCmGFbgAivtHOx6xVUOwg0WFTjwibMchEc8VeAUXzo5CHPcVqCPN60ctK1wmYMwxKwCXWuc5CCM8SBE449+8a/gG5k4gqG8qrYRAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAqklEQVR42tXNvQqBcQCF8ad8DUZFb9nMhjdRbsMiUW7DIPWWq7CRUso1WCTKTShJbsDXcEwm/c9kceZfz4HfbIJYOlBFvCg7skaMHWghruTCIMUR0XeNAeLgQIEbovmd/uxGhZg8q3AjRjyJ3M0GkTjQRlzIhkGaE6LnGkPE3oEid0TDkRli7kAd8aDkyA4xcqCLOJMJgywXRMc1EsTWgYgnoubIAjHlX/YGBhYxmAyJPT8AAAAASUVORK5CYII=" },
        ["]"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAN0lEQVR42mP8z4AfMEFpAYb/SHANpgKCJnxgYITChdgVEDRhVMGoAjopYIEn+/dkmsD4n+aOBAAxyAuDUSQsmAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAM0lEQVR42mNgIBIIMPxHgmsQEkyEdMIUfGBghMKF2BUQNGFUwagCOilggSf792SaQAcAAAuMCX1rj3zfAAAAAElFTkSuQmCC" },
        ["^"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAnUlEQVR42u3Rr2qCcRQG4PMpyILBZNBstnsJ3sKyfLcgq16BbTaD4A3YvANZtC3ZxOgYhqnPiuLPP5jGQPC85fDyhAMnE/enEH8LhiE+o3TWOaVpB7pJdwamyG19qd0CbUyEd4yuQdHcXlOoWqN1CXKMD/sbPhRSULb0o3EALxbopKCHQXLuK1YqR1D3baOegMwMfSGy//7FEzw2+AUpiaYRZHeC5QAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAiklEQVR42u3KrQ6BARxG8R82EwRJIMu6S3ALsr23YKor0GiCzQ1o7sBETdJMZCb4+Cts73wERXLS8+wcfsxIWMl/0nUXIXQ+BTMhcbZXeaebwhQDYfyqc5au6ijbCY3nIBEm990VFrJpXbRxUru/grXQTgc9YZj6LWGr9LhVB0fVVJAxF/r+/PmWG4u1JGvbg5pjAAAAAElFTkSuQmCC" },
        ["_"] = { 15.0, 17, 0, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAIklEQVR42mP8z0AIMDGMKhlVMqqEgJL/eGEKUaYw0is3AgBQiBGMiea3XAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABEAAAAdCAQAAADmpk8KAAAAGklEQVR42mNgGAWjYBRQDv7jhSkMDEyDyLEAhSEPWF6JimIAAAAASUVORK5CYII=" },
        ["`"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAARUlEQVR42mP8z4AfMDEQpUCJ4TDDf4Y/DClYVPyHQKb/pf9//P//v+Y/AypE5uj8P/f////J/5mQFTBSyZGjCkYVDCcFAOqxKs8j22uVAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAANElEQVR42mNgoA5QYjjM8J/hD0MKbiVMDKUMPxj+M9TgM0eH4RzDf4bJDEwMo2AUjAK8AADzFwi9y4bGJgAAAABJRU5ErkJggg==" },
        ["a"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA10lEQVR42uXSvUpCYQCH8cfjRyoIguDgEoIkNEmDU4N7d9AVtLSJBE1hU5NTs3fhFG3hHASNSiA462KIT0NxPOeYXUD+D7zTD87zwpuSvxfwn0CLO56Z8cmSVx6ohkLEvMnNPRHxBxz55r3nVsx67K1rdRQFyW+gri2KeyKfgPR3x+9gAUAmPIASV1xwSplsAovY9MPdNbaRY3Vlz7o5ETtxUFO1H7lFBARAAYBp+Ncy1/GGwKX6btu8dbvOdxtuYnEbH5MAL31x4cqJQ89Mb0HqsB7t3n0BHUrZuip8WcgAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAxklEQVR42uXPsUpCcRTH8Q/XtFsQCEFDiwhR4CQNTQ7tvYFP4OImETiJTk1Nzb1Fk7RJcxA0JkHgrIsi/R0Eu9d78QX8HTjL73vO+R32SnU9b34tzHx4dJa2Y2GrJi6TwKFPAw2niiq6loLXXQefBEvHEOUCQxTWOfKBKTjYNJxouVNTVsybuPKT+SO4+AfeBXP3qkrgNg2cC4J+YmMCiHAExhu7rJ1OEJkJvtyIVXVMshkeUuH+PG8DNI1MzX17ca2QBfZdK91+SC59T6hZAAAAAElFTkSuQmCC" },
        ["b"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA10lEQVR42s3SsUqCURyG8UdxKB0cGmoSBGmyW7CxJaSb6AYcnBsdGlylwc0LcJBwigiiJT63oCnITaFBK6J6HBI7X+BHEKTveM7vHP7n5aQkOWl+BSKk+acb/gm8AUf0GTPlmupiXcRIPfHMMMciBmCoDjwwa9lbdeJ2HOi5ua9TlnxXa3EQmZ1vI16pXTEY8oLnYPh7YDfpmSMgnwQywEsSKACPy8EG+8DlclBjiw/a8SZvPHTHTfc89VNt/GwynpaZEBSt2/POJ199sGPlu7KU6/SjVgdm57uzyGuuVhgAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAxklEQVR42u3QoU6CYRTG8Z+IG2IwGCCZnAmvwWhhjpuwmbgCI8FAITiD92BwaHLOzVkYZiqQpKFuDr/XIOF7UT6KI/GcdPb8z9l5Dv+jrqD5t5VbNLtU4BM1d0bePDn+neLMpZCqk1lgIHhxpKiiIxgrxUDQtjXt90wE9RjoKqZ2Pgqu4yPvvaeAHvazYr5iOwvI4yML2EV/PlBwiIf5QN2OL1dxzGdVZZsOnEsEjdlPxnUh/2Otg1tDE4kNa4ZunGpJrJTSN6LUQ5EQ6cEcAAAAAElFTkSuQmCC" },
        ["c"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAuUlEQVR42uWSsQ7BYBSFTw0GoWI01AsQTOIB7DaJXSy8idlql7STxOQdNGJAbGYknbrIZ2ibFPU/AOcONznnW87NtZBZOf0a4GimnQIF2muhduySzIiQtM6Rn8RDAI4MqFCkyRgvDdjcAJ8yep9oTQDofMYJ4AGnrJi4RU3SwVQzL+lhAq6SHBOwldRSNZNAiC4AS3LfWggXgA09bArUmbJ6BUqswXRqYdHH5ULIHZ85jci3/u9pM/UEo/7FoOGX/I4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAqklEQVR42u3Qr2pCARiG8d8WDOIfFg16A8pmEi9g3SbYx4reybLVPtA0MHkPihi2sWZ2gskyvhXDOc5zbsC9X3we+F5eri51L9YODjYm2uf4yVEk7iuNB0L40Hen5N6zWRJXfAsr1azvQyF0suvNhM/L6BY08J4nFPCTJ+xQzxOWeFDLLtkVwutJv5ipEBYeVRQ1jbylhbJ5aug/U3OjZ2rraG9lrOU/ifwCHfs0FGOIxlkAAAAASUVORK5CYII=" },
        ["d"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA2ElEQVR42s3SPWoCQRxA8edmCyPbaad2CxYByQUCFrGz8gL2Qq6QLhfIDbTJEaII6dMED2AbCBYhBLYQi2fhR3ZXtIgBM9MMzI8/zGMKcnwF/Aq0EIlPmPCnINydytzRIeaSOR8p4Xrf+ml+xeIGXJmor7aNjGz6mAcjdWrR7bxWFtRV7e6uMyAAbgB4OfzMGpDwdRiUgOWxUN9AlCqSyRcAMyCkkYp3nw1Vdqk+bF5w4WA/1JO6sGfJayfqcx5UfU8lHlvJA6w6dG7im30Dwx9Q8Pw/6j+AFfYPw6GklAUaAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAw0lEQVR42uXQMUoDARBG4Y91Cw3bxS7aLVgIwQsEUpjOygvYC17Bzgt4g6TJEYwI9mlCDpBWkBRBhC0kxdiIbnZdrWLjP80M8xiYx3bSF0IOyW/sHwDpZ9d25Uxuz9JzHTy1EpXKv9bHCmFqIJPpuq0CE2Fu9zsPcCiE82ZRPfDY/OYBCi/NQAvrn0S9IisZ2dCXYIHUUUne9eaVtrVw8zHtGNZFjYU3F1pOPAh3VaDjqaT43n4VoGNkqTBzKZHWgf+ed37qQg+YLqZ6AAAAAElFTkSuQmCC" },
        ["e"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA4ElEQVR42uWSsUpCcRTGf1cEAyUno8TJzdbI2qKtRwh6BwXxJZLWZl+lIYSoIQxtCRqCpgxqCIcLv4Y/9/anuD2Afmc4cL6Pj/MdTiL/o8RqCRqc88gXH9wwYCOfG+rQN2M8uBOYQDd9V+ceWXHLoUv1KhaM1VfrZn5nqh5ngqpLtZ/TmPiiXoiUgAMqwHW0ujwBuwBloAXA3Z+E9Sxm0S3SzGEBQJvnokPdA7Bf4CPirTq1FuXIK7QTVWeeum3ZTffsO7H6I8Ceqb9RiwXY8dKZn6YunDiyG+bJuj1tAb4BXPG9ziHosAQAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAx0lEQVR42u3QsUrCcRTF8Y9/BAMjp6LCqa1WqdyirUcIeocE8SWM1mZfxUGEqCEKdQkagqYMagiHP9ymf/yy7AXq3Olwv/fAufwxreqaePfqUtvS/LrpWSRzZyNdb3oRxg5UrOmYCf0U6AlPap/+RAiHha2aCa3koORROIcM+yoYJEC4xw6UUQfX33rVioRsQfG8SJiCLQ8/URluwO5vX7wSbi0vBo6EMHJsXdmKhpahaoqcyr+8OsR84rYLI29yU0Nn9vwr0QfGzTwykBYE1gAAAABJRU5ErkJggg==" },
        ["f"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAhUlEQVR42u2QsQnCYBhE328RyAJiLcQxbFLYWDpABnENF7K3dQGbNIJFtInwrIR8kl9IrXft47i7JN81YyJQceBMR8+VEzXg0BsfDtUYgNJWvbhzbuHCtcsIbFWtQ2bosAKeHPMlS+BOnwfS6E6xdVzdZwdyCW/v1Vvc4PSrfxVI/n8AeAHbCHhSR9uVBQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAd0lEQVR42mNgoDZQZZjKcI3hC8NvhrcMZxmc0aXdGb4x/EeCCajSnAwvGP4zPGYIYRBjYGOQYLBjUEJV4MPwn+E/urFMSGw1BgaGPwyHcCvgZGBg+MrwG7cCRlxee4HicgT8gm4CQVDD8J/hA7ogQRNGFYwCZAAAyRgmkPqOzEYAAAAASUVORK5CYII=" },
        ["g"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABPElEQVR42t2TPUsDQRCG37sEySlckSaNGLUIHApiE7BSuxTa2ChJYWUdEH+AlX9B8Q8YFCsVDisrIYggNhbp/AAxFhZBUbx7LPYuOcNpZ+NOMTvw7swzs7sW+n3Z+l+CBR3rSYFIWEWK99ukrQqRoArAIVMMMskeAMvmqBH4wBWZKJvNJeCbyDCMSGoqiGhCNSUVk5BtSeUusK0ZSfdRhBCrADTwcJigAUA1yZDjuY9/J+7UuC3A54gHPmhzwmJvFEI4dIAySjNbUlFDkl5/mDXC5R04Z54Sw+QZSGYwboPwG+IjZ6xhI5SVJH0qUFY3suQop7wKKmhWc6qZEksA1LppbTxOARgzJfaBVh99HYCSEewCIZtM45LBwWOdF+AihhznLuUtXDPa68Kljs8tbwR0aHHASnz51t//rC+tVFPuXIh1SwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABJklEQVR42uXSPUscURgF4CczizgRLGy202ghLArBRrAyZQrTpDGsRSprIfEHWPkXlPyBiGJlAkuqtEsISBoLIYVJILgWKSSCOPum2K+ZdVurnNvcc8+579e9/GdY88GlXBTW84G8VxLuGepCOPbUY4veC2G9GL4hnEq7LPFVaPQITKMp7xrampgpGlpY7u5JrOBnMcVrIRyoySw4EEK9aBh3NVT/fnkGu0LDiV9utXz0oixnroXl0fNLMGMCf0cbUtx6K7XkuzGZirzfcB/b2qUSf/tss9N2BdzJVZx5JDNuSlXVqmc2OvdfCtEjSNR8EsJs5+BQOB9KuiWE+Q55J7TtWDIplal544/wpeee82PEX/jmySDgpC0NF27krp078qr/+A+Pf5Cyc9VWMcx6AAAAAElFTkSuQmCC" },
        ["h"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAjElEQVR42uWQMQrCUBQE51sJKW29SkAQa0vP4SHs7XMWTZVGUILHEK2ilcikiMRoYQRRBLdaluGx+4I8V4eXgByZv3XhS8AFmJBRULBkUOci5urMxJvOjkRsAHt1Y2zk0J26fgR0YVSFTlXtiY0OW8acrn4FQP++ZMqx9gcAum0zw++9+mNA8C9mtgIlQZRWDb0MEaUAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAgUlEQVR42u3QMQ4BcRDF4Y9KsjoHcYCNRCLO4BwOodc7y1IpCdcQqtWJjIL8k12SbRCFN828zG+SecN7tBPmr0ftpt2vAldMrJVKS8PnFDMLkepiXAeOwtZAZuQgbOpAKGQPPxVCrwrsdZPPhdCvHrlyTv0JdJpitn7v1R8D/rrrBs4FJkHtZx/XAAAAAElFTkSuQmCC" },
        ["i"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAaklEQVR42mP8z4AfMKHw5BgKGdzRVPxHQI7/z///////fwiSGIoJwgwSDAwMDAy6uExg+N/5/8v/0/+lkMUYSXMkTgUmKDa5kGHCGQZGBkYGRgZVst0wqgAS/Ev+YwMx6AkGK6BWehjqCgAj9kwshohKqwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAY0lEQVR42mNgIACYUXhyDEkM/Ax3cSnmYHjO8J/hP0MIsiATEluYQYKBgYGBQRe3hZ0MXxhOM0gx0ACYMPxHgi64HIkVQBScYWBkYGRgZFDFpYCgCaMKIGAJSlzAYAwJJowCAOD0GeG8teMnAAAAAElFTkSuQmCC" },
        ["j"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAqElEQVR42u2SMQrCQBBF/y4b7NKLnkEQvICdjU1KsRDP4TU8QWzT2Ft6ERujaK0g8mwMJq6JGiz9Awt/ePtnijGoWs7rBBqpoVinu+e55gAkmbdeQif3vkzos2FHlHnzbkmrj4CFN2n2ZcJYJlfHGjv8gVqAkXQuB5xCSdvyixoAV9qZF6JLQkSLgCYTUiB+fBCiR1FrwiJgGbJkz4UDK6a4/MhfHW2FbvbpisZFPO7cAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAm0lEQVR42mNgIACYMURYGWIZzBmuMfzBpWUqw3+G/wxrYVwmDAV6SCRW4MjwiOElQxADlcEShv9osAa3I9EAREEMAyMSfIupgKAJowrIUsDIwMDwA7cCFgY+BgaG57jN9GD4z/CXQQZZyJBhLUMQgzQDK4MkQwLDC4b/DItR9ZigJZajDHzoDvVl2MTwiuE3wxuGvQxJDCwM9AUAFD8oiJSdyKcAAAAASUVORK5CYII=" },
        ["k"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA3UlEQVR42s2SPWvCYBRGTxJryWRxchdc7Q9wLWqNi0MpFNxc/RX5ES6CQzfJYkupXbp1KHRztJC9H+DQYAV9XMSS8KYUBOt718O9z7n3tcTvz+ZPgI8Id+rwD0AXIQIcQAj5kkKxqSutJN0pK2To0GCAxSMtFqYRFYZkeKLJ3JShzA0uL5zzZQpZ5J4TJlSZmSyOeaDAJ2d8mDW/6QN52olUMc2eJKmzFUYJwNFI0lIXP0DcYsklz9hcU09bdYTHK0cEVNJu8UaNd1xuOU071hSPiBxjSmDpUH/UfoE1u0NkzOfL6c8AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAvElEQVR42u3Rr04CYBSG8d/Ef1h0JrubVS6AylDAanGzWbkKL8LiFTgKOgcGo5vBZoTNrrIRYCDTYyF+nxY2i28977fvPOdhMTkXXtKjpd/e/lmhKYSWQprixJdwazWNWTcT7q2nvyi7suzBkUmqsO9a0ZOaUWrJXR1bnlUNUxRr7uwYqHhPY05dYtvpT7IuhHCWLxS0hU/Hed0bHoUPh7lTjzX0rWgp51y8OvCm6EYpJ6unYWxT157/zPMNIh03xyhJlU0AAAAASUVORK5CYII=" },
        ["l"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAQElEQVR42mP8z4AfMDEQpcCE4T8SdCHDhDMMjAyMDIwMqmS7YVTBkFAASSNL/mMDMf8Z/hM2gfH/aEgyMDAwAABKqiSBs6U/TAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAN0lEQVR42mNgoA4wYfiPBF2QpZgI6YUoOMPAyMDIwMigiksBQRNGFQwJBRCwBCXBwGAMCSaMAgDkaxJ/HnTKeQAAAABJRU5ErkJggg==" },
        ["m"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAk0lEQVR42uWSMQ4BURRFz6gUInqFWYsoFBIbsANrsAh7EKWWQqH45cQKJmxBFJJJyFGQ/xv5CxinesUp7s19heTp0BYhIAPm1NxYA0MO3AmUAIhBndn4YWz1vfZiFC7Wjtyqlbpwqr7sJkEn4lLVjdhXtTSGPHEEGuDJCngA0EstdjH2meuvmmkz2zpWluJ/njbLGxOmXyyblRo5AAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAjElEQVR42u3QMQ4BARCF4S9bKUT0CnsWUSgkLuAGzuAQ7iBKLYVCsaU4gXAFUUg2IaOwdlelx19NJn8m8x4/Qya0jRyczdCxdpFJ68JQLoTQsyumVV04OuhaCDthbCDcNSoh9DERwhwtIaQkxZWtDXLcTHEFzUpYli/vneoJXkKUm3iPmHzq4DuEP08ezawtQJhU//cAAAAASUVORK5CYII=" },
        ["n"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAgklEQVR42uWSIQ7CUBAF51c1weJ6EU5QgYYjYOo4XJPaipqqfw4SHDQYMhWQUhC/vjz1shmxk90g6WSsB4jIgcCJnjs3WsqJEDGqlY2fPN2LOAMGtXPnxtKLGn8Brc1fQ8+qbsXZkpEjj3fvASi+LVqGqV8ByJc0w9qOlXL9p6dNZATBz1T/Qg4YoQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAd0lEQVR42u3PoQrCYBSG4WdLotX7sAr2BbO3YFnbxQnWhZUVdx2CTdfkGCY/OEG78z3lfIeXAx8TohN2Mnutm6ta8S6UjiLN3XYs9EJjbaFwFrqxEA5mz1wJYfkqnMxT3ghhBXk61vq0X2D4l3/oln0T/I7wZ+ABGJklH76MgtkAAAAASUVORK5CYII=" },
        ["o"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA9ElEQVR42uWSPyuFcRiGr/cQJzYUkVjP8JbJIIvJJ7BRMtms5vMdTDKZDMogC5NBJikZzyKD/1FKh3O6DE/nPe/7Fh+A+9l+z/XU776fJ5HfVeFvASnbNPjgjQvqDGfvRm3aNq8HZ6MT7TVV95yx31HXfVXvHOkAg76o+5LVvG213gFWVE1zAB6q1yIVYA5ocFX4/AlQYyBcjAM3JXe3QMJQAL1AswRUAfgK4AmYLAFTQJPnAC6BGhMFYAE4pxVBTdtSd3IeFlVd7ga1pequqX2OueG7empPF6h6YFFnkaPZLhKXPPLeTx89djWmRZL/drQ/6BvE+Ma2ChAFBgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA3ElEQVR42u3QvyvFcRTG8ddFiA1FJNY73DIZZDH5C2yUTDar+f4PJplMBmWQhckgk5SMd5HB7yily70dw6fb/Xy//wLPmc553qfzdPhjqtnV8OXDlbrRsr2tLbJ6Mp/bG0I4MGfAuE3vwoOxjj3sTTjMFha1hXqnXRNCrXDyWLiFHiyg4aYAnKFqKAGTuCuFvkfFSAL60CwBg+AnAS+YLgEzaHpNwDWqpgrAEi61UjOrJexl9rIQVruDHSHsq+k3YcuncK43j3RUeHS46P4xqWLFiUffnp1az7f/Bb8u40UaOWz6DgAAAABJRU5ErkJggg==" },
        ["p"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA1UlEQVR42t3TMUtCURiH8cc0Bw1chJyc5E59B8fAwbWltc1J6Fs4uIaLH0Gc2rpQFC5xndujIUIwaymfBkPOTbybIL1nPL9zOO//nJOT7Drg/4AEOQPOueGNBQ+010LERO04MqwLEQMwU6eeWvLER/Xd4zTQa8urVTb8UrtpkFj6nUa8U8di0EXMR3D4JyDKavMVqGSBPPCZBerA83ZQpAncbgeXVFkyTCc5sWXNQyP7qvb+JpmugfkVKKy3nbPkiG9euOeKePOy+kGOwdiHJ5fb/c/6ATDitUYacvXIAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAwUlEQVR42uXSMUuCURQG4AelBhtcgpqaxKn/kJvQ4Ori2tYk9C8a3FvaWsWpTcEgWkTnJpemCAkrAvG0RHz3S21z6T3TPTxcOPce/lHGQhMtfS/e3Gv8Bue6IlNneTATJupKjo2EuYMUhFt73+eKhdBOwVgpc+ed0IPCT2vgPQMeUU1BmmeUN4EiPjaBIzytB7tOMFwPLuxbuk7HfHDq0I6qjhAu8y+Z1pViHryaWfg0daO26jc7q8cp/LUJWwBbyBekX0UNJR9JxgAAAABJRU5ErkJggg==" },
        ["q"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA30lEQVR42t2TsUpCYRiGn3MS4YhN4nioIZemaEloMMJw8hq6ArfmlhbvoDlo6RbSKygQojWXlojAINDAhqchy+M5HTcber/lGx4+eB/+P5DlCfkPQOFnq9KhzSYRz9wwZY8WQ8CvafpqOlviDNj2Xb31yLLr7nqeBq7Ve0t+3zuYAyEQ0wTOmOS12CcA+vk1N4Axo3wgAlwm6g0oE/2uLwQeAKgl5J0mYLHih9qdVVzzIivqSp16bMkde+pjGoh9SigeeJgGMPbSFyfeeWLRehZYnMai6myCP31ywep/1idzOcO5IdZk+gAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA10lEQVR42uXSsUoDQRSF4S+rCBtiJZaLKUxjJTYKFhFJsLJN6xPYWaf2DawFG19BfQIFQWxjYyMiRAioEMGxkc3uxLUSG88099z5udw5DP9CtbxatG9XU+rRpbF1O+4mYMezEJ3lyfWKN8GVroZ5a45i4Exwq577rTKQ+RD0CpsVgASbarj4/hUJlvBiWA2kCFU5JBihIY26hXIAWnlvVr88ZcG74PDLzTieDupUMLanbtW54D4GMg+FiK9txwCZE09e3TgwZ2MaKKtdTvKnT1AB+E3gD/QJtzlFHBp/FmYAAAAASUVORK5CYII=" },
        ["r"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAgklEQVR42u2RIQ7CUBBEX5sGU9UzYOqacIKegEvUIDkMFllbxTWwcAVUEc13kIdpSr+pwTXMmBVvJ5vZRJaVsh6gRnpgw5ErgScXdiMhYq0Gt978KliJM+DtQ22tzN07qF0M6MtGRp/UXoyOPHCe5jtQkBEllNP+zGv6xS9A4r8HgA84SGPaMU+npwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAcklEQVR42mNgGEHAgeE/wzsGBgY2hgKGswxfGd4zbGEwQlfwlUGZ4RrDfzj8yqCPquAvwwuG/wxLGfQZuBn8GD4z/GdYh6rgP8MfhmS4yBSopQxMSBZlMMyFs68zMDAIMrCgmqCBzf1MhDw4QhSMAggAAAJvIf6zDjckAAAAAElFTkSuQmCC" },
        ["s"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA4klEQVR42uWSPUoDYRRFzwwJNomVkdiJpFCyAysLUUGwC7gFW9dg7TIC0UKmsgySRhAFtbFzBSHgH0GRY/FGkkyiC9B7m493D+8HvkR+V8rfAlY45p4nPhjwQEY9rxve89VJrUYS8bwDteeGFcsuue6BC+PAjqprMu3Y4Q2AzZlbiljyVtUzd52b7PD9WPYqX+7ZjlvTAKa2zBzmWNdaEQhX3LenajYbCJ+qLyajK4q6A9LISgC0aHDJI32G1NjmEDjnc3TmkUVdW49x0eGCBk0WqVKmzw0ntHmPacl/+7Q/6AvwUdNlr2NwJQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAy0lEQVR42u3RPUoDARAF4C8xahOsDJhOxEKvYGUhKgh2Aa+QLngGsfQeYhG2SpliGyGkUBs7DyAS/CUQZCxcySZsvEDyBqZ5b+bND3OGLVcevBkZeJTYmKRPfYqJ2MnTawZCal/Vsro9Tet5wbEQdoucy+ALHMwesOJOCG0nVoslm3rZcO+uHRabNSSGmayrVtyp6kwqhOS/o90IH0rjLaZxj/IvVwEN2249eTFUc+QcHd/jioupM4f+3y+WsrySbVLyLHWp5dUCOfwALaFAPMv5fAsAAAAASUVORK5CYII=" },
        ["t"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAdklEQVR42t2RMQqDUBQER28gBjyAuUQ67UPOkJulTut50ljE1l6ESRX4Il9CIhJ82w7sMi+R5UtZDyi58SCfEb5zVvUg0/y+AY/GrvqoYoOR/wUMAGRxoAOgjotKbdXeq0UoKrR2cVz+RcOJO0/GsCFxX6q/BV4aYnUVM8GLYgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAZUlEQVR42mNgoCNQZpjPcIdBGLcCH4b/DP8ZRNCFmQgZzETYbhWG/zigA5Em0NyRg0vBLwYGBgYGQdwKnjEwMDAwOOIz6yHDf4b3DAkM4riU+DH8wYwLVGDKsILhCcNv3ApGLgAABDgl00TKCukAAAAASUVORK5CYII=" },
        ["u"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAf0lEQVR42u3RoQ3CUBRG4fOQlSTQjsACTWpYgAEYoltUtgqDY6hKPCQokA2QkIMp4YHA1DX88uQzNzfI700YD2iRTVQXiBRjO3M4uAHTqK6+wRHICX1b00RYxFLV2plzKx92qhZiDxL3vndx6fUTYOrOk3cPbs3E8wsE/88CeAKzlFFSwWiz4AAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAdUlEQVR42uXQsREBURSF4Y9QaAZbghIkGlCAInQhlEk204JeNtvNNxARGgxzBQzrJQp4/43Onf8kh4yohG0nT4Uwg/6/blbCFcPOd5Fqe6HWe6el+3fJFyshbIyMrT2cU2GgEZ87mbv8CkzsHNy0SgWOqZA7Tw3JI3aB6frNAAAAAElFTkSuQmCC" },
        ["v"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA00lEQVR42uXSIUtDURgG4PdugmgTsSsGuzBMZoNGm2DUZrGaHP4Bi7BssQj+ARFMNoPBJoiWFV2ThfsY5navOrTre8rh+x443zmcQn5OI38DNPMUuflS343IchJxBJaktq5xKxKxqES71p5XYm8I4goPihE4wJvZCmyD1RG4x9lgPyhM66Hz0W6BtTqIDl5MijjGo8ZnsAI2xYQuDofHVZPf4UKso7TwHeyjb8YpLqsrV2BOHzt62BoH4hxdvJoaDzYMclJ/9DpoegatOij+y6f9Je/nSRRoSzwbhgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAyElEQVR42u3RL0tDYRiG8Z9/QLSJ2BWDXRimZYNGm2DUZrGaHH6BFWHZYhn4BUQw2QwGmyBaVnRNFs5tULcdz9kn0Ltdz3vB83C//JHMeBF3v6aHIja+4EzEekm4Ffc/sKYQrbHnFYU4Gg1uxJOpIZ+ID0sjYV9Ec8iP4nJ844K+6HxTQ8RW+eqOeDMH2uLZdFnYFLGLWT1xWu3jQVxhWxRWq8KxGFh0Ia7rGl02EAf6Yq++9K7oiXfz9cKOiDif/G2vIhr+U8knLilDDTkbw7YAAAAASUVORK5CYII=" },
        ["w"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA50lEQVR42uXSvy4EARDH8c9tSJycQiIKHELvDVQaF1x38Qg6r6DwMhqbewCtSPSq29xFXBRKIXGRNYrd9fdCz7TzzXd+mZla+LkSfwM4FG7GdI6FKxIZFkx+A5roVUBieSyQkRjIsQr2hfSr4dn1G9BGSwMsVQayEpjQwpRdzKlXhgJYwaZZt+iUA54MC6BXGto4kmtpaKLv5fOIPSMnztXtVBHfgUUb1p15kKJTRSyAvlziAF2kwra1yiCEGETEfeQxH0JcRsRjRGyFKI+VYcaFO5Bi+mOGStYtd3gKRoZQ+y9P+0u9AlgGT2F0rZeLAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA1klEQVR42u3OPUoDURhG4YdBwUgsBLFQo6K9O7CycVDThSzBzi1YuBkbhyzAVgR7qwwJYrCwFAWDjNfizo1/2YGe8uNwvpc/wongfsr9THBLpsSK2V9CC/0kZNanCiWZoQqboCsofhbe3E2ENnJNsJYKlLUwI8ecQyxppEIUNrBr0QM69YNXoyj060Ibpyq5phYG3r+/ODJ27krDQZr4Kazase3SswKdNDEKA5XMMXooBPu2UiEyFDypLIMbwYtgLxVibMG1R1Bg/uuGFOvVvQswNvLPhA/EyT1V1pgvNAAAAABJRU5ErkJggg==" },
        ["x"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA30lEQVR42uXSrUrDYRQH4N90yeFYWBVFMFsE88qy2A0Wjd6ASfAKBINBkBWxegl+XIDBYpHhouAW/EDGY3Af/4nsAvS87cfzct5zeEsyvWbyV8BeRI4L6XweI53Uk4i4BE0ZnBP0NcQA1HXwpCaiCQ6+8fBOQx8tUdXGldlJEIdg0ymeLQzzMSi7RQ9sjNICiEUv4KiQTeyhknKS5GNiESNbcY/XwUt+adHCp3XX6Fr5CXbAvljSxZ25Ilj1hpvB7FvgbAyqHtCzPGp3DnaH4AJsF4araePdmpT+z6edWl9c5gpPAL6CZwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA0UlEQVR42u3Pq0rDARgF8B+65HAsrIoimC2CeWVZ7AaLRl/AJPgEwoJBkBWx+gheHsBgschwUXALXpBxLLv8nf830JO+75zvcg5/Bgci2gVm0ZPoaYyJKxGtycCpGGpONxp64lkdtEQc/XzTNBQd1HTFtflZJ8citp2JF0u/rVbciYGIrfI0y15FnBTJuUJdVQGf5ftVD+Jt5KQEHfFl043oW5uV90QcYkVf3Fsoyuvexe0o+46I86lc8ygGVifMhYj9cXspYrdwsa4rPmz4xwjfd4lI5Ey5engAAAAASUVORK5CYII=" },
        ["y"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABCklEQVR42t3TIUhdYRgG4PfuirDBQOGWmwZDhjCEicVoF21LKxaLaXXabjGMZTELFptNg8migsl2kwx24ZaZpoKXx3A995yjYlvxO+Xwvw/n//7/4zTk5XqT1wGa+R05e7S+GpHZJKIDPkvlOcK5SMQHA/ysxG0DrBUgDtDTHIHv+GeiBF/B4gicYGf4PlwY18feQ/wRLFRB/MKNSREb6GrUwTRFWy7wo9iu7PwYp2IGd9pPwQr4ZBP75ZFL8M4V1l1i+TkQW/iLP8aeB3OG1aleemoTOMdt2aCojft9Wkm206vNdWSbdtHXqn3zAbw17xADS/VY4ouirn17HBfgRteWqaexNP7/n3UPllhjhMvuO7YAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA7klEQVR42uXSsSvEARQH8I9OilKUxaQkKamTxWgXm8lisZis2CwGWSz+AGWx2RhMFtRNNhOKsjBxyvU14Ny5380Gb/u+7/f1vn3f459UyZ24/NVdFjH5CTZFjDcJTkXlGwypie0GelBNrPw0jsWDUh2vihd9P4IFEbN1fC72Gzd2eRSHX2hYxEyz6x1R1Q82xLWOZsGY1G1dibXWPM7EBSbEu8FWwZKIUVviqCjRHs9i3Y2YLw59TzyJe53FgikRsdn+cBXxVmTws3rdit32Zz8QjwaKyG7TTkTNXCtZ/rIWrxaLpsui6tqekT/66Q8q8FNQhMgz4gAAAABJRU5ErkJggg==" },
        ["z"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAlElEQVR42uXSyw3CQAwE0IQboRHEpxNKQChCFEQBIARF0AgKJ8pIOPI4JBH5c4fxwWvPrK21NxQMYxT8jmAfaNnjW4VX4dtXxSDOozY9l+FUxk16IkEi6hOckZp9MnV6CzbVXJVeyHCs16x2v+Nm3Ce4IDVtvqo87MC6PZXcLT1x6BhaIbjqwkqg2EXUv83wnz7tAN4DXuM8gpG/BAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAfUlEQVR42u2RwQ2CUBBEX7gBjRjBTiyBmB9CQRQAIViEjRg8WQbfI+OBgwedUIDMHt/sbjIDf6QWfc1zRYldWvy9gBDB4YKIGBzOmRATmTOMiJmjwzVCXBwuiYjef38g7qTOcEXMHBxuEKJy+MQL0fnsbj+6EOdPFxm7NvQG8cQx0GlOsIcAAAAASUVORK5CYII=" },
        ["{"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA3UlEQVR42rWSMWpCQRRFzzdGLAwGFyCmsgkpJGQBYpFFpQkoZBu6C1MbSCVCCkmTLl1IIYig4EmhH/zj/2Ma51Xz5gzv3ctNJH5Kwb3GE1MWSG/XKAfPb9wFXzysZ3XrwBsv0l4WmKqjTCfYoQm8xpasAj9xFSdlRoGECrAqBtpcAl/5PlS9d6KOsyJTH95VXTj0OgRKmXF1ro623JM1H52rM5O8EbvqqHpbPGLGZm93gcwta6ByTqv/AayBRgz4BrqxTL6o2rdVlMmGn6anl5fJXx4Y8MHyICSe3Yc/AHiuFuMaqF4AAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAyUlEQVR42r3SsUpDQRCF4S/RhFsoSnoVO4uQQsTKSlKIz2RjkQeJb6G1QqoQSCE26dKJRSQEbpGxiM2VvYsp9Gy1c/5lzuwuW2rPnbGF0N8Udn/YL3q58/fC2sCpnTQwFh6qpWZld4ynHFDgPQcktBXQ0MaqHj4TwlHaLFx4Fh7T9kgIC0OHuQxNB/brH+nGqzDRqA95LoRubuRSuK3PsFai/ZdX/QugRCcHzHFdBap/78SVnpaZT5Fq2PEmvlc/1eLDpYGppf/UF3C9LlVP+FQLAAAAAElFTkSuQmCC" },
        ["|"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAJUlEQVR42mP4z4AEc/7//38BRYSBiYEAGFUwqmBUASZg/E9zKwCY2BNi+rGbDgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAIElEQVR42mNgQAY5DP8ZLqCIMDAxEACjCkYVjCoYEAAAnWwCbjnSZ/MAAAAASUVORK5CYII=" },
        ["}"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA3UlEQVR42rWSwUpCQRRAjy9IlEAiN22EfkDChdIPBNHSlbvoE1q390Na9g1B3xGJT7BVmxaB9nxyXDwly3lTG+9dzDAcuPeeuRWJR7I+U76Y8EB7h7DI1CLmXsp2fl+b9n1Txx6EAcQrVTvbb8mPek8sgbNQk0VkfAC1ciAy5r+BGVCPAROgFxK1yVs1995Tk5AHxDtHa6vnux6KUfNYiRv104EnZSWe1WG5amgBL7ExD4HFflX/CTSArBzocgRMw6KOvfZVfbca2snNVucOwludmjn10Yvfn1dx7x5W8xnUSG4tN9IAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAv0lEQVR42r3SQUpCYRTF8R8FhiFE1NgliDQw2kAQDho4ctYa2oQLcdgmXIcVJdioiQNRez26TRoovu9LB3WGlz/3nnO47KhXHyaGWmkghLBynULO9bwJLw7Th26EcJEGakqhtz462AAKM9TTQIX2BpY4zgETXK4PtjPfavnyaCGqj957/mm1XW2yUOZM3wlzfWepfCNhkEvRxDgH1PD5t1X/CpygSAMdDUyrd53qehLeHeW+utRPvX1h6sGV/9c3fGk0s39a2bQAAAAASUVORK5CYII=" },
        ["~"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAhklEQVR42u3Suw0BAACE4fMYgESrsIBGT0yAwiA2MIRCTGAAjV5hAgsYQeKVyKfwSCSiUijctf+fa64gn1PMH/gm0Mk6h2wzeiOIpqNH5koiYomRRMyxUNWzw/QObDCUKNmjK6LthJmKAS7qEjXQuHt95+fcRG4Tr21ZOdoaK4sU/of5GeAKgMt3fFDgjGgAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAgklEQVR42u3RsQnCcBDF4Q/jAAq2FlnAxl5xArVwkGzgEBbiBBnAxt7CCVwgIwgaBbkU/rFKLRb5veZ47447ODp+ytzFQ6XQa4snapFUypJ7EopPWQpHQ0s3YZ8arsIGMndhAWaewsHAWngbw0gIeZpbeX3X7doPnjqrVbb63ff+iwbEJiWgvMjBxAAAAABJRU5ErkJggg==" },
        ["ç"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA1klEQVR42t2TMUtCYRiFn+uolTgKN5zFsCbh7g7tQmOjU/+hvd3VXaGpyXBvFTPQqM2tJYRoisdBL+hVv1k67/DBe57lHN4vkrBy/Dcg5oExCxZM6HK13prOrb9u6mO1T+2WqjNvLHli3baPm0DBL3VkUbKzetqqNnbtFOir7/ts1ykqwDQUMw/8hYBv4DwETIBLynsJEa9V7Zk7lCLyRdWhTc/MW/POp+0mY2caqhpPvfdT1R9f7XiRBRCrqsa7RaVKgDfmhw8mAQahi0qA520gOoKPswSKotyPfRjjRwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAwklEQVR42uXSv0vCcRDG8ZeNVoZjoDRHUk5Be6C74Njo1P/Q3t7artDUFLS3Sn6DFN3aWkSIpriWAn98v5856LnxecPdPXf8O9Vce7awkLnVXLcvfIqlmq7aHSGMdVXtONZzt2xvexeG9oq694RwWjzeQJjkW1vgAK8poIyvFDBHPQVkOLFfPGRbCP0fPEclT0J4dK6i7Mil+/U7jFeC3oiaXVdmQvgwcqOR1+pQCLXNLX51hhdvaeAh9TKZ0Pp7n/wNyW88QCU8fcEAAAAASUVORK5CYII=" },
        ["ğ"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABbklEQVR42q2SP0tcURBHzz5FXMUVbbYJMVoIGwWxEYJFks4iErCJaBEsLNIohHwAK79CxC+gKFZRWAKBVAERIUREgo2YCCFaSBTF4O5J8XzPu2b9U/ib4t47DDNnZm5GblaU3uaQfgA2kab/AzaACZp5yWN2OEr9JtbigYnGUm8QgN1+8o/ffRP4yNwd8taAFyzzm1JYk4FLyPdW00ACOaLqkj022O2cqq/CLorqV2suskWuq8X4FTM8BFYpXdCUWQXaQsh9oC8FjngC/Awn+VrVeQtm7XJe1ZGQoT4Yc6yZylFPq0U/uOdf911xsHIXWY/VPqlmEdBGI3ByzazFnGfqF5/b6QNbrQszxMc7yxWIv/zsuJFILQDnlKhliwxZ6mklT56nPGM0LjGk6miaNrLgR1Xb4xIL6vYV+klVO+OAWbXslL3mrDFrwbceqmsJZIc/qvyFbz667CLnpEV3PbXksdsuOpws/z4/7TX6B5EThJ0aOMWVAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABUUlEQVR42rXSP0uVcRQH8E/3XsLHyLDFzX+DcFMIFyEacmwogpbCBnFwcFGwXoCTb8HoDShFUwaXIHCVCCSRCCGiFCQbpERBfO5peLyPz9U7uPg90znn+zt/vufHhbEo3AUbwvVGuJQT1jHthkdu+eHf+Qqd/ogTm2jdZMhHf30z5ZLwwLLf0nyOEO6fpheaEucIY0J467Z2QxaF8KRYviasKefafBZqRaG6sSo9IdStoqdI2MVIrmrJHWwVW4wLYUlVYtCSEMaKhLaCzJm9bNZgXqh5Z9uRXe89bE4n9oWR1vqV0OMaDloTyjjyXNmw765KVKT5wjleqDeNuGPFZLZ2BRxLVXx1RaLNTV263DPqWfb+sRANByVVH4TQlwVeC5tnms4IYSBzXgl1c4Z1KEtUzdoTPjXY/X61+Atf9J4W7DCj5qdDqX2b3niaH//y8R+otoOshNGoAwAAAABJRU5ErkJggg==" },
        ["ı"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAPklEQVR42mP8z4AfMDEMHwUmDP+RoAsZJpxhYGRgZGBkUB3eAUVTBZDgX/IfG4j5z/CfsAmM/0dDkoGBgQEAhaEkgRRzw8EAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAANUlEQVR42mNgGEHAhOE/EnRBlmIipBei4AwDIwMjAyODKi4FBE0YVQABS1DiAgZjSDBhFAAAAIESdZuaeQ0AAAAASUVORK5CYII=" },
        ["ö"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABHklEQVR42tWSvSvFYRiGr98hnxuKSGQ7wymTQVImq4GNkoUyWM3nfzDJZJCkDJLCwCCTlNgsMvg6OFE6nNNleM/3IMNZ3M/2Ptdb9/08TyS/K8YfgQlSHNEEwDxpNojyHUPtqzoq4rWqA6FTACZ99dhmERd9d8tY6EQ1MwkJVrnhkzTnJGkvvuc9LJuzXI8OlZucU3XTQRvtdME39d6OAtDqi7otxRoxpyYLwIyqiTIAd9UrkRgwDNxwWWH+EIjTElJ0A7dV6e6AiLYA1AOZKiBs5TsAz0BvFdAHZEgF4AKI01MBjAFnZMOg+s2qa2UZxlWdLg1qRdV1EzbY5ZIf6ol1JaDJHSt1GuZYuofIKfd88MsnD5wNv2t9D/8Z+AGrVfWUthoBBgAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA/0lEQVR42u3RvSuFARTH8c9FXjcUkchmuGUySMpkNbBRslAGq9n/YJLJIEkZJIWBQSYpsd1FBu/cKHnrGJ5unufORr8znfP7ns7pHP5KIx7sqwXTilblssCOEAbBhRC6s8CoJwfqwKwX6yr8ufKWFLwpOrGgqdye9y1ScasvbU8JYU2vGi1mPAvXmkt2g0dhI9Uw4FtYKKUTQshnRm4J51CBfhScZYA99KhPgDZcli19hZzGBKjCexmQfOUzAe7RUQZ04t1DApyiR3sGGMKxryTp8iUsp+xhIYz/FhaFsCKvWqs5r8KhyvRKm5lDh6PfOybKGbPtxoc7uybT3f+CH0KPUx4h6JzQAAAAAElFTkSuQmCC" },
        ["ş"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA/UlEQVR42t2TMUtCURiG3yvlEIpCm4OQg9SQm5tIgiA4tLWFIP4K90Cn/kNDIEQiJDgILQ4Ogggu4g9w7JYQSkNPw7ni9d5Dc/S+y+F8D+d873c4DvpdEf0vIKN7zbXWRgs9qirH28f4mk8OdW4qphzHBUZcEeOESxoMyfqBCgAXKGzTw1aSVLJ2iRDHzIFvnihzdHjCbnHGxGvujQeKYUBEuKHPl4e9kAgCxgluGQPQsQPGz8CHP0VQM0lxRfcpmnSpkeOUKCnquMCr/4o7glqR9gMxavRYehmWtEmGYwrRAqa2Ue+UlzSwjdrYwQUK9lELkQXeg2/h/IGP8wPEECn9Ky2ltQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA50lEQVR42uXRMSuFcRQG8N+9L3eQ6w42g2K4MbDZJEopg82gpORT2JXNJ7AYlBILZVAWg6Kk7kJ2ZfGiRAbH4Mp7b+9rNXjO9n+ec55znj//DIM2NDx7dW3brFIrPedFtNRQlq5KhVOTunUZseJYPSuYEcJwnnMZvIGp4gU7NYQPu6Z15EsGXDSXe7BlIt9s3qH3puxALX9SzaIzIez8Ftqe8JS9oh1XqKr8PKzat2RUr4o+y1LhJNux1hZzuNP/RSXg3I2yRI8EtzYtuM/zXhcu86L+xhiOio8rSYXxYkFdeCz6i7/EJw3BRtFyXYJ2AAAAAElFTkSuQmCC" },
        ["ü"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAsklEQVR42u2RPY5BARhFz1MZ5SSYWmUDEg0LUE0htiBhFUoqjU6vsAHNFLMDlehHokJEIkjkKJ6fRyEkOnNvd+8pvi83kPuK8SDwzYwf4gBUWdIjODaGHqhaFHGkaiZsTkDZhb9+iFh3Zd9Y2AQvOnKItCNpFpH8U2++BbAFPiNp6RaYALnzwBVaEVjEmqpNk6ZsuHetav4yd8KxF80tuLkGMG3XqTv/7Pglzk5A4P9YAAeZ8YAwWYWz9AAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAoElEQVR42uXRLW4CARAG0FcUVJLwo1E9AqYcAIVouAIJPQUSh8HhEU09BtEbVAG+AgWEkJCWtBkECeyuqVnHN2omL5lkhrzSsTFXBD17Uw9pMBNCCyyE0EiDFzsfSuDVwZuCXPMpjBL9kxCa+H/TXYEflBPTdpa9C8vrg7t+b5e8pC+EoYqqgT/HLHi0EtfaevadBtRMrJ18GatjkwX3njMhdTF6CQjihwAAAABJRU5ErkJggg==" },
        ["Ç"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABCUlEQVR42r2TIUtDURiGnzsEQcRtogiiwWYQERQWDUYxGPYHxB9gMuwHWMUuaF5eMNhkQUVWLMIWBIMgirrgbY/BK9e73XMt4vu28z3ng+/9zomkWCX+EljggA4vfNDjnH2mAPDbDWOzOhYZSW4fsge8cUKbV6osU08qIm6qeuWM/PC0mAAd9enrYNCIq6o28spSAtYBaIbHXAL6dMPAJPBcFNTob0n2gWoRcA+UmQ8DNwBsBVqIZWO151goKDxSteX4cNSRABNcsgg8cso171RYoc4Fu+m6Z21r3rrThpHbNlWN7dpyx0oWQFxTdW5wWalqwC0P4UdbA86Gc0h9p25kc4j+9+Pk6hPkheis29pMRwAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA8ElEQVR42s3RIUuDURTG8d+GIIi4TRRBNNgMIoKC0WAUg2FfQPwAJsM+gFXsgublBYNNFlRkxSJsQTAIoqgLrh3L4N27+b5RfG653Od/z7n3Ofyplhxrefet48qRmbRd0xOpdQZjffvEIT6da/pQsao6eHtHCLfmUjVnk21LeB08SGtdCLXfzSK2QD0bWEFXOxuYxltW/yLG89IrootKHvCEksVs4B7sZrcp6QkdE9nIqRAaJkejLoApN5bx4sKdL2Vrqq4dJPS85tCw++NOVLCnLoSetoZ95dG3bAhhYfibiTbx4DkfuMwL/lHY9u/0A/wrRkGvY79NAAAAAElFTkSuQmCC" },
        ["Ğ"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABD0lEQVR42tWSPy9DYRSHn3urJSQlkTCJmITB38Vi6jewm3wBH8FgqakW38DApoNZF+4isZBORSIdRIhE4qYhj6Gt3kpvE4nF70znPc/7OznnfZHvGLZozdh7S462TwPpr5BfAHMUueSJmDsq7DAN0O6f88APu3UmMgBAllMKwCOHXPBCnnk2sOOwp+qR+cRMOCGCOGVDrRh2lVuBuKvqUq9yE4jUq95lCYFFIErfwwhDQL2VryUuV5vAIACNdIdXBMZaeURAQMB+B/ikDsz2e4tzYJ1sOnAMjLOZYiFmvFafXU7MX1Kr7UXhgm/qu0VXzZtxxpNuAFes+VM3SQBzbln2wdjYW8tuO/n3f/L/Al8lB/H54EWu3wAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA9UlEQVR42u3RvS6EQRTG8d/u2iUkSyKhElEJhc9Go3IHepUbcAkKzapW4w4UdLZQ24ZtJBqiWiSyhQiRSLzZkFGs/Xglo9P5T3NmzjNznjOHLoNK6hL3yob9CTNKLjxJ3KnaNtmbLNj3IaTWKfSBvBNreHTg3IuiWetC9/6uIDhUTJUcawcTmoKqbMzcjiBYiLuvCS5jySzmUYsLhgyg8b1f6WnzpiXoB834C68CRjp+MjIy9rqCTw1M/2byDKvyccERRm3E/yHnSvBssees3O6ixZw3wbuSZUU5U47TApbUfww7uE4XKthU8SCRuFWxZdw/Hb4AZeRQhyfn8DQAAAAASUVORK5CYII=" },
        ["İ"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAASUlEQVR42mP4z4AE8/5/+L/vPw+yGON/BvyAiYEoBUsY/mOBPESZgKqp4////29QjSHSDaMKBoMCSJwt+Y8N8BAVm9RKk0NdAQDeMUvokAl1kQAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAN0lEQVR42mNgQAZ5DB8Y9jHwMNAALGH4jwXyMDAwMDCRZlIHw3+GN6hCBE0YVTB4FFA7PYxcAACukBoGB0IXFgAAAABJRU5ErkJggg==" },
        ["Ö"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABLUlEQVR42tWSTyvDcRzHX/s1bOXfwWWakpObQnFykbNSiyewo3JWnoTDTp4AhZKLmovCxQPgIqVspGxCbYuXw3dj+x3k4OJ9+vZ5v/p8P/8QEXNW3DMh4rJVd5tvEvKzIn4NjLHJFW88ccE6fV/xZg15a7br1ongtEpULTpj2oxrvqplh1pAv4/qsUlb+eZ9VwstYFX9cPzLRtxRn00F4EQ97bBxUdUFiehiGjiLdXcBwAREZEgDpRjwAEAWIgYBKMeABlWgHyKSzUBctRCNeAFom1xQggGgAhF3CIzGgBF6gOuQ4QaYjQFzAJyHXRTUusMdcyiqlybCoKb8ULfb7BVV89/L2lJ130lTZt2woRbDTQWg2z07dWRv+7oRlzywZN17D819f/eXN/mfgU9/vQox12Qc0QAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABEklEQVR42u3SyyrFURQG8J9/ruU2MCFKRmYKxchExkqdeAFDZay8hIGRF6BQMlHHRGHiAZhIKbeUSyhOLIO/wznb1NC3J/tb37f2XnvtRY6CextqwLQH61/7P0WfJSde3DmyoCWVZ72KinVuoFIuCKFoRJNO856FKx1ludWtsKv2O2Hcu7BcpnPCh/6qK9eER4052RP2k5omhTBBps4wDhLDERgg06kJl4nhBnSTaQdXiaHkAa1kX7WXfjXuNY9mnuBX52q04Z7MhUBvYujRgNP8hDOMJoYxcJiTZeFNV5WhKByXZ2LIh7BaIc8IYfYnsCKETYMadVtUEoqVM1Vvo+qzw47m9N1Ttlx6c21bwT8SfALQrFjATiU5mgAAAABJRU5ErkJggg==" },
        ["Ş"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAABIklEQVR42r2TrUuDURSHn33JBCeyIILVoYggCrOZDNrtNoNVm4wFg9hMQ1gxywTBIFiE/QWWNbX6EcQhU9ANH8O7MXnfvSbxd8KFy3PP1z0nIb8ryd8BSxzRoEmbJ+rsM929FzFl1bBKInY9HLAJVCmSI8Mk65zw1vcw6od6HLwIWxKYYwi4iE/yHYBiTBli0hv1y7LpaIjgmLel6p1b5gYBWPCqW17LioUogLjsqZ+qtt0zEwUQxy37rGptMICYt67qahyAedvqYb/VYb3SATLx371CFmj0GrXtmRvOmjNl1hl3bKr3jvVyKBnVo8UgnzRQY5hFpphgBOhwzTkVXn4OTM9u1d3BrQ6KU12IB9bUBxPRgempCFwSWpTEfy5OjL4B9BU2NK8Z3WMAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAA/UlEQVR42s3SvyvEARjH8RfHdYOTDAa7SErK2UwGZn8AsxGbLoPBYjDJj8WqKJuyqPsDbLdxqx+D0nUUJ4+Bby73/Rrl80xPz7uez/ODP9SUXVWPmu5VbBpuLeYciB9RbgW2hLBvUo8ug+YdWf4u93oRDtM7d2JMHmfZwDMoZfvvdCW8W9eVhYxrCKFmSTEdGXLxNV7DjqF0aNqJVyE0behOhwasexDCcbbpfhUhzP6GNIXtZA/tqnvj00U6MKOAapKuOLVgVFFOwYhVj8KNvgQot5063CWrz+Fe3RPy8nhzac+iWlrva2Htt+FCmMgG5oRbHe3/kKiEc+Hf6QPZ4VdRwGy21AAAAABJRU5ErkJggg==" },
        ["Ü"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAp0lEQVR42u3SvwqBARSG8efzkWwyyEjZXIPLkEG5AIt7kN2VUK7A4AJk4QqUIn82JR4DH30GKRblTKe3X+9ZDiJizZ0DAxHr7u3fdgJ5PQneAF1k/ZTfs7ca/uADEADnCByALGEMFIBtBBZASDEGKsAMALGsau/2OohVVZsi12ConuxYMmnOhkt1auoB8k6Mz9zitS0qTdty5MqjG8e2zUTnvvOTvw8uPXh5mwjbEsEAAAAASUVORK5CYII=", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAmklEQVR42u3NPWoCARCG4Wddg6QTC7E0kM4z5BhiIXgAG+8g9p7EQE6QIgcQm+QEgYDiTyeIjoUu6waChSl9p5n55h2GE21rrxLQsTE59//ESFj8lZWuXd+FG4UEh0zYoiotCA2sMuEbqWZBaOEzG56FML5Yvwihlwdvwt7Qk7Karh9h5iEX6qaiUF+/Xqroeze3s/Rh4NGdAkebdifZohqZyQAAAABJRU5ErkJggg==" },
        ["•"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAbUlEQVR42mP8z4AfMDGMKkBXEMBwnuEHwzOGHgZuJNH/MFj+HwEu/eeEicOkVf7/+o8MWmEKYFa4MrCiWO2D7gZGQo7czfAHRXwbpiMrkFxwGdORDP8Z/gf+P///5//n/3v/cyNEGUcTzKBRAAD2RWBYcP19UAAAAABJRU5ErkJggg==", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAYklEQVR42mNgGAUkgwCG8ww/GJ4x9DBwY5MuZ/gPh5cYONGlVRh+ISn4z9AKk2CC0q4MrCgafNAVMOJyGEzBboY/KOLbMJVWILngMqYjGRgYGAIZzjP8ZHjO0Ivdm6NgoAEA3sQecK8sUs8AAAAASUVORK5CYII=" },
        ["…"] = { 15.0, 16, 0, "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAdUlEQVR42u3SoU0DAQBA0XcHlQ2iCbJJuRQMropNkASBLqqKVdgCwyQNjg0abMVHY5jgvn7yD/m/0Qxm8Bfce7UGK3sP4MKTR9CyU/WV9Fmdm9KhqueMrl1hY4EtLt3gFtwhvffTW9JLpz5apF3fHZsyzNOCX+ehM9jed+AZAAAAAElFTkSuQmCC", "iVBORw0KGgoAAAANSUhEUgAAABAAAAAdCAQAAAAJZCQ0AAAAbklEQVR42u3RIQ6CUACA4U+R6AxudmWiwcZxDG4GPILJq3gLCucwMBubM6OV8AyOA9Dfd4E//ETRCAkOjt4+WLqYeCFxsveAuU7wBLWgl+EqCM5MrSywlmKLmQ1ysPtn7r5uoNSppCi0Gll8MPgB/8MUtJznSbAAAAAASUVORK5CYII=" },
    } },
}
local glyph_base = 28
Fluent.Fonts = { "Segoe UI", "Poppins", "Bahnschrift", "Consolas", "Matcha" }

local cache, visible, cur_tick = {}, {}, 0
local g_cache = {}   -- image-font text records, by text id

local function _eq(ax2, bt)
    if ax2 == bt then return true end
    local _ta = typeof(ax2)
    if _ta ~= typeof(bt) then return false end
    if _ta == "Color3" then return ax2.R == bt.R and ax2.G == bt.G and ax2.B == bt.B end
    if _ta == "Vector2" then return ax2.X == bt.X and ax2.Y == bt.Y end
    return false
end

local stats = { calls = 0, writes = 0, frames = 0, ms = 0, worst = 0, last = { calls = 0, writes = 0, ms = 0 } }
local function draw(_id, _dtype, _props)
    stats.calls = stats.calls + 1
    local col_ = cache[_id]
    if not col_ then col_ = { Obj = Drawing.new(_dtype), P = {} }; cache[_id] = col_ end
    local entry, p4 = col_.Obj, col_.P
    local _vis = _props.Visible
    if _vis == nil then _vis = true end
    if p4.Visible ~= _vis then entry.Visible = _vis; p4.Visible = _vis end
    if _vis then
        for key_, val in pairs(_props) do
            if key_ ~= "Visible" and not _eq(p4[key_], val) then entry[key_] = val; p4[key_] = val; stats.writes = stats.writes + 1 end
        end
        visible[_id] = true
    else
        visible[_id] = nil
    end
    col_.Tick = cur_tick
    return entry
end

local sweep_tick = 0
local function _cleanup()
    for _id in pairs(visible) do
        local col_ = cache[_id]
        if col_ and col_.Tick ~= cur_tick and col_.P.Visible then
            col_.Obj.Visible = false; col_.P.Visible = false; visible[_id] = nil
        end
    end
    -- drawings nobody used for ~900 frames (closed notifications, old dropdown rows, ...) get removed
    if cur_tick - sweep_tick > 300 then
        sweep_tick = cur_tick
        for _id, col_ in pairs(cache) do
            if cur_tick - (col_.Tick or 0) > 900 then
                pcall(function() col_.Obj:Remove() end)
                cache[_id] = nil; visible[_id] = nil
            end
        end
        for _id, rad in pairs(g_cache) do
            if cur_tick - (rad.tick or 0) > 900 then g_cache[_id] = nil end
        end
    end
end

local render_fade = 1

-- ===== image font =====
-- Matcha's own font is a small bitmap stretched up, so big text looks blocky. Big grey/white text is
-- drawn from embedded glyph images instead (white or dark glyphs, faded to the wanted shade).
-- Coloured text (accent etc.) falls back to the native font, since Matcha can't tint images.
local font_name = "Segoe UI"   -- nil = native ("Matcha")
local big_text = 18            -- only text this size or bigger (title, tab header) uses the image font
local native_font = 1
local shadow_on = true
local compact2 = false
local text_bump = 1 -- added to every text size 13 and below (0 = original, 1 = default, 2 = large)
local function d2(_normal, _compact) if compact2 then return _compact end return _normal end
local function _uchars(str_) return string.gmatch(str_, "[%z\1-\127\194-\244][\128-\191]*") end
local function glyph_set(_color)
    local rad, grp, bt = _color.R, _color.G, _color.B
    if math.max(rad, grp, bt) - math.min(rad, grp, bt) > 0.07 then return nil end
    local len_ = (rad + grp + bt) / 3
    local _bg = theme.WindowBg
    local _bl = (_bg.R + _bg.G + _bg.B) / 3
    if len_ >= _bl then
        if _bl > 0.97 then return nil end
        return 4, _clamp((len_ - _bl) / (1 - _bl), 0, 1)
    end
    if _bl < 0.03 then return nil end
    return 5, _clamp((_bl - len_) / _bl, 0, 1)
end
local function g_width(text_str, _size, f2)
    local _sc, wd = _size / glyph_base, 0
    for _ch in _uchars(text_str) do
        local grp = f2.g[_ch]
        wd = wd + (grp and grp[1] or f2.sp) * _sc
    end
    return wd
end
local measure, measure_cache, measure_n = nil, {}, 0
local function native_w(text_str, _size)
    local wd = measure_cache[text_str]
    if not wd then
        local success, bt = pcall(function()
            if not measure then measure = Drawing.new("Text"); measure.Size = 13; measure.Font = native_font; measure.Visible = false end
            measure.Text = text_str
            return measure.TextBounds
        end)
        wd = (success and bt and bt.X and bt.X > 0) and bt.X or (#text_str * 13 * 0.52)
        if measure_n > 3000 then measure_cache, measure_n = {}, 0 end
        measure_cache[text_str] = wd; measure_n = measure_n + 1
    end
    return wd * _size / 13
end
local function glyph_text(_id, text_str, px_, py_, _size, f2, _set, ax2, zz, _center)
    local _rec = g_cache[_id]
    if _rec and _rec.str == text_str and _rec.x == px_ and _rec.y == py_ and _rec.size == _size and _rec.set == _set
        and _rec.a == ax2 and _rec.z == zz and _rec.F == f2 and _rec.center == _center then
        -- nothing changed: just keep its glyphs alive this frame
        local success = true
        for ix = 1, _rec.n do
            local col_ = cache[_rec.ids[ix]]
            if not col_ or not col_.P.Visible then success = false; break end
            col_.Tick = cur_tick
        end
        if success then _rec.tick = cur_tick; return end
    end
    local _sc = _size / glyph_base
    local _left = _center and (px_ - g_width(text_str, _size, f2) / 2) or px_
    local _mid = (f2.top + f2.bot) / 2 * _sc
    local _top = math.floor((_center and (py_ - _mid) or (py_ + _size / 2 - _mid)) + 0.5)
    local _ids = _rec and _rec.ids or {}
    local key_name2 = (_set == 4) and "dw" or "dd"
    local cnt, _cx = 0, _left
    for _ch in _uchars(text_str) do
        local grp = f2.g[_ch]
        if grp then
            cnt = cnt + 1
            local _gid = _ids[cnt]
            if not _gid then _gid = _id .. "#" .. cnt; _ids[cnt] = _gid end
            local payload = grp[key_name2]
            if not payload then payload = base64decode(grp[_set]); grp[key_name2] = payload end
            draw(_gid, "Image", { Data = payload, Size = Vector2.new(grp[2] * _sc, f2.h * _sc),
                Position = Vector2.new(math.floor(_cx + grp[3] * _sc + 0.5), _top), Transparency = ax2, ZIndex = zz })
            _cx = _cx + grp[1] * _sc
        else
            _cx = _cx + f2.sp * _sc
        end
    end
    g_cache[_id] = { str = text_str, x = px_, y = py_, size = _size, set = _set, a = ax2, z = zz, F = f2, center = _center, ids = _ids, n = cnt, tick = cur_tick }
end
-- same(): the drawing already shows exactly these arguments -> keep it alive and skip everything else
local function _same(_id, _a1, _a2, _a3, _a4, _a5, _a6, _a7, _a8, _a9, _a10)
    local col_ = cache[_id]
    if not col_ or not col_.P.Visible then return false end
    local key_ = col_.K
    if key_ and key_[1] == _a1 and key_[2] == _a2 and key_[3] == _a3 and key_[4] == _a4 and key_[5] == _a5
        and key_[6] == _a6 and key_[7] == _a7 and key_[8] == _a8 and key_[9] == _a9 and key_[10] == _a10 then
        col_.Tick = cur_tick
        return true
    end
    return false
end
local function _remember(_id, _a1, _a2, _a3, _a4, _a5, _a6, _a7, _a8, _a9, _a10)
    local col_ = cache[_id]
    if not col_ then return end
    local key_ = col_.K
    if not key_ then key_ = {}; col_.K = key_ end
    key_[1], key_[2], key_[3], key_[4], key_[5], key_[6], key_[7], key_[8], key_[9], key_[10] = _a1, _a2, _a3, _a4, _a5, _a6, _a7, _a8, _a9, _a10
end
local function _rect(_id, px_, py_, wd, ht, _color, _op, zz, _corner)
    local ax2 = (_op or 1) * render_fade
    if _same(_id, px_, py_, wd, ht, _color, ax2, zz, _corner, true) then return end
    draw(_id, "Square", { Filled = true, Color = _color, Transparency = ax2, ZIndex = zz or 1,
        Position = Vector2.new(px_, py_), Size = Vector2.new(wd, ht), Corner = _corner or 0 })
    _remember(_id, px_, py_, wd, ht, _color, ax2, zz, _corner, true)
end
local function _outline(_id, px_, py_, wd, ht, _color, _op, zz, _corner)
    local ax2 = (_op or 1) * render_fade
    if _same(_id, px_, py_, wd, ht, _color, ax2, zz, _corner, false) then return end
    draw(_id, "Square", { Filled = false, Color = _color, Transparency = ax2, ZIndex = zz or 1,
        Position = Vector2.new(px_, py_), Size = Vector2.new(wd, ht), Corner = _corner or 0 })
    _remember(_id, px_, py_, wd, ht, _color, ax2, zz, _corner, false)
end
local function label_text(_id, text_str, px_, py_, _size, _color, zz, _center, _op, _font)
    text_str = tostring(text_str)
    if _size <= 13 and _font ~= 5 then _size = _size + text_bump end
    local f2 = not _font and font_name and _size >= big_text and glyph_fonts[font_name]
    if f2 then
        local _set, ax2 = glyph_set(_color)
        if _set then
            return glyph_text(_id, text_str, px_, py_, _size, f2, _set, ax2 * (_op or 1) * render_fade, zz or 1, _center and true or false)
        end
    end
    local ax2 = (_op or 1) * render_fade
    if _same(_id, text_str, px_, py_, _size, _color, ax2, zz, _center, _font) then return end
    draw(_id, "Text", { Text = text_str, Size = _size, Font = _font or native_font, Color = _color, Center = _center or false,
        Transparency = ax2, ZIndex = zz or 1, Position = Vector2.new(px_, py_), Outline = false })
    _remember(_id, text_str, px_, py_, _size, _color, ax2, zz, _center, _font)
end
local function _circle(_id, _cx, _cy, rad, _color, _op, zz)
    local ax2 = (_op or 1) * render_fade
    if _same(_id, _cx, _cy, rad, _color, ax2, zz) then return end
    draw(_id, "Circle", { Filled = true, Color = _color, Transparency = ax2, ZIndex = zz or 1,
        Position = Vector2.new(_cx, _cy), Radius = rad, NumSides = 32 })
    _remember(_id, _cx, _cy, rad, _color, ax2, zz)
end
local function _line(_id, _x1, _y1, _x2, _y2, _color, _op, zz)
    local ax2 = (_op or 1) * render_fade
    if _same(_id, _x1, _y1, _x2, _y2, _color, ax2, zz) then return end
    draw(_id, "Line", { Color = _color, Transparency = ax2, ZIndex = zz or 1,
        From = Vector2.new(_x1, _y1), To = Vector2.new(_x2, _y2), Thickness = 1 })
    _remember(_id, _x1, _y1, _x2, _y2, _color, ax2, zz)
end
local function _image(_id, payload, px_, py_, wd, ht, _op, zz, _rounding)
    local ax2 = (_op or 1) * render_fade
    if _same(_id, payload, px_, py_, wd, ht, ax2, zz, _rounding) then return end
    draw(_id, "Image", { Data = payload, Size = Vector2.new(wd, ht), Position = Vector2.new(px_, py_),
        Transparency = ax2, ZIndex = zz or 1, Rounding = _rounding or 0 })
    _remember(_id, payload, px_, py_, wd, ht, ax2, zz, _rounding)
end

local function text_w(text_str, _size)
    text_str = tostring(text_str)
    if _size <= 13 then _size = _size + text_bump end
    local f2 = font_name and _size >= big_text and glyph_fonts[font_name]
    if f2 then return g_width(text_str, _size, f2) end
    return native_w(text_str, _size)
end
local function field_layout(_buf, _caret, _sel, _size, max_w, show_caret)
    _buf = _buf or ""
    local cnt = #_buf
    _caret = math.max(0, math.min(_caret or cnt, cnt))
    local start_i = 1
    if text_w(_buf, _size) > max_w then
        while start_i < _caret and text_w(_buf:sub(start_i, _caret), _size) > max_w do start_i = start_i + 1 end
    end
    local end_i = cnt
    while end_i > _caret and text_w(_buf:sub(start_i, end_i), _size) > max_w do end_i = end_i - 1 end
    local _vis = _buf:sub(start_i, end_i)
    local sel_x, sel_w = 0, 0
    local has_sel = _sel and _sel ~= _caret
    if has_sel then
        local _lo, _hi = math.min(_sel, _caret), math.max(_sel, _caret)
        local _vlo = math.max(_lo, start_i - 1)
        local _vhi = math.min(_hi, end_i)
        if _vhi > _vlo then
            sel_x = text_w(_buf:sub(start_i, _vlo), _size)
            sel_w = text_w(_buf:sub(_vlo + 1, _vhi), _size)
        end
    end
    if show_caret and not has_sel then
        local _cp = _caret - start_i + 1
        _vis = _vis:sub(1, _cp) .. "|" .. _vis:sub(_cp + 1)
    end
    return _vis, sel_x, sel_w, start_i
end
local function caret_from_click(_buf, start_x, click_x, _size)
    local _rel = click_x - start_x
    if _rel <= 0 then return 0 end
    local col_ = 0
    while col_ < #_buf and text_w(_buf:sub(1, col_ + 1), _size) < _rel do col_ = col_ + 1 end
    return col_
end
local word_bound

local function wrap_text(text_str, _size, max_w)
    local _out = {}
    for _seg in (tostring(text_str or "") .. "\n"):gmatch("(.-)\n") do
        if _seg == "" then
            _out[#_out + 1] = ""
        else
            local current2 = ""
            for _word in _seg:gmatch("%S+") do
                local _cand = (current2 == "") and _word or (current2 .. " " .. _word)
                if current2 == "" or text_w(_cand, _size) <= max_w then current2 = _cand
                else _out[#_out + 1] = current2; current2 = _word end
            end
            _out[#_out + 1] = current2
        end
    end
    while #_out > 1 and _out[#_out] == "" do _out[#_out] = nil end
    if #_out == 0 then _out[1] = "" end
    return _out
end

local function new_spring(val, _speed) return { v = val, goal = val, speed = _speed or 16 } end
local anim_active = false -- some spring moved during the last drawn frame
local function spring_step(str_, delta)
    local dat = str_.goal - str_.v
    if dat > 0.001 or dat < -0.001 then anim_active = true end
    str_.v = str_.v + dat * (1 - math.exp(-str_.speed * delta))
    return str_.v
end

local input2 = { mx = 0, my = 0, down = false, prevDown = false, clicked = false, keys = {} }
local function in_bounds(px_, py_, wd, ht)
    return input2.mx >= px_ and input2.mx <= px_ + wd and input2.my >= py_ and input2.my <= py_ + ht
end
local function poll_input()
    input2.mx, input2.my = Mouse.X, Mouse.Y
    input2.down = ismouse1pressed()
    input2.clicked = input2.down and not input2.prevDown
end
local function key_edge(_vk)
    local key_ = input2.keys[_vk]
    if not key_ then key_ = { held = false }; input2.keys[_vk] = key_ end
    local pt = iskeypressed(_vk)
    local _click = pt and not key_.held
    key_.held = pt
    return _click
end

local state = {
    Win = { x = 100, y = 100, w = 580, h = 460 },
    Drag = false, DragOff = Vector2.new(0, 0),
    ActiveTab = 1,
    MenuKey = 0x23, MenuKeyName = "End",
    Minimized = false, Resizing = false, MinW = 470, MinH = 380,
    BubblePos = { x = 60, y = 60 }, BubbleDrag = false, BubbleOff = Vector2.new(0, 0), BubbleMoved = false,
    MinNotified = false,
    Overlay = nil,
    KBListening = nil,
    Focused = nil,
    Dialog = nil,
    Vw = 1920, Vh = 1080,
    LastTime = nil,
    Running = false, Token = nil,
}
local tabs = {}
local all_keybinds = {}
state.TabCurtain = new_spring(0, 16)
state.IndOff = new_spring(0, 18)
state.IndH = new_spring(16, 22)
state.ContentSlide = new_spring(0, 16)
state.IndInit = false

local function _center()
    local wd, ht = state.Win.w, state.Win.h
    pcall(function()
        local _vp = game:GetService("Workspace").CurrentCamera.ViewportSize
        state.Win.x = math.floor((_vp.X - wd) / 2)
        state.Win.y = math.floor((_vp.Y - ht) / 2)
    end)
end

local function get_viewport()
    local _vw, _vh = 1920, 1080
    pcall(function()
        local val = game:GetService("Workspace").CurrentCamera.ViewportSize
        _vw, _vh = val.X, val.Y
    end)
    return _vw, _vh
end

local notifs = {}
local notif_id = 0
local options2 = {}

local icon_cache = {}
-- title bar + button icons ship inside the library (no download while the window is built)
local builtin_icons = {
    ["chevron-right"] = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAyklEQVRoge3YMQrCUBCE4XdAG4liocePp1AYmwdpEizcmXFgA9su/0cSQt4AMJLHHtAAd0AD3AENcAc0wB3wD4ATgOecJRGwYrteAG7JADmiYskyoy2IqkWXHcQbwCMFYENUL5QjGEulCNatlSFYABmCCZAg2AA6QgEY86O297E7pwCOEGsD+hH6PteDl/hesT86ng2gxzMBkngWQBbPAEjjqwHy+EqAJb4KEP9TH3+sEn+wFX+0aB17QAPcAQ1wBzTAHdAAd8CvgA8RCnlMyKlwJgAAAABJRU5ErkJggg==",
    ["maximize-2"] = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAABFElEQVRoge3YQQrCQAyF4TmgGynShafpXdtTtPBE6GKoNZOJdvICUwjoQvk/LU4wAUiRxz2gA7wDIgJuABbUXxuAiQEwG+JzRGgAGADWW4gGUJoHgDUqoBRPDTiL36IAvsU/IwCk+MQOKMVTAzTxtABtPCWgJp4OUBtPBRhO4t/Px8Lr8t1p9gQclzhNfMp2p2V/TAHQxhenJSD/JId/vW9LwCXjHtAB3gFMgLv0c8cOGA+H1MeB0xIgHhyKeHeAeHQr4tf9dnIDiMtTNpbFjAZAEW8F0MRbAFTxtQC6+BoAZbwWQBuvBdDGawG08bUAunjLNyBdTbfQKwBoucRJgLP/5EMBJiOC5hYKNe4BHeAd8CvgBYhISSfAWL9BAAAAAElFTkSuQmCC",
    ["minimize-2"] = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAABFklEQVRoge3ZQQqDMBSEYQ/opkhx0dP0rukpFKYbpSCavLygM48ayE7K/0kKSewAdJEnPeAGsAP+AfAA8FlmHw0wApjwG4kJ6HNv0hBPB6RciCF+WpYTDbAdR889d+JnAK+959UAVfFqgOp4JYArXgXgjlcANMWzAc3xbEBzPBvQHK8CcMerAEoju3eKAEBu73QlYI4OeDsRMkvolEkPuAHsgDMB6xm2dszLH5YOSIbYHCI0AAoA7xKSAZTm3n4+DKAULw04OkmFAOSOgfKA0hlWGmA5gMsCrLcHkoCaqw85QO29jRTAc+kkAxgOPi6MhR+r+YBxKmC7ibPEd45PSJcArPG0WXqTAzvQAwg16QE3gB3QCvgCjDdJJ5ckcsoAAAAASUVORK5CYII=",
    ["minus"] = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAeElEQVRoge3SwQkAIAzFUAd0/wl0ju9FJxCMSgo9Nw9akpSXFw8QQAcIoAME0AEC6AABdIAAOkAAHSCADhBABwigA04AapKe89Pn7W1AA+LXNAE/vNDViwcIoAME0AEC6AABdIAAOkAAHSCADhBABwigAwTQAbuAAbr2YnYirxs7AAAAAElFTkSuQmCC",
    ["x"] = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAABE0lEQVRoge3YQQ6CMBCFYQ7IxiBhocfHU6AZYtJGQ1qF9r0ZmgxJt+3/oQVtJyJdy8M8wAHWAQ6wDnCAdYADrAM0Ab2IPMIYCDGXr/l7BmCWz7WIyASMn8Kc8ZrZACRiG08DDImFahGp+CV8neCA97gmFnyKyL0gfszMdTsyT8ldQyAg8aWAWgQsvgZQioDG1wKOIuDxCMBeBCUeBfiHoMUjATnEK8RS4tGAHIIWzwBExPaux08DGs8CjD8AJW9sVUBqw6Y29ikBqfjcJoYhmPFxwyJ/AFIAe57zNIRGPBWhFU9DaMZTENrxcIRFPBRxZMHm/9Q3f6zS/MFW80eLpxzmAQ6wDnCAdYADrAMcYB1QC1gBr5L98glpr/cAAAAASUVORK5CYII=",
}
for key_, val in pairs(builtin_icons) do
    local success, dat = pcall(base64decode, val)
    if success and type(dat) == "string" and #dat > 0 then icon_cache[key_] = dat end
end
local cache_dir = "fluent_cache"
local max_download = 400000 -- bytes; bigger images are skipped
local function cache_path(_kind, title_str)
    local str_ = tostring(title_str):gsub("[^%w%-]", "_")
    if #str_ > 80 then str_ = str_:sub(1, 40) .. "_" .. #str_ .. "_" .. str_:sub(-30) end
    return cache_dir .. "/" .. _kind .. "_" .. str_ .. ".txt"
end
local function cache_read(_kind, title_str)
    local success, str_ = pcall(readfile, cache_path(_kind, title_str))
    if success and type(str_) == "string" and #str_ > 0 then
        local _okd, dat = pcall(base64decode, str_)
        if _okd and type(dat) == "string" and #dat > 32 then return dat end
    end
end
-- Matcha's base64encode stops at the first zero byte (PNG headers have them), so encode in Lua
local b64_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local function _b64encode(payload)
    local _out, cnt = {}, 0
    for ix = 1, #payload, 3 do
        local ax2, bt, col_ = payload:byte(ix, ix + 2)
        local val = ax2 * 65536 + (bt or 0) * 256 + (col_ or 0)
        local _c1 = math.floor(val / 262144) % 64 + 1
        local _c2 = math.floor(val / 4096) % 64 + 1
        local _c3 = math.floor(val / 64) % 64 + 1
        local _c4 = val % 64 + 1
        cnt = cnt + 1
        _out[cnt] = b64_chars:sub(_c1, _c1) .. b64_chars:sub(_c2, _c2)
            .. (bt and b64_chars:sub(_c3, _c3) or "=") .. (col_ and b64_chars:sub(_c4, _c4) or "=")
    end
    return table.concat(_out)
end
local function cache_write(_kind, title_str, payload)
    if #payload > 300000 then return end -- not worth caching
    pcall(makefolder, cache_dir)
    if #payload <= 30000 then
        pcall(function() writefile(cache_path(_kind, title_str), _b64encode(payload)) end)
        return
    end
    task.spawn(function()
        local _parts = {}
        for ix = 1, #payload, 3000 do
            _parts[#_parts + 1] = _b64encode(payload:sub(ix, ix + 2999))
            task.wait()
        end
        pcall(function() writefile(cache_path(_kind, title_str), table.concat(_parts)) end)
    end)
end
local phosphor_weights = { thin = true, light = true, bold = true, fill = true, duotone = true }
local function icon_url(title_str)
    if title_str:sub(1, 7) == "http://" or title_str:sub(1, 8) == "https://" or title_str:sub(1, 5) == "data:" then
        return title_str
    end
    if title_str:sub(1, 9) == "phosphor-" then
        local cnt = title_str:sub(10)
        local _weight = cnt:match("%-([a-z]+)$")
        if not (_weight and phosphor_weights[_weight]) then _weight = "regular" end
        return "https://images.weserv.nl/?url=cdn.jsdelivr.net/npm/@phosphor-icons/core/assets/" .. _weight .. "/" .. cnt .. ".svg&w=48&h=48&output=png&filt=negate"
    end
    return "https://images.weserv.nl/?url=cdn.jsdelivr.net/npm/lucide-static@latest/icons/" .. title_str .. ".svg&w=48&h=48&output=png&filt=negate"
end
local function load_icon(title_str, on_change)
    if not title_str or title_str == "" then return end
    local _cached = icon_cache[title_str]
    if type(_cached) == "string" then on_change(_cached); return end
    local _disk = cache_read("icon", title_str)
    if _disk then icon_cache[title_str] = _disk; on_change(_disk); return end
    task.spawn(function()
        task.wait() -- let the window finish building before downloading
        local _hit = icon_cache[title_str]
        if type(_hit) == "string" then on_change(_hit); return end
        local success, payload = pcall(function() return game:HttpGet(icon_url(title_str)) end)
        if success and type(payload) == "string" and #payload > 0 and #payload <= max_download then
            icon_cache[title_str] = payload
            cache_write("icon", title_str, payload)
            on_change(payload)
        end
    end)
end

-- Lucide icons for the title bar buttons (line-drawn fallback is used until these load)
local title_icon_names = { min = "minus", max = "maximize-2", restore = "minimize-2", close = "x" }
local title_icons = {}
for key_name2, title_str in pairs(title_icon_names) do
    load_icon(title_str, function(payload) title_icons[key_name2] = payload end)
end

local b64_lookup = {}
do
    local _chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    for ix = 1, #_chars do b64_lookup[_chars:byte(ix)] = ix - 1 end
end
local function _b64decode(payload)
    local _out, cnt, _bits, _nbits = {}, 0, 0, 0
    for ix = 1, #payload do
        local val = b64_lookup[payload:byte(ix)]
        if val then
            _bits = _bits * 64 + val
            _nbits = _nbits + 6
            if _nbits >= 8 then
                _nbits = _nbits - 8
                cnt = cnt + 1
                _out[cnt] = string.char(math.floor(_bits / 2 ^ _nbits) % 256)
                _bits = _bits % 2 ^ _nbits
            end
        end
    end
    return table.concat(_out)
end

local map_cache = {}
local builtin_maps = {
    sat = "iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAQAAABpN6lAAAAThklEQVR42s1d244buREtdowgCIL8/48ln5A8LLBBdm3PjKRm5YFk1TlVxZa83sDrsfomzbTOrci+N1XpP/Tn/JFrb/1Tl2//p/Jb/xW/eTz/y7qZUxr7cLzWUEWli0qXU0455S43eZdf5Sf5h4hcEpC+Ttv9aJP2be/aMqk+pWmKxz7k1/iRoxPwBf0hd7nLu7zJZ/mP/Ev+uSNAd3D12gH6AvgEU64hF4AP3So9YXdt2vr8Odt5nPKQh9zlJh/yLl/kF/lZ/i0/VQSoQ9dLP1TwNHwqvK/VlGS4UeEAuS+1XXNterDmXmJOOfuj3du93Y8PeZc3+SL/lZ/lZ/k1EmDgdQMcAWhJGpOi7qWtqWWrtAPvSjYXAGw/vTfT/QDwstS/y62/t/fjTT7LL/KLfJY3JkD34COgQl94K4NVla29pUz1sYBH2Gb3jup31r679QG+3ORD3vrX44t8li/yVW6BgAp8Ze31dTV+TvHTEbA6NTSUEnzfAO+l6ftQXkn7Lmd/tPN4yF0ecpOb3ORd3uVr/3p8lTf5kDsSoLkWGEhl6JqL3tQ/ApaguBY2l1DLjwEe4B8rBAx8wB76m/pD+8Pr/tnv7XHcrQC+y5u89ffjQ25yEgEx1ZXCEbr6u1pqr+rvjk+kBkyoGTukx6QD+ANd0I+lP6p/SpfeV+WfAej3dj8WAR/yITe9yQMJ0NycaSyLiglnfUn/MEeghwsUfSCK5u+g/eFghw9c89XY9UlEoX4/23k8oADejpt8zJ9bvx8P6TUBGquAYjFcLlByAOuvUPh8ml1gL3G9nQw1Mkz57tOrnZ/Fr1Pl730Wv1Me/dEexyDgLrf+cYxKcJe7PJQJQMO7+tHmKjVcDfoHtd0HDlQSaDm0g/W7XIE/lvmt8PXe+nGOAti98/PoowLc5TZdsAg4awcowicimAZu4MZvaeNpJR+A+YEMcIC4+gA/gdfDoatBd/Wt87P6f/1x3JfyepfRKpzanQCt7B+ImFZ3D7gDnJAANwGXwviC5S+Yf8H3/B+W/WOVv344CadF4DEbwfsogtMFg4zH+NyhBQFe3iJ8rOkVZPXPpHKnSXlT2yIgVuwyfMu8MnhwwCnd9e8rAGe/jxowKXjIXR+zieyaCCjGDn9FQBU9QKk31Q0wUkBuUCbAx+6IBb93igCCN/P3PvRfDeDZzzYj0B/HA8aDnFM6ERB1p3GCjzqHeSNj1X1NphfOfhgH1U19094KX1cyf+/nKoLdInCccncKdDSKpw4C9JkDED7BVfV3GTTrrll7/1QNHH1A6nfI/9ReDwe/QnBOCh7HbAYRej+PxwxIly5dpSbAmjV0AXvBA+AOqHRXgs7aGwFeARy49hSCwxpADoA74OhyTh88VhUYFPTH8ZBTHrrS3ysHKPX8yQURPmnuy1h3pIByP6BrQQADFze/Hkv7Cd+1t+Gq/8MHpreenvyZ/1O7aEFA1h+GDp8AV7CJgukJgYqvVPaQAGEXdKNkwp+5JxKG/WcIzt4N6KDgMfsDM/k6zD8cICUBu2GEfwUb0x88AI3gNQHC8J0ECwA54JxD1PqButtwfF5Fux47ArL+nvnVmycfLFJC7mE4dZ/5LwnAAAzQIwTC8FfxMwcM+48KcPQE+Jzqn6b+sP+wdSRglb6CilnfryADSYpEOOxAwwzCAF3qP40PJKyhOWAScU4iTH8168PSTjSIfOq+masbKpwEgk8+IKXJ/An2igJo79DNBX3Om/05AgDc2oAeqgD6wbPf+9HZAZsAOHSb8nc1wkcKDLKIogc0lD6HXUzN6i/W+ZGOHkD4FoKze2/gVAQ/s2/NnxowJmAHnaE6/AbwnQKYYg8MQmxqRwCYXnu3IEAFGA4Qgz+2AnpH1ceUrh6Cq991tAAhAnxgKUCviZhkbCmYqkMAGDzAFix7QiFYynsEtg4YQbCyN+cYvErX0QLsIsCwhewuAT5mPlMAcEvwKqh7gL2Sv5Z0cfMn+IMCXUE4bclp1WEpv/K/4GwcQEUuEoGvsBS0FyQmgg/5jyRYq2DVH6FjA0gvNP1pZbHrrP2k/qgEgYByqoKdSmB0AqVeEPykQ7cECBTBlfxDp+oq42UxcOgUgQEYzD9fOrpAunFAckGYSy+ye0lBMXaHlMBtusN8p1pgzSC9TqDC9Dfzr9cKwayD8ql7B8deF5qXL/tdgcyX41AF6tfMftS/gq8A3R2wpk8A3VWtAbx0QKk7F75KdZGmcqU/q146YIEF/dEHXRC+1jVAMfPR/J2IkLoGUCfYGzuqCIkGYdgSIEtT0fXORvUFnMCb9tMLIwrJAb33pXYkhY2/nBUikHW348BcBo0KNn9W3iCPOTK+ljHgCgBeWNqray+FA5SLoak9ybMWYLy6HCECAS4bP7cGQgFAXwywDH2FgUjYqa+H9u50GBWofaJAC9XB9qra+2F9gBGA0gEMPjkCgAsHwJTnCDB0rgRJfQY/AzDisEpgoMAgYjtgc+qh8ABY+SscUNSC3N5L7gTbMgnpB+gStBcp7R/AmweuKZAUBYCuBn2RMOWfMagIYPVtnnaA4JT4/CLCIgDQg/aqOy8cvZMHOALeFogpHeGv5lMV6Fj6YwyQgLA/ALKe9gVMZyygTISE9Nv8pDBDp0rQmQYfuv6LggV8zvcFtyvWAbC+mh/8BLPggGJXV3ivIEZ4CNA9+VoGgIbdaZgwTXnzwwyDYAgcuJECRW8qb8PZAdgSUHeCEvhpd4m6k/G9BmxB74Z9TncgI4KfIQD4pv6kQmfz11H/0QWwVGcC4l6/qDlAnVQ2H1owltqaXPCMgGl6T7+bX2VprA51BGC4YRKiRoViCMbQHKCJgGj5qhJICkEIANX9BNyIKaFrX3afRTDqr+iD4QDVUP6ABIfcTf+xTF6IgB0OUfSC4NykccXDAQsDH7uf6jkYrhIIunMxZPBTZ9MeNO5AAleBCXxWgw0BcPhTYwnM4N3y6AcYQyAWRQDZtbfkrzqwllocunggzA2r1pMH1OC7C6YVgAZ3AKhdqi/i8CTAxULoAJUNLwx4+aDWflneQwERWHXASZgxkFUEnQz0xDD+pGH1BZ+1AomK6INABpOSXBB84MT06AgIAOruPsgkDHL06Oo0JBeMHoBaN+iCALe/BcKoQN3Fip4k7UPerSY4zAL49IDHwaErlcJAwhgvGir4qwcwusGiVx0hr/VJ7aS71wLQ3sFKUPsJATbVnYpVC4gMK4pOAtBgrYGrT0Soil70A9IWIU6B7hYHIyZp77DVcu9O0Ky8InBVVh/0XxV+esKqgaIHEPSq+6peAXYRKP0gsEmE0NEB6AEPA1Z/BI2647Qr7mVQdKo+9ccYAPhBiIGHaTlsK8gqARKAnSDcGnSwbnyr4kgDhIOI8H7B+s0SNHogUrA0RyckGiY9Yylb39sAqATbCOQ+oasPhQ5oYOgzXm53zD4WwkhASUdfc0v9BXH6AmmYUbA5hm9dgbEfoCDAt/pBeaBE4P2KBvaD1QK6pEmlhCzc9Blos7+lf8275kBDdgHHQG03iG5qQCqHwn3BASvQQLXBMy8RXvCCco0Q5cSXJMwiZ8BnIUxLDLq49oLbAbYkbAyFPUFU4ckLgtTYEiDDIrDzQvhMrgQdSVD3BsI0BwAVEbqDF1mtfx0Bbvsl1AD2QtA7k0G6Ry/UcQiqEwluaw8B661eQjtYfuU+BKEiIGdf0ju2TPmSRSJDdO8EXHMNP5FANHgIFNqD7IFIyhFga24GY/aj8UP/IBCQKElOkFAMYwtQkwAwukRCZiFUrUGLyuj6QAyUvbEjALLuACsqsDLEy1g3Y92pX9QDaARBd8WaQB6IxHEMCg8YAZfbg1z6dgRsIpD0z6WwhF4SQWXQCQFaSuBCHkgEnJe7RHdzT4et9kGqBE/B74joEj1Q//B38/H89yc7UfIVEuoaUFl/F4Q9FWlp2+l6pXn978IJ8oyAVhKg114InaIX4GfYdWR7Odf59wC2hINB3gfQSwKsAKbWf9M0Vq3Ciy1CBP8sCG2jfSS01WRI7gcU4HVbBxot1wC9lW7Q2PLLFrxcgvYOPflgS4lt45QUaElA0R0mT0TzF4Rsm0W97BhtoEsJOlSIHVXrOEigYe+A8tBI0S1qRf+AIeMeInZDK1zQqHvOUHZe8CrQsu6LOMj/XBZoIAKy+o01t8xrRcVm0yjWCdoGlJ0HGlWRBFxFW4/5z0S0cDy8lR2hjfot6M57CIpN4bxXgPcLPnEBbiVUts4uqNuNhj0/9sI8HTBuDV4eGIu7QmE/IGwpwlYf0MDuQNBKtcACIKA9zOkT6FwtFKdFdepuha95M6gXzaBmJwQXpL2CUu0cQxLaCx0k2y/lQZDsg8aKm+mLaTEfGAmtigDvCK2mows0+QFj4SRAGCgYRXuwDUJb1ZyIKGgQmiYSmsIOCr3sB2ixb6AVLmgBuhIJLdpfCHY5dsWxCDYkQnRLQ0OwToJ1fZsBb/JCV7giwluFcJSoIKEE/tImsx2Y20EWBl+RgHFYqbc/Cil7oSPUJECmo8RwkDxCJ+BwtHi72dS4L4j9AyuULaR9S4KCzkaLV4K26wnWZwPgmA+V+77jSMKip223FnY7UZprLlwBgAbJDnASwthNvyoBnR8A5wZvzhPgUyboiLHR4RpbYWxUDZIHnsSh2d4jpTCwBxIJE+oaNz8czidGlFuDV2eK+HlhIjz2E6aYknkiNZwdcLH1CLpL6AdQeWwLrCTwBpb1b6HwNaoCJQHcJ2Q3NLb7UhyWIuiovlwTQRtZmlyAsL0UGnjwAVCQoVMo4uXzm9Pl6tPmhOfoxDk+mc73LrQnO9PagijRBYEMcEACj6CBEOEQZAIq4M/OHRQ4aRbPIEJvJCJe2beYzj8MHhB0QgCPoFF9Gm4JePGkyQtXYFWgJZEuu8z2YkhnpXrxa552KcGb5ZtvF1Vs1wTEi6R3kAuQQfnrnavfsqO9pIXqwyUR83NPCQgbxU+Ax0vpWWGpY/ASBdELtRNGJNwHdgWc9f8ibG8vEgHpKoGwHVBfQI3aX8zD333mjHhmEl2tEIGvy7FFiQ43fwkbd3NUEbBbZ8UzxYrrx1l7paYQSx+ovz3gQqdn0fHqplq5YQFnF1iPL07B/hx9VgT5YqndBTS+rKAgxoBpeE4InKlIngAfICVMhtg1bGIXg87NlDDFBPANNMI9BIiSeB8BrAsIt6Jhdzg2bIyli3XYF3zdkgEHkkD/WQdaPuhd9AO4B8CXzteACwp2NCQq6sY3nLQRr1LyizbzBZu8xLVutEe/7QkAs4e6QNeS1pfUBgqS6rEWpBNz9xdrVhdrS75e1W4O0dz8KrjHThvM1bfR4Zsp8OXU+TLKDDiovafjlUMyIrtr1KW+Yt3ehQtkrT/QJJwCc03Ai6QUNKz3n12RFM9Gur5OvXDJ/gJ+ifPxmJ8RUMKo559dan/x3qv3JLi8X0G+dDvAFwdq2mMA0qEvuKfoEx+8RsNe31wwX7lRwwYuKw6I4zuxPhEZTwigVl4ltwzZIVJ6ogY5vtJG5+LC/f3tPOSaGPDDqAIvOADuJBO/VGwSqfSl9HNDeKV43hYpr1rPrpCSEPADQl5LSwJiz49ghpsq0M20/J6DRXMIEJmW+r412x4Ir5nvZHThh4V5SeAraBUBGXykgZ2A2WfDZ1cUxr9saZjyOFd1wWNvdNm+gO2rSg7IN9WyKEQKpMi+xC9GRNhUooN6GOUUA6ctkxr+AEu7bBVzYPcQ2dxGk2+mh7fW9LIYTJmIIDfo9okwm75ovJFjPSUhdqZ8gN6SC4IDqOiFmyqmG2pahxKBZ/ie+kjKxvpUeCXcx1Yy2bCRLsl37s0lfMsrjw7gm6jCHeZLCmyl5AgphlH9DRXFrVt1uzQDT/AFvoNAT+iyBpQeaHakFYYhFEBHScIVIdfD4pvwjT7DTT/ZgUxCGIa7y1dOuKCArR1IMCq2FKtc3sZ3+x1UMsxiCHnC/0IuyATQI1WqW+0u8EzIOCJQUPEqJTF2OzqkiOMOPimvAXomAB6jEzwQKWDwvmKas1XiXOglcOnjwpfmIngDh3MWsTgnZv0tAfGhGjUFUlKxvox/qbmqORbwwvX97LdyUDmW0o0EH/wW9W9bAvJX2t57nld7RYaNnwD3xzfgmMHiDf7LtZtABfwFHB+fMwiwVfpK6CEbPhbJq+GvYSva0sCuuBhvqchjghths/t4NcWDljYUSL2ESHiBDlh/XrIe9YLPstHwTpagXpJg27jhgkgAPiBtuWEHnUkIq/fUB3IXIRcPUKSn3lyvdfM9VgUC+K1eXfmorYqMSYGUX2dHg1wQURNQP+NGC1ou1mlWL+ADEa0mAJ8ph08ZkpKEHQ3sgi0RGLi0HClI69ksBZ33oBHwIoAel1dSEElI07vVA+QE/wkZvkaEm6FfgIdpoccFBgLigxWRAilJqGgovpZ3eQL8PRnsh4KQRPz2uygpTlS0KwJCh7ggIdIQVx5XSL2/mvJvWh8Df2HtNIer+ruWBtkukeJRpL9tiRTPd3y+5PdZO+T9b3oJuPr1b/xksVTLZ9d+95peXEYL21/1+S9sV/nknR/7t7YPB+as/0Vf/cU/xPv65LnX3/zX25/1N/2h//MnX36893evvX3S320Vf8Tff/rb7fjO7/fdAH/w2pv80O//4//9D6WdThQ7GUcdAAAAAElFTkSuQmCC",
    hue = "iVBORw0KGgoAAAANSUhEUgAAABAAAAEACAIAAAA1MGEZAAAAeklEQVR42u3bMQpEIRBEwR6Qvf95P4J7hs5EyrzyRw/OSfdWfgAAAAAAvALm7BLssh3WFwAAAAAAXgGTtgRS1gkAAAAAAPeCSbkiTMoVYaWsEwAAAAAA7gWTckVY5YEDAAAAAICLweyyBOZkt7vGBwAAAADAI2Da7wx/ZKWOwUK2waEAAAAASUVORK5CYII=",
    alpha = "iVBORw0KGgoAAAANSUhEUgAAACAAAAEACAQAAAB4qLz9AAAAVklEQVR42u3MMQ0AAAgDsC1BEP7VIYK3FdBufiYVCAQCgUAgEAgEAoFAIBAIBAKBQCAQCAQCgUAgEAgEAoFAIBAIBAKBQCAQCAQCgUAgEAgEAoFAIPg4l4QFLU3fMaAAAAAASUVORK5CYII=",
}
local function preload_maps()
    for key_, val in pairs(builtin_maps) do
        if not map_cache[key_] then
            local success, dat = pcall(base64decode, val)
            if success and type(dat) == "string" and #dat > 32 then map_cache[key_] = dat end
        end
    end
end

local function paragraph_lines(_content)
    local _lines = {}
    for _ln in (tostring(_content or "") .. "\n"):gmatch("(.-)\n") do table.insert(_lines, _ln) end
    if #_lines > 0 and _lines[#_lines] == "" then table.remove(_lines) end
    return _lines
end
local function align_of(ax2)
    ax2 = tostring(ax2 or ""):lower()
    if ax2:find("center") or ax2:find("middle") then return "center" end
    if ax2:find("right") then return "right" end
    return "left"
end
local last_err = {}
local function _safe(callback_fn, ...)
    if type(callback_fn) ~= "function" then return end
    local success, fail = pcall(callback_fn, ...)
    if not success then
        local message = tostring(fail)
        local clock_now = tick()
        if last_err[message] and clock_now - last_err[message] < 5 then return end
        last_err[message] = clock_now
        warn("[Fluent] callback error: " .. message)
        if ui._errorHandler then pcall(ui._errorHandler, (message:gsub("^.-:%d+: ", "")), message); return end
        pcall(function() ui:Notify({ Title = "Callback error", Content = tostring(fail):gsub("^.-:%d+: ", ""):sub(1, 140), Duration = 6 }) end)
    end
end

local function expose_value(elem_ref, _getter, _setter)
    function elem_ref:Get() return _getter(elem_ref) end
    function elem_ref:SetTitle(tm) elem_ref.title = tostring(tm); state.Dirty = true; return elem_ref end
    function elem_ref:SetDescription(dat) elem_ref.desc = (dat ~= nil and dat ~= "") and tostring(dat) or nil; state.Dirty = true; return elem_ref end
    function elem_ref:Destroy()
        if elem_ref._group then
            for ix, elem in ipairs(elem_ref._group.elements) do if elem == elem_ref then table.remove(elem_ref._group.elements, ix); break end end
        end
        if elem_ref.id then options2[elem_ref.id] = nil end
        local function _unbind(key_) for ix, bt in ipairs(all_keybinds) do if bt == key_ then table.remove(all_keybinds, ix); break end end end
        if elem_ref.kind == "keybind" then _unbind(elem_ref) end
        if elem_ref.keybind then _unbind(elem_ref.keybind) end
        elem_ref._destroyed = true
    end
    return setmetatable(elem_ref, {
        __index = function(__, key_) if key_ == "Value" then return _getter(elem_ref) end end,
        __newindex = function(tm, key_, val)
            if key_ == "Value" then if _setter then _setter(elem_ref, val) end
            elseif key_ == "Title" then elem_ref:SetTitle(val)
            elseif key_ == "Description" then elem_ref:SetDescription(val)
            else rawset(tm, key_, val) end
        end,
    })
end

local function mk_divider(col_)
    return expose_value({ kind = "divider", hover = new_spring(0, 14) }, function() return nil end)
end
local function mk_space(col_)
    return expose_value({ kind = "space", height = (col_ and col_.Height) or 10, hover = new_spring(0, 14) }, function() return nil end)
end
local function mk_code(col_)
    local elem_ref = { kind = "code", title = col_.Title or "Code", code = tostring(col_.Code or ""), onCopy = col_.OnCopy, hover = new_spring(0, 14) }
    elem_ref.lines = paragraph_lines(elem_ref.code)
    function elem_ref:SetCode(str_) elem_ref.code = tostring(str_ or ""); elem_ref.lines = paragraph_lines(elem_ref.code); return elem_ref end
    return expose_value(elem_ref, function() return elem_ref.code end, function(__, val) elem_ref:SetCode(val) end)
end
local function parse_ratio(rad)
    if type(rad) == "number" and rad > 0 then return 1 / rad end
    local ax2, bt = tostring(rad or "16:9"):match("(%d+%.?%d*)%s*[:/x]%s*(%d+%.?%d*)")
    if ax2 and bt and tonumber(ax2) > 0 then return tonumber(bt) / tonumber(ax2) end
    return 9 / 16
end
local function mk_image(col_)
    local elem_ref = { kind = "image", ratio = parse_ratio(col_.AspectRatio), radius = col_.Radius or 6, hover = new_spring(0, 14) }
    -- Matcha's Image only takes PNG and bad data can crash it: other formats go through the
    -- PNG-converting proxy, and anything that isn't a PNG is refused
    local function is_png(dat) return type(dat) == "string" and #dat > 32 and dat:sub(1, 4) == string.char(137, 80, 78, 71) end
    local function set_image(_src)
        elem_ref.data = nil
        if type(_src) ~= "string" or _src == "" then return end
        if _src:sub(1, 4) == "http" then
            local _url = _src
            if not _src:lower():match("%.png$") and not _src:find("images.weserv.nl", 1, true) then
                _url = "https://images.weserv.nl/?url=" .. _src:gsub("^https?://", "") .. "&w=800&output=png"
            end
            load_icon(_url, function(dat) if is_png(dat) then elem_ref.data = dat end end)
        elseif is_png(_src) then
            elem_ref.data = _src
        end
    end
    set_image(col_.Image)
    function elem_ref:SetImage(_src) set_image(_src); return elem_ref end
    function elem_ref:SetAspectRatio(rad) elem_ref.ratio = parse_ratio(rad); return elem_ref end
    return expose_value(elem_ref, function() return elem_ref.data end, function(__, val) set_image(val) end)
end

local function mk_button_row(col_)
    return expose_value({ kind = "buttonrow", buttons = col_.Buttons or {}, hover = new_spring(0, 14) }, function() return nil end)
end

local function mk_paragraph(col_)
    local elem_ref = { kind = "paragraph", title = col_.Title or "Paragraph", hover = new_spring(0, 14),
        titleAlign = align_of(col_.TitleAlignment), contentAlign = align_of(col_.ContentAlignment), callback = col_.Callback }
    elem_ref.value = tostring(col_.Content or "")
    elem_ref.lines = paragraph_lines(elem_ref.value)
    function elem_ref:SetContent(_content)
        state.Dirty = true
        elem_ref.value = tostring(_content or "")
        elem_ref.lines = paragraph_lines(elem_ref.value)
        _safe(elem_ref.callback, elem_ref.value)
        _safe(elem_ref.changed, elem_ref.value)
        return elem_ref
    end
    elem_ref.SetValue = elem_ref.SetContent
    function elem_ref:OnChanged(callback_fn) elem_ref.changed = callback_fn; _safe(callback_fn, elem_ref.value, elem_ref.value); return elem_ref end
    return expose_value(elem_ref, function() return elem_ref.value end, function(__, val) elem_ref:SetContent(val) end)
end

local function mk_button(col_)
    local elem_ref = { kind = "button", title = col_.Title or col_.Text or "Button", desc = col_.Description,
        callback = col_.Callback, value = col_.Value, hover = new_spring(0, 14), rightIcon = "chevron-right" }
    load_icon("chevron-right", function(payload) elem_ref.rightIconData = payload end)
    return expose_value(elem_ref, function() return elem_ref.value end, function() end)
end

local function mk_toggle(col_)
    local elem_ref = { kind = "toggle", title = col_.Title or col_.Text or "Toggle", desc = col_.Description,
        value = col_.Default and true or false, callback = col_.Callback,
        hover = new_spring(0, 14), anim = new_spring(col_.Default and 1 or 0, 18) }
    function elem_ref:OnChanged(callback_fn) elem_ref.changed = callback_fn; _safe(callback_fn, elem_ref.value, elem_ref.value); return elem_ref end
    function elem_ref:SetValue(val)
        state.Dirty = true
        elem_ref.value = not not val
        elem_ref.anim.goal = elem_ref.value and 1 or 0
        _safe(elem_ref.callback, elem_ref.value)
        _safe(elem_ref.changed, elem_ref.value)
    end
    return expose_value(elem_ref, function() return elem_ref.value end, function(__, val) elem_ref:SetValue(val) end)
end

local function mk_slider(col_)
    local elem_ref = { kind = "slider", title = col_.Title or "Slider", desc = col_.Description,
        min = col_.Min or 0, max = col_.Max or 100, value = col_.Default or col_.Min or 0,
        rounding = col_.Rounding or 0, callback = col_.Callback, hover = new_spring(0, 14) }
    local _span = math.max(1e-6, elem_ref.max - elem_ref.min)
    local function _roundv(val)
        val = _clamp(val, elem_ref.min, elem_ref.max)
        if elem_ref.rounding > 0 then local mod_ = 10 ^ elem_ref.rounding; return math.floor(val * mod_ + 0.5) / mod_ end
        return math.floor(val + 0.5)
    end
    elem_ref.value = _roundv(elem_ref.value)
    elem_ref.frac = new_spring((elem_ref.value - elem_ref.min) / _span, 20)
    function elem_ref:OnChanged(callback_fn) elem_ref.changed = callback_fn; _safe(callback_fn, elem_ref.value, elem_ref.value); return elem_ref end
    function elem_ref:SetValue(val)
        state.Dirty = true
        local before = elem_ref.value
        elem_ref.value = _roundv(val)
        elem_ref.frac.goal = (elem_ref.value - elem_ref.min) / _span
        _safe(elem_ref.callback, elem_ref.value, before)
        _safe(elem_ref.changed, elem_ref.value, before)
    end
    return expose_value(elem_ref, function() return elem_ref.value end, function(__, val) elem_ref:SetValue(val) end)
end

local function mk_dropdown(col_)
    local elem_ref = { kind = "dropdown", title = col_.Title or "Dropdown", desc = col_.Description,
        options = col_.Options or col_.Values or { "None" }, multi = col_.Multi or false, callback = col_.Callback,
        hover = new_spring(0, 14), maxItems = col_.MaxItems or 6, scroll = 0,
        displayer = col_.Displayer, allowNull = col_.AllowNull or false,
        searchable = col_.Searchable or false, searchText = "", searchPlaceholder = col_.SearchPlaceholder or "Search..." }
    if elem_ref.multi then
        elem_ref.value = {}
        if type(col_.Default) == "table" then for __, val in ipairs(col_.Default) do elem_ref.value[val] = true end end
    else
        local dat = col_.Default
        if type(dat) == "number" and elem_ref.options[dat] ~= nil then elem_ref.value = elem_ref.options[dat]
        elseif dat ~= nil then elem_ref.value = dat
        else elem_ref.value = elem_ref.options[1] end
    end
    function elem_ref:OnChanged(callback_fn) elem_ref.changed = callback_fn; _safe(callback_fn, elem_ref.value, elem_ref.value); return elem_ref end
    function elem_ref:SetValue(val)
        state.Dirty = true
        if elem_ref.multi then
            local _want = {}
            if type(val) == "table" then
                for key_, _on in pairs(val) do
                    if type(key_) == "number" then _want[_on] = true elseif _on then _want[key_] = true end
                end
            end
            local _nv = {}
            for __, other_ in ipairs(elem_ref.options) do if _want[other_] then _nv[other_] = true end end
            elem_ref.value = _nv
        else
            elem_ref.value = val
        end
        _safe(elem_ref.callback, elem_ref.value)
        _safe(elem_ref.changed, elem_ref.value)
    end
    function elem_ref:SetValues(entries)
        state.Dirty = true
        elem_ref.options = entries or elem_ref.options
        elem_ref.scroll = 0
        if not elem_ref.multi then
            local success = false
            for __, other_ in ipairs(elem_ref.options) do if other_ == elem_ref.value then success = true; break end end
            if not success and not elem_ref.allowNull then elem_ref.value = elem_ref.options[1] end
        end
        return elem_ref
    end
    return expose_value(elem_ref, function() return elem_ref.value end, function(__, val) elem_ref:SetValue(val) end)
end

local function norm_mode(mod_)
    mod_ = tostring(mod_ or "Toggle"):lower()
    if mod_ == "always" then return "Always" end
    if mod_ == "hold" then return "Hold" end
    return "Toggle"
end
local function key_held(_vk)
    if not _vk then return false end
    if _vk == 0x01 then return ismouse1pressed() end
    local key_ = input2.keys[_vk]
    return (key_ and key_.held) or false
end
local function mk_keybind(col_)
    local elem_ref = { kind = "keybind", title = col_.Title or "Keybind", desc = col_.Description,
        key = nil, keyName = "None", mode = norm_mode(col_.Mode), toggled = false,
        callback = col_.Callback, changedCallback = col_.ChangedCallback, hover = new_spring(0, 14) }
    elem_ref.key, elem_ref.keyName = resolve_key(col_.Default or col_.Value)
    function elem_ref:OnChanged(callback_fn) elem_ref.changed = callback_fn; _safe(callback_fn, elem_ref.keyName, elem_ref.keyName); return elem_ref end
    function elem_ref:OnClick(callback_fn) elem_ref.clicked = callback_fn; return elem_ref end
    function elem_ref:GetState()
        if state.Focused and elem_ref.mode ~= "Always" then return false end
        if elem_ref.mode == "Always" then return true end
        if elem_ref.mode == "Toggle" then return elem_ref.toggled end
        return key_held(elem_ref.key)
    end
    function elem_ref:DoClick()
        if elem_ref.mode == "Toggle" then elem_ref.toggled = not elem_ref.toggled end
        _safe(elem_ref.callback, elem_ref.toggled)
        _safe(elem_ref.clicked, elem_ref.toggled)
    end
    function elem_ref:SetValue(key_name2, _mode)
        state.Dirty = true
        elem_ref.key, elem_ref.keyName = resolve_key(key_name2)
        if _mode then elem_ref.mode = norm_mode(_mode) end
        _safe(elem_ref.changedCallback, elem_ref.keyName)
        _safe(elem_ref.changed, elem_ref.keyName)
    end
    table.insert(all_keybinds, elem_ref)
    return expose_value(elem_ref, function() return elem_ref.keyName end, function(__, val) elem_ref:SetValue(val) end)
end

local function mk_colorpicker(col_)
    local elem_ref = { kind = "colorpicker", title = col_.Title or "Color", desc = col_.Description,
        value = col_.Default or Color3.fromRGB(255, 255, 255), callback = col_.Callback, hover = new_spring(0, 14) }
    elem_ref.h, elem_ref.s, elem_ref.v = rgb_to_hsv(elem_ref.value)
    elem_ref.hasAlpha = col_.Transparency ~= nil or col_.Alpha ~= nil
    elem_ref.alpha = col_.Alpha or (col_.Transparency ~= nil and (1 - col_.Transparency)) or 1
    elem_ref.updateOnChange = col_.UpdateOnChange or col_.UpdateWhileSliding or false
    function elem_ref:OnChanged(callback_fn) elem_ref.changed = callback_fn; _safe(callback_fn, elem_ref.value, elem_ref.value); return elem_ref end
    function elem_ref:SetValue(_col)
        state.Dirty = true
        elem_ref.value = _col; elem_ref.h, elem_ref.s, elem_ref.v = rgb_to_hsv(_col)
        _safe(elem_ref.callback, _col)
        _safe(elem_ref.changed, _col)
    end
    function elem_ref:SetValueRGB(_col, _transparency)
        if _transparency ~= nil then elem_ref.alpha = _clamp(1 - _transparency, 0, 1) end
        elem_ref:SetValue(_col)
    end
    return expose_value(elem_ref, function() return elem_ref.value end, function(__, val) elem_ref:SetValue(val) end)
end

local function mk_input(col_)
    local elem_ref = { kind = "input", title = col_.Title or "Input", desc = col_.Description,
        text = col_.Default or "", placeholder = col_.Placeholder or "", numeric = col_.Numeric or false,
        finished = col_.Finished or false, callback = col_.Callback, hover = new_spring(0, 14), ul = new_spring(0, 20),
        maxLength = col_.MaxLength, clearOnFocusLost = col_.ClearOnFocusLost or false }
    if elem_ref.maxLength and #elem_ref.text > elem_ref.maxLength then elem_ref.text = elem_ref.text:sub(1, elem_ref.maxLength) end
    function elem_ref:OnChanged(callback_fn) elem_ref.changed = callback_fn; _safe(callback_fn, elem_ref.text, elem_ref.text); return elem_ref end
    function elem_ref:SetValue(val)
        state.Dirty = true
        val = tostring(val)
        if elem_ref.numeric and tonumber(val) == nil and #val > 0 then return end
        if elem_ref.maxLength and #val > elem_ref.maxLength then val = val:sub(1, elem_ref.maxLength) end
        elem_ref.text = val
        _safe(elem_ref.callback, elem_ref.text)
        _safe(elem_ref.changed, elem_ref.text)
    end
    return expose_value(elem_ref, function() return elem_ref.text end, function(__, val) elem_ref:SetValue(val) end)
end

local function dd_display(elem_ref)
    local function _disp(val) if elem_ref.displayer then return tostring(elem_ref.displayer(val)) end return tostring(val) end
    if elem_ref.multi then
        local _parts = {}
        for __, option in ipairs(elem_ref.options) do if elem_ref.value[option] then _parts[#_parts + 1] = _disp(option) end end
        if #_parts == 0 then return "None" end
        if #_parts <= 2 then return table.concat(_parts, ", ") end
        return #_parts .. " selected"
    end
    if elem_ref.value == nil then return "None" end
    return _disp(elem_ref.value)
end

local function blur_field()
    local func = state.Focused
    if func and func.onCommit then func.onCommit(func.buf) end
    state.Focused = nil
end

local card_height
local function content_w() return state.Win.w - rail_w - 28 end

-- space the control on the right of a card takes, so long titles/descriptions wrap before it
local function slider_value_text(elem_ref)
    return (elem_ref.rounding and elem_ref.rounding > 0) and string.format("%." .. elem_ref.rounding .. "f", elem_ref.value) or tostring(math.floor((elem_ref.value or 0) + 0.5))
end
local function right_reserve(elem_ref, wd)
    local key_ = elem_ref.kind
    if key_ == "toggle" then return d2(36, 32) + 22 + (elem_ref.keybind and (d2(48, 44) + 10) or 0) end
    if key_ == "dropdown" then return math.min(160, math.floor(wd * 0.46)) + 22 end
    if key_ == "keybind" then return 84 + 22 end
    if key_ == "colorpicker" then return d2(32, 28) + 22 end
    if key_ == "input" then return elem_ref.fullWidth and 10 or (math.min(170, math.floor(wd * 0.5)) + 22) end
    if key_ == "slider" then return text_w(slider_value_text(elem_ref), 12) + 14 + 12 end
    if key_ == "button" then return elem_ref.rightIconData and 36 or 12 end
    return 12
end
local function label_lines(elem_ref, wd)
    local _tx = elem_ref.icon and 38 or 14
    local _avail = math.max(40, math.floor(wd - _tx - right_reserve(elem_ref, wd)))
    -- a slider's value only sits on the title row, the description can use the full width
    local d_avail = elem_ref.kind == "slider" and math.max(40, math.floor(wd - _tx - 14)) or _avail
    local key_name2 = _avail .. ":" .. d_avail .. ":" .. tostring(elem_ref.title) .. ":" .. tostring(elem_ref.desc)
    if elem_ref._lblKey ~= key_name2 then
        elem_ref._tl = wrap_text(elem_ref.title or "", 13, _avail)
        elem_ref._dl = elem_ref.desc and wrap_text(elem_ref.desc, 12, d_avail) or nil
        elem_ref._lblKey = key_name2
    end
    return elem_ref._tl, elem_ref._dl
end
local function label_extra(elem_ref, wd)
    local _tl2, _dl2 = label_lines(elem_ref, wd)
    return ((#_tl2 - 1) + (_dl2 and (#_dl2 - 1) or 0)) * d2(15, 14)
end
card_height = function(elem_ref, wd)
    wd = wd or content_w()
    local key_ = elem_ref.kind
    if key_ == "divider" then return 9 end
    if key_ == "buttonrow" then return d2(38, 30) end
    if key_ == "space" then return elem_ref.height end
    if key_ == "code" then return 54 + #elem_ref.lines * 14 end
    if key_ == "image" then return math.max(20, math.floor(wd * elem_ref.ratio + 0.5)) end
    if key_ == "columns" then
        local cnt = #elem_ref.cols
        if cnt == 0 then return 1 end
        local col_w = (wd - elem_ref.gap * (cnt - 1)) / cnt
        local _best = 0
        for __, _col in ipairs(elem_ref.cols) do
            local ht = 0
            for ix, col_ in ipairs(_col.elements) do ht = ht + card_height(col_, col_w) + (ix > 1 and elem_ref.gap or 0) end
            if ht > _best then _best = ht end
        end
        return math.max(_best, 1)
    end
    if elem_ref.kind == "paragraph" then return d2(42, 34) + #elem_ref.lines * d2(15, 14) end
    local _extra = label_extra(elem_ref, wd)
    if elem_ref.kind == "slider" then return (elem_ref.desc and d2(66, 54) or d2(50, 40)) + _extra end
    if elem_ref.kind == "dropdown" then return (elem_ref.desc and d2(60, 48) or d2(44, 34)) + _extra end
    return (elem_ref.desc and d2(54, 44) or d2(38, 30)) + _extra
end

local function process_el(elem_ref, _idp, px_, py_, wd, ht, delta, zz, _block)
    local _hovered = in_bounds(px_, py_, wd, ht) and not state.Drag and not _block
    local _interactive = elem_ref.kind ~= "paragraph"

    if elem_ref.kind == "space" then return end
    if elem_ref.kind == "divider" then
        _line(_idp .. ".ln", px_ + 4, py_ + 4, px_ + wd - 4, py_ + 4, theme.TitleBarLine, 0.8, zz)
        return
    end
    if elem_ref.kind == "image" then
        if elem_ref.data then
            _image(_idp .. ".im", elem_ref.data, px_, py_, wd, ht, 1, zz, ui.ImageRounding and elem_ref.radius or 0)
        else
            _rect(_idp .. ".ph", px_, py_, wd, ht, theme.Element, op2.Element, zz, elem_ref.radius)
            label_text(_idp .. ".pt", "loading image...", px_ + wd / 2, py_ + ht / 2, 12, theme.SubText, zz + 1, true)
        end
        return
    end
    if elem_ref.kind == "columns" then
        local cnt = #elem_ref.cols
        if cnt == 0 then return end
        local col_w = (wd - elem_ref.gap * (cnt - 1)) / cnt
        for _ci, _col in ipairs(elem_ref.cols) do
            local _cx = math.floor(px_ + (_ci - 1) * (col_w + elem_ref.gap))
            local _cy = py_
            for _ei, col_ in ipairs(_col.elements) do
                local _pw = math.max(40, math.floor(col_w) - 28)
                if col_.kind == "paragraph" and (col_._wrapW ~= _pw or col_._wrapSrc ~= col_.value) then
                    col_.lines = wrap_text(col_.value, 12, _pw); col_._wrapW = _pw; col_._wrapSrc = col_.value
                end
                local _ch = card_height(col_, col_w)
                process_el(col_, _idp .. "c" .. _ci .. "_" .. _ei, _cx, _cy, math.floor(col_w), _ch, delta, zz, _block)
                _cy = _cy + _ch + elem_ref.gap
            end
        end
        return
    end

    if _interactive then elem_ref.hover.goal = _hovered and 1 or 0 end
    spring_step(elem_ref.hover, delta)
    if not elem_ref.bare then
        _rect(_idp .. ".bg", px_, py_, wd, ht, theme.Element, _lerp(op2.Element, op2.ElementHover, elem_ref.hover.v), zz, 5)
        _outline(_idp .. ".bd", px_, py_, wd, ht, theme.ElementBorder, op2.Border, zz + 1, 5)
    end

    if elem_ref.kind == "buttonrow" then
        local cnt = #elem_ref.buttons
        if cnt == 0 then return end
        local _pad, _gap = 6, 6
        local _bw = (wd - _pad * 2 - _gap * (cnt - 1)) / cnt
        local _bh = ht - _pad * 2
        for ix, bt in ipairs(elem_ref.buttons) do
            local _bx = math.floor(px_ + _pad + (ix - 1) * (_bw + _gap))
            local _by = py_ + _pad
            local _bwi = math.floor(_bw)
            local _hov = not _block and in_bounds(_bx, _by, _bwi, _bh)
            local _acc = bt.Accent
            local _op = _acc and (_hov and 1 or 0.85) or (_hov and (input2.down and 1 or 0.95) or op2.Control)
            _rect(_idp .. ".b" .. ix, _bx, _by, _bwi, _bh, _acc and theme.Accent or theme.Control, _op, zz + 2, 5)
            _outline(_idp .. ".bo" .. ix, _bx, _by, _bwi, _bh, _acc and theme.Accent or theme.ElementBorder, 0.6, zz + 3, 5)
            label_text(_idp .. ".bt" .. ix, tostring(bt.Title or "Button"), _bx + _bwi / 2, _by + _bh / 2, 12,
                _acc and Color3.fromRGB(15, 15, 15) or theme.Text, zz + 4, true)
            if _hov and input2.clicked then _safe(bt.Callback) end
        end
        return
    end

    if elem_ref.kind == "code" then
        label_text(_idp .. ".t", elem_ref.title, px_ + 14, py_ + 11, 13, theme.Text, zz + 2)
        local _bw, _bh = 56, 20
        local _bx, _by = px_ + wd - 12 - _bw, py_ + 8
        local b_hover = not _block and in_bounds(_bx, _by, _bw, _bh)
        _rect(_idp .. ".cb", _bx, _by, _bw, _bh, theme.Control, b_hover and 0.95 or op2.Control, zz + 2, 5)
        _outline(_idp .. ".cbd", _bx, _by, _bw, _bh, theme.ElementBorder, 0.6, zz + 3, 5)
        local _copied = elem_ref.copiedT and tick() - elem_ref.copiedT < 1.5
        label_text(_idp .. ".cbt", _copied and "Copied" or "Copy", _bx + _bw / 2, _by + _bh / 2, 11, _copied and theme.Accent or theme.Text, zz + 3, true)
        if b_hover and input2.clicked then
            pcall(setclipboard, elem_ref.code)
            elem_ref.copiedT = tick()
            _safe(elem_ref.onCopy, elem_ref.code)
        end
        local _px, _py = px_ + 10, py_ + 36
        _rect(_idp .. ".bx", _px, _py, wd - 20, #elem_ref.lines * 14 + 8, Color3.new(0, 0, 0), 0.25, zz + 1, 4)
        for ix, _ln in ipairs(elem_ref.lines) do
            label_text(_idp .. ".l" .. ix, _ln, _px + 8, _py + 4 + (ix - 1) * 14, 12, theme.SubText, zz + 2, false, nil, 5)
        end
        return
    end

    if elem_ref.kind == "paragraph" then
        local function aligned_x(_align, str_, _size)
            if _align == "center" then return px_ + math.floor(wd / 2), true end
            if _align == "right" then return px_ + wd - 14 - text_w(str_, _size), false end
            return px_ + 14, false
        end
        local _tx, _tc = aligned_x(elem_ref.titleAlign, elem_ref.title, 13)
        label_text(_idp .. ".t", elem_ref.title, _tx, py_ + d2(12, 8), 13, theme.Text, zz + 2, _tc)
        local _ly = py_ + d2(32, 26)
        for ix, _ln in ipairs(elem_ref.lines) do
            local _lx, _lc = aligned_x(elem_ref.contentAlign, _ln, 12)
            label_text(_idp .. ".l" .. ix, _ln, _lx, _ly, 12, theme.SubText, zz + 2, _lc)
            _ly = _ly + d2(15, 14)
        end
        return
    end

    local t_lines, d_lines = label_lines(elem_ref, wd)
    local lh = d2(15, 14)
    local extra_h = ((#t_lines - 1) + (d_lines and (#d_lines - 1) or 0)) * lh
    local title_y = (elem_ref.desc or elem_ref.kind == "slider") and (py_ + d2(11, 7)) or (py_ + math.floor((ht - 14 - (#t_lines - 1) * lh) / 2))
    local title_x = px_ + 14
    if elem_ref.icon then
        if elem_ref.iconData then _image(_idp .. ".ic", elem_ref.iconData, px_ + 14, py_ + math.floor((ht - 16) / 2), 16, 16, 0.85, zz + 2) end
        title_x = px_ + 38
    end
    for ix, _ln in ipairs(t_lines) do
        label_text(_idp .. ".t" .. (ix > 1 and ix or ""), _ln, title_x, title_y + (ix - 1) * lh, 13, theme.Text, zz + 2)
    end
    if d_lines then
        local _dy = title_y + d2(16, 15) + (#t_lines - 1) * lh
        for ix, _ln in ipairs(d_lines) do
            label_text(_idp .. ".d" .. (ix > 1 and ix or ""), _ln, title_x, _dy + (ix - 1) * lh, 12, theme.SubText, zz + 2)
        end
    end

    if elem_ref.kind == "button" then
        if _hovered and input2.down then _rect(_idp .. ".bg", px_, py_, wd, ht, theme.Element, op2.ElementHover + 0.08, zz, 5) end
        if elem_ref.rightIconData then _image(_idp .. ".rc", elem_ref.rightIconData, px_ + wd - 26, py_ + math.floor((ht - 16) / 2), 16, 16, 0.7, zz + 2) end
        if _hovered and input2.clicked then _safe(elem_ref.callback, elem_ref.value) end

    elseif elem_ref.kind == "toggle" then
        local pill_w, pill_h = d2(36, 32), d2(18, 16)
        local _px = px_ + wd - 12 - pill_w
        local _py = py_ + math.floor((ht - pill_h) / 2)
        local chip_hit = false
        if elem_ref.keybind then
            local _kb = elem_ref.keybind
            local _listening = (state.KBListening == _kb)
            local ch_w, ch_h = d2(48, 44), d2(20, 18)
            local ch_x = _px - 10 - ch_w
            local ch_y = py_ + math.floor((ht - ch_h) / 2)
            chip_hit = not _block and in_bounds(ch_x, ch_y, ch_w, ch_h)
            _rect(_idp .. ".tkb", ch_x, ch_y, ch_w, ch_h, theme.Control, chip_hit and 0.95 or op2.Control, zz + 2, 5)
            _outline(_idp .. ".tkbd", ch_x, ch_y, ch_w, ch_h, _listening and theme.Accent or theme.ElementBorder, 0.6, zz + 3, 5)
            local _kt = _listening and "..." or ("[" .. (_kb.keyName or "None") .. "]")
            label_text(_idp .. ".tkt", _kt, ch_x + ch_w / 2, ch_y + ch_h / 2, 11, _listening and theme.Accent or theme.Text, zz + 3, true)
            if chip_hit and input2.clicked then state.KBListening = _kb end
        end
        if _hovered and input2.clicked and not chip_hit then
            elem_ref.value = not elem_ref.value
            elem_ref.anim.goal = elem_ref.value and 1 or 0
            _safe(elem_ref.callback, elem_ref.value)
            _safe(elem_ref.changed, elem_ref.value)
        end
        spring_step(elem_ref.anim, delta)
        local tm = elem_ref.anim.v
        _rect(_idp .. ".pill", _px, _py, pill_w, pill_h, theme.Accent, tm, zz + 2, 9)
        _outline(_idp .. ".pilb", _px, _py, pill_w, pill_h, lerp_color(theme.ToggleSlider, theme.Accent, tm), 0.55, zz + 3, 9)
        _circle(_idp .. ".knob", _px + _lerp(pill_h / 2, pill_w - pill_h / 2, tm), _py + pill_h / 2, pill_h / 2 - 3, Color3.new(1, 1, 1), _lerp(0.85, 1, tm), zz + 4)

    elseif elem_ref.kind == "slider" then
        local _tx, _tw = px_ + 14, wd - 28
        local _ty = py_ + (elem_ref.desc and d2(50, 42) or d2(34, 27)) + extra_h
        local _editing = state.Focused and state.Focused.owner == elem_ref
        local _vs = (elem_ref.rounding and elem_ref.rounding > 0) and string.format("%." .. elem_ref.rounding .. "f", elem_ref.value) or tostring(math.floor(elem_ref.value + 0.5))
        local shown_v, vsel_x, vsel_w = _vs, 0, 0
        if _editing then
            local _blink = math.floor(tick() * 2) % 2 == 0
            shown_v, vsel_x, vsel_w = field_layout(state.Focused.buf, state.Focused.caret, state.Focused.sel, 12, 120, _blink)
        end
        local _vwid = text_w(shown_v, 12)
        local _vx = px_ + wd - 14 - _vwid
        local v_hover = not _block and in_bounds(_vx - 6, py_ + d2(8, 4), _vwid + 12, 18)
        if _editing and vsel_w > 0 then _rect(_idp .. ".vsel", _vx + vsel_x, py_ + d2(9, 5), vsel_w, 15, theme.Accent, 0.30, zz + 1, 1) end
        label_text(_idp .. ".v", shown_v, _vx, py_ + d2(11, 7), 12, _editing and theme.Accent or theme.SubText, zz + 2)
        if not _editing and input2.down and not _block and (elem_ref.dragging or (input2.clicked and not v_hover and in_bounds(_tx - 6, _ty - 8, _tw + 12, 18))) then
            elem_ref.dragging = true
            local func = _clamp((input2.mx - _tx) / _tw, 0, 1)
            local _raw = elem_ref.min + func * (elem_ref.max - elem_ref.min)
            local val = (elem_ref.rounding and elem_ref.rounding > 0) and tonumber(string.format("%." .. elem_ref.rounding .. "f", _raw)) or math.floor(_raw + 0.5)
            if val ~= elem_ref.value then
                local before = elem_ref.value
                elem_ref.value = val
                elem_ref.frac.goal = (elem_ref.value - elem_ref.min) / math.max(1e-6, elem_ref.max - elem_ref.min)
                _safe(elem_ref.callback, val, before)
                _safe(elem_ref.changed, val, before)
            end
        elseif not input2.down then
            elem_ref.dragging = false
        end
        if not _editing and v_hover and input2.clicked then
            state.KBListening = nil; state.Overlay = nil; elem_ref.dragging = false
            state.Focused = { owner = elem_ref, id = "value", buf = _vs, numeric = true, live = false,
                onCommit = function(_buf) local cnt = tonumber(_buf); if cnt then elem_ref:SetValue(cnt) end end }
        elseif _editing and input2.clicked and not v_hover then
            blur_field()
        end
        spring_step(elem_ref.frac, delta)
        local func = _clamp(elem_ref.frac.v, 0, 1)
        _rect(_idp .. ".trk", _tx, _ty, _tw, 4, theme.ToggleSlider, 0.30, zz + 2, 2)
        _rect(_idp .. ".fil", _tx, _ty, math.max(0, _tw * func), 4, theme.Accent, 1, zz + 3, 2)
        _circle(_idp .. ".knb", _tx + _tw * func, _ty + 2, 6, theme.Text, 1, zz + 4)

    elseif elem_ref.kind == "dropdown" then
        local box_h = d2(26, 22)
        local box_w = math.min(160, math.floor(wd * 0.46))
        local _bx = px_ + wd - 12 - box_w
        local _by = (elem_ref.desc and extra_h == 0) and (py_ + d2(28, 22)) or (py_ + math.floor((ht - box_h) / 2))
        local b_hover = not _block and in_bounds(_bx, _by, box_w, box_h)
        _rect(_idp .. ".db", _bx, _by, box_w, box_h, theme.Control, b_hover and 0.95 or op2.Control, zz + 2, 5)
        _outline(_idp .. ".dbd", _bx, _by, box_w, box_h, theme.ElementBorder, 0.5, zz + 3, 5)
        label_text(_idp .. ".dt", dd_display(elem_ref), _bx + 8, _by + d2(6, 4), 12, theme.Text, zz + 3)
        label_text(_idp .. ".dc", "v", _bx + box_w - 13, _by + d2(6, 4), 12, theme.SubText, zz + 3)
        if b_hover and input2.clicked then
            elem_ref.searchText = ""; elem_ref.scroll = 0
            state.Overlay = { kind = "dropdown", el = elem_ref, x = _bx, y = _by + box_h + 4, belowY = _by + box_h + 4, boxTop = _by, w = box_w, focusSearch = elem_ref.searchable }
        end

    elseif elem_ref.kind == "keybind" then
        local box_h, box_w = d2(26, 22), 84
        local _bx = px_ + wd - 12 - box_w
        local _by = py_ + math.floor((ht - box_h) / 2)
        local _listening = (state.KBListening == elem_ref)
        local b_hover = not _block and in_bounds(_bx, _by, box_w, box_h)
        _rect(_idp .. ".kb", _bx, _by, box_w, box_h, theme.Control, b_hover and 0.95 or op2.Control, zz + 2, 5)
        _outline(_idp .. ".kbd", _bx, _by, box_w, box_h, _listening and theme.Accent or theme.ElementBorder, 0.6, zz + 3, 5)
        local caption = _listening and "..." or ("[" .. (elem_ref.keyName or "None") .. "]")
        label_text(_idp .. ".kt", caption, _bx + box_w / 2, _by + box_h / 2, 12, _listening and theme.Accent or theme.Text, zz + 3, true)
        if b_hover and input2.clicked then state.KBListening = elem_ref end

    elseif elem_ref.kind == "colorpicker" then
        local _sw, _swh = d2(32, 28), d2(20, 18)
        local _bx = px_ + wd - 12 - _sw
        local _by = py_ + math.floor((ht - _swh) / 2)
        local b_hover = not _block and in_bounds(_bx, _by, _sw, _swh)
        if elem_ref.hasAlpha then _rect(_idp .. ".cwbk", _bx, _by, _sw, _swh, Color3.fromRGB(55, 55, 55), 1, zz + 2, 5) end
        _rect(_idp .. ".cw", _bx, _by, _sw, _swh, elem_ref.value, elem_ref.hasAlpha and elem_ref.alpha or 1, zz + 3, 5)
        _outline(_idp .. ".cwd", _bx, _by, _sw, _swh, theme.ElementBorder, 0.6, zz + 4, 5)
        if b_hover and input2.clicked then
            state.Overlay = { kind = "colorpicker", el = elem_ref, ax = _bx + _sw, ay = _by + _swh + 4,
                origH = elem_ref.h, origS = elem_ref.s, origV = elem_ref.v, origAlpha = elem_ref.alpha }
        end

    elseif elem_ref.kind == "input" then
        local box_h = d2(26, 22)
        local box_w = math.min(170, math.floor(wd * 0.5))
        local _bx = px_ + wd - 12 - box_w
        local _by = py_ + math.floor((ht - box_h) / 2)
        if elem_ref.fullWidth then
            box_w = elem_ref.bare and wd or (wd - 24)
            _bx = elem_ref.bare and px_ or (px_ + 12)
        end
        local _focused = state.Focused and state.Focused.owner == elem_ref
        local b_hover = not _block and in_bounds(_bx, _by, box_w, box_h)
        _rect(_idp .. ".ib", _bx, _by, box_w, box_h, theme.Control, _focused and 0.95 or op2.Control, zz + 2, 5)
        _outline(_idp .. ".ibd", _bx, _by, box_w, box_h, _focused and theme.Accent or theme.ElementBorder, 0.6, zz + 3, 5)
        elem_ref.ul.goal = _focused and 1 or 0
        local _ulw = box_w * spring_step(elem_ref.ul, delta)
        if _ulw > 0.5 then _rect(_idp .. ".ul", _bx + (box_w - _ulw) / 2, _by + box_h - 2, _ulw, 2, theme.Accent, 1, zz + 4, 0) end
        local _raw = (_focused and state.Focused.buf) or elem_ref.text or ""
        local in_start_i = 1
        if _raw == "" and not _focused then
            label_text(_idp .. ".it", elem_ref.placeholder or "", _bx + 8, _by + d2(6, 4), 12, theme.SubText, zz + 3)
        else
            local _cpos = (_focused and state.Focused.caret) or 0
            local _blink = _focused and math.floor(tick() * 2) % 2 == 0
            local _vis, sel_x, sel_w, _si = field_layout(_raw, _cpos, _focused and state.Focused.sel, 12, box_w - 16, _blink)
            in_start_i = _si
            if sel_w > 0 then _rect(_idp .. ".isel", _bx + 8 + sel_x, _by + d2(5, 3), sel_w, 16, theme.Accent, 0.30, zz + 2, 1) end
            label_text(_idp .. ".it", _vis, _bx + 8, _by + d2(6, 4), 12, theme.Text, zz + 3)
        end
        local function click_caret(_buf) return math.max(0, math.min((in_start_i - 1) + caret_from_click(_buf:sub(in_start_i), _bx + 8, input2.mx, 12), #_buf)) end
        if b_hover and input2.clicked then
            if not _focused then
                state.KBListening = nil; state.Overlay = nil
                state.Focused = { owner = elem_ref, id = "text", buf = elem_ref.text or "", numeric = elem_ref.numeric, maxLength = elem_ref.maxLength,
                    caret = #(elem_ref.text or ""),
                    live = not elem_ref.finished,
                    onType = function(_buf) elem_ref.text = _buf; _safe(elem_ref.callback, elem_ref.text); _safe(elem_ref.changed, elem_ref.text) end,
                    onCommit = function(_buf)
                        if elem_ref.finished then elem_ref.text = _buf; _safe(elem_ref.callback, elem_ref.text); _safe(elem_ref.changed, elem_ref.text) else elem_ref.text = _buf end
                        if elem_ref.clearOnFocusLost then elem_ref.text = "" end
                    end }
            end
            local func = state.Focused
            local _cc = click_caret(func.buf)
            if func.lastClick and (tick() - func.lastClick) < 0.35 then
                func.sel = word_bound(func.buf, _cc, -1); func.caret = word_bound(func.buf, _cc, 1); func.dragAnchor = nil
            else
                func.caret = _cc; func.sel = nil; func.dragAnchor = _cc
            end
            func.lastClick = tick()
        elseif _focused and input2.down and not input2.clicked and state.Focused.dragAnchor then
            local _cc = click_caret(state.Focused.buf)
            state.Focused.caret = _cc
            state.Focused.sel = (_cc ~= state.Focused.dragAnchor) and state.Focused.dragAnchor or nil
        elseif _focused and input2.clicked and not b_hover then
            blur_field()
        end
    end
end

local function render_overlay(delta)
    local _ov = state.Overlay
    if not _ov then return false end
    local z2 = 120

    if _ov.kind == "dropdown" then
        local elem_ref = _ov.el
        local function _disp(val) if elem_ref.displayer then return tostring(elem_ref.displayer(val)) end return tostring(val) end
        local options_ = elem_ref.options
        local _filtered = options_
        if elem_ref.searchable and elem_ref.searchText ~= "" then
            _filtered = {}
            local qq = elem_ref.searchText:lower()
            for __, other_ in ipairs(options_) do if _disp(other_):lower():find(qq, 1, true) then _filtered[#_filtered + 1] = other_ end end
        end
        local row_h = 28
        local _pad = 4
        local search_h = elem_ref.searchable and 28 or 0
        local vis_n = math.min(#_filtered, elem_ref.maxItems or 6)
        local need_bar = #_filtered > vis_n
        local bar_w = need_bar and 6 or 0
        local list_h = math.max(row_h, vis_n * row_h)
        local panel_w = _ov.w
        local panel_h = _pad * 2 + search_h + list_h
        local __, _vhd = get_viewport()
        _ov.y = _ov.belowY or _ov.y
        if _ov.boxTop and _ov.y + panel_h > _vhd - 8 then _ov.y = _ov.boxTop - panel_h - 4 end
        if _ov.y < 8 then _ov.y = 8 end
        local max_scroll = math.max(0, #_filtered - vis_n)
        elem_ref.scroll = _clamp(elem_ref.scroll or 0, 0, max_scroll)

        _ov.anim = _ov.anim or new_spring(0, 24)
        _ov.rowHover = _ov.rowHover or {}
        _ov.anim.goal = _ov.closing and 0 or 1
        local ax2 = spring_step(_ov.anim, delta)
        if _ov.closing and ax2 < 0.04 then
            if state.Focused and state.Focused.owner == elem_ref then state.Focused = nil end
            state.Overlay = nil; return true
        end

        if shadow_on then _rect("ov.sh", _ov.x - 3, _ov.y - 3, panel_w + 6, panel_h + 6, Color3.new(0, 0, 0), 0.28 * ax2, z2 - 1, 8) end
        _rect("ov.bg", _ov.x, _ov.y, panel_w, panel_h, theme.OverlayBg, op2.Overlay * ax2, z2, 5)
        _outline("ov.bd", _ov.x, _ov.y, panel_w, panel_h, theme.OverlayBorder, 0.7 * ax2, z2 + 1, 5)

        if elem_ref.searchable then
            local _sbx, _sby, _sbw, _sbh = _ov.x + 4, _ov.y + 4, panel_w - 8, 22
            if _ov.focusSearch then
                _ov.focusSearch = nil
                state.Focused = { owner = elem_ref, id = "search", buf = elem_ref.searchText, numeric = false, live = true, caret = #elem_ref.searchText,
                    onType = function(_buf) elem_ref.searchText = _buf; elem_ref.scroll = 0 end,
                    onCommit = function(_buf) elem_ref.searchText = _buf; elem_ref.scroll = 0 end }
            end
            local _searching = state.Focused and state.Focused.owner == elem_ref
            _rect("ov.sb", _sbx, _sby, _sbw, _sbh, theme.Control, _searching and 0.95 or op2.Control, z2 + 2, 4)
            _outline("ov.sbd", _sbx, _sby, _sbw, _sbh, _searching and theme.Accent or theme.ElementBorder, 0.6 * ax2, z2 + 3, 4)
            local _stext = elem_ref.searchText
            if _stext == "" and not _searching then
                label_text("ov.sbt", elem_ref.searchPlaceholder, _sbx + 8, _sby + 4, 12, theme.SubText, z2 + 4, false, ax2)
            else
                local _cpos = (_searching and state.Focused.caret) or 0
                local _blink = _searching and math.floor(tick() * 2) % 2 == 0
                local _vis, ssel_x, ssel_w = field_layout(_stext, _cpos, _searching and state.Focused.sel, 12, _sbw - 16, _blink)
                if ssel_w > 0 then _rect("ov.ssel", _sbx + 8 + ssel_x, _sby + 3, ssel_w, 16, theme.Accent, 0.30 * ax2, z2 + 3, 1) end
                label_text("ov.sbt", _vis, _sbx + 8, _sby + 4, 12, theme.Text, z2 + 4, false, ax2)
            end
            if not _ov.closing and input2.clicked and in_bounds(_sbx, _sby, _sbw, _sbh) then
                state.Focused = { owner = elem_ref, id = "search", buf = elem_ref.searchText, numeric = false, live = true, caret = #elem_ref.searchText,
                    onType = function(_buf) elem_ref.searchText = _buf; elem_ref.scroll = 0 end,
                    onCommit = function(_buf) elem_ref.searchText = _buf; elem_ref.scroll = 0 end }
            end
        end

        local list_top = _ov.y + _pad + search_h
        for ix = 1, vis_n do
            local option = _filtered[ix + elem_ref.scroll]
            if option ~= nil then
                local _ry = list_top + (ix - 1) * row_h
                local r_hover = in_bounds(_ov.x, _ry, panel_w - bar_w, row_h) and not _ov.closing
                local _selected = elem_ref.multi and elem_ref.value[option] or (not elem_ref.multi and elem_ref.value == option)
                _ov.rowHover[ix] = _ov.rowHover[ix] or new_spring(0, 18)
                _ov.rowHover[ix].goal = r_hover and 1 or 0
                local _rh = spring_step(_ov.rowHover[ix], delta)
                _rect("ov.r" .. ix, _ov.x + 2, _ry, panel_w - 4 - bar_w, row_h - 2, theme.TabHighlight, 0.14 * _rh * ax2, z2 + 2, 4)
                label_text("ov.t" .. ix, _disp(option), _ov.x + 10, _ry + 7, 12, _selected and theme.Accent or theme.Text, z2 + 3, false, ax2)
                if _selected then label_text("ov.m" .. ix, "*", _ov.x + panel_w - bar_w - 16, _ry + 6, 13, theme.Accent, z2 + 3, false, ax2) end
                if r_hover and input2.clicked then
                    if elem_ref.multi then
                        elem_ref.value[option] = (not elem_ref.value[option]) or nil
                        _safe(elem_ref.callback, elem_ref.value); _safe(elem_ref.changed, elem_ref.value)
                    else
                        if elem_ref.allowNull and elem_ref.value == option then elem_ref.value = nil else elem_ref.value = option end
                        _safe(elem_ref.callback, elem_ref.value); _safe(elem_ref.changed, elem_ref.value)
                        _ov.closing = true
                    end
                end
            end
        end
        if vis_n == 0 then
            label_text("ov.t1", "No results", _ov.x + 10, list_top + 7, 12, theme.SubText, z2 + 3, false, ax2)
        end

        if need_bar then
            local track_x = _ov.x + panel_w - bar_w
            local thumb_h = math.max(20, list_h * vis_n / #_filtered)
            local thumb_y = list_top + (elem_ref.scroll / math.max(1, max_scroll)) * (list_h - thumb_h)
            _rect("ov.sbtk", track_x, list_top, bar_w, list_h, theme.OverlayBorder, 0.5 * ax2, z2 + 2, 2)
            _rect("ov.sbth", track_x, thumb_y, bar_w, thumb_h, theme.TabHighlight, 0.6 * ax2, z2 + 3, 2)
            if input2.down and (_ov.dragBar or (input2.clicked and in_bounds(track_x, list_top, bar_w, list_h))) then
                _ov.dragBar = true
                local func = _clamp((input2.my - list_top - thumb_h / 2) / math.max(1, list_h - thumb_h), 0, 1)
                elem_ref.scroll = math.floor(func * max_scroll + 0.5)
            elseif not input2.down then
                _ov.dragBar = false
            end
        end

        if input2.clicked and not _ov.closing and not in_bounds(_ov.x, _ov.y, panel_w, panel_h) then _ov.closing = true end
        return true

    elseif _ov.kind == "colorpicker" then
        local elem_ref = _ov.el
        local _pad, _sv, hue_w, sv_n = 10, 120, 14, 50
        local has_a = elem_ref.hasAlpha
        local alpha_w = 14
        local field_h = 22
        local panel_w = _pad + _sv + 8 + hue_w + (has_a and (8 + alpha_w) or 0) + _pad
        local inner_w = panel_w - _pad * 2
        local panel_h = _pad + _sv + 8 + field_h + 6 + field_h + 8 + 26 + _pad
        local __, _vh = get_viewport()
        local _px = _clamp(_ov.ax - panel_w, state.Win.x + 4, state.Win.x + state.Win.w - panel_w - 4)
        local _py = _clamp(_ov.ay, 8, math.max(8, _vh - panel_h - 8))
        local _svx, _svy = _px + _pad, _py + _pad
        local _hx = _svx + _sv + 8
        local _axx = _hx + hue_w + 8
        local fields_y = _svy + _sv + 8
        local rgb_y = fields_y + field_h + 6
        local btn_y = rgb_y + field_h + 8

        if shadow_on then _rect("ov.sh", _px - 3, _py - 3, panel_w + 6, panel_h + 6, Color3.new(0, 0, 0), 0.30, z2 - 1, 8) end
        _rect("ov.bg", _px, _py, panel_w, panel_h, theme.OverlayBg, op2.Overlay, z2, 5)
        _outline("ov.bd", _px, _py, panel_w, panel_h, theme.OverlayBorder, 0.7, z2 + 1, 5)

        if input2.down then
            if input2.clicked and in_bounds(_svx, _svy, _sv, _sv) then _ov.drag = "sv"
            elseif input2.clicked and in_bounds(_hx, _svy, hue_w, _sv) then _ov.drag = "hue"
            elseif has_a and input2.clicked and in_bounds(_axx, _svy, alpha_w, _sv) then _ov.drag = "alpha" end
        else
            _ov.drag = nil
        end
        if _ov.drag and state.Focused and state.Focused.owner == elem_ref then state.Focused = nil end
        if _ov.drag == "sv" then
            elem_ref.s = _clamp((input2.mx - _svx) / _sv, 0, 1)
            elem_ref.v = 1 - _clamp((input2.my - _svy) / _sv, 0, 1)
        elseif _ov.drag == "hue" then
            elem_ref.h = _clamp((input2.my - _svy) / _sv, 0, 1)
        elseif _ov.drag == "alpha" then
            elem_ref.alpha = 1 - _clamp((input2.my - _svy) / _sv, 0, 1)
        end
        if _ov.drag then
            elem_ref.value = Color3.fromHSV(elem_ref.h, elem_ref.s, elem_ref.v)
            if elem_ref.updateOnChange then _safe(elem_ref.callback, elem_ref.value); _safe(elem_ref.changed, elem_ref.value) end
        end

        local sv_map, hue_map, alpha_map = map_cache.sat, map_cache.hue, map_cache.alpha
        if sv_map then
            _rect("ov.svbg", _svx, _svy, _sv, _sv, Color3.fromHSV(elem_ref.h, 1, 1), 1, z2 + 2, 0)
            _image("ov.svimg", sv_map, _svx, _svy, _sv, _sv, 1, z2 + 3, 0)
        else
            local _cell = _sv / sv_n
            local key_ = 0
            for _gx = 0, sv_n - 1 do
                for _gy = 0, sv_n - 1 do
                    key_ = key_ + 1
                    _rect("ov.sv" .. key_, math.floor(_svx + _gx * _cell), math.floor(_svy + _gy * _cell), math.ceil(_cell), math.ceil(_cell),
                        Color3.fromHSV(elem_ref.h, (_gx + 0.5) / sv_n, 1 - (_gy + 0.5) / sv_n), 1, z2 + 2, 0)
                end
            end
        end
        if hue_map then
            _image("ov.huimg", hue_map, _hx, _svy, hue_w, _sv, 1, z2 + 2, 0)
        else
            local hc_n = 100
            local _hcell = _sv / hc_n
            for ix = 0, hc_n - 1 do
                _rect("ov.hu" .. ix, _hx, math.floor(_svy + ix * _hcell), hue_w, math.ceil(_hcell), Color3.fromHSV(ix / hc_n, 1, 1), 1, z2 + 2, 0)
            end
        end
        _outline("ov.svc", _svx + elem_ref.s * _sv - 3, _svy + (1 - elem_ref.v) * _sv - 3, 6, 6, Color3.fromRGB(255, 255, 255), 1, z2 + 4, 0)
        _rect("ov.huc", _hx - 2, _svy + elem_ref.h * _sv - 1, hue_w + 4, 2, Color3.fromRGB(255, 255, 255), 1, z2 + 4, 0)
        if has_a then
            if alpha_map then
                _rect("ov.abg", _axx, _svy, alpha_w, _sv, elem_ref.value, 1, z2 + 2, 0)
                _image("ov.aimg", alpha_map, _axx, _svy, alpha_w, _sv, 1, z2 + 3, 0)
            else
                local a_n = 100
                local _acell = _sv / a_n
                local a_back = Color3.fromRGB(48, 48, 48)
                for ix = 0, a_n - 1 do
                    local _av = 1 - ix / (a_n - 1)
                    _rect("ov.a" .. ix, _axx, math.floor(_svy + ix * _acell), alpha_w, math.ceil(_acell) + 1, lerp_color(a_back, elem_ref.value, _av), 1, z2 + 2, 0)
                end
            end
            _rect("ov.ac", _axx - 2, _svy + (1 - elem_ref.alpha) * _sv - 1, alpha_w + 4, 2, Color3.fromRGB(255, 255, 255), 1, z2 + 4, 0)
        end

        local col_ = elem_ref.value
        local _cr, _cg, on_change = math.floor(col_.R * 255 + 0.5), math.floor(col_.G * 255 + 0.5), math.floor(col_.B * 255 + 0.5)
        local hex_str = string.format("#%02X%02X%02X", _cr, _cg, on_change)
        local function field_focused(_id) return state.Focused and state.Focused.owner == elem_ref and state.Focused.id == _id end
        local function focus_field(_id, _seed, on_commit)
            if state.Focused and state.Focused.owner == elem_ref and state.Focused.onCommit then state.Focused.onCommit(state.Focused.buf) end
            state.Focused = { owner = elem_ref, id = _id, buf = _seed, numeric = (_id ~= "hex"), live = false, onCommit = on_commit }
        end
        local function draw_field(_fx, _fy, _fw, _id, val_str, on_commit)
            local _foc = field_focused(_id)
            _rect("ov.f_" .. _id, _fx, _fy, _fw, field_h, theme.Control, _foc and 0.95 or op2.Control, z2 + 3, 4)
            _outline("ov.fd_" .. _id, _fx, _fy, _fw, field_h, _foc and theme.Accent or theme.ElementBorder, 0.6, z2 + 4, 4)
            if _foc then
                local _blink = math.floor(tick() * 2) % 2 == 0
                local _vis, fsel_x, fsel_w = field_layout(state.Focused.buf, state.Focused.caret, state.Focused.sel, 12, _fw - 12, _blink)
                if fsel_w > 0 then _rect("ov.fs_" .. _id, _fx + 6 + fsel_x, _fy + 3, fsel_w, 16, theme.Accent, 0.30, z2 + 4, 1) end
                label_text("ov.ft_" .. _id, _vis, _fx + 6, _fy + 4, 12, theme.Text, z2 + 5)
            else
                label_text("ov.ft_" .. _id, val_str, _fx + 6, _fy + 4, 12, theme.Text, z2 + 5)
            end
            if not _foc and input2.clicked and in_bounds(_fx, _fy, _fw, field_h) then focus_field(_id, val_str, on_commit) end
        end

        draw_field(_px + _pad, fields_y, inner_w, "hex", hex_str, function(_buf)
            local success, _col = pcall(Color3.fromHex, (_buf:gsub("%s", "")))
            if success and _col then elem_ref.value = _col; elem_ref.h, elem_ref.s, elem_ref.v = rgb_to_hsv(_col); _safe(elem_ref.callback, elem_ref.value); _safe(elem_ref.changed, elem_ref.value) end
        end)
        local n_f = has_a and 4 or 3
        local _fw = math.floor((inner_w - (n_f - 1) * 6) / n_f)
        local _fx0 = _px + _pad
        draw_field(_fx0, rgb_y, _fw, "r", tostring(_cr), function(_buf) local cnt = tonumber(_buf); if cnt then cnt = _clamp(math.floor(cnt), 0, 255); local _col = Color3.fromRGB(cnt, _cg, on_change); elem_ref.value = _col; elem_ref.h, elem_ref.s, elem_ref.v = rgb_to_hsv(_col); _safe(elem_ref.callback, elem_ref.value); _safe(elem_ref.changed, elem_ref.value) end end)
        draw_field(_fx0 + (_fw + 6), rgb_y, _fw, "g", tostring(_cg), function(_buf) local cnt = tonumber(_buf); if cnt then cnt = _clamp(math.floor(cnt), 0, 255); local _col = Color3.fromRGB(_cr, cnt, on_change); elem_ref.value = _col; elem_ref.h, elem_ref.s, elem_ref.v = rgb_to_hsv(_col); _safe(elem_ref.callback, elem_ref.value); _safe(elem_ref.changed, elem_ref.value) end end)
        draw_field(_fx0 + (_fw + 6) * 2, rgb_y, _fw, "b", tostring(on_change), function(_buf) local cnt = tonumber(_buf); if cnt then cnt = _clamp(math.floor(cnt), 0, 255); local _col = Color3.fromRGB(_cr, _cg, cnt); elem_ref.value = _col; elem_ref.h, elem_ref.s, elem_ref.v = rgb_to_hsv(_col); _safe(elem_ref.callback, elem_ref.value); _safe(elem_ref.changed, elem_ref.value) end end)
        if has_a then
            draw_field(_fx0 + (_fw + 6) * 3, rgb_y, _fw, "a", tostring(math.floor(elem_ref.alpha * 100 + 0.5)), function(_buf) local cnt = tonumber(_buf); if cnt then elem_ref.alpha = _clamp(cnt / 100, 0, 1); _safe(elem_ref.callback, elem_ref.value); _safe(elem_ref.changed, elem_ref.value) end end)
        end

        local function close_picker() if state.Focused and state.Focused.owner == elem_ref then state.Focused = nil end; state.Overlay = nil end
        local half_w = math.floor((inner_w - 8) / 2)
        local cancel_hover = in_bounds(_px + _pad, btn_y, half_w, 26)
        _rect("ov.cancel", _px + _pad, btn_y, half_w, 26, theme.Control, cancel_hover and 0.95 or 0.9, z2 + 3, 5)
        _outline("ov.canceld", _px + _pad, btn_y, half_w, 26, theme.OverlayBorder, 0.6, z2 + 4, 5)
        label_text("ov.cancelt", "Cancel", _px + _pad + half_w / 2 - text_w("Cancel", 12) / 2, btn_y + 7, 12, theme.Text, z2 + 5)
        local done_x = _px + _pad + half_w + 8
        local done_hover = in_bounds(done_x, btn_y, half_w, 26)
        _rect("ov.done", done_x, btn_y, half_w, 26, theme.Accent, 1, z2 + 3, 5)
        _outline("ov.doned", done_x, btn_y, half_w, 26, theme.Accent, 0.6, z2 + 4, 5)
        label_text("ov.donet", "Done", done_x + half_w / 2 - text_w("Done", 12) / 2, btn_y + 7, 12, Color3.fromRGB(15, 15, 15), z2 + 5)
        if input2.clicked then
            if cancel_hover then
                elem_ref.h, elem_ref.s, elem_ref.v, elem_ref.alpha = _ov.origH, _ov.origS, _ov.origV, _ov.origAlpha
                elem_ref.value = Color3.fromHSV(elem_ref.h, elem_ref.s, elem_ref.v)
                _safe(elem_ref.callback, elem_ref.value); _safe(elem_ref.changed, elem_ref.value)
                close_picker(); return true
            elseif done_hover then
                elem_ref.value = Color3.fromHSV(elem_ref.h, elem_ref.s, elem_ref.v)
                _safe(elem_ref.callback, elem_ref.value); _safe(elem_ref.changed, elem_ref.value)
                close_picker(); return true
            end
        end

        if input2.clicked and not _ov.drag and not in_bounds(_px, _py, panel_w, panel_h) then close_picker() end
        return true
    end

    return false
end

local function poll_keybinds(_ck)
    if state.KBListening then
        local elem_ref = state.KBListening
        if not state.KBListenedFlag then state.KBMB1Armed = false; state.KBListenedFlag = true end
        if not ismouse1pressed() then state.KBMB1Armed = true end
        if state.KBMB1Armed and input2.clicked then
            elem_ref.key = 0x01; elem_ref.keyName = key_name[0x01] or "MB1"; state.KBListening = nil
            _safe(elem_ref.changedCallback, elem_ref.keyName)
            _safe(elem_ref.changed, elem_ref.keyName)
            return
        end
        for __, _vk in ipairs(scan_list) do
            if _vk ~= 0x01 and _ck(_vk) then
                if _vk == 0x1B then
                    state.KBListening = nil
                elseif _vk == 0x2E then
                    elem_ref.key = nil; elem_ref.keyName = "None"; state.KBListening = nil
                    _safe(elem_ref.changedCallback, nil)
                    _safe(elem_ref.changed, "None")
                else
                    elem_ref.key = _vk; elem_ref.keyName = key_name[_vk] or tostring(_vk); state.KBListening = nil
                    _safe(elem_ref.changedCallback, elem_ref.keyName)
                    _safe(elem_ref.changed, elem_ref.keyName)
                end
                break
            end
        end
        return
    end
    state.KBListenedFlag = false
    for __, elem_ref in ipairs(all_keybinds) do
        if elem_ref.key and ((elem_ref.key == 0x01 and input2.clicked) or (elem_ref.key ~= 0x01 and _ck(elem_ref.key))) then
            if elem_ref.mode == "Toggle" then elem_ref:DoClick() end
        end
    end
end

local clipboard = ""
local function sel_bounds(func)
    if not func.sel or func.sel == func.caret then return nil end
    return math.min(func.sel, func.caret), math.max(func.sel, func.caret)
end
local function delete_sel(func)
    local _lo, _hi = sel_bounds(func)
    if not _lo then return false end
    func.buf = func.buf:sub(1, _lo) .. func.buf:sub(_hi + 1)
    func.caret = _lo; func.sel = nil
    return true
end
local function copy_sel(func)
    local _lo, _hi = sel_bounds(func)
    if not _lo then return false end
    clipboard = func.buf:sub(_lo + 1, _hi)
    pcall(function() setclipboard(clipboard) end)
    return true
end
function word_bound(_buf, location, _dir)
    local cnt = #_buf
    if _dir < 0 then
        local ix = location
        while ix > 0 and _buf:sub(ix, ix):match("%s") do ix = ix - 1 end
        while ix > 0 and not _buf:sub(ix, ix):match("%s") do ix = ix - 1 end
        return ix
    end
    local ix = location
    while ix < cnt and _buf:sub(ix + 1, ix + 1):match("%s") do ix = ix + 1 end
    while ix < cnt and not _buf:sub(ix + 1, ix + 1):match("%s") do ix = ix + 1 end
    return ix
end

local function poll_text_input(_ck)
    local func = state.Focused
    if not func then return end
    func.caret = math.max(0, math.min(func.caret or #func.buf, #func.buf))
    if _ck(0x0D) then
        if func.onCommit then func.onCommit(func.buf) end
        state.Focused = nil
        return
    end
    if _ck(0x1B) then state.Focused = nil; return end
    local _changed = false
    local _ctrl = iskeypressed(0x11) or iskeypressed(0xA2) or iskeypressed(0xA3)
    local _shift = iskeypressed(0x10) or iskeypressed(0xA0) or iskeypressed(0xA1)
    local function move_caret(_to)
        _to = math.max(0, math.min(_to, #func.buf))
        if _shift then func.sel = func.sel or func.caret else func.sel = nil end
        func.caret = _to
    end

    if _ctrl and _ck(0x41) then func.sel = 0; func.caret = #func.buf end
    if _ctrl and _ck(0x43) then copy_sel(func) end
    if _ctrl and _ck(0x58) then if copy_sel(func) then delete_sel(func); _changed = true end end

    if _ck(0x25) then
        if _ctrl then move_caret(word_bound(func.buf, func.caret, -1))
        else local _lo = sel_bounds(func); if _lo and not _shift then func.caret = _lo; func.sel = nil else move_caret(func.caret - 1) end end
    end
    if _ck(0x27) then
        if _ctrl then move_caret(word_bound(func.buf, func.caret, 1))
        else local _lo, _hi = sel_bounds(func); if _hi and not _shift then func.caret = _hi; func.sel = nil else move_caret(func.caret + 1) end end
    end
    if _ck(0x24) then move_caret(0) end
    if _ck(0x23) then move_caret(#func.buf) end

    if _ck(0x08) then
        if delete_sel(func) then _changed = true
        elseif func.caret > 0 then func.buf = func.buf:sub(1, func.caret - 1) .. func.buf:sub(func.caret + 1); func.caret = func.caret - 1; _changed = true end
    end
    if _ck(0x2E) then
        if delete_sel(func) then _changed = true
        elseif func.caret < #func.buf then func.buf = func.buf:sub(1, func.caret) .. func.buf:sub(func.caret + 2); _changed = true end
    end

    if not _ctrl then
        for __, _vk in ipairs(char_scan_list) do
            if _ck(_vk) then
                local mod_ = char_map[_vk]
                local _chr = mod_ and (_shift and mod_[2] or mod_[1])
                if _chr and (not func.numeric or _chr:match("[%d%.%-]")) then
                    delete_sel(func)
                    if not func.maxLength or #func.buf < func.maxLength then
                        func.buf = func.buf:sub(1, func.caret) .. _chr .. func.buf:sub(func.caret + 1)
                        func.caret = func.caret + 1
                        _changed = true
                    end
                end
            end
        end
    end
    if _changed and func.live and func.onType then func.onType(func.buf) end
end

-- clip a polygon {{x,y},...} to x >= edge (keepRight) or x <= edge
local function clip_x(_poly, _edge, keep_right)
    local _out, cnt = {}, #_poly
    for ix = 1, cnt do
        local ax2, bt = _poly[ix], _poly[ix % cnt + 1]
        local _ain = keep_right and ax2[1] >= _edge or (not keep_right and ax2[1] <= _edge)
        local _bin = keep_right and bt[1] >= _edge or (not keep_right and bt[1] <= _edge)
        if _ain then _out[#_out + 1] = ax2 end
        if _ain ~= _bin then
            local tm = (_edge - ax2[1]) / (bt[1] - ax2[1])
            _out[#_out + 1] = { _edge, ax2[2] + (bt[2] - ax2[2]) * tm }
        end
    end
    return _out
end
local function shine_band(_idp, l2, t2, r2, b2, _cx, wd, _slant, _color, _alpha, zz)
    local _poly = { { _cx - wd / 2 + _slant, t2 }, { _cx + wd / 2 + _slant, t2 }, { _cx + wd / 2, b2 }, { _cx - wd / 2, b2 } }
    _poly = clip_x(_poly, l2, true)
    if #_poly >= 3 then _poly = clip_x(_poly, r2, false) end
    for ix = 2, #_poly - 1 do
        local _p1, _p2, _p3 = _poly[1], _poly[ix], _poly[ix + 1]
        draw(_idp .. (ix - 1), "Triangle", { Filled = true, Color = _color, Transparency = _alpha * render_fade, ZIndex = zz,
            PointA = Vector2.new(_p1[1], _p1[2]), PointB = Vector2.new(_p2[1], _p2[2]), PointC = Vector2.new(_p3[1], _p3[2]) })
    end
end
-- 12 stacked layers: wide + faint on the outside, narrow + bright near white in the core
local shine_layers = {}
for ix = 1, 12 do
    local tm = (ix - 1) / 11                       -- 0 = outermost, 1 = core
    shine_layers[ix] = { 230 * (1 - tm) ^ 1.6 + 6, 0.010 + 0.010 * tm, tm }
end
local white = Color3.new(1, 1, 1)
local function shine_pass(_idp, l2, t2, r2, b2, _cx, _slant, _col, _strength, zz)
    for _li, _layer in ipairs(shine_layers) do
        local col_ = lerp_color(_col, white, _layer[3] ^ 2 * 0.85)
        shine_band(_idp .. _li .. "_", l2, t2, r2, b2, _cx, _layer[1], _slant, col_, _layer[2] * _strength, zz)
    end
end
-- the window edge lights up where the band crosses it
local glint = { { 140, 0.10 }, { 70, 0.18 }, { 26, 0.35 }, { 8, 0.6 } }
local function edge_glint(_idp, l2, r2, py_, px_, _col, _strength, zz)
    for _gi, grp in ipairs(glint) do
        local _x1, _x2 = math.max(l2, px_ - grp[1] / 2), math.min(r2, px_ + grp[1] / 2)
        if _x2 > _x1 then
            draw(_idp .. _gi, "Line", { From = Vector2.new(_x1, py_), To = Vector2.new(_x2, py_), Thickness = 1,
                Color = lerp_color(_col, white, _gi / #glint * 0.8), Transparency = grp[2] * _strength * render_fade, ZIndex = zz })
        end
    end
end
local function render_shine(frame_win)
    local _period, _travel = ui.ShinePeriod or 7, ui.ShineTravel or 2.6 -- seconds per cycle, seconds moving
    local _ph = tick() % _period
    if _ph > _travel + 0.6 then return end
    anim_active = true
    local l2, t2, r2, b2 = frame_win.x + 1, frame_win.y + 1, frame_win.x + frame_win.w - 1, frame_win.y + frame_win.h - 1
    local _slant = (b2 - t2) * 0.42
    local _span = r2 - l2 + 520 + _slant
    local _col = ui.ShineColor or theme.Accent
    local _strength = ui.ShineStrength or 1
    -- main band, then a fainter, thinner one trailing 0.35s behind
    for _pass, settings in ipairs({ { 0, 1 }, { 0.35, 0.45 } }) do
        local tm = (_ph - settings[1]) / _travel
        if tm >= 0 and tm <= 1 then
            local elem = tm * tm * (3 - 2 * tm)
            local _cx = l2 - 260 - _slant + _span * elem
            -- fade in at the start and out at the end of the sweep
            local func = math.min(1, tm / 0.15, (1 - tm) / 0.15) * settings[2] * _strength
            shine_pass("win.sh" .. _pass .. "_", l2, t2, r2, b2, _cx, _slant, _col, func, 59)
            edge_glint("win.gt" .. _pass .. "_", frame_win.x + 8, frame_win.x + frame_win.w - 8, frame_win.y, _cx + _slant, _col, func, 63)
            edge_glint("win.gb" .. _pass .. "_", frame_win.x + 8, frame_win.x + frame_win.w - 8, frame_win.y + frame_win.h, _cx, _col, func, 63)
        end
    end
end

local no_els = {}
local function group_els(grp)
    if grp.collapsible and not grp.open then return no_els end
    return grp.elements
end

-- search across every tab (titles + descriptions); rebuilt when the query changes or every ~0.5s
local search_tab = { name = "Search", groups = { { elements = {} } }, scroll = 0 }
local search_q, search_t = nil, 0
local function search_tab2(qq)
    qq = qq:lower()
    if qq ~= search_q or tick() - search_t > 0.5 then
        if qq ~= search_q then search_tab.scroll = 0 end
        search_q, search_t = qq, tick()
        local _out = {}
        local function _scan(entries)
            for __, elem_ref in ipairs(entries) do
                if elem_ref.kind == "columns" then
                    for __, _col in ipairs(elem_ref.cols) do _scan(_col.elements) end
                elseif elem_ref.kind ~= "divider" and elem_ref.kind ~= "space" and elem_ref.kind ~= "image" and elem_ref.kind ~= "buttonrow" then
                    local tm = (tostring(elem_ref.title or "") .. "\n" .. tostring(elem_ref.desc or "")):lower()
                    if tm:find(qq, 1, true) then _out[#_out + 1] = elem_ref end
                end
            end
        end
        for __, tm in ipairs(tabs) do
            for __, grp in ipairs(tm.groups) do _scan(grp.elements) end
        end
        search_tab.groups[1].elements = _out
        search_tab.name = #_out > 0 and ("Search (" .. #_out .. ")") or "No results"
    end
    return search_tab
end

-- local player's avatar for the user card (cached on disk)
local avatar_data, avatar_loading = nil, false
local function load_avatar()
    if avatar_data or avatar_loading then return end
    avatar_loading = true
    local _uid = 0
    pcall(function() _uid = LocalPlayer.UserId end)
    local _disk = cache_read("avatar", _uid)
    if _disk then avatar_data = _disk; return end
    task.spawn(function()
        task.wait()
        local success, _js = pcall(function()
            return game:HttpGet("https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. _uid .. "&size=48x48&format=Png&isCircular=false")
        end)
        local _url = success and type(_js) == "string" and _js:match('"imageUrl"%s*:%s*"([^"]+)"')
        if _url then
            local success2, payload = pcall(function() return game:HttpGet(_url) end)
            if success2 and type(payload) == "string" and #payload > 32 then
                avatar_data = payload
                cache_write("avatar", _uid, payload)
            end
        end
    end)
end

local function render_window(delta)
    local frame_win = state.Win

    if state.WinAnim and not state.Drag and not state.Resizing then
        local tm = state.WinTarget
        local str_ = 1 - math.exp(-13 * delta)
        frame_win.x = frame_win.x + (tm.x - frame_win.x) * str_
        frame_win.y = frame_win.y + (tm.y - frame_win.y) * str_
        frame_win.w = frame_win.w + (tm.w - frame_win.w) * str_
        frame_win.h = frame_win.h + (tm.h - frame_win.h) * str_
        if math.abs(frame_win.x - tm.x) < 0.5 and math.abs(frame_win.y - tm.y) < 0.5 and math.abs(frame_win.w - tm.w) < 0.5 and math.abs(frame_win.h - tm.h) < 0.5 then
            frame_win.x, frame_win.y, frame_win.w, frame_win.h = tm.x, tm.y, tm.w, tm.h
            state.WinAnim = false
        end
    end

    local grip_n = 14
    local _gx, _gy = frame_win.x + frame_win.w - grip_n, frame_win.y + frame_win.h - grip_n
    if input2.down then
        if not state.Drag and not state.Resizing and not state.Overlay then
            if in_bounds(_gx, _gy, grip_n, grip_n) then
                state.Resizing = true
            elseif in_bounds(frame_win.x, frame_win.y, frame_win.w - 120, title_h) then
                if state.Maximized then
                    ui:Maximize(false)
                    state.WinAnim = false
                    local tm = state.WinTarget
                    if tm then frame_win.x, frame_win.y, frame_win.w, frame_win.h = tm.x, tm.y, tm.w, tm.h end
                end
                state.Drag = true
                state.Glide = { x = frame_win.x, y = frame_win.y }
                state.DragOff = Vector2.new(_clamp(input2.mx - frame_win.x, 0, frame_win.w - 40), input2.my - frame_win.y)
            end
        end
    else
        state.Drag = false
        state.Resizing = false
    end
    -- smooth drag: the window eases toward the Mouse (and keeps gliding a moment after release)
    if state.Drag then
        local _vw, _vh = get_viewport()
        state.Glide = state.Glide or { x = frame_win.x, y = frame_win.y }
        state.Glide.tx = _clamp(input2.mx - state.DragOff.X, 60 - frame_win.w, _vw - 60)
        state.Glide.ty = _clamp(input2.my - state.DragOff.Y, 0, _vh - title_h)
    end
    local grp = state.Glide
    if grp and grp.tx and (state.Drag or not state.Resizing) then
        local str_ = 1 - math.exp(-28 * (delta or 1 / 60))
        grp.x = grp.x + (grp.tx - grp.x) * str_
        grp.y = grp.y + (grp.ty - grp.y) * str_
        if not state.Drag and math.abs(grp.tx - grp.x) < 0.5 and math.abs(grp.ty - grp.y) < 0.5 then
            grp.x, grp.y = grp.tx, grp.ty
            state.Glide = nil
        else
            anim_active = true
        end
        frame_win.x, frame_win.y = math.floor(grp.x + 0.5), math.floor(grp.y + 0.5)
    end
    if state.Drag then
    elseif state.Resizing then
        local _vw, _vh = get_viewport()
        frame_win.w = _clamp(math.floor(input2.mx - frame_win.x), state.MinW, _vw - frame_win.x - 4)
        frame_win.h = _clamp(math.floor(input2.my - frame_win.y), state.MinH, _vh - frame_win.y - 4)
        _gx, _gy = frame_win.x + frame_win.w - grip_n, frame_win.y + frame_win.h - grip_n
    end
    local grip_hover = state.Resizing or in_bounds(_gx, _gy, grip_n, grip_n)
    _line("win.grip1", _gx + 5, frame_win.y + frame_win.h - 3, frame_win.x + frame_win.w - 3, _gy + 5, theme.SubText, grip_hover and 0.9 or 0.45, 62)
    _line("win.grip2", _gx + 9, frame_win.y + frame_win.h - 3, frame_win.x + frame_win.w - 3, _gy + 9, theme.SubText, grip_hover and 0.9 or 0.45, 62)

    if shadow_on then
        local sh = { 0.10, 0.07, 0.05, 0.03, 0.015 }
        for ix = 1, 5 do
            local str_ = ix * 4
            _rect("win.sh" .. ix, frame_win.x - str_, frame_win.y - str_ + 6, frame_win.w + str_ * 2, frame_win.h + str_ * 2, Color3.new(0, 0, 0), sh[ix], 9, 8 + str_)
        end
    end
    _outline("win.bd", frame_win.x - 1, frame_win.y - 1, frame_win.w + 2, frame_win.h + 2, theme.WindowBorder, op2.Border, 10, 9)
    _rect("win.bg", frame_win.x, frame_win.y, frame_win.w, frame_win.h, theme.WindowBg, op2.Window, 11, 8)
    if ui.ShineSweep and not state.Lite then render_shine(frame_win) end

    local _block = render_overlay(delta)
    if state.Dialog then _block = true end

    local _cvy = frame_win.y + title_h + 1
    local _cvh = frame_win.h - title_h - 1
    local view_bottom = _cvy + _cvh
    local page = tabs[state.ActiveTab]
    local _searching = ui.SearchEl and (ui.SearchEl.text or "") ~= ""
    if _searching then page = search_tab2(ui.SearchEl.text) end
    local _tk = _searching and "s" or ("t" .. state.ActiveTab)
    if page then
        local top_pad, _gap = d2(14, 10), d2(8, 6)
        local hdr_h = 38
        local c_top = _cvy + hdr_h
        local cvh_eff = _cvh - hdr_h
        local p_wrap = math.max(40, frame_win.w - rail_w - 64)
        local total_h = top_pad * 2
        for __, grp in ipairs(page.groups) do
            if grp.title then total_h = total_h + d2(30, 26) + _gap end
            for __, elem_ref in ipairs(group_els(grp)) do
                if elem_ref.kind == "paragraph" and (elem_ref._wrapW ~= p_wrap or elem_ref._wrapSrc ~= elem_ref.value) then
                    elem_ref.lines = wrap_text(elem_ref.value, 12, p_wrap)
                    elem_ref._wrapW = p_wrap; elem_ref._wrapSrc = elem_ref.value
                end
                total_h = total_h + card_height(elem_ref) + _gap
            end
        end
        total_h = total_h - _gap
        local max_scroll = math.max(0, total_h - cvh_eff)
        page.scroll = _clamp(page.scroll or 0, 0, max_scroll)

        local bar_w = 0
        if max_scroll > 0 then
            bar_w = 6
            local bar_x = frame_win.x + frame_win.w - 8
            local track_y, track_h = c_top + 4, cvh_eff - 8
            local thumb_h = math.max(24, track_h * cvh_eff / total_h)
            if input2.down and not _block and not state.Resizing and (state.BarDrag or (input2.clicked and in_bounds(bar_x - 3, c_top, 14, cvh_eff))) then
                state.BarDrag = true
                local func = _clamp((input2.my - track_y - thumb_h / 2) / math.max(1, track_h - thumb_h), 0, 1)
                page.scroll = func * max_scroll
            elseif not input2.down then
                state.BarDrag = false
            end
            page.scroll = _clamp(page.scroll, 0, max_scroll)
            local thumb_y = track_y + (page.scroll / max_scroll) * (track_h - thumb_h)
            _rect("win.sbtk", bar_x, track_y, bar_w, track_h, theme.OverlayBorder, 0.4, 20, 2)
            _rect("win.sbth", bar_x, thumb_y, bar_w, thumb_h, theme.TabHighlight, 0.5, 21, 2)
        end

        local _cx = frame_win.x + rail_w + 14
        local _cw = frame_win.w - rail_w - 28 - (bar_w > 0 and 8 or 0)
        local _cy = c_top + top_pad - page.scroll + state.ContentSlide.v
        local mouse_in_view = input2.mx > frame_win.x + rail_w and input2.my > c_top and input2.my < view_bottom
        local index = 0
        for __, grp in ipairs(page.groups) do
            if grp.title then
                index = index + 1
                local _hh = d2(30, 26)
                if _cy + _hh > c_top and (_cy < c_top or _cy + _hh <= view_bottom + 1) then
                    local _hid = _tk .. "g" .. index
                    local _hx = _cx + 2
                    if grp.iconData then _image(_hid .. "i", grp.iconData, _cx + 2, _cy + d2(8, 5), 16, 16, 0.85, 22); _hx = _cx + 24 end
                    label_text(_hid, grp.title, _hx, _cy + d2(10, 7), 15, theme.Text, 22)
                    if grp.collapsible then
                        local _hov = not _block and mouse_in_view and in_bounds(_cx, _cy, _cw, _hh)
                        local _ic = grp.open and title_icons.min or icon_cache["chevron-right"]
                        if _ic then
                            _image(_hid .. "c", _ic, _cx + _cw - 22, _cy + d2(8, 5), 16, 16, _hov and 1 or 0.6, 22)
                        else
                            label_text(_hid .. "ct", grp.open and "-" or "+", _cx + _cw - 14, _cy + d2(16, 13), 15, theme.SubText, 22, true)
                        end
                        if _hov and input2.clicked then grp.open = not grp.open end
                    end
                end
                _cy = _cy + _hh + _gap
            end
            for __, elem_ref in ipairs(group_els(grp)) do
                index = index + 1
                local _hh = card_height(elem_ref)
                local _top, _bot = _cy, _cy + _hh
                if _bot > c_top and (_top < c_top or _bot <= view_bottom + 1) then
                    process_el(elem_ref, _tk .. "e" .. index, _cx, _cy, _cw, _hh, delta, 20, _block or not mouse_in_view)
                end
                _cy = _cy + _hh + _gap
            end
        end

        _rect("win.hdrmask", frame_win.x + rail_w + 1, _cvy, frame_win.w - rail_w - 1, hdr_h, theme.WindowBg, op2.Window, 40, 0)
        label_text("win.tabhdr", page.name, _cx + 2, _cvy + 4, 28, theme.Text, 42)
    end

    spring_step(state.TabCurtain, delta)
    spring_step(state.ContentSlide, delta)
    if state.TabCurtain.v > 0.01 then
        _rect("win.curtain", frame_win.x + rail_w + 1, _cvy, frame_win.w - rail_w - 1, _cvh, theme.WindowBg, math.min(1, state.TabCurtain.v), 50, 0)
    end

    _rect("win.tbmask", frame_win.x, frame_win.y, frame_win.w, title_h, theme.WindowBg, op2.Window, 58, 8)
    label_text("win.title", ui.Title or "Fluent", frame_win.x + 18, frame_win.y + 13, 18, theme.Title, 62)
    if ui.SubTitle and ui.SubTitle ~= "" then
        label_text("win.sub", ui.SubTitle, frame_win.x + 18 + text_w(ui.Title or "Fluent", 18) + 10, frame_win.y + 18, 13, theme.SubText, 62)
    end
    if ui.Tags and #ui.Tags > 0 then
        local _tgx = frame_win.x + 18 + text_w(ui.Title or "Fluent", 18) + 10
        if ui.SubTitle and ui.SubTitle ~= "" then _tgx = _tgx + text_w(ui.SubTitle, 13) + 10 end
        for ix, _tg in ipairs(ui.Tags) do
            local _label = tostring(_tg.Text or _tg[1] or "")
            local _col = _tg.Color or theme.Accent
            local _pw = math.floor(text_w(_label, 11) + 14)
            _rect("win.tag" .. ix, _tgx, frame_win.y + 12, _pw, 18, _col, 0.22, 60, 9)
            _outline("win.tagb" .. ix, _tgx, frame_win.y + 12, _pw, 18, _col, 0.7, 61, 9)
            label_text("win.tagt" .. ix, _label, _tgx + _pw / 2, frame_win.y + 21, 11, _col, 62, true)
            _tgx = _tgx + _pw + 6
        end
    end
    local mb_w, mb_h = 28, 22
    -- order from left: minimize, maximize, close (close in the corner)
    local mb_x, mb_y = frame_win.x + frame_win.w - 16 - mb_w - 2 * (mb_w + 6), frame_win.y + 11
    local mb_hover = not _block and in_bounds(mb_x, mb_y, mb_w, mb_h)
    _rect("win.minbg", mb_x, mb_y, mb_w, mb_h, theme.Control, mb_hover and 0.6 or 0, 60, 5)
    -- Lucide icons are drawn 14x14, centered in the 28x22 button
    local tb_ic = 14
    local tb_off_x, tb_off_y = math.floor((mb_w - tb_ic) / 2), math.floor((mb_h - tb_ic) / 2)
    if title_icons.min then
        _image("win.minic", title_icons.min, mb_x + tb_off_x, mb_y + tb_off_y, tb_ic, tb_ic, mb_hover and 1 or 0.85, 61)
    else
        _line("win.min", mb_x + 9, mb_y + math.floor(mb_h / 2), mb_x + mb_w - 9, mb_y + math.floor(mb_h / 2), theme.Text, 0.9, 61)
    end
    if mb_hover and input2.clicked then ui:Minimize() end
    local mx_w = 28
    local mx_x, mx_y = mb_x + mb_w + 6, frame_win.y + 11
    local mx_hover = not _block and in_bounds(mx_x, mx_y, mx_w, mb_h)
    _rect("win.maxbg", mx_x, mx_y, mx_w, mb_h, theme.Control, mx_hover and 0.6 or 0, 60, 5)
    local max_icon = state.Maximized and title_icons.restore or title_icons.max
    if max_icon then
        _image("win.maxic", max_icon, mx_x + tb_off_x, mx_y + tb_off_y, tb_ic, tb_ic, mx_hover and 1 or 0.85, 61)
    else
        -- fallback: line-drawn icons in a 10x10 box
        local ic_x, ic_y = mx_x + 9, mx_y + 6
        if state.Maximized then
            _outline("win.max", ic_x, ic_y + 2, 8, 8, theme.Text, 0.9, 61, 0)
            _line("win.max2", ic_x + 2, ic_y, ic_x + 10, ic_y, theme.Text, 0.9, 61)
            _line("win.max3", ic_x + 10, ic_y, ic_x + 10, ic_y + 8, theme.Text, 0.9, 61)
        else
            _outline("win.max", ic_x, ic_y, 10, 10, theme.Text, 0.9, 61, 0)
        end
    end
    if mx_hover and input2.clicked then ui:Maximize() end
    local cl_w = 28
    local cl_x, cl_y = mx_x + mx_w + 6, frame_win.y + 11
    local cl_hover = not _block and in_bounds(cl_x, cl_y, cl_w, mb_h)
    _rect("win.clsbg", cl_x, cl_y, cl_w, mb_h, theme.Control, cl_hover and 0.6 or 0, 60, 5)
    if title_icons.close then
        _image("win.clsic", title_icons.close, cl_x + tb_off_x, cl_y + tb_off_y, tb_ic, tb_ic, cl_hover and 1 or 0.85, 61)
    else
        _line("win.cls1", cl_x + 9, cl_y + 6, cl_x + 19, cl_y + 16, theme.Text, 0.9, 61)
        _line("win.cls2", cl_x + 19, cl_y + 6, cl_x + 9, cl_y + 16, theme.Text, 0.9, 61)
    end
    if cl_hover and input2.clicked then
        state.Dialog = { title = "Unload interface", lines = { "Are you sure you want to unload the interface?" },
            buttons = { { Title = "Yes", Callback = function() ui:Destroy() end }, { Title = "No" } }, onClosing = {}, onClosed = {} }
    end
    _line("win.tline", frame_win.x, frame_win.y + title_h, frame_win.x + frame_win.w, frame_win.y + title_h, theme.TitleBarLine, 0.5, 59)
    _line("win.rline", frame_win.x + rail_w, frame_win.y + title_h, frame_win.x + rail_w, frame_win.y + frame_win.h, theme.RailLine, op2.Rail, 59)
    local rail_top = frame_win.y + title_h + 8
    if ui.SearchEl then
        process_el(ui.SearchEl, "win.srch", frame_win.x + 8, rail_top, rail_w - 16, 30, delta, 60, _block)
        rail_top = rail_top + 38
    end
    if ui.UserInfo then
        load_avatar()
        local _uh = 44
        local _ux, _uw = frame_win.x + 8, rail_w - 16
        local _uy = ui.UserInfoTop and rail_top or (frame_win.y + frame_win.h - _uh - 8)
        if ui.UserInfoTop then rail_top = rail_top + _uh + 8 end
        _rect("win.ucard", _ux, _uy, _uw, _uh, theme.TabHighlight, op2.TabActive, 60, 6)
        if avatar_data then
            _image("win.uav", avatar_data, _ux + 7, _uy + 7, 30, 30, 1, 61, ui.ImageRounding and 15 or 0)
        else
            _circle("win.uavp", _ux + 22, _uy + 22, 15, ui.UserInfoColor or theme.Accent, 0.6, 61)
        end
        local _uname = ui.UserInfoTitle
        if not _uname then pcall(function() _uname = LocalPlayer.DisplayName end) end
        if not _uname then pcall(function() _uname = LocalPlayer.Name end) end
        local _usub = ui.UserInfoSubtitle
        if not _usub then pcall(function() _usub = "@" .. LocalPlayer.Name end) end
        label_text("win.uname", tostring(_uname or "Player"), _ux + 44, _uy + 8, 13, theme.Text, 61)
        label_text("win.usub", tostring(_usub or ""), _ux + 44, _uy + 25, 11, theme.SubText, 61)
    end
    local tab_y0 = rail_top + 2
    for ix, tm in ipairs(tabs) do
        local _ty = tab_y0 + (ix - 1) * 36
        local _tx = frame_win.x + 8
        local _tw = rail_w - 16
        local _active = (ix == state.ActiveTab)
        local _hovered = in_bounds(_tx, _ty, _tw, 30) and not _block
        if _hovered and input2.clicked and ui.SearchEl then ui.SearchEl.text = "" end
        if _hovered and input2.clicked and not _active then
            state.ActiveTab = ix; state.Overlay = nil; state.Focused = nil; state.TabCurtain.v = 1
            state.ContentSlide.v = 14; state.ContentSlide.goal = 0
        end
        _rect("tab.hl" .. ix, _tx, _ty, _tw, 30, theme.TabHighlight, _active and op2.TabActive or (_hovered and (input2.down and op2.TabActive or op2.TabHover) or 0), 60, 6)
        local text_x = _tx + 14
        if tm.icon then
            text_x = _tx + 36
            if tm.iconData then _image("tab.ic" .. ix, tm.iconData, _tx + 12, _ty + 7, 16, 16, _active and 1 or 0.5, 61) end
        end
        label_text("tab.tx" .. ix, tm.name, text_x, _ty + 8, 13, _active and theme.TabTextActive or theme.TabText, 61)
    end
    state.IndOff.goal = (state.ActiveTab - 1) * 36
    if not state.IndInit then state.IndOff.v = state.IndOff.goal; state.IndPrev = state.IndOff.v; state.IndInit = true end
    spring_step(state.IndOff, delta)
    local ind_vel = math.abs(state.IndOff.v - (state.IndPrev or state.IndOff.v)) / math.max(delta, 1e-3)
    state.IndPrev = state.IndOff.v
    state.IndH.goal = 16
    spring_step(state.IndH, delta)
    local _ih = state.IndH.v
    _rect("tab.ind", frame_win.x + 8, tab_y0 + state.IndOff.v + 7 + (16 - _ih) / 2, 3, _ih, theme.Accent, 1, 61, 2)
end

local function render_notifs(delta)
    if #notifs == 0 then return end
    local _vw, _vh = state.Vw, state.Vh
    local _margin, wd, z2 = 16, 300, 200
    local clock_now = tick()
    local py_ = _vh - _margin
    for index = #notifs, 1, -1 do
        local cnt = notifs[index]
        if cnt.duration and not cnt.dying and (clock_now - cnt.born) > cnt.duration then
            cnt.dying = true; cnt.diedAt = clock_now; cnt.slide.goal = 1; cnt.alpha.goal = 0
        end
        if cnt.dying and (clock_now - (cnt.diedAt or clock_now)) > 0.4 then
            table.remove(notifs, index)
        else
            spring_step(cnt.slide, delta); spring_step(cnt.alpha, delta)
            local btn_row = (cnt.buttons and #cnt.buttons > 0) and 34 or 0
            local _hh = 14 + 18 + #cnt.lines * 15 + (cnt.subLines and #cnt.subLines * 14 or 0) + 12 + btn_row
            py_ = py_ - _hh
            local px_ = _vw - _margin - wd + cnt.slide.v * (wd + _margin + 8)
            local ax2 = cnt.alpha.v
            if shadow_on then _rect("nf.sh" .. cnt.id, px_ + 2, py_ + 3, wd, _hh, Color3.new(0, 0, 0), 0.16 * ax2, z2 - 1, 6) end
            _rect("nf.bg" .. cnt.id, px_, py_, wd, _hh, theme.OverlayBg, op2.Overlay * ax2, z2, 6)
            _outline("nf.bd" .. cnt.id, px_, py_, wd, _hh, cnt.color or theme.Accent, 0.5 * ax2, z2 + 1, 6)
            if cnt.color then _rect("nf.st" .. cnt.id, px_ + 4, py_ + 8, 3, _hh - 16, cnt.color, ax2, z2 + 2, 2) end
            label_text("nf.t" .. cnt.id, cnt.title, px_ + 14, py_ + 12, 13, theme.Text, z2 + 2, false, ax2)
            local _cx, _cy = px_ + wd - 22, py_ + 11
            label_text("nf.x" .. cnt.id, "x", _cx, _cy, 14, theme.SubText, z2 + 3, false, ax2)
            if not cnt.dying and input2.clicked and in_bounds(_cx - 5, _cy - 3, 20, 20) then
                cnt.dying = true; cnt.diedAt = clock_now; cnt.slide.goal = 1; cnt.alpha.goal = 0
            end
            local _ly = py_ + 32
            for _li, _ln in ipairs(cnt.lines) do
                label_text("nf.c" .. cnt.id .. "_" .. _li, _ln, px_ + 14, _ly, 12, theme.SubText, z2 + 2, false, ax2)
                _ly = _ly + 15
            end
            if cnt.subLines then
                for _si, _sl in ipairs(cnt.subLines) do
                    label_text("nf.s" .. cnt.id .. "_" .. _si, _sl, px_ + 14, _ly, 11, Color3.fromRGB(120, 120, 120), z2 + 2, false, ax2)
                    _ly = _ly + 14
                end
            end
            if cnt.buttons and #cnt.buttons > 0 then
                local _bn = #cnt.buttons
                local _bw2 = math.floor((wd - 28 - (_bn - 1) * 8) / _bn)
                local _byb = py_ + _hh - 12 - 24
                for _bi, bt in ipairs(cnt.buttons) do
                    local _bxb = px_ + 14 + (_bi - 1) * (_bw2 + 8)
                    local b_hover = not cnt.dying and in_bounds(_bxb, _byb, _bw2, 24)
                    _rect("nf.b" .. cnt.id .. "_" .. _bi, _bxb, _byb, _bw2, 24, (_bi == 1) and theme.Accent or theme.Control, ((_bi == 1) and 1 or (b_hover and 0.95 or 0.9)) * ax2, z2 + 2, 5)
                    local _lbl = bt.Title or "OK"
                    label_text("nf.bt" .. cnt.id .. "_" .. _bi, _lbl, _bxb + _bw2 / 2 - text_w(_lbl, 12) / 2, _byb + 6, 12, (_bi == 1) and Color3.fromRGB(15, 15, 15) or theme.Text, z2 + 3, false, ax2)
                    if b_hover and input2.clicked then
                        _safe(bt.Callback)
                        cnt.dying = true; cnt.diedAt = clock_now; cnt.slide.goal = 1; cnt.alpha.goal = 0
                    end
                end
            end
            py_ = py_ - 10
        end
    end
end

local function render_dialog(delta)
    local dat = state.Dialog
    if not dat then return end
    local _vw, _vh = state.Vw, state.Vh
    dat.anim = dat.anim or new_spring(0, 20)
    dat.scale = dat.scale or new_spring(1.1, 17)
    dat.anim.goal = dat.closing and 0 or 1
    dat.scale.goal = dat.closing and 1.1 or 1
    local ax2 = spring_step(dat.anim, delta)
    local _sc = spring_step(dat.scale, delta)
    if dat.closing and not dat.closingFired then
        dat.closingFired = true
        for __, callback_fn in ipairs(dat.onClosing or {}) do _safe(callback_fn) end
    end
    if dat.closing and ax2 < 0.04 then
        for __, callback_fn in ipairs(dat.onClosed or {}) do _safe(callback_fn) end
        state.Dialog = nil; return
    end
    _rect("dlg.bk", 0, 0, _vw, _vh, Color3.fromRGB(0, 0, 0), 0.25 * ax2, 145, 0)
    local max_w = math.min(620, math.max(300, _vw - 120))
    local _natural = text_w(dat.title, 15) + 36
    for _seg in ((dat.content or "") .. "\n"):gmatch("(.-)\n") do _natural = math.max(_natural, text_w(_seg, 12) + 36) end
    local base_w = _clamp(_natural, 300, max_w)
    local inner_w = base_w - 36
    if dat._wrapW ~= inner_w then dat.lines = wrap_text(dat.content or "", 12, inner_w); dat._wrapW = inner_w end
    local _bw = math.floor(base_w * _sc)
    local _bh = math.floor((16 + 24 + #dat.lines * 16 + 18 + 36 + (dat.input and 40 or 0)) * _sc)
    local _bx = math.floor((_vw - _bw) / 2)
    local _by = math.floor((_vh - _bh) / 2)
    if shadow_on then _rect("dlg.sh", _bx + 3, _by + 6, _bw, _bh, Color3.new(0, 0, 0), 0.3 * ax2, 149, 8) end
    _rect("dlg.bg", _bx, _by, _bw, _bh, theme.OverlayBg, ax2, 150, 8)
    _outline("dlg.bd", _bx, _by, _bw, _bh, theme.OverlayBorder, 0.8 * ax2, 151, 8)
    label_text("dlg.t", dat.title, _bx + 18, _by + 15, 15, theme.Text, 152, false, ax2)
    local _ly = _by + 44
    for _li, _ln in ipairs(dat.lines) do label_text("dlg.c" .. _li, _ln, _bx + 18, _ly, 12, theme.SubText, 152, false, ax2); _ly = _ly + 16 end
    if dat.input and not dat.closing then process_el(dat.input, "dlg.in", _bx + 18, _ly + 4, _bw - 36, 30, delta, 152, false) end
    local _nb = #dat.buttons
    local _pad = 18
    local btn_w = math.floor((_bw - _pad * 2 - (_nb - 1) * 10) / math.max(1, _nb))
    local btn_y = _by + _bh - _pad - 28
    for ix, bt in ipairs(dat.buttons) do
        local btn_x = _bx + _pad + (ix - 1) * (btn_w + 10)
        local _accent = (ix == 1)
        local b_hover = in_bounds(btn_x, btn_y, btn_w, 28)
        _rect("dlg.btn" .. ix, btn_x, btn_y, btn_w, 28, _accent and theme.Accent or theme.Control, (_accent and 1 or (b_hover and 0.95 or 0.9)) * ax2, 152, 5)
        _outline("dlg.btb" .. ix, btn_x, btn_y, btn_w, 28, _accent and theme.Accent or theme.OverlayBorder, 0.6 * ax2, 153, 5)
        local _label = bt.Title or "OK"
        label_text("dlg.btx" .. ix, _label, btn_x + btn_w / 2 - text_w(_label, 12) / 2, btn_y + 8, 12, _accent and Color3.fromRGB(15, 15, 15) or theme.Text, 153, false, ax2)
        if b_hover and input2.clicked and not dat.closing then
            dat.closing = true
            if dat.input and state.Focused and state.Focused.owner == dat.input then blur_field() end
            _safe(bt.Callback, dat.input and dat.input.text or nil)
        end
    end
end

local function render_bubble(delta)
    local _bp = state.BubblePos
    local _title = ui.Title or "Menu"
    local _hint = (state.MenuKeyName or "End") .. " to open"
    local _ph = 40
    local _pw = math.floor(46 + math.max(text_w(_title, 13), text_w(_hint, 11)) + 40)
    local _vw, _vh = get_viewport()
    _bp.x = _clamp(_bp.x, 0, math.max(0, _vw - _pw))
    _bp.y = _clamp(_bp.y, 0, math.max(0, _vh - _ph))
    local _hovered = in_bounds(_bp.x, _bp.y, _pw, _ph)
    if input2.down then
        if not state.BubbleDrag and _hovered and input2.clicked then
            state.BubbleDrag = true; state.BubbleMoved = false
            state.BubbleOff = Vector2.new(input2.mx - _bp.x, input2.my - _bp.y)
        end
        if state.BubbleDrag then
            local _nx, _ny = math.floor(input2.mx - state.BubbleOff.X), math.floor(input2.my - state.BubbleOff.Y)
            if math.abs(_nx - _bp.x) > 2 or math.abs(_ny - _bp.y) > 2 then state.BubbleMoved = true end
            _bp.x = _clamp(_nx, 0, math.max(0, _vw - _pw))
            _bp.y = _clamp(_ny, 0, math.max(0, _vh - _ph))
        end
    else
        if state.BubbleDrag and not state.BubbleMoved then ui:Minimize() end
        state.BubbleDrag = false
    end
    state.BubbleHover = state.BubbleHover or new_spring(0, 16)
    state.BubbleHover.goal = (_hovered or state.BubbleDrag) and 1 or 0
    local _hv = spring_step(state.BubbleHover, delta)
    local px_, py_ = _bp.x, _bp.y
    if shadow_on then
        local sh = { 0.12, 0.08, 0.05, 0.025 }
        for ix = 1, #sh do
            local str_ = ix * 3
            _rect("bub.sh" .. ix, px_ - str_, py_ - str_ + 4, _pw + str_ * 2, _ph + str_ * 2, Color3.new(0, 0, 0), sh[ix], 119, 12 + str_)
        end
    end
    _rect("bub.bg", px_, py_, _pw, _ph, theme.WindowBg, op2.Window, 120, 12)
    if _hv > 0.01 then _rect("bub.hl", px_, py_, _pw, _ph, theme.TabHighlight, 0.10 * _hv, 121, 12) end
    _outline("bub.bd", px_, py_, _pw, _ph, lerp_color(theme.WindowBorder, theme.Accent, _hv), _lerp(op2.Border, 0.75, _hv), 122, 12)
    -- logo tile with the first letter of the title
    local _tx, _ty, _ts = px_ + 7, py_ + 7, 26
    _rect("bub.logo", _tx, _ty, _ts, _ts, theme.Accent, 1, 123, 7)
    label_text("bub.lt", (_title:match("[%w]") or "?"):upper(), _tx + _ts / 2, _ty + _ts / 2, 13, Color3.fromRGB(15, 15, 15), 124, true)
    label_text("bub.tx", _title, px_ + 42, py_ + 6, 13, theme.Title, 123)
    label_text("bub.hn", _hint, px_ + 42, py_ + 23, 11, theme.SubText, 123)
    local _ic = title_icons.max
    if _ic then _image("bub.ic", _ic, px_ + _pw - 26, py_ + 13, 14, 14, _lerp(0.45, 1, _hv), 123) end
end

local function _step()
    if not isrbxactive() then return end
    state.InStep = true
    local clock_now = tick()
    local delta = state.LastTime and (clock_now - state.LastTime) or 0.016
    if delta > 0.1 then delta = 0.1 elseif delta < 0 then delta = 0.016 end
    state.LastTime = clock_now

    if state.FadingOut then
        local pt = (clock_now - (state.FadeStart or clock_now)) / 0.45
        render_fade = _clamp(1 - pt, 0, 1)
        if pt >= 1 then
            state.FadingOut = false
            render_fade = 1
            state.InStep = false
            ui:Stop()
            for __, callback_fn in ipairs(ui._postUnload or {}) do _safe(callback_fn) end
            return
        end
    end

    poll_input()
    local _clicks = {}
    local function _ck(_vk) local col_ = _clicks[_vk]; if col_ == nil then col_ = key_edge(_vk); _clicks[_vk] = col_; if col_ then state.Dirty = true end end return col_ end

    local _busy = state.KBListening ~= nil or state.Focused ~= nil
    poll_keybinds(_ck)
    poll_text_input(_ck)
    local want_block = state.Focused ~= nil or state.KBListening ~= nil
    if want_block ~= (state.InputBlocked or false) then
        state.InputBlocked = want_block
        if setrobloxinput then pcall(setrobloxinput, not want_block) end
    end
    if not _busy and _ck(state.MenuKey) then ui:Minimize() end

    -- nothing moved, nothing animating, nothing changed: leave every drawing as it is this frame
    -- (still refreshed 4x a second so values changed by scripts show up)
    local need_draw = state.Dirty or anim_active or input2.clicked or input2.down ~= state.lastDown
        or input2.mx ~= state.lastMx or input2.my ~= state.lastMy
        or state.Focused or state.Dialog or state.Overlay or #notifs > 0 or state.FadingOut or state.WinAnim
        or state.Drag or state.Resizing or (clock_now - (state.lastDraw or 0)) > 0.25
    if not need_draw then state.InStep = false; return end
    state.Dirty, anim_active = false, false
    state.lastMx, state.lastMy, state.lastDown, state.lastDraw = input2.mx, input2.my, input2.down, clock_now
    cur_tick = cur_tick + 1

    if #notifs > 0 or state.Dialog then state.Vw, state.Vh = get_viewport() end
    state.MinFade = state.MinFade or new_spring(state.Minimized and 0 or 1, 18)
    state.MinFade.goal = state.Minimized and 0 or 1
    local _mf = spring_step(state.MinFade, delta)
    if math.abs(_mf - state.MinFade.goal) < 0.02 then _mf = state.MinFade.goal; state.MinFade.v = _mf end
    local base_fade = render_fade
    local save_c, save_d = input2.clicked, input2.down
    if _mf > 0 then
        -- a window that is fading out doesn't take clicks
        if state.Minimized then input2.clicked = false; input2.down = false end
        render_fade = base_fade * _mf
        render_window(delta)
        input2.clicked, input2.down = save_c, save_d
    end

    render_fade = base_fade
    render_dialog(delta)
    render_notifs(delta)
    _cleanup()
    state.InStep = false
end

function ui:_RemoveAll()
    for __, col_ in pairs(cache) do
        if col_.Obj and col_.Obj.Remove then pcall(function() col_.Obj:Remove() end) end
    end
    cache = {}; visible = {}; g_cache = {}
end

ui.Version = "1.0.0"
ui.Unloaded = false
ui.Loaded = false

function ui:Start()
    local previous = _G.__Fluent
    if previous and previous ~= ui and previous._RemoveAll then pcall(function() previous:_RemoveAll() end) end
    _G.__Fluent = ui
    if state.Running then _G.__FluentToken = state.Token; return end
    local _token = {}
    _G.__FluentToken = _token; state.Token = _token; state.Running = true
    ui.Loaded = true; ui.Unloaded = false
    task.spawn(function()
        while _G.__FluentToken == _token do
            local _t0 = os.clock()
            stats.calls, stats.writes = 0, 0
            local success, fail = pcall(_step)
            local _ms = (os.clock() - _t0) * 1000
            stats.frames = stats.frames + 1
            stats.ms = stats.ms * 0.95 + _ms * 0.05
            if _ms > stats.worst then stats.worst = _ms end
            stats.last = { calls = stats.calls, writes = stats.writes, ms = _ms }
            if not success then warn("[Fluent] " .. tostring(fail)) end
            state.InStep = false
            input2.prevDown = input2.down
            if not isrbxactive() then
                task.wait(0.1) -- nothing is drawn while Roblox is in the background
            else
                local _frame = 1 / (ui.FPS or 120)
                local _used = os.clock() - _t0
                task.wait(_used < _frame and (_frame - _used) or 0)
            end
        end
        state.Running = false
        ui.Loaded = false
        if state.InputBlocked and setrobloxinput then pcall(setrobloxinput, true) end
        state.InputBlocked = false
        pcall(function() ui:_RemoveAll() end)
    end)
end

local function release_input()
    if state.InputBlocked and setrobloxinput then pcall(setrobloxinput, true) end
    state.InputBlocked = false
end
function ui:Stop()
    release_input()
    if _G.__FluentToken == state.Token then _G.__FluentToken = nil end
    state.Running = false
    ui:_RemoveAll()
end

function ui:Destroy()
    if state.FadingOut then return end
    ui.Unloaded = true
    ui.Loaded = false
    for __, callback_fn in ipairs(ui._onUnload or {}) do _safe(callback_fn) end
    if state.Running then
        state.FadingOut = true
        state.FadeStart = tick()
    else
        ui:Stop()
        for __, callback_fn in ipairs(ui._postUnload or {}) do _safe(callback_fn) end
    end
end

local notify_colors = {
    Info = Color3.fromRGB(96, 165, 250), Success = Color3.fromRGB(74, 222, 128),
    Warning = Color3.fromRGB(250, 204, 21), Error = Color3.fromRGB(248, 113, 113),
}
function ui:Notify(settings)
    settings = settings or {}
    notif_id = notif_id + 1
    local _lines = wrap_text(settings.Content or "", 12, 272)
    local sub_lines = settings.SubContent and wrap_text(settings.SubContent, 11, 272) or nil
    local cnt = {
        id = notif_id, title = settings.Title or "Notification", lines = _lines, subLines = sub_lines,
        buttons = settings.Buttons, duration = settings.Duration, born = tick(),
        color = settings.Color or notify_colors[settings.Type or ""],
        slide = new_spring(1, 13), alpha = new_spring(0, 13), dying = false,
    }
    cnt.slide.goal = 0; cnt.alpha.goal = 1
    table.insert(notifs, cnt)
    return cnt
end

function ui:Minimize()
    state.Minimized = not state.Minimized
    state.Overlay = nil; state.KBListening = nil; state.Focused = nil
    if state.Minimized then
        if not state.BubblePlaced then
            state.BubblePlaced = true
            state.BubblePos.x = state.Win.x
            state.BubblePos.y = state.Win.y
        end
        state.Drag = false; state.Glide = nil
        if not state.MinNotified then
            state.MinNotified = true
            ui:Notify({ Title = ui.Title or "Menu", Content = "Press " .. (state.MenuKeyName or "End") .. " to open the menu again.", Duration = 6 })
        end
    end
    for __, callback_fn in ipairs(ui._onMinimized or {}) do _safe(callback_fn, state.Minimized) end
end

function ui:Maximize(_on)
    local frame_win = state.Win
    if _on == nil then _on = not state.Maximized end
    if _on and not state.Maximized then
        state.PreMax = { x = frame_win.x, y = frame_win.y, w = frame_win.w, h = frame_win.h }
        local _vw, _vh = get_viewport()
        state.WinTarget = { x = 0, y = 0, w = _vw, h = _vh }
        state.WinAnim = true
        state.Maximized = true
        state.Drag = false; state.Glide = nil
    elseif not _on and state.Maximized then
        local pt = state.PreMax
        if pt then state.WinTarget = { x = pt.x, y = pt.y, w = pt.w, h = pt.h }; state.WinAnim = true end
        state.Maximized = false
    end
    for __, callback_fn in ipairs(ui._onMaximized or {}) do _safe(callback_fn, state.Maximized) end
end

function ui:SafeCallback(callback_fn, ...)
    return _safe(callback_fn, ...)
end

ui.Options = options2
ui.Ignore = {}
ui._onUnload = {}
ui._postUnload = {}
ui._onThemeChanged = {}
function ui:OnFontChanged(callback_fn) if type(callback_fn) == "function" then ui._onFontChanged = ui._onFontChanged or {}; table.insert(ui._onFontChanged, callback_fn) end return ui end
function ui:OnThemeChanged(callback_fn) if type(callback_fn) == "function" then table.insert(ui._onThemeChanged, callback_fn) end return ui end
ui._onMinimized = {}
ui._onMaximized = {}
function ui:OnMinimized(callback_fn) if type(callback_fn) == "function" then table.insert(ui._onMinimized, callback_fn) end return ui end
function ui:OnMaximized(callback_fn) if type(callback_fn) == "function" then table.insert(ui._onMaximized, callback_fn) end return ui end
function ui:OnUnload(callback_fn) if type(callback_fn) == "function" then table.insert(ui._onUnload, callback_fn) end return ui end
function ui:OnPostUnload(callback_fn) if type(callback_fn) == "function" then table.insert(ui._postUnload, callback_fn) end return ui end
function ui:SetIgnoreIndexes(entries)
    ui.Ignore = {}
    if type(entries) == "table" then for __, _id in ipairs(entries) do ui.Ignore[_id] = true end end
    return ui
end

local function serialize_el(elem_ref)
    local key_ = elem_ref.kind
    if key_ == "toggle" then return { t = "b", v = elem_ref.value }
    elseif key_ == "slider" then return { t = "n", v = elem_ref.value }
    elseif key_ == "input" then return { t = "s", v = elem_ref.text }
    elseif key_ == "dropdown" then
        if elem_ref.multi then
            local items = {}
            for option, _on in pairs(elem_ref.value) do if _on then items[#items + 1] = option end end
            return { t = "dm", v = items }
        end
        return { t = "d", v = elem_ref.value }
    elseif key_ == "colorpicker" then local col_ = elem_ref.value; return { t = "c", r = col_.R, g = col_.G, b = col_.B, a = elem_ref.hasAlpha and elem_ref.alpha or nil }
    elseif key_ == "keybind" then return { t = "k", key = elem_ref.key, name = elem_ref.keyName, mode = elem_ref.mode } end
end

local function deserialize_el(elem_ref, dat)
    if not dat then return end
    local key_ = elem_ref.kind
    if key_ == "toggle" then elem_ref:SetValue(dat.v and true or false)
    elseif key_ == "slider" then if dat.v then elem_ref:SetValue(dat.v) end
    elseif key_ == "input" then elem_ref:SetValue(tostring(dat.v or ""))
    elseif key_ == "dropdown" then
        if elem_ref.multi then
            local mod_ = {}
            if type(dat.v) == "table" then for __, other_ in ipairs(dat.v) do mod_[other_] = true end end
            elem_ref:SetValue(mod_)
        elseif dat.v then elem_ref:SetValue(dat.v) end
    elseif key_ == "colorpicker" then
        if dat.a ~= nil then elem_ref:SetValueRGB(Color3.new(dat.r or 0, dat.g or 0, dat.b or 0), 1 - dat.a)
        else elem_ref:SetValue(Color3.new(dat.r or 0, dat.g or 0, dat.b or 0)) end
    elseif key_ == "keybind" then
        elem_ref.key = dat.key; elem_ref.keyName = dat.name or "None"
        if dat.mode then elem_ref.mode = norm_mode(dat.mode) end
        _safe(elem_ref.changed, elem_ref.keyName)
    end
end

local function cfg_dir() return state.Folder or "Fluent" end
function ui:SetFolder(title_str)
    title_str = tostring(title_str or "Fluent")
    state.Folder = title_str
    local _acc
    for _seg in title_str:gmatch("[^/\\]+") do
        _acc = _acc and (_acc .. "/" .. _seg) or _seg
        pcall(function() makefolder(_acc) end)
    end
    return ui
end

function ui:SaveConfig(title_str)
    title_str = title_str or ui.ConfigName or "default"
    local payload = {}
    for _id, elem_ref in pairs(options2) do
        if not ui.Ignore[_id] then
            local str_ = serialize_el(elem_ref)
            if str_ then payload[_id] = str_ end
        end
    end
    pcall(function() makefolder(cfg_dir()) end)
    local success, _json = pcall(function() return game:GetService("HttpService"):JSONEncode(payload) end)
    if success and _json then pcall(function() writefile(cfg_dir() .. "/" .. title_str .. ".json", _json) end) end
    return success == true
end

function ui:LoadConfig(title_str)
    title_str = title_str or ui.ConfigName or "default"
    local success, _content = pcall(function() return readfile(cfg_dir() .. "/" .. title_str .. ".json") end)
    if not success or not _content then return false end
    local _dok, payload = pcall(function() return game:GetService("HttpService"):JSONDecode(_content) end)
    if not _dok or type(payload) ~= "table" then return false end
    for _id, dat in pairs(payload) do
        local elem_ref = options2[_id]
        if elem_ref then pcall(deserialize_el, elem_ref, dat) end
    end
    if ui.ThemeName then pcall(function() ui:SetTheme(ui.ThemeName) end) end
    return true
end

function ui:SetTheme(title_str)
    local pt = palettes[title_str]
    if not pt then return end
    for key_, val in pairs(palettes.Dark) do theme[key_] = val end
    for key_, val in pairs(pt) do theme[key_] = val end
    ui.ThemeName = title_str
    for __, callback_fn in ipairs(ui._onThemeChanged) do _safe(callback_fn, title_str) end
end

function ui:SetFont(title_str)
    if title_str == nil or title_str == "Matcha" then font_name = nil
    elseif glyph_fonts[title_str] then font_name = title_str
    else return end
    g_cache = {}
    for __, tm in ipairs(tabs) do
        for __, grp in ipairs(tm.groups) do
            for __, elem_ref in ipairs(grp.elements) do elem_ref._wrapW = nil end
        end
    end
    for __, callback_fn in ipairs(ui._onFontChanged or {}) do _safe(callback_fn, title_str) end
end
function ui:GetFont() return font_name or "Matcha" end
function ui:Refresh() state.Dirty = true; return ui end
function ui:GetStats()
    local cnt = 0
    for __ in pairs(cache) do cnt = cnt + 1 end
    local str_ = { avgMs = stats.ms, worstMs = stats.worst, frames = stats.frames, objects = cnt,
        calls = stats.last.calls, writes = stats.last.writes, lastMs = stats.last.ms }
    stats.worst = 0
    return str_
end
function ui:SetErrorHandler(callback_fn) ui._errorHandler = type(callback_fn) == "function" and callback_fn or nil; return ui end
function ui:SetShineSweep(_on, _color) ui.ShineSweep = _on and true or false; ui.ShineColor = _color or ui.ShineColor; return ui end
function ui:RegisterCustomTheme(title_str, _colors)
    if type(title_str) ~= "string" or type(_colors) ~= "table" then return end
    if not palettes[title_str] then table.insert(ui.Themes, title_str) end
    palettes[title_str] = _colors
end
function ui:SetTags(_tags) ui.Tags = _tags; return ui end
function ui:SetShadow(_on) shadow_on = _on ~= false end
function ui:SetCompact(_on) compact2 = _on and true or false; return ui end
local text_sizes = { Small = 0, Normal = 1, Large = 2 }
function ui:SetTextSize(val)
    if type(val) == "string" then val = text_sizes[val] end
    if type(val) == "number" then text_bump = math.clamp(math.floor(val), 0, 3) end
    for __, tm in ipairs(tabs) do for __, grp in ipairs(tm.groups) do for __, elem_ref in ipairs(grp.elements) do elem_ref._wrapW = nil end end end
    return ui
end
function ui:GetTextSize() for key_, val in pairs(text_sizes) do if val == text_bump then return key_ end end return "Normal" end
function ui:GetCompact() return compact2 end

function ui:SetTranslucent(_on)
    op2.Window = (_on == false) and 1 or 0.99
end

function ui:GetConfigs()
    local _out = {}
    pcall(function()
        for __, _path in ipairs(listfiles(cfg_dir())) do
            local title_str = tostring(_path):match("([^/\\]+)%.json$")
            if title_str and title_str ~= "interface" then _out[#_out + 1] = title_str end
        end
    end)
    table.sort(_out)
    return _out
end

function ui:SetAutoload(title_str)
    pcall(function() makefolder(cfg_dir()) end)
    pcall(function() writefile(cfg_dir() .. "/autoload.txt", tostring(title_str)) end)
end

function ui:GetAutoload()
    local success, _content = pcall(function() return readfile(cfg_dir() .. "/autoload.txt") end)
    if success and _content and _content ~= "" then return _content end
    return nil
end

function ui:LoadAutoloadConfig()
    local title_str = ui:GetAutoload()
    if title_str then return ui:LoadConfig(title_str) end
    return false
end

function ui:SaveInterfaceSettings()
    local payload = { Theme = ui.ThemeName, Translucent = op2.Window < 1, MenuKey = state.MenuKey, MenuKeyName = state.MenuKeyName,
        Font = font_name or "Matcha", Shadow = shadow_on, ShineSweep = ui.ShineSweep, Compact = compact2, TextSize = ui:GetTextSize() }
    pcall(function() makefolder(cfg_dir()) end)
    local success, _json = pcall(function() return game:GetService("HttpService"):JSONEncode(payload) end)
    if success and _json then pcall(function() writefile(cfg_dir() .. "/interface.json", _json) end) end
end

function ui:LoadInterfaceSettings()
    local success, _content = pcall(function() return readfile(cfg_dir() .. "/interface.json") end)
    if not success or not _content then return nil end
    local _dok, payload = pcall(function() return game:GetService("HttpService"):JSONDecode(_content) end)
    if _dok and type(payload) == "table" then return payload end
    return nil
end

function ui:CreateWindow(settings)
    settings = settings or {}
    state.Win.w = (settings.Size and settings.Size.X) or 580
    state.Win.h = (settings.Size and settings.Size.Y) or 460
    if settings.MinSize then state.MinW = settings.MinSize.X or state.MinW; state.MinH = settings.MinSize.Y or state.MinH end
    if settings.TabWidth then rail_w = math.max(80, math.floor(settings.TabWidth)) end
    if settings.Resize then
        local _vw, _vh = get_viewport()
        local _scale = math.min(1, _vw / 1920, _vh / 1080)
        state.Win.w = math.max(state.MinW, math.floor(state.Win.w * _scale))
        state.Win.h = math.max(state.MinH, math.floor(state.Win.h * _scale))
    end
    ui.Title = settings.Title or "Fluent"
    ui.SubTitle = settings.SubTitle or ""
    ui.ConfigName = settings.ConfigName
    if settings.Translucent ~= nil then ui:SetTranslucent(settings.Translucent) end
    if settings.Font ~= nil then ui:SetFont(settings.Font) end
    ui.Tags = settings.Tags
    ui.ShineSweep = settings.Shine ~= false
    if type(settings.ShineColor) == "userdata" or typeof(settings.ShineColor) == "Color3" then ui.ShineColor = settings.ShineColor end
    ui.UserInfo = settings.UserInfo or settings.UserInfoTop or false
    ui.UserInfoTop = settings.UserInfoTop or false
    ui.UserInfoTitle, ui.UserInfoSubtitle, ui.UserInfoColor = settings.UserInfoTitle, settings.UserInfoSubtitle, settings.UserInfoColor
    if settings.Search then
        ui.SearchEl = mk_input({ Title = "", Placeholder = "Search..." })
        ui.SearchEl.fullWidth = true; ui.SearchEl.bare = true
    end
    if settings.Shadow ~= nil then shadow_on = settings.Shadow and true or false end
    if settings.Compact ~= nil then compact2 = settings.Compact and true or false end
    if type(settings.FPS) == "number" then ui.FPS = math.clamp(settings.FPS, 30, 360) end
    if settings.TextSize ~= nil then ui:SetTextSize(settings.TextSize) end
    ui:SetTheme((settings.Theme and palettes[settings.Theme]) and settings.Theme or "Dark")
    if settings.MinimizeKey ~= nil then
        local _vk, title_str = resolve_key(settings.MinimizeKey)
        if _vk then state.MenuKey = _vk; state.MenuKeyName = title_str end
    end
    _center()
    preload_maps()

    local window = {}
    function window:AddTab(_arg)
        local title_str, _icon
        if type(_arg) == "table" then title_str = _arg.Title or _arg.Name or "Tab"; _icon = _arg.Icon else title_str = _arg or "Tab" end
        local _loose = { title = nil, elements = {} }
        local page = { name = title_str, groups = { _loose }, current = _loose, icon = _icon }
        table.insert(tabs, page)
        if _icon then load_icon(_icon, function(payload) page.iconData = payload end) end
        local function add_to(_group2, col_, elem)
            elem.id = col_.Id or col_.Flag
            elem.icon = col_.Icon
            elem._group = _group2
            if elem.kind == "toggle" and col_.Keybind then
                local _kb = col_.Keybind
                local _kdef, _kmode
                if type(_kb) == "table" then _kdef = _kb.Default or _kb.Key or _kb[1]; _kmode = _kb.Mode else _kdef = _kb end
                _kmode = _kmode or col_.KeybindMode or "Toggle"
                elem.keybind = mk_keybind({ Default = _kdef, Mode = _kmode, Callback = function() if norm_mode(_kmode) == "Toggle" then elem:SetValue(not elem.value) end end })
            end
            table.insert(_group2.elements, elem)
            if elem.id then options2[elem.id] = elem end
            if elem.icon then load_icon(elem.icon, function(payload) elem.iconData = payload end) end
            return elem
        end
        -- accepts both AddToggle({ Id = "x", ... }) and Fluent's AddToggle("x", { ... })
        local function _norm(ax2, bt)
            if type(ax2) == "string" and type(bt) == "table" then bt.Id = bt.Id or ax2; return bt end
            if type(ax2) == "table" then return ax2 end
            return {}
        end
        local bind_adders
        bind_adders = function(i2, get_group)
            local function a11(_mk) return function(__, ax2, bt) local col_ = _norm(ax2, bt); return add_to(get_group(), col_, _mk(col_)) end end
            i2.AddParagraph = a11(mk_paragraph)
            i2.AddButton = a11(mk_button)
            i2.AddToggle = a11(mk_toggle)
            i2.AddSlider = a11(mk_slider)
            i2.AddDropdown = a11(mk_dropdown)
            i2.AddKeybind = a11(mk_keybind)
            i2.AddColorpicker = a11(mk_colorpicker)
            i2.AddInput = a11(mk_input)
            i2.AddDivider = a11(mk_divider)
            i2.AddSpace = a11(mk_space)
            i2.AddCode = a11(mk_code)
            i2.AddImage = a11(mk_image)
            i2.AddButtonRow = a11(mk_button_row)
            function i2:AddGroup(ax2)
                local col_ = _norm(ax2)
                local elem_ref = { kind = "columns", cols = {}, gap = col_.Gap or 8, hover = new_spring(0, 14) }
                add_to(get_group(), col_, elem_ref)
                local g2 = {}
                function g2:AddElement()
                    local _col = { elements = {} }
                    table.insert(elem_ref.cols, _col)
                    return bind_adders({}, function() return _col end)
                end
                g2.AddColumn = g2.AddElement
                return g2
            end
            return i2
        end
        local ti = bind_adders({}, function() return page.current end)
        local function new_section(_title, _icon, _collapsible, _open)
            local grp = { title = _title or "Section", elements = {}, collapsible = _collapsible, open = _open ~= false }
            if _icon then load_icon(_icon, function(payload) grp.iconData = payload end) end
            table.insert(page.groups, grp)
            page.current = grp
            local s2 = bind_adders({}, function() return grp end)
            function s2:SetOpen(val) grp.open = val and true or false; return s2 end
            function s2:SetTitle(tm) grp.title = tostring(tm); return s2 end
            return s2
        end
        function ti:AddSection(_title, _icon) return new_section(_title, _icon, false, true) end
        function ti:AddCollapsibleSection(_title, _icon, _open) return new_section(_title, _icon, true, _open) end
        return ti
    end
    function window:SelectTab(ix) state.ActiveTab = ix end
    function window:Show() if state.Minimized then ui:Minimize() end end
    function window:Hide() if not state.Minimized then ui:Minimize() end end
    function window:Dialog(_dcfg)
        _dcfg = _dcfg or {}
        local _lines = {}
        for _ln in (tostring(_dcfg.Content or "") .. "\n"):gmatch("(.-)\n") do table.insert(_lines, _ln) end
        if #_lines > 0 and _lines[#_lines] == "" then table.remove(_lines) end
        local dat = { title = _dcfg.Title or "Dialog", content = tostring(_dcfg.Content or ""), lines = _lines, buttons = _dcfg.Buttons or { { Title = "OK" } }, onClosing = {}, onClosed = {} }
        if _dcfg.Input then
            local _ic = type(_dcfg.Input) == "table" and _dcfg.Input or {}
            dat.input = mk_input({ Title = "", Placeholder = _ic.Placeholder or "", Default = _ic.Default, Numeric = _ic.Numeric })
            dat.input.fullWidth = true; dat.input.bare = true
        end
        state.Dialog = dat
        local _handle = {}
        function _handle:Close() dat.closing = true end
        function _handle:OnClosing(callback_fn) if type(callback_fn) == "function" then table.insert(dat.onClosing, callback_fn) end return _handle end
        function _handle:OnClosed(callback_fn) if type(callback_fn) == "function" then table.insert(dat.onClosed, callback_fn) end return _handle end
        if _dcfg.Yield and not state.InStep then
            while state.Dialog do task.wait() end
        end
        return _handle
    end
    function window:BuildConfigSection(page)
        local _section = page:AddSection("Configuration")
        local function set_header() _section:SetTitle("Configuration  -  autoload: " .. (ui:GetAutoload() or "none")) end
        local function _say(message, _kind) ui:Notify({ Title = "Config", Content = message, Type = _kind, Duration = 3 }) end
        local _row = _section:AddGroup({ Gap = 8 })
        local _c1, _c2 = _row:AddElement(), _row:AddElement()
        local name_input = _c1:AddInput({ Title = "", Placeholder = "Config name..." })
        name_input.fullWidth = true
        local entries = _c2:AddDropdown({ Title = "Config", Options = ui:GetConfigs(), AllowNull = true })
        local function _picked()
            local title_str = entries.value
            if not title_str or title_str == "" or title_str == "None" then _say("No config selected", "Warning"); return nil end
            return title_str
        end
        _section:AddButtonRow({ Buttons = {
            { Title = "Create", Accent = true, Callback = function()
                local title_str = name_input.text
                if not title_str or title_str:gsub("%s", "") == "" then return _say("Type a config name first", "Warning") end
                ui:SaveConfig(title_str)
                entries:SetValues(ui:GetConfigs())
                entries:SetValue(title_str)
                _say("Created '" .. title_str .. "'", "Success")
            end },
            { Title = "Load", Callback = function()
                local title_str = _picked()
                if not title_str then return end
                if ui:LoadConfig(title_str) then _say("Loaded '" .. title_str .. "'", "Success") else _say("Failed to load '" .. title_str .. "'", "Error") end
            end },
            { Title = "Save", Callback = function()
                local title_str = _picked()
                if not title_str then return end
                ui:SaveConfig(title_str)
                _say("Saved '" .. title_str .. "'", "Success")
            end },
            { Title = "Refresh", Callback = function()
                entries:SetValues(ui:GetConfigs())
                _say("Found " .. #ui:GetConfigs() .. " config(s)", "Info")
            end },
            { Title = "Autoload", Callback = function()
                local title_str = _picked()
                if not title_str then return end
                ui:SetAutoload(title_str)
                set_header()
                _say("'" .. title_str .. "' will autoload", "Success")
            end },
        } })
        set_header()
        return _section
    end
    function window:BuildInterfaceSection(page)
        local str_ = ui:LoadInterfaceSettings() or {}
        if str_.Theme then ui:SetTheme(str_.Theme) end
        if str_.Translucent ~= nil then ui:SetTranslucent(str_.Translucent) end
        if str_.MenuKey then state.MenuKey = str_.MenuKey; state.MenuKeyName = str_.MenuKeyName or key_name[str_.MenuKey] or "?" end
        if str_.Font then ui:SetFont(str_.Font) end
        if str_.Shadow ~= nil then shadow_on = str_.Shadow and true or false end
        if str_.ShineSweep ~= nil then ui.ShineSweep = str_.ShineSweep and true or false end
        if str_.Compact ~= nil then compact2 = str_.Compact and true or false end
        if str_.TextSize ~= nil then ui:SetTextSize(str_.TextSize) end
        local _section = page:AddSection("Interface")
        _section:AddDropdown({ Title = "Theme", Description = "Changes the interface theme", Options = ui.Themes, Default = ui.ThemeName or "Dark", Callback = function(val)
            ui:SetTheme(val); ui:SaveInterfaceSettings()
        end })
        _section:AddDropdown({ Title = "Font", Description = "Font for the big texts (title, tab header)", Options = ui.Fonts, Default = font_name or "Matcha", Callback = function(val)
            ui:SetFont(val); ui:SaveInterfaceSettings()
        end })
        _section:AddToggle({ Title = "Shadow", Description = "Soft shadow behind the window", Default = shadow_on, Callback = function(val)
            shadow_on = val; ui:SaveInterfaceSettings()
        end })
        _section:AddDropdown({ Title = "Text size", Options = { "Small", "Normal", "Large" }, Default = ui:GetTextSize(), Callback = function(val)
            ui:SetTextSize(val); ui:SaveInterfaceSettings()
        end })
        _section:AddToggle({ Title = "Compact", Description = "Smaller elements, more on screen", Default = compact2, Callback = function(val)
            compact2 = val; ui:SaveInterfaceSettings()
        end })
        _section:AddToggle({ Title = "Shine effect", Description = "A soft light sweeps across the window", Default = ui.ShineSweep, Callback = function(val)
            ui.ShineSweep = val; ui:SaveInterfaceSettings()
        end })
        _section:AddToggle({ Title = "Translucent", Description = "Subtle translucency vs solid", Default = op2.Window < 1, Callback = function(val)
            ui:SetTranslucent(val); ui:SaveInterfaceSettings()
        end })
        local _kb = _section:AddKeybind({ Title = "Minimize bind", Default = state.MenuKeyName })
        _kb:OnChanged(function()
            state.MenuKey = _kb.key or state.MenuKey
            state.MenuKeyName = _kb.keyName or state.MenuKeyName
            ui:SaveInterfaceSettings()
        end)
        return _section
    end

    if settings.AutoStep ~= false then ui:Start() end
    return window
end

return Fluent
