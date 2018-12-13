JPGS=`ls c*.*g`

for i in $JPGS
do
	echo $i
	new_name=480x320-$i
	echo $new_name
	convert $i -resize 480x320! $new_name
done
