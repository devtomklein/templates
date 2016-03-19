#!/usr/bin/env bash


# DIE
# This function should be used when a command is critical for the script like so :
# With:  die(severity, message, error code)
#
# Example:
#   cd /go/to/some/dir || die("ERR","Could not change folder. Aborting.","1")

function die {
	echo "$1: $2"

	if $3 is empty
		$3=0
	exit $3
}

# USAGE
function usage {
	cat << EOF
	Desc  : what does this script do?
	Usage : command-line + arguments
	Author / Last update
	EOF

	exit 0
}

# LOGGER
# This function should be used when debugging or when logging is needed :
# With:  logger(message, output), where output = DEBUG, FILE or SYSTEM
#
# Example:
#   cd /go/to/some/dir && logger("Changed directory successfully.") 
function logger {
	log in file
	log in messages
	log to stdout

}