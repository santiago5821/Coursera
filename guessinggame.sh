echo "Guess the number of files that there are in this folder"

files=$(ls | wc -l)
read number

if [[ $number -eq $files ]]
then
	echo "Yeah, thats the number!"
else
	while [[ $number -ne $files ]]
	do
		if [[ $number -eq $files+1 ]] || [[ $number -eq $files+2 ]]
		then
			echo "You are so close"
		elif [[ $number -eq $files-1 ]] || [[ $number -eq $files-2 ]]
		then
			echo "You are so close"
		elif [[ $number -gt $files ]] && [[ $number -ne $files+1 ]] || [[ $number -gt $files ]] && [[ $number -ne $files ]]
		then
			echo "The correct number is lower than the one you choose"
		else
			echo "The correct number is higer than the one you choose"
		fi
	echo "Try another number"
	read number
	done
fi
echo "That's the number"
