#!/bin/bash

# Define color escape codes
# Regular Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
WHITE='\033[0;37m'
RESET='\033[0m'

# Bold Colors
BOLD_RED='\033[1;31m'
BOLD_GREEN='\033[1;32m'
BOLD_YELLOW='\033[1;33m'
BOLD_BLUE='\033[1;34m'
BOLD_CYAN='\033[1;36m'
BOLD_PURPLE='\033[1;35m'
BOLD_WHITE='\033[1;37m'

# Function to print colored messages
function color_print {
    local color=$1
    local message=$2
    echo -e "${color}${message}${RESET}"
}

# Function to run scripts
function run_script {
    local script_name=$1
    if [[ -x "$script_name" ]]; then
        ./"$script_name"
    else
        color_print "$RED" "Error: ${YELLOW}$script_name is not executable or not found!"
    fi
}

# Main menu function
function main_menu {
    while true; do
        echo -e "\n${BOLD_YELLOW}Please choose an option:${RESET}"
        echo -e "${BOLD_WHITE}1.${RESET} ${BOLD_BLUE}Run freshbash.sh${RESET}"
        echo -e "${BOLD_WHITE}2.${RESET} ${BOLD_RED}Run freshfish.sh${RESET}"
        echo -e "${BOLD_WHITE}3.${RESET} ${BOLD_PURPLE}Run both ${BOLD_BLUE}freshbash.sh${RESET} and ${BOLD_RED}freshfish.sh${RESET}"
        echo -e "${BOLD_WHITE}4. Exit${RESET}"
        echo -e "${BOLD_WHITE}"
        read -p "Enter your choice [1-4]: " choice
        echo -e "${RESET}"
        case $choice in
            1)
                color_print "$BOLD_CYAN" "Running freshbash.sh..."
                run_script "freshbash.sh"
                ;;
            2)
                color_print "$BOLD_CYAN" "Running freshfish.sh..."
                run_script "freshfish.sh"
                ;;
            3)
                color_print "$BOLD_CYAN" "Running both scripts..."
                run_script "freshbash.sh"
                run_script "freshfish.sh"
                ;;
            4)
                color_print "$BOLD_WHITE" "Exiting..."
                exit 0
                ;;
            *)
                color_print "$BOLD_RED" "Invalid choice! Please try again."
                continue
                ;;
        esac

        # Inform the user about setting up cron jobs
        color_print "$BOLD_WHITE" "If you want to set up a ${BOLD_GREEN}cron job${RESET} ${BOLD_WHITE}for these scripts, please run${RESET} ${BOLD_GREEN}random_cronjob.sh${RESET} ${BOLD_WHITE}manually.${RESET}"
    done
}

# Start the script
color_print "$BOLD_GREEN" "Welcome to the Script Runner!"
main_menu
