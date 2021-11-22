#! /bin/bash 

read -p "Enter email receiver : " user_input
#replace the curl configuration for recipient
sed "s/--mail-rcpt .*/\\--mail-rcpt '$user_input' \\\/g" ~/email/sendEmail.sh > ~/email/log/tempConfig.txt
sed "s/To: .*/\\To: <$user_input>/g" ~/email/emailContent.txt > ~/email/log/temp.txt
mv ~/email/log/tempConfig.txt ~/email/sendEmail.sh
mv ~/email/log/temp.txt ~/email/emailContent.txt

#pick subject
read -p "Choose subject : " subject_input
sed "s/Subject: .*/\\Subject: $subject_input/g" ~/email/emailContent.txt > ~/email/log/temp.txt
mv ~/email/log/temp.txt ~/email/emailContent.txt

#pick content
read -p "Enter the message : " message
sed '/Date: .*/q' ~/email/emailContent.txt > ~/email/log/temp.txt
echo "$message" >> ~/email/log/temp.txt
mv ~/email/log/temp.txt ~/email/emailContent.txt

read -p "Send[y/n]" user_response
if [ $user_response == "y" ] 
then
    chmod 777 ~/email/sendEmail.sh
    ~/email/sendEmail.sh
    chmod 711 ~/email/sendEmail.sh
else 
    echo "user responded no"
fi
