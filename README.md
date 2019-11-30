# Hold-to-aim (hold ADS) controls in EYE Divine Cybermancy

**Author:** Desi Quintans <me@desiquintans.com>  
**Website:** <http://www.desiquintans.com/eyeaim>

[EYE Divine Cybermancy](https://store.steampowered.com/app/91700/EYE_Divine_Cybermancy/) only has toggle-to-aim controls, which many people find clumsy. This Autohotkey script adds industry-standard hold-to-aim controls to the game without interrupting the other functions that the Aim button also performs in the game. 

The script does this by differentiating between taps and holds, so you can still tap the Right Mouse to do the game's original things, and then hold to aim whenever you like. This also means that you have a choice between toggle-to-aim **and** hold-to-aim. Choosing between them is entirely contextual based on how long you hold the button down, it feels very natural.



## Usage

Download the newest release from [the Releases section](https://github.com/DesiQuintans/eye-holdaim/releases). You can put the files anywhere you like.

Run `EYE_Hold-to-aim.exe` before running EYE Divine Cybermancy. **The script works with the default binding of Right Mouse to Aim/Parry/Alt Fire.**

_Fair warning:_ Scanning the executable with [VirusTotal](https://www.virustotal.com) raises warnings in 3 out of 69 anti-virus engines. These are, IMO, false positives caused by the file being new. 

If you would prefer to run an uncompiled script, then you can install [Autohotkey](https://www.autohotkey.com/) and run `EYE_Hold-to-aim.ahk`.



## Note about dropped inputs

The game itself has a lot of jank with regards to aiming, and it becomes more noticeable now that this script gives you fluid hold-to-aim controls. Sometimes you may find that you don't go into aim mode even if you've pressed Right Mouse down. This is not my script's fault, it's actually the game dropping inputs. You can confirm this yourself by rapidly tapping the Aim button when the script is not running and seeing that the game ignores new inputs while the transitional animations are playing. 



## Acknowledgements

- The EYE icon for the compiled executable comes from the EYE executable itself.