# Alerting User - Disk Space
by Megan Tran

## Table of Contents
* [Purpose of Program](#Purpose-of-program)
* [Screenshots](#Screenshots)
* [Technologies](#technologies)
* [Setup](#setup)
* [Using the Program](#Using-the-Program)
* [Credits](#Credits)

## Purpose of Program

* Practice using awk and bash shell scripting on Windows Subsystem for Linux (WSL) on Visual Studio Code.
* Alert user if their disk space were to run out.
* Practice applying mathematical operations.

## Screenshots  

<img width="400" alt="image" src="https://github.com/Sonicdaheghod/User_Disk_Space/assets/68253811/684fd50c-ea9e-4518-8b67-070ef0eef02e">

Final output from bash script.

## Technologies
Languages/ Technologies used:

* Bash 
* Awk
* Visual Studio Code
* WSL Ubuntu

## Setup

1) Download [Ubuntu](https://ubuntu.com/download/desktop)
* Ensure virtualization is enabled
This can be done by going on the BIOS screen. To get here reset your computer and repeatedly press esc, F2, or the keyboard button that you need to press according to your device version/model.
![image](https://github.com/Sonicdaheghod/Scanning-and-Detecting-Network_MT/assets/68253811/8b1752e9-80ab-4ffb-88f4-cfffc30f006d)


* Turn on Windows Subsystem for Linux (Beta)

![image](https://github.com/Sonicdaheghod/Scanning-and-Detecting-Network_MT/assets/68253811/da39039b-8f0e-4f44-9b68-d9a8bacf3dd4)


2) (Optional) Download [Visual Studio Code](https://code.visualstudio.com/download)
* Get the extension WSL
* Type into Ubuntu terminal
``` wslconfig.exe /s Ubuntu ```

The wsl terminal should now be avaliable on VSC application.

3) Download awk by following intructions [here](https://adamtheautomator.com/awk-for-windows/).

4) Download bash by following instructions [here](https://www.gnu.org/software/bash/).

## Using the Program

* What I did differently was adding an if-else statement into the program. If the user's disk space was above 90%, the program would alert the user that they have low disk space. Otherwise, they would only be shown the amount of disk space avaliable.

1) Get the numerical value of disk space used in a user's computer by typign this in terminal:

```
df -h | grep drivers | awk '{print $5}' | cut -d '%' -f1
```

2) Create the bash script, I assigned a variable for the code above and create my own if-else statement. You can customize your bash script if preferred.


## Credits

* Source code from [Linuxtopia](https://www.youtube.com/watch?v=ahxhTIvnF3I&ab_channel=Linuxtopia)

