#!/bin/bash

echo "root=user@email.com\n
    mailhub=smtp.gmail.com:587\n
    hostname=user@email.com\n
    UseSTARTTLS=Yes\n
    AuthUser=user@email.com\n
    AuthPass=<email_password>\n
    FromLineOverride=Yes" > /etc/ssmtp/ssmtp.conf


