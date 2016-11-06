#!/bin/sh
expect -c "
spawn sudo su -s /home/ren/sh/update.sh
expect  \"password for ren:\"
send  \"0528\n\"
interact
"


