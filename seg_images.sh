for file in *.jpg; 
do
	name=${file##*/}
	year=$(echo $name | cut -d '-' -f 1)
	month=$(echo $name | cut -d '-' -f 2)
	if [ ! -d "$year/$month" ]; then
		mkdir -p $year/$month
		mv $name $year/$month/$name
	else 
		mv $name $year/$month/$name
	fi
done
