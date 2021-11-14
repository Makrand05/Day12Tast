#! /bin/bash -x
declare -a SampleResult
counter=0
isTrue="y"
while [ $isTrue = "y" ]
do 
	number=`echo $((RANDOM%2))`
	if [ $number == 1 ];then
	SampleResult[counter]='H'
	else
	SampleResult[counter]='T'
	fi
	((counter++))
	read -p "You want to continue (Y/N):" isTrue
done

echo " sample result : ${SampleResult[@]}"
Head_Count=0
Tail_Count=0
for i in ${SampleResult[@]}
do
	echo $i
	if [ $i == 'H' ];then
	((Head_Count++))
	else
	((Tail_Count++))
	fi
done
echo ${$Head_Count / $counter}
echo "Head count $[ $Head_Count / $counter * 100 ]"
echo "Tail count $Tail_Count"
