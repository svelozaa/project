numero_files=$(find . -maxdepth 1 -type f | wc -l)
echo "Welcome, you have to guess de number o files"
function f_read {
echo -n "Number of files"
read numero_usuario
if echo "$numero_usuario" | egrep -q '^\-?[0-9]+$';
then
	variable_aux=1
else
	variable_aux=0
fi
}


function guess {
while [[ $variable_aux -eq 1 ]]
do 
	if [[ $numero_usuario -lt $numero_files ]]
	then
		echo "Your guess is too low"
	elif  [[ $numero_usuario -gt $numero_files ]]
	then
		echo "Your guess is too high"
	else
		echo "Congratulations!"
		echo "is the answer"
		break 
	fi
	f_read
done

while [ $variable_aux -eq 0 ];
do 
	echo "inavlid input"
	f_read
	guess
done
}

f_read
guess
	



