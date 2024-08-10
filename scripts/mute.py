import subprocess

def get_volume_state():
    result = subprocess.run(["amixer", "get", "Master"], capture_output=True, text=True)
    return "[on]" in result.stdout

def set_volume_mute():
    subprocess.run(["amixer", "set", "Master", "mute"])
    subprocess.run(["notify-send", "Muted"])

def set_volume_unmute():
    subprocess.run(["amixer", "set", "Master", "unmute"])
    subprocess.run(["notify-send", "Unmuted"])

if __name__ == "__main__":
    volume_state = get_volume_state()
    if volume_state:
        set_volume_mute()
    else:
        set_volume_unmute()

