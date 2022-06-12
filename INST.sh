#começo
echo "1) donwload"
echo "--------------"
echo "2) sair"
echo
echo "escolha:"


#escolha...
read CONFIRMA

#caso
case $CONFIRMA in #dentro de:
    "1")
    sudo apt install python3
    sudo apt install python2
    sudo apt install python
    sudo apt install figlet
    sudo apt install lolcat
    sudo apt install fish
    sleep 1
    echo
    echo "tudo certo" | lolcat -a -d 6
    echo
    sleep 2
    clear
    ;;

    "2")
    exit 0
    clear         
    ;;


        esac
