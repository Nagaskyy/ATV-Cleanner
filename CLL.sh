clear
        echo "
           ______                              _               _______
          / _____)                            | |             (_______)
         ( (____   _____  _____   ____   ____ | |__              __ 
          \____ \ | ___ |(____ | / ___) / ___)|  _ \            / / 
          _____) )| ____|/ ___ || |    ( (___ | | | | _______  / /____ 
         (______/ |_____)\_____||_|     \____)|_| |_|(_______)(_______)  By: Shitto <3" | lolcat
sleep 2
clear
                echo "                    [ limpando a lixeira! ]" | lolcat
        if ls /home/$USER/.local/share/Trash/* | grep "* *"
        then
                echo "Não tem nada aqui."
        else
 sudo rm -fr /home/$USER/.local/share/Trash/files/*

        echo "Aquivos deletados!!!" | lolcat
sleep 2
clear
        fi
#cache clean
sleep 1
free  -h
        echo "                   lendo arquivos e cache interno..." | lolcat
sleep 2
clear
        echo "                   Pronto!" | lolcat
sleep 2
clear
        echo "                   ...Limpando..." | lolcat
sleep 4
clear
sudo apt autoclean
        echo "                   Arquivos inuteis limpos!" | lolcat
sleep 2
clear
sudo apt clean
sleep 2
clear
        echo "                   Limpando cache!!" | lolcat
sleep 2
clear
echo 
echo "Tudo Certo Mestre!!

Ass: Shitto <3" | lolcat

sleep 3

clear

echo "1) Voltar ao menu do Anti Thin Virus." |lolcat

read CONFIRMA
case $CONFIRMA in 
    "1")
        sh ATV.sh
        clear
    ;;

esac
