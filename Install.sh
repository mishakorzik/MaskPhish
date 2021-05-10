clear
sleep 1
echo    "|-----------[base installing]-----------|"
sleep 1
ORANGE="$(printf '\033[33m')" ${ORANGE}
${ORANGE}
echo "|----------[Developer: mishakorzhik]----------|"
sleep 2
pkg update
pkg upgrade
pkg install curl
pkg install php
pkg install toilet
sleep 1
echo Installed has succesfull downloaded!
sleep 1
toilet -F gay Done
