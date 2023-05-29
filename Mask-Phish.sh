url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo "       ╭━╮╭━╮╱╱╱╱╱╭╮╱╭━━━┳╮╱╱╱╱╱╭╮"
echo "       ┃╭╮╭╮┣━━┳━━┫┃╭┫╰━╯┃╰━┳┳━━┫╰━╮"
echo "       ┃┃┃┃┃┃╭╮┃━━┫╰╯┫╭━━┫╭╮┣┫━━┫╭╮┃"
echo "       ┃┃┃┃┃┃╭╮┣━━┃╭╮┫┃╱╱┃┃┃┃┣━━┃┃┃┃"
echo "       ╰╯╰╯╰┻╯╰┻━━┻╯╰┻╯╱╱╰╯╰┻┻━━┻╯╰╯ v1.3"
echo "            Developer: mishakorzhik"
echo ""
echo -n "Paste Phishing URL here with http or https: "
read phish
url_checker $phish
sleep 1
echo "Please wait camouflage Phishing URL"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e ""
echo 'Domain to mask the Phishing URL (with http or https), ex: https://google.com, :'
echo ""
read mask
url_checker $mask
echo -e '\nType social engineering words:(like free-money, best-pubg-tricks)'
echo -e "\e[31mDon't use space just use '-' \e[0m"
echo -en "\e[32m=>\e[0m "
read words
echo -e "\nGenerating MaskPhish Link...\n"
final=$mask-$words@$shorter
echo -e "Here is the MaskPhish URL:\e[32m ${final} \e[0m\n"
