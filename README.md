![carbon header pic](https://github.com/DouglasFreshHabian/covermysh/blob/main/Assets/covermysh.png)

# CoverMySh: Protect Your Privacy by Obfuscating Your Shell History

**CoverMySh** is a set of privacy-focused scripts designed to protect your command history from prying eyes. By clearing and replacing your Bash and Fish shell history with random, fake commands, this tool ensures that your terminal activity remains concealed. 

### Features:
🔹 **Erase Real Command History:** Completely clear your shell history files (`.bash_history` for Bash and `fish_history` for Fish).
🔸 **Generate Fake History Entries:** Each script inserts random fake commands from an extensive pre-defined list, making it difficult for anyone to trace your actual activities.
🔹 **Colorful & Engaging UI:** Enjoy a visually appealing interface with progress bars and color-coded output for a smooth user experience.
🔸 **Automate with Cron Jobs:** Set up a cron job to periodically run the script and keep your history files up-to-date with new fake commands.

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
    - Give execution permissions to the scripts:
      ```bash
      chmod +x freshbash.sh freshfish.sh main_script.sh random_cronjob.sh
      ```

3. **Run the main script** to interact with all options:
    ```bash
    ./main_script.sh
    ```

4. **Set up a cron job** to automate the fake history generation:
    - Run `random_cronjob.sh` to schedule periodic updates:
      ```bash
      ./random_cronjob.sh
      ```

---

## ⚠️ Important Notes

- **Ethical Considerations:** This tool is intended for privacy protection. Ensure that you’re not violating any terms of service or policies while using it.
- **Permissions:** The scripts require write access to your history files (`.bash_history` for Bash and `fish_history` for Fish). Ensure you have the necessary permissions to run these scripts on your system.
- **Cron Job:** The cron job can run scripts in the background periodically. Make sure you're comfortable with automating this process.

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙋‍♂️ Contributing

Feel free to submit pull requests or open issues if you have suggestions or improvements for **CoverMySh**. Contributions are always welcome!

---

## 📌 Acknowledgments

- **Special thanks** to everyone who contributed to the development of this project and provided feedback.
- This project was created with privacy in mind. Keep your activities secure and private!





