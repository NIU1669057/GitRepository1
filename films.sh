#!/bin/bash
#!/bin/bash
Menu () {
echo "----------------------------------------------"
echo "Base de Dades de Pel.licules"
echo "1. Llistats de pel.licules"
echo "2. Ets un Expert en pel.licules?"
echo "3. Altes, baixes i modificacions de la base de dades."
echo "0. Sortir."
echo "----------------------------------------------"
}

MenuOpcio1() {
echo "--------------------------------------------------"
echo "		1 - Llistat de pel.licules		  "
echo "--------------------------------------------------"
echo "1. Mostrar llistar de pel.licules en ordre alfabetic"
echo "2. Mostrar llistat de pel.licules ordenats per any"
echo "3. Mostrar llistat de pel.licules ordenades per popularitat de mes a menys"
echo "--------------------------------------------------"

read op1

case $op1 in
	"1")
		bash Tasca1-1.sh $1
			;;
	*)
		echo "En desenvolupament"
			;;
esac
}


Menu

read option
while [ $option -ne 0 ]
do
	case $option in	
		"1") 
			MenuOpcio1 $1
			;;
		"2")
			echo "En desenvolupament"
			sleep 3
			clear
			Menu
			;;
		"3")
			echo "En desenvolupament"
			sleep 3
			clear
			Menu
			;;
		"4")
			echo "En desenvolupament"
			sleep 3
			clear
			Menu
			;;
		*)
			echo "Opcio no valida"
			sleep 3
			clear
			Menu
			;;

	esac
read option
done	
