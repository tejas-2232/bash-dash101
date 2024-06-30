#!bin/bash

# add log file path and name to be searched
LOG_FILE="/var/log/syslog"

#function to extract errors from the log file
#

extract_errors() {
	
	echo "*******************************************************************************"
	echo " Below Errors are found in log file $LOG_FILE"
	grep -i "error" "$LOG_FILE"
}

extract_warnings() {
	
	echo "*******************************************************************************"
	echo " Below Warningns are found in log file $LOG_FILE"
	grep -i "warning" "$LOG_FILE"
}

access_patterns() {
	
	echo "*******************************************************************************"
	echo " Below access patterns are found in log file $LOG_FILE"
	grep -i "access" "$LOG_FILE"
}

#
# Main function

main(){
	
	echo "*******************************************************************************"
	echo "=========Log Analysis Report=========="
	echo "*******************************************************************************"
	# function calling
	extract_errors
	extract_warnings
	access_patterns
	
	echo "*******************************************************************************"
	echo "=========Analysis Completed==========="
	echo "*******************************************************************************"
}

# RUN the main function

main
