# Hold-to-aim (hold ADS) controls in EYE Divine Cybermancy

**Author:** Desi Quintans <me@desiquintans.com>  
**Website:** <http://www.desiquintans.com/eyeaim>

[EYE Divine Cybermancy](https://store.steampowered.com/app/91700/EYE_Divine_Cybermancy/) only has toggle-to-aim controls, which many people find clumsy. This Autohotkey script adds industry-standard hold-to-aim controls to the game without interrupting the other functions that the Aim button also performs in the game. 

The script does this by differentiating between taps and holds, so you can still tap the Right Mouse to do the game's original things, and then hold to aim whenever you like. This also means that you have a choice between toggle-to-aim **and** hold-to-aim. Choosing between them is entirely contextual based on how long you hold the button down, it feels very natural.



## Usage

### **YOU MUST REBIND Aim/Parry/Alt Fire to `/` (forward slash).** ###

This script will not work unless you rebind Aim to `/`. The script takes control of Right Mouse and uses it to send `/` keystrokes instead.

Run `EYE_Hold-to-aim.exe` before running EYE Divine Cybermancy. 

_Fair warning:_ Scanning the executable with [VirusTotal](https://www.virustotal.com) raises warnings in 3 out of 69 anti-virus engines. These are, IMO, false positives caused by the file being new. 

If you would prefer to run an uncompiled script, then you can install [Autohotkey](https://www.autohotkey.com/) and run `EYE_Hold-to-aim.ahk`.



## Note about dropped inputs

The game itself has a lot of jank with regards to aiming, and it becomes more noticeable since this script gives you fluid hold-to-aim controls. Sometimes you may find that you don't go into aim mode even if you've pressed Right Mouse down. This is not my script's fault, it's actually the game dropping inputs. You can confirm this yourself by rapidly tapping the aim button (whether it is bound to "/" or bound to "Right Mouse") and seeing that the game has a mind of its own.



## Acknowledgements

- The EYE icon for the compiled executable comes from the EYE executable itself.