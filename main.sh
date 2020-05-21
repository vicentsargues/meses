total=0
for i in $(cat ventas_mensuales.txt | awk '{print $2}');
do
if [ $i != "enero" ]
then
if [ $i != "septiembre" ]
then
for v1 in $(cat ventas_mensuales.txt | awk '{print $3}');
do
total=$(($total + $v1))
done 
fi
fi
done
echo $total