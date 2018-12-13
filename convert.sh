JPGS=`ls *.png`

for i in $JPGS
do
	echo $i
	new_name={$i/png/jpg}
	echo $new_name
	#convert $i $new_name
done
