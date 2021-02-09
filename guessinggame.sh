echo "Guessing game!!!"
echo "You have to guess how many files are in the current directory until you guess the correct answer."
 
function ask {
  echo "How many files are in the current directory?"
  read answer 
  numberfiles=$(ls -1 | wc -l)
}

ask
while [[ $answer -ne $numberfiles ]]
    do 
    if [[ $answer -ge $numberfiles ]] 
        then
            echo "your guess is bigger than the tru number"
        else [[ $answer -le $numberfiles ]]
            echo "your guess is lower than the tru number" 
        fi
    ask
done

echo "Congratulation!"
echo "There are $numberfiles files in the current directory, which are: "
echo "--" && ls