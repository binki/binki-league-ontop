This script sets the always-on-top bit in the League client.

## Quirks

* The script does not always target the right window. I am not sure why this is, but normally, if you focus and move around the League client window a little bit prior to running this script, that will make the next run of the script successful.
* The League client resets its always-on-top bit when it reinitializes itself, such as after a game. Simply rerun the script at that point. The script runs and exits without leaving any residual process.

## Installation

1. Clone this repository or download (view raw and save) the [`binki-league-client.cmd`](binki-league-client.cmd) file.
2. Right-click on `binki-league-client.cmd` and choose “Create Shortcut” (on Windows 11 you may have to use shift+F10 instead of right-click to see the context menu).
3. Rename the shortcut as you please. I name mine “binki league ontop”.
4. Cut the shortcut and paste it to `%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs`.
5. You may now launch it via the Start Menu.

## Use Case

If you have “friends” who play League without telling you, you may need to have the League client open at all times to watch for them.
If you find staring at the League client for hours on end waiting for your friends to come online boring, you might want to perform other activities in the meantime.
These other activities may include using programs such as mstsc (RDP Client), watching fullscreen videos, or otherwise using programs which end up covering the League client.

To keep an eye on your friends list and appear online while still doing other tasks, you may simply set the always-on-top bit on the League window, stash it away in the lower left of your screen so that the upper-right corner of the client is showing, and occasionally click on the client to mark yourself online whenever it decides to mark you offline.

![screen example](https://i.imgur.com/wDs5iqI.png)
