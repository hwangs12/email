curl --ssl-reqd \
  --url '<SMTP_URL>' \
  --user '<YOUREMAIL@YOUREMAIL.COM>:<ACCESS_PASSWORD>' \
  --mail-from '<YOUREMAIL@YOUREMAIL.COM>' \
  --mail-rcpt '<DO NOT TOUCH>' \
  --upload-file ~/email/emailContent.txt