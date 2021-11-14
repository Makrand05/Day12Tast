#! /bin/bash -x
count=21
mini_diff=2
HeadCount=0

TailCount=0
isTrue=true
counter=0
diffrence=2

while(( $isTrue == true ))
do
    (( counter++ ))
    echo  "Flip-$counter is "
    result=$(( RANDOM % 2 ))
    if(( result == 0 ))
    then
        echo "Head"
        (( HeadCount++ ))
    else
        echo "Tail"
        (( TailCount++ ))
    fi
    
    diff=$(( HeadCount - TailCount ))
    if(( HeadCount == count && diff >= mini_diff ))
    then
        echo "Head win by $diff points"
        break
    	isTrue=false
	elif(( TailCount == count && ${diff} >= mini_diff ))
    then
         echo "Tail win by ${diff} points"
         break
	isTrue=false
    fi
    
done
echo "The Head count : $HeadCount"
echo "The tail count : $TailCount"
