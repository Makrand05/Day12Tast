read -p "Value of a : " a
read -p "Value of b : " b
read -p "Value of c : " c
val=$(( a + b * c ))
echo "Value of a + b * c = $val"

val2=$(( a * b + c ))

echo "value of a * b + c = $val2"
