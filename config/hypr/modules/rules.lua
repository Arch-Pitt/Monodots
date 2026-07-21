-- Hyprland-run windowrule
hl.window_rule({
    name = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move = "20 monitor_h-120",
    float = true,
})

-- Transparency rules
hl.window_rule({
    name = "transparent-kitty",
    match = { class = "kitty" },
    opacity = 0.9,
})

-- Floating rules
hl.window_rule({
    name = "floating-pavucontrol",
    match = { class = "org.pulseaudio.pavucontrol" },
    float = true,
})

hl.window_rule({
    name = "floating-fileroller",
    match = { class = "org.gnome.FileRoller" },
    float = true,
})

-- Layer rules
hl.layer_rule({
    name = "blur-waybar",
    match = { namespace = "waybar" },
    blur = true,
    ignore_alpha = 0.5,
})

hl.layer_rule({
    name = "blur-rofi",
    match = { namespace = "rofi" },
    blur = true,
    ignore_alpha = 0.5,
})

hl.layer_rule({
    name = "swaync-menu-blur",
    match = { namespace = "swaync-control-center" },
    blur = true,
    ignore_alpha = 0.5,
})

hl.layer_rule({
    name = "swaync-notifications-blur",
    match = { namespace = "swaync-notification-window" },
    blur = true,
    ignore_alpha = 0.5,
})

-- Windows and workspaces
hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

-- Fix XWayland drags
hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})