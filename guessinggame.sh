numero_files=$(find . -maxdepth 1 -type f | wc -l)
funtion guess {
echo -n "Number of files"
read numero_usuario
while [ $numero_usuario -ne $numero_files ];
do 
  if [[ $numero_usuario -lt $numero_files ]]
  then
      echo "Your guess is too low"
  else 
      echo "Your guess is too high"
  fi
  echo -n "Number of files"
  read nuevo_ingreso
let numero_usuario=$nuevo_ingreso
done
echo "Congratulations!"
echo "$numero_usuario, is the answer"
}
echo "Welcome, you have to guess de number o files"
guess
