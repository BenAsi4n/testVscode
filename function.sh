#func(){
	#mkdir $1
	#cd $1
	#mkdir $2 $3 $4
	#cd $2
	#touch $5 $6 $7
#}

#echo "Nhap ten thu muc goc "
#read a 
#echo "Nhap ten thu muc con cua $a "
#read b c d
#echo "Nhap ten file con cua $b"
#read e g h

#func $a $b $c $d $e $g $h

#--------------------------------------
#Tao user
#taoUser(){
#	for ((i = 1 ; i<= $1; i++))
#	do
#		echo "Nhap ten User: "
#		read a
#		sudo useradd -m $a
#	done
#	}
#echo "Nhap so luong user: "
#read n
#taoUser $n
#-------------------------------------
#Phan Group va Quyen
#f(){
	#cd ../
	#sudo mkdir public
	#sudo chmod 770 public
	#cd ../
	#sudo groupadd Nhom1
	#sudo chown :Nhom1 public
	#sudo usermod -aG Nhom1 b1
	#sudo usermod -aG Nhom1 b2
	#sudo chmod g+w b1
	#sudo chmod 777 b3
	#sudo chmod 774 b4
	
	#}
#f

f(){

	cd ../
	sudo chmod g-rwx share
}
f
....
