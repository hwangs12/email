# SEND EMAIL FROM TERMINAL

You can send email in your terminal using simple command. 

## Step 1: Clone this repository to your home directory

## Step 2: Configure `sendEmail.sh`

The file content looks exactly same as below:

```
curl --ssl-reqd \
  --url '<SMTP_URL>' \
  --user '<YOUREMAIL@YOUREMAIL.COM>:<ACCESS_PASSWORD>' \
  --mail-from '<YOUREMAIL@YOUREMAIL.COM>' \
  --mail-rcpt '<DO NOT TOUCH>' \
  --upload-file ~/email/emailContent.txt
```

> For iCloud user, you can use `smtp://smtp.mail.me.com:587` in your url

> For Gmail user, you can use `smtp://smtp.gmail.com:465` in your url

> ACCESS_PASSWORD for iCloud user can be generated from AppleId setting: go to https://appleid.apple.com/ => Sign in => Go to *Sign in and Security* => Click *App-specific Passwords* => Copy and paste \*\*\*\*-\*\*\*\*-\*\*\*\*-\*\*\*\* on your ACCESS_PASSWORD in `sendEmail.sh `

> For Gmail user, it is your google account password to use in ACCESS_PASSWORD. ***AND you need to turn on access to third party app***, Instruction: https://support.google.com/accounts/answer/6010255

Once your --url, --user, --mail-from are configured, you are ready for next step! Also do not touch --mail-rcpt, --upload-file

## Step 3: Set up your email in sender from `emailContent.txt`

Example:
```
From: <pirateGoldD@gmail.com>
To: <DO NOT TOUCH>
Subject: <DO NOT TOUCH>
Date: <DO NOT TOUCH>
<DO NOT TOUCH FROM HERE AND BELOW>
```

## Step 4: Create alias in your zsh/bash file

From your terminal, enter the following command:

```echo "alias email='~/email/email.sh'" >> ~/.zshrc```

## Step 5: Create a directory named `log`
This will create a temporary file for saving your config and email contents

## Step 6: You are all set. 
From your command prompt, type `email` to start


