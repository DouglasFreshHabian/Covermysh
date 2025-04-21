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

# Function to create the Cron job
create_cron_job() {
    local script_path=$1
    
    # Generate a random minute between 0 and 59
    random_minute=$(( RANDOM % 60 ))

    # Generate a cron expression for every hour at the random minute
    cron_pattern="$random_minute * * * * $script_path"

    # Add the cron job
    (crontab -l 2>/dev/null; echo "$cron_pattern") | crontab -

    echo -e "${WHITE}Cron job created to run${RESET} ${GREEN}$script_path${RESET} ${WHITE}every hour at minute${RESET} ${CYAN}$random_minute${RESET}."
}

# Main script execution
main() {
    # Check command line argument for script path
    if [ $# -ne 1 ]; then
        echo -e "${WHITE}Usage${RESET}: ${BLUE}$0${RESET} ${GREEN}/path/to/your_script.sh${RESET}"
        exit 1
    fi

    # Validate if the provided script path exists
    if [ ! -f "$1" ]; then
        echo -e "${RED}Error${RESET}: ${YELLOW}The specified script does not exist${RESET}."
        exit 1
    fi

    # Create the cron job
    create_cron_job "$1"
}

# Execute the main function with input parameters
main "$@"
