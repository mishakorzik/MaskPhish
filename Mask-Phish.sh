url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Use http or https.\e[0m"
            exit 1
        fi
    fi
}
toilet -F gay MaskPhish
echo ""
echo "    ###########################"
echo "    # Developer: mishakorzhik #"
echo "    ###########################"
echo ""
echo -n "Paste Phishing URL here (with http or https): "
read phish
url_checker $phish
sleep 1
echo "Processing and Modifing Phishing URL"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e "\n\e[1;31;42m ### Masking Domain ###\e[0m"
echo 'Domain to mask the Phishing URL (with http or https), ex: https://google.com, http
://anything.org) :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nType social engineering words:(like free-money, best-pubg-tricks)'
echo -e "\e[31mDon't use space just use '-' \e[0m"
echo -en "\e[32m=>\e[0m "
read words
echo -e "\nGenerating MaskPhish Link...\n"
final=$mask-$words@$shorter
echo -e "Here is the MaskPhish URL:\e[32m ${final} \e[0m\n"
