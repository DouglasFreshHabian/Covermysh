![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)
![Maintained](https://img.shields.io/badge/Maintained-Yes-brightgreen.svg)
![Shell Script](https://img.shields.io/badge/made%20with-bash-1f425f.svg)
![Status](https://img.shields.io/badge/status-stable-success.svg)
![Issues](https://img.shields.io/github/issues/DouglasFreshHabian/IPv6Shield)
![Stars](https://img.shields.io/github/stars/DouglasFreshHabian/IPv6Shield?style=social)
![IPv6](https://img.shields.io/badge/IPv6-Support%20Control-red.svg)
![Sysctl](https://img.shields.io/badge/Sysctl-Hardening-yellow.svg)
![Systemd](https://img.shields.io/badge/systemd-Compatible-blue.svg)
<h1 align="center"> 
 🐚 CoverMySh™️
</h1>

![carbon header pic](https://github.com/DouglasFreshHabian/Covermysh/blob/main/Assets/carbon5.png)

## 🛡🛠 Protect Your Privacy by Obfuscating Your Shell History

**CoverMySh** is a set of privacy-focused scripts designed to protect your command history from prying eyes. By clearing and replacing your Bash and Fish shell history with random, fake commands, this tool ensures that your terminal activity remains concealed. 

| Features                                    | Description
| :------------------------------------------ | :------------------------------------------------------------------------------------------------------------------------------------------- |
|🔹 `Erase Command History:`                  | Completely clear your shell history files (`.bash_history` for Bash and `fish_history` for Fish).                                            |
|🔸 `Generate Fake Entries:`                  | Each script inserts random fake commands from an extensive pre-defined list, making it difficult for anyone to trace your actual activities. |
|🔹 `Colorful & Engaging UI:`                 | Enjoy a visually appealing interface with progress bars and color-coded output for a smooth user experience.                                 |
|🔸 `Automate Cron Jobs:`                     | Set up a cron job to periodically run the script and keep your history files up-to-date with new fake commands.                              |

---

## 🚀 How It Works

### **1. freshbash.sh**: Fake Bash History Generator
This script is designed to obfuscate your **Bash history** by replacing the `.bash_history` file with fake commands. It randomly selects commands from a list of nearly 400 predefined fake commands and inserts them into your history.

**Key Features:**
- 🎨 Color-coded output for better readability.
- ⏳ Progress bar to show history generation status.
- 🔑 Randomly adds fake administrative commands to your history for additional obscurity.
- 📅 Timestamps are included to make the history appear natural.

#### [freshbash.sh on GitHub](https://github.com/DouglasFreshHabian/covermysh/blob/main/freshbash.sh)

---

### **2. freshfish.sh**: Fake Fish Shell History Generator
If you’re using the **Fish shell**, this script does the same thing for your `fish_history` file. It deletes your existing history and populates it with random fake commands formatted specifically for Fish shell.

**Key Features:**
- 💨 Clears out the existing Fish history before replacing it.
- 🎭 Generates 100 fake commands (modifiable) in the Fish history format: `BEGIN <timestamp> <command>`.
- 🏁 Progress bar keeps you updated on how far along the script is.
- 🔐 Maintains your privacy by hiding your real shell activities.

#### [freshfish.sh on GitHub](https://github.com/DouglasFreshHabian/covermysh/blob/main/freshfish.sh)

---

### **3. main_script.sh**: Unified Interface for All Scripts
This is the main script that gives you a simple, interactive menu to control both `freshbash.sh` and `freshfish.sh`. You can run them separately or both at the same time, depending on your needs.

**Menu Options:**
1. 🚀 Run `freshbash.sh` to update Bash history.
2. 🐟 Run `freshfish.sh` to update Fish shell history.
3. ⚡ Run both scripts simultaneously for total coverage.
4. ❌ Exit.

After each action, you'll be reminded to set up a **cron job** to keep your history files automatically updated.

#### [main_script.sh on GitHub](https://github.com/DouglasFreshHabian/covermysh/blob/main/main_script.sh)

---

### **4. random_cronjob.sh**: Automate Fake History Updates
Use **random_cronjob.sh** to set up a cron job that runs one of the above scripts at a random minute every hour. This ensures that your history files are periodically obfuscated without manual intervention.

**Key Features:**
- 🕐 Schedule the script to run at random intervals.
- 🔧 Set up the cron job easily using simple color-coded feedback.
- ⏳ Keep your history files consistently updated with fresh fake commands.

#### [random_cronjob.sh on GitHub](https://github.com/DouglasFreshHabian/covermysh/blob/main/main_script.sh)

---

## 🛠️ Installation & Usage

1. **Clone this repository:**
    ```bash
       git clone https://github.com/DouglasFreshHabian/covermysh.git
       cd covermysh
    ```

2. **Set up the scripts:**
   Give execution permissions to the scripts:
   ```bash
      chmod +x freshbash.sh freshfish.sh main_script.sh random_cronjob.sh
   ```

3. **Run the main script** to interact with all options:
   ```bash
     ./main_script.sh
   ```

4. **Set up a cron job** to automate the fake history generation:
   Run `random_cronjob.sh` to schedule periodic updates:
   ```bash
      ./random_cronjob.sh
   ```

---

## ⚠️ Important Notes

- **Ethical Considerations:** This tool is intended for privacy protection. Ensure that you’re not violating any terms of service or policies while using it.
- **Permissions:** The scripts require write access to your history files (`.bash_history` for Bash and `fish_history` for Fish). Ensure you have the necessary permissions to run these scripts on your system.
- **Cron Job:** The cron job can run scripts in the background periodically. Make sure you're comfortable with automating this process.

---

## 📝 License

MIT License — use it freely in personal or commercial projects. Attribution appreciated but not required.

## ✍️ Author

| Name:             | Description                                       |
| :---------------- | :------------------------------------------------ |
| Script:           | freshbash.sh, freshfish.sh, main_script.sh        |
| Author:           | Douglas Habian                                    |
| Version:          | 1.1                                               |
| Repo:             | https://github.com/DouglasFreshHabian/Covermysh   |

## 💬 Feedback & Contributions

Got ideas, bug reports, or improvements?
Feel free to open an issue or submit a pull request!

---

## 📌 Acknowledgments

- **Special thanks** to everyone who contributed to the development of this project and provided feedback.
- This project was created with privacy in mind. Keep your activities secure and private!


### If you have not done so already, please head over to the channel and hit that subscribe button to show some support. Thank you!!!

## 👍 [Stay Fresh](https://www.youtube.com/@DouglasHabian-tq5ck) 

<!-- Reach out to me if you are interested in collaboration or want to contract with me for any of the following:
	Building Github Pages
	Creating Youtube Videos
	Editing Youtube Videos
	Youtube Thumbnail Creation
	Anything Pertaining to Linux! -->

<!-- 
 _____              _       _____                        _          
|  ___| __ ___  ___| |__   |  ___|__  _ __ ___ _ __  ___(_) ___ ___ 
| |_ | '__/ _ \/ __| '_ \  | |_ / _ \| '__/ _ \ '_ \/ __| |/ __/ __|
|  _|| | |  __/\__ \ | | | |  _| (_) | | |  __/ | | \__ \ | (__\__ \
|_|  |_|  \___||___/_| |_| |_|  \___/|_|  \___|_| |_|___/_|\___|___/
        dfresh@tutanota.com Fresh Forensics, LLC 2025 -->


