# BootSoundNX

## About

This is a system module that allows you, the user, to play a sound on the nintendo switch boot (also known as a 'bootsound')! This is a fork of the original project by [KranKRival](https://github.com/KranKRival/BootSoundNX). This project is currently maintained by [TheModdersDen](https://github.com/TheModdersDen/BootSoundNX).

## Disclaimer

This sysmodule is currently under development, and is not ready for use. Please do not use this on your main switch, as it is not "production ready". If you would like to contribute, please feel free to make a pull request or an issue on the GitHub repository. I am open to contributions, and will review them as soon as I can. Please note that I am not responsible for any damage that may occur to your device. Please use this at your own risk. If you have any issues, please create an issue on the GitHub repository. I will not provide support for this project on any other platform than the HOS system of the Nintendo Switch. This is becauseI do not have the time to learn how to program and develop for other platforms, as well as operate the code base for them. I also **do not** support emulation of this project. If you are using this project on an emulator, please do not ask for support. I will not provide it.

## Credits

Credits: [jakibaki](https://github.com/jakibaki), [KranKRival](https://github.com/KranKRival), and [TheModdersDen](https://github.com/TheModdersDen)

## Notes

This sysmodule supports the '.mp3' extension **ONLY**. Please do not ask for additional file support as I do not have the time to learn how to encode more sound formats to this sys-module. If you don't know how do this, please look here: [link](https://gprivate.com/5ynap).

## Latest Tested Version (BootSoundNX v1.3.0)

Tested on Atmosphere 1.3.2 (found [here](https://github.com/Atmosphere-NX/Atmosphere/releases/tag/1.3.2)), Hekate v5.7.2 (found [here](https://github.com/CTCaer/hekate/releases/tag/v5.7.2)) and HOS 14.1.1.

It works. There are a few things which I might need to iron out, but it works.

For now, I recommend downloading boot sounds from [Zedge](https://www.zedge.net/ringtones-and-wallpapers).

## Installation

Copy the contents of the release zip to root of the sd card, enable the sys-module, and restart the switch.

## How to Change the Sound

To replace the boot sound, replace it with your sound in ```sdmc://config/BootSoundNX/sound/bootsound.mp3```.

## Regarding Long BootSounds

This is from a conversation with a tester of this sysmodule named @[pixeltester](https://github.com/pixeltester). Shoutout to that individual for this find:

>Regarding the issue with the gap in the audio, I finally tested a long bootsound with two SD cards on the same Switch and there is quite a large variance as to where the gap occurs. Sandisk = the gap is very early in the bootsound, Samsung = the gap is in the middle of the bootsound.
>
>These are good quality SD cards formatted to FAT32 with hekate. I have no idea how to resolve it but it seems it was indeed down to some kind of hardware variance and possibly format method also.

## Troubleshooting

To disable/remove the sysmodule, please do one of the three following

- Remove the following file: ```sdmc://atmosphere/contents/00FF0000000002AA/flags/boot2.flag.```

### OR

- Disable the sys-module in a sysmodule manager (Such as DeepSea toolbox)

### OR EVEN

- Download this handy boot payload and remove all sysmodules by starting it and try again (**last resort**): [CommonProblemResolver](https://github.com/Team-Neptune/CommonProblemResolver/releases).
  - Stick it in your ```bootloader/payloads``` folder to use it in Hekate.

Also, there is a possible bug I have encountered in which certain MP3 files play at a weird pitch and speed. I am investigating this in my spare time, but if someone finds the cause, or has issues with it, please let me know by creating an issue.

## Changelog

To view the changelog see the [docs/_CHANGELOG.md](docs/_CHANGELOG.md) file.

## ToDo/Future Plans

To view the ToDo/Future Plans see the [docs/TODO.md](docs/TODO.md) file.

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

- [jakibaki](https://www.github.com/jakibaki) for the original idea (from [this](https://gbatemp.net/threads/boot-sound-on-nx.540201/) thread).
  - **NOTE**: This thread has seemed to have disappeared from the internet. However, CoPilot autofilled the URL, so I believe this is the origin of the idea.
- [KranKRival](https://www.github.com/KranKRival) for the original code repository.
- [TheModdersDen](https://www.github.com/TheModdersDen) for the updating and maintaining the current code repository.
- [libnx](https://www.github.com/switchbrew/libnx) for the libnx library.
- [devkitPro](https://www.github.com/devkitPro) for the devkitA64 toolchain.
- [switchbrew](https://www.github.com/switchbrew) for the nx-hbloader and nx-hbmenu projects.

## Contact

If you have any questions, comments, or concerns, please feel free to contact me on Discord at [TheModdersDen#0001](https://discord.com) (preferred) or on [Twitter](https://twitter.com/TheModdersDen). If you do wish to contact me, please state the reason for why you are contacting me on these services. If you do not, I will not respond to your message.

## Donations

I do not accept donations for this project (as I have not discussed it with the creators and do not want any legal trouble). If you would like to donate to this project, please donate to [jakibaki](https://www.github.com/jakibaki) or [KranKRival](https://www.github.com/KranKRival) as they are the original creators of this project.

## CircleCI

### Production Build Status

Production: [![CircleCI](https://dl.circleci.com/status-badge/img/gh/TheModdersDen/BootSoundNX/tree/production.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/TheModdersDen/BootSoundNX/tree/production)

### Development Build Status

Development: [![CircleCI](https://dl.circleci.com/status-badge/img/gh/TheModdersDen/BootSoundNX/tree/development.svg?style=svg)]

### Artifact Download

Please note that this link is for experimental releases and is **very likely going to be buggy**. Please do not use this unless you know what you are doing. **I AM NOT RESPONSIBLE FOR WHAT OCCURS ON YOUR DEVICE, AND WILL NOT GIVE SUPPORT IF YOU USE THIS BUILD.** As such, please only use official releases on the GitHub releases page.

Production: [![CircleCI](https://circleci.com/gh/TheModdersDen/BootSoundNX/tree/production.svg?style=svg)](https://circleci.com/gh/TheModdersDen/BootSoundNX/tree/production)

## FAQ

### Q: Why does my boot sound not play?

**A**: Please make sure that you have the correct file extension (`.mp3`), that the file is formatted properly (converted to the MP3 format), and that the file is in the correct location (`sdmc://config/BootSoundNX/sound/bootsound.mp3`).

### Q: Why does my boot sound play at a weird pitch and speed?

**A**: This is a known bug. I am investigating this in my spare time, but if someone finds the cause, or has issues with it, please let me know by creating an issue.

### Q: Why does my boot sound have a gap in it?

**A**: This is a known bug. I am investigating this in my spare time, but if someone finds the cause, or has issues with it, please let me know by creating an issue.

### Q: Why does my boot sound not play at all?

**A**: Please make sure that you have the correct file extension (`.mp3`), that the file is formatted properly (converted to the MP3 format), and that the file is in the correct location (`sdmc://config/BootSoundNX/sound/bootsound.mp3`).

### Q: When are you going to add support for other file formats?

**A**: I am not. I do not have the time to learn how to encode other file formats to this sys-module. If you would like to contribute, I am open to pull requests and code contributions.

### Q: When are you going to add X, Y, or Z feature?

**A**: I cannot give a timeframe for these things, and will not, as I am currently in college and do not have bundles of time to work on this project. If you would like to contribute, I am open to pull requests and code contributions.
