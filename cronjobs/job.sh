#!/bin/bash

logfile="/home/moinul/bash-scripting/cronjobs/job_results.log"

/ust/bin/echo "The script ran at: $(/usr/bin/date)" > $logfile
