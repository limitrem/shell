#!/bin/sh
expect -c "
spawn sudo /etc/init.d/logmein-hamachi start
expect  \"password for ren:\"
send  \"0528\n\"
interact
"

