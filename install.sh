if ! command -v docker &> /dev/null
then
    echo "Parece que docker no esta instalado"
    exit
else
    echo "Se ha comprobado que docker está instalado, se procede a la instalación de Dexec"
fi

ruta=$(pwd)
completition_file=$ruta/dexec-completion.bash
executable_file=$ruta/dexec

bashrc=~/.bashrc

echo "Añadiendo lineas a bashrc"
echo "#Mis scripts">>$bashrc
echo "export PATH=\"\$PATH:"$ruta"\"">>$bashrc
echo "source ${completition_file}">>$bashrc
