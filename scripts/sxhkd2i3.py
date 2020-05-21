import sys
import os
import re

I3_CONFIG_FILE_PATH = ''.join([os.getenv('XDG_CONFIG_HOME'), '/i3/config'])

# creates a list of keybind objects from i3 config file
def i3configToShortcutList(i3_config_file_path):
    i3_shortcut_list = []
    with open(i3_config_file_path) as i3_config_file:
        for line in i3_config_file.read().split('\n'):
            parsed_keybind = parseKeybind(line, 'i3')
            if parsed_keybind:
                i3_shortcut_list.append(parsed_keybind)
    return i3_shortcut_list

# parses keybind configuration test into workable keybind object
def parseKeybind(dirty_keybind, parse_method):
    if parse_method == "i3":
        # i3 keybinds are configured as follows:
        # bindsym --<command params> <key combination> <command> <attr>
        I3_COMMAND_KEYWORDS = [
            'workspace',
            'focus',
            'move',
            'reload',
            'restart',
            'exec',
            'resize',
            'mode',
            'kill'
        ]
        i3_re_string = ''.join(["bindsym\ (.*)\ (", '|'.join(I3_COMMAND_KEYWORDS), ")(.*)$"])
        i3_keybind = re.match(i3_re_string, dirty_keybind)
        if i3_keybind:
            i3_keybind_obj = {
                "keys": i3_keybind.group(1),
                "command": i3_keybind.group(2),
                "params": i3_keybind.group(3)
            }
            return i3_keybind_obj
        else:
            return

print("Parsing i3 config")
print(i3configToShortcutList(I3_CONFIG_FILE_PATH))
