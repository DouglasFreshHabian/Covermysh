![carbon header pic](https://github.com/DouglasFreshHabian/covermysh/blob/main/Assets/covermysh.png)
### Contains Scripts that erase the command history and replace with fake commands.

### Each script is designed to protect your privacy by earasing your history file, one for your bash history and the other for your fish history. It then replaces the the file with new, 'fake' commands, so anyone snooping onto
your system will only find the fake commands. Each script already contains almost 400 fake commands which all come from the fake-commands.txt file. Each time the script is ran, 100 commands are randomly chosen and inserted into
the history file. main_script.sh is a script that comes with a list of options, allowing to essentially control both scripts from one. By choosing option 3, you can for example run both scripts and apply the changes to both your
bash history file and your fish history file at once. 

## [freshbash.sh](https://github.com/DouglasFreshHabian/covermysh/blob/main/freshbash.sh)
### Script Summary: This script you've shared is designed to generate a fake .bash_history file, which could be used for various purposes like simulating activity or obfuscating real commands. 
Key Features:
* Color Definitions: It sets up color codes for terminal output to make the script more visually appealing.
* History File: It specifies the path to the .bash_history file where the fake commands will be written.
* Fake Commands List: A comprehensive array of system commands, including administrative ones, that will be randomly chosen to populate the history file.
* Progress Bar: A function draw_progress_bar() is used to visualize the progress of the fake history generation in the terminal.
* Fake History Generation: The generate_fake_history() function does the main work of generating fake bash history, appending random commands with timestamps.

## [freshfish.sh](https://github.com/DouglasFreshHabian/covermysh/blob/main/freshfish.sh)
### Script Summary: This script creates a fake fish_history file for the Fish shell by generating a series of fake shell commands, adding them in Fish history format, and displaying a progress bar to indicate the creation progress.
Breakdown:
* Clears the existing Fish history file.
* Generates 100 fake commands (modifiable by total_commands).
* For each command, the script randomly selects a command from the FAKE_COMMANDS list and adds it to the fish_history file, in the format:
  BEGIN   <timestamp>   <command>
* It draws a progress bar after each command is added.

## [main_script.sh](https://github.com/DouglasFreshHabian/covermysh/blob/main/main_script.sh)
### Script Summary: This Bash script is a neat way to present a menu-driven interface for executing specific scripts (freshbash.sh and freshfish.sh), with colorful prompts and feedback.
Features:
* A simple menu with four options:
  * Run freshbash.sh
  * Run freshfish.sh
  * Run both scripts
  * Exit
* Cron Job Reminder: After every action (script run or invalid choice), a reminder is shown about setting up a cron job, prompting the user to run random_cronjob.sh.
## [random_cronjob.sh](https://github.com/DouglasFreshHabian/covermysh/blob/main/main_script.sh)
### Script Summary: This Bash script creates a cron job that runs a given script at a random minute of every hour. It also includes nice color formatting for user feedback. Here's a quick breakdown of the script's functionality:

Key Functions:

    - create_cron_job: This function creates the cron job using crontab, adding it to the user's cron schedule. It also gives feedback to the user with the color-coded messages.

    - main: The main function that validates input and calls create_cron_job.
