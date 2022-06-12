#e conversão de bases decimal e hexadecimal


menu ()
{

clear

echo "  _____________________________________" | lolcat
echo
echo "      CALCULADORA CONTA FÁCIL" | lolcat
echo "           Versão 0.1" | lolcat
echo "  _____________________________________" | lolcat
echo
echo
echo "< 1 > Somar " | lolcat
echo "< 2 > Subtração " | lolcat
echo "< 3 > Multiplicação " | lolcat
echo "< 4 > Divisão " | lolcat
echo "< 5 > Raiz quadrada " | lolcat
echo "< 0 > Sair " | lolcat
echo
echo "Escolha uma das opções acima:  " | lolcat
read  opcao

case $opcao in
    1) soma ;;
    2) subtracao ;;
    3) multiplicacao ;;
    4) divisao ;;
    5) raizquad ;;
    0) exit ;;
esac

}

soma ()
{

    clear
    echo "Digite um número: " | lolcat
    read num1
    echo "Digite um número: " | lolcat
    read num2

    soma=$(($num1 + $num2 ))

    echo "Resultado da soma: $soma" | lolcat

echo
echo "--------------------------------" | lolcat
echo

    echo "O que deseja fazer agora?" | lolcat
    echo "< c > Continuar" | lolcat
    echo "< m >  Menu Principal" | lolcat
    echo "< s >  Sair" | lolcat
    echo "< q >  Sair" | lolcat

    echo "Escolha uma opção" | lolcat
    read op

    if [ "$op" = "c" ]
    then
        soma
    elif [ "$op" = "m" ]
    then
        menu
    elif [ "$op" = "q" ]
    then
        sh ATV.sh
    elif [ "$op" = "s" ]
    then
        clear
        exit
    else
        echo " Opção Inválida! " | lolcat
    fi

}

subtracao ()
{

    clear
    echo "Digite um número: " | lolcat
    read num1
    echo "Digite um número: " | lolcat
    read num2

    sub=$(($num1 - $num2 ))

    echo "Resultado da soma: $sub" | lolcat

echo
echo "--------------------------------" | lolcat
echo

    echo "O que deseja fazer agora?" | lolcat
    echo "< c > Continuar" | lolcat
    echo "< m >  Menu Principal" | lolcat
    echo "< s >  Sair" | lolcat
     echo "< q >  Sair" | lolcat

    echo "Escolha uma opção" | lolcat
    read op

    if [ "$op" = "c" ]
    then
        subtracao
    elif [ "$op" = "q" ]
    then
        sh ATV.sh
    elif [ "$op" = "m" ]
    then
        menu
    elif [ "$op" = "s" ]
    then
        clear
        exit
    else
        echo " Opção Inválida! " | lolcat
    fi

}

multiplicacao ()
{

    clear
    echo "Digite um número: " | lolcat
    read num1
    echo "Digite um número: " | lolcat
    read num2

    mult=$(($num1 * $num2 ))

    echo "Resultado da soma: $mult" | lolcat

echo
echo "--------------------------------" | lolcat
echo

    echo "O que deseja fazer agora?" | lolcat
    echo "< c > Continuar" | lolcat
    echo "< m >  Menu Principal" | lolcat
    echo "< s >  Sair" | lolcat
    echo "< q >  Sair" | lolcat
    echo "Escolha uma opção" | lolcat
    read op

    if [ "$op" = "c" ]
    then
        multiplicacao
    elif [ "$op" = "q" ]
    then
        sh ATV.sh
    elif [ "$op" = "m" ]
    then
        menu
    elif [ "$op" = "s" ]
    then
        clear
        exit
    else
        echo " Opção Inválida! " | lolcat
    fi

}

divisao ()
{

    clear
    echo "Digite um número: " | lolcat
    read num1
    echo "Digite um número: " | lolcat
    read num2

    div=$(($num1 / $num2 ))

    echo "Resultado da soma: $div" | lolcat

echo
echo "--------------------------------" | lolcat
echo

    echo "O que deseja fazer agora?" | lolcat
    echo "< c > Continuar" | lolcat
    echo "< m >  Menu Principal" | lolcat
    echo "< s >  Sair" | lolcat
    echo "< q >  Sair" | lolcat
    echo "Escolha uma opção" | lolcat
    read op

    if [ "$op" = "c" ]
    then
        divisao
    elif [ "$op" = "q" ]
    then
        sh ATV.sh
    elif [ "$op" = "m" ]
    then
        menu
    elif [ "$op" = "s" ]
    then
        clear
        exit
    else
        echo " Opção Inválida! " | lolcat
    fi

}


raizquad ()
{

clear
echo "Digite um número: " | lolcat
read num

#Iniciando o contandor com 1 pois não existe divisão por zero
i=1


while [ $i -lt $num ]
do

#Variável calc significa cálculo e calc2, cálculo2
#A variável calc fará a divisão do número passado pelo
#usuário e o contador. Em seguida este valor será multiplicado
#por ele mesmo na variável calc2.


    calc=$(($num / $i))
    calc2=$(($calc * $calc ))


#Aqui é realizado o teste que caso seja verdadeiro a
#condição $calc2 for igual a $num, haverá uma interrupção
#no loop (com o comando bread) e será mostrado o comando
#echo logo abaixo


        if [ $calc2 -eq $num ]
        then
            break
        fi
    i=$(($i + 1))
done

echo "A raiz quadrada de $num é: $calc" | lolcat

echo
echo "--------------------------------" | lolcat
echo

    echo "O que deseja fazer agora?" | lolcat
    echo "< c > Continuar" | lolcat
    echo "< m >  Menu Principal" | lolcat
    echo "< s >  Sair" | lolcat
    echo "< q >  Sair" | lolcat
    echo "Escolha uma opção" | lolcat
    read op

    if [ "$op" = "c" ]
    then
        divisao
    elif [ "$op" = "q" ]
    then
        sh ATV.sh
    elif [ "$op" = "m" ]
    then
        menu
    elif [ "$op" = "s" ]
    then
        clear
        exit
    else
        echo " Opção Inválida! " | lolcat
    fi

}


################### CHAMAR O MENU PRINCIPAL ###################


menu

##############################################################