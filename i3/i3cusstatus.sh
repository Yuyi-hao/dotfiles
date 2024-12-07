# i3status configuration file.
# see "man i3status" for documentation.

# It is important that this file is edited as UTF-8.
# The following line should contain a sharp s:
# ß
# If the above line is not correctly displayed, fix your editor first!

general {
        colors = true
        interval = 5
}

order += "ipv6"
order += "wireless _first_"
order += "ethernet _first_"
order += "battery all"
order += "cpu_temperature 0"
order += "disk /"
order += "load"
order += "memory"
order += "tztime local"

wireless _first_ {
        format_up = "Weed suppiler: (Quality: %quality)"
        format_down = "W: caught by police"
}

ethernet _first_ {
        format_up = "E: %ip (%speed)"
        format_down = "E: down"
}

battery all {
        format = "%status %percentage %remaining"
	format_down = "No Power left"
	status_chr = "⚡"
	status_bat = "🔋"
	status_unk = "?"
	status_full = "☻"
	path = "/sys/class/power_supply/BAT%d/uevent"
	low_threshold = 20
}

cpu_temperature 0 {
	format = "Hotness level: %degrees °C"
	max_threshold = 56
	path = "/sys/devices/platform/coretemp.0/hwmon/hwmon5/temp1_input"
}

disk "/" {
        format = "%avail"
}

load {
        format = "%1min"
}

memory {
        format = "%used | %available"
        threshold_degraded = "1G"
        format_degraded = "MEMORY < %available"
}

tztime local {
        format = "%Y-%m-%d %H:%M:%S"
}
