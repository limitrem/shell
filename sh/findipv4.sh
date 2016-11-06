
#!/bin/bash

for m in {1..10}
do

ping -Rc 5 192.168.10."$m"

done
