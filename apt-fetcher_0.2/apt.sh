echo " ------------------------------------------------------------------------"
echo "
    <Apt-fetcher>  Copyright (C) 2015> JJ Posti (techtimejourney.net)
    This program comes with ABSOLUTELY NO WARRANTY; for details see: 
    http://www.gnu.org/copyleft/gpl.html
    This is free software, and you are welcome to redistribute it
    under GPL Version 3, 29 June 2007."

echo " -------------------------------------------------------------------------"
echo "${txtylw}	Welcome to Apt-fetcher version 0.2. ${txtrst}"
echo ".........................................................................."

# Declare variable choice and assign value 7
choice=7
# Print to stdout

echo "${txtgrn}1. Update package cache / upgrade packages"

	echo "${txtgrn}2. Search packages"
	
	echo "${txtgrn}3. Install packages"
	
	echo "${txtgrn}4. Remove packages"
	
	echo "${txtgrn}5. List installed packages"

	echo "${txtgrn}6. Exit immediatelly ${txtrst}"

echo ".........................................................................."

echo "Enter selection: "
# Loop while the variable choice is equal 7
# sh while loop
while [ $choice -eq 7 ]; do
# read user input
read choice
# sh nested if/else
if [ $choice -eq 1 ] ; then
 
while true
do
echo -n "Please confirm (y or n) : "
read CONFIRM
case $CONFIRM in
y|Y|YES|yes|Yes) break ;;
n|N|no|NO|No)
echo Exiting - you entered $CONFIRM
sleep 3
sh /usr/share/apt.sh
;;
*) echo Please enter only y or n
esac
done
echo You entered $CONFIRM. Continuing

#Update cache
sudo apt-get update
sleep 2
sudo sh /usr/share/updates.sh

sh /usr/share/apt.sh

else

	if [ $choice -eq 2 ] ; then

while true
do
echo -n "Please confirm (y or n) : "
read CONFIRM
case $CONFIRM in
y|Y|YES|yes|Yes) break ;;
n|N|no|NO|No)
echo Exiting - you entered $CONFIRM
sleep 3
sh /usr/share/apt.sh

;;
*) echo Please enter only y or n
esac
done
echo You entered $CONFIRM. Continuing ..

echo "Enter package name or a keyword. \c "
read PACKAGE
echo "\n"

sudo apt-cache search $PACKAGE
echo "\n"

sleep 10

echo "\n"


sh /usr/share/apt.sh


else
	if [ $choice -eq 3 ] ; then

while true
do
echo -n "Please confirm (y or n) : "
read CONFIRM
case $CONFIRM in
y|Y|YES|yes|Yes) break ;;
n|N|no|NO|No)
echo Exiting - you entered $CONFIRM
sleep 3
sh /usr/share/apt.sh

;;
*) echo Please enter only y or n
esac
done
echo You entered $CONFIRM. Continuing ..

echo "What packages you want to install (Enter names without a comma. For example: package1 package2) \c "
read PACKAGE
echo "\n"

sudo apt-get install $PACKAGE

sh /usr/share/apt.sh

else
	if [ $choice -eq 4 ] ; then

while true
do
echo -n "Please confirm (y or n) : "
read CONFIRM
case $CONFIRM in
y|Y|YES|yes|Yes) break ;;
n|N|no|NO|No)
echo Exiting - you entered $CONFIRM
sleep 3
sh /usr/share/apt.sh

;;
*) echo Please enter only y or n
esac
done
echo You entered $CONFIRM. Continuing ..

echo "What packages you want to remove (Enter names without a comma. For example: package1 package2) \c "
read PACKAGE
echo "\n"

sudo apt-get remove $PACKAGE

sh /usr/share/apt.sh



else
	if [ $choice -eq 5 ] ; then

while true
do
echo -n "Please confirm (y or n) : "
read CONFIRM
case $CONFIRM in
y|Y|YES|yes|Yes) break ;;
n|N|no|NO|No)
echo Exiting - you entered $CONFIRM
sleep 3
sh /usr/share/apt.sh

;;
*) echo Please enter only y or n
esac
done
echo You entered $CONFIRM. Continuing ..

echo "\n"

dpkg -l | grep '^ii' | awk '{print $2 "\t" $3}'
echo "\n"
sh /usr/share/apt.sh


		if [ $choice -eq 6 ] ; then	
echo  Exiting ... 
exit


                        choice=7
                fi   
        fi
fi
fi
fi
fi
done
exit
