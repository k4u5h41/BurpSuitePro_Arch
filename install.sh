#!/bin/bash
clear
printf "
 ____                  ____        _ _       ____            
| __ ) _   _ _ __ _ __/ ___| _   _(_) |_ ___|  _ \ _ __ ___  
|  _ \| | | | '__| '_ \___ \| | | | | __/ _ \ |_) | '__/ _ \ 
| |_) | |_| | |  | |_) |__) | |_| | | ||  __/  __/| | | (_) |
|____/ \__,_|_|  | .__/____/ \__,_|_|\__\___|_|   |_|  \___/ 
                 |_|          
                                                                                                                    
<-------------------------------------------------------------------------->   
                      ( SCRIPT BY K4U5H41 ) 
<--------------------------------------------------------------------------> "                                                                                                                   
# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
#....
# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# INSTALLING OPENJDK-11-JRE

pacman -S jre11-openjdk -y

sleep 5
echo -ne '>                              \r'
sleep 1
echo -ne '>>                             \r'
sleep 1
echo -ne '>>>                       [20%]\r'
sleep 5

# INSTALLING OPENJDK-11-JDK

pacman -S jdk11-openjdk -y

sleep 5
echo -ne '>>>>                           \r'
sleep 1
echo -ne '>>>>>                          \r'
sleep 1
echo -ne '>>>>>>>                   [40%]\r'
sleep 5
# CREATING DIRECTORY

mkdir /opt/Burp 
sleep 2

# MOVING FILES IN DIRECTORY

sleep 5
echo -ne '>>>>>>>>>>>                    \r'
sleep 1
echo -ne '>>>>>>>>>>>>>                  \r'
sleep 1
echo -ne '>>>>>>>>>>>>>>            [60%]\r'

mv burp-pro-loader.jar /opt/Burp/
mv license-generator.jar /opt/Burp/
mv burp-suite-professional.svg /usr/share/pixmaps/
mv burpsuite_pro_v* /opt/Burp/
sleep 30

# WRITTING EXCUTABLE COMMANDS

sleep 5
echo -ne '>>>>>>>>>>>>>>>>>>             \r'
sleep 1
echo -ne '>>>>>>>>>>>>>>>>>>>>           \r'
sleep 1
echo -ne '>>>>>>>>>>>>>>>>>>>>>>>   [80%]\r'

echo "cd /opt/Burp/ && java -jar --add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.desktop/javax.swing=ALL-UNNAMED --illegal-access=warn  -javaagent:burp-pro-loader.jar -noverify -jar burpsuite_pro_v*.jar &" > /bin/burp
chmod +x /bin/burp
echo "cd /opt/Burp/ && java -jar license-generator.jar " > /bin/ligen
chmod +x /bin/ligen

sleep 5
echo -ne '>>>>>>>>>>>>>>>>>>>>>>>>        \r'
sleep 1
echo -ne '>>>>>>>>>>>>>>>>>>>>>>>>>       \r'
sleep 1
echo -ne '>>>>>>>>>>>>>>>>>>>>>>>>>>[100%]\r'
echo -ne '\n'
exit
