#! /bin/bash 
declare -A ArithamticDic
declare -a valueArray
read -p "Value of a : " a
read -p "Value of b : " b
read -p "Value of c : " c

function Acending(){
	echo ${valueArray[@]} 
	n=${#valueArray[@]}
	for (( i=0; i<$n; i++ ))
	do
		for (( j=$i; j<$n; j++ ))
		do
		if [ ${valueArray[i]} -gt ${valueArray[j]} ]
		then
			t=${valueArray[i]}
			valueArray[i]=${valueArray[j]}
			valueArray[j]=$t
		fi
		done
	done
}


function Decending(){

        n=${#valueArray[@]}
        for (( i=0; i<$n; i++ ))
        do
                for (( j=$i; j<$n; j++ ))
                do
                if [ ${valueArray[i]} -lt ${valueArray[j]} ]
                then
                        t=${valueArray[i]}
                        valueArray[i]=${valueArray[j]}
                        valueArray[j]=$t
                fi
                done
        done
}

counter=0

val=$(( a + b * c ))

ArithamticDic[1]=$val

val2=$(( a * b + c ))
ArithamticDic[2]=$val2


val3=$(( c + a / b ))
ArithamticDic[3]=$val3

val4=$(( c % a + b ))
ArithamticDic[4]=$val4
echo "values from dictonary ${ArithamticDic[@]}"
count=0
for value in ${ArithamticDic[@]}
do
valueArray[count]=$value
((count++))
done

echo " value from array : [ $valueArray ] "
Acending
echo "Acending Array ${valueArray[@]}" 
Decending
echo "Decending Array ${valueArray[@]}"
