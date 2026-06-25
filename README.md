# Sound Alive Effect Remover Magisk Module

## Descriptions
- Removes Samsung Sound Alive effect & app systemlessly
- Required for some audio mods to be working properly like DTS Audio & Waves Maxx Audio in Samsung devices.

## Requirements
Magisk or Kitsune Mask or KernelSU or Apatch installed

## Changelog

v1.1
- Support NoMount metamodule
- Resets module folders/files permissions at post-fs-data
- Move _uninstall.log to /data/adb/logs/

v1.0
- Fix wrong target in latest KernelSU

v0.9
- Tidy up aml.sh
- Abort installation if fail to mount mirror system

v0.8
- Improve /odm and /my_product support detection

v0.7
- Fix bug in uninstall.sh

v0.6
- Improve xml patch detection
- Fix conflict with modules_update while installing via recovery if Magisk installed

v0.5
- New Magisk and Kitsune Mask support (independent mirror)
- Remount partitions before mounting mirror to prevent mount failure caused by device/resource busy

v0.4
- Redirect /sdcard to /data/media/"$UID"
- Add optional debug.log=1 for more detailed install log
- Kitsune Mask detection

v0.3
- Fix mount partitions
- Move uninstall log to /data/media/0/..._uninstall.log

v0.2
- KernelSU support
- Magisk v26.1 support
- Removes some other Samsung soundfx
- Cleaning protected storage
- Save install log at /sdcard/..._recovery.log while installing via Recovery
- Fix mount required partitions while installing via Recovery
- Creates /sdcard/optionals.prop file if it doesn't exist
- Using magiskpolicy --live --apply sepolicy.pfsd if sepolicy.sh=1
- Save uninstall log in /data/adb/modules/..._uninstall.log

## Installation Guide & Download Link
- Install this module via Magisk app or Kitsune Mask app or KernelSU app or Apatch app or Recovery if Magisk or Kitsune Mask installed
- This is also an audio mod so, you need to install AML Magisk Module https://t.me/ryukinotes/34 if using any other else audio mod module
- Reboot
- You can use https://github.com/reiryuki/Z-Folder-Script and check the loaded_soundfx.txt created is your soundalive effect removed or not.

## Optionals
Global: https://t.me/ryukinotes/35

## Troubleshootings
Global: https://t.me/ryukinotes/34

## Support & Bug Report
- https://t.me/ryukinotes/54 (Z folder is enough, no need logs)
- If you don't do above, issues will be closed immediately

## Credits and Contributors
- @HuskyDG
- https://t.me/viperatmos
- https://t.me/androidryukimodsdiscussions
- You can contribute ideas about this Magisk Module here: https://t.me/androidappsportdevelopment

## Sponsors
https://t.me/ryukinotes/25


