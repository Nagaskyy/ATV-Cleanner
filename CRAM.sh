clear
echo "
                                _ 
                               [_\              
                               ]  \-                     
                          [\ __]...\..-\\\\\ |      
                         <--{__    ( )()--->     
                          [/   ]'''/''-/// |     
                               ]_ /-                 
                               [_/ " | lolcat
sleep 2
clear
echo "Shitto: Limpando... " | lolcat -a -d 3
sleep 2.5
clear
#Limpa Cache Da Memória RAM
MEM_LIVRE=`cat /proc/meminfo | grep "^MemFree" | tr -s ' ' | cut -d ' ' -f2` && MEM_LIVRE=`echo "$MEM_LIVRE/1024.0" | bc`
MEM_TOTAL=`cat /proc/meminfo | grep "^MemTotal" | tr -s ' ' | cut -d ' ' -f2` && MEM_TOTAL=`echo "$MEM_TOTAL/1024.0" | bc`

MEM_MIN=`echo 1024`

#sudo
SUDO=`which sudo`
    if [ "`whoami`" == "root" ]; then ROOT=true; fi
    if [ ! "`which sudo`" ] && [ !$ROOT ]; then echo "Não é o superusuário e o SUDO não foi encontrado" | lolcat; exit 1; fi


#limpando o Cache...
    if [ "$MEM_LIVRE" -le "$MEM_MIN" ]
        then
    echo "Efetuando limpeza do Cache da memória..." | lolcat
    if [ $ROOT ]; then sync; echo 3 > /proc/sys/vm/drop_caches; else $SUDO sync; echo 3 | $SUDO tee /proc/sys/vm/drop_caches > /dev/null; fi
    MEM_APOS=`cat /proc/meminfo | grep "^MemFree" | tr -s ' ' | cut -d ' ' -f2` && MEM_APOS=`echo "$MEM_APOS/1024.0" | bc`
sleep 1
clear
    echo "Memória total instalada: $MEM_TOTAL MB." | lolcat
sleep 1
    echo "Memória livre antes: $MEM_LIVRE MB." | lolcat
sleep 1
    echo "Memória livre após: $MEM_APOS MB." | lolcat
sleep 2
    else
    echo "Não é necessário limpar o Cache da memória." | lolcat
fi
#Clear Cache 1
    if sudo sync
        then
clear
            echo "Tudo Certo" | lolcat
sleep 4
clear
fi

#Clear Cache 2
    if sudo sysctl -w vm.drop_caches=3
        then
sleep 3
clear
            echo "Tudo Certo" | lolcat
fi

#fin
sh ATV.sh
clear
