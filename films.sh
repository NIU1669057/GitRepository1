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
	"2")
		bash Tasca1-2.sh $1
			;;
	"3")
		bash Tasca1-3.sh $1
			;;
	*)
		echo "Opcio Incorrecta"
			;;
esac
}

MenuOpcio2() {
escape=1
while [ $escape -eq 1 ]
do
echo "--------------------------------------------------"
echo "		2 - Cerca de pel.licula		  "
echo "--------------------------------------------------"
echo "1. Cercar pel.licules per titol."
echo "2. Cercar pel.licules fetes entre dos anys."
echo "3. Cercar pel.licules on ha intervingut determinada persona."
echo "--------------------------------------------------"

read op2

case $op2 in
	"1")
		echo "Introdueix text:"
		read title
		bash Tasca2-1.sh $1 $title
		echo "Tornar al menu anterior?S/*"
		read escape
			;;
	"2")
		read -p "Introdueix any 1:" year1
		read -p "Introdueix any2:" year2
		bash Tasca2-2.sh $1 $year1 $year2
		echo "Tornar al menu anterior?S/*"
		read escape
			;;
	"3")
		read -p "Introdueix una persona:" person
		bash Tasca2-3.sh $1 "$person"
		echo "Tornar al menu anterior?S/*"
		read escape
			;;
esac
done
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
			MenuOpcio2 $1
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
