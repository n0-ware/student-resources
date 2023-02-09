#!/bin/bash
## GP
echo -e "GoPhish Script Starting...\n"
apt update && apt install golang unzip sqlite3 -y
mkdir /opt/GoPhish && cd /opt/GoPhish
wget https://github.com/gophish/gophish/releases/download/v0.11.0/gophish-v0.11.0-linux-64bit.zip
unzip gophish-v0.11.0-linux-64bit.zip -d /opt/GoPhish/
rm gophish-v0.11.0-linux-64bit.zip
sed -i 's/127.0.0.1/0.0.0.0/g' /opt/GoPhish/config.json
openssl req -newkey rsa:2048 -nodes -keyout gophish_admin.key -x509 -days 365 -out gophish_admin.crt -subj '/C=US/ST=Illinois/L=Chicago/CN=www.ev0-ex4mple-d0main.online'
snap install core && snap refresh core
echo "IyEvYmluL2Jhc2gKIyAvZXRjL2luaXQuZC9nb3BoaXNoCiMgaW5pdGlhbGl6YXRpb24gZmlsZSBmb3Igc3RvcC9zdGFydCBvZiBnb3BoaXNoIGFwcGxpY2F0aW9uIHNlcnZlcgojIyMgQkVHSU4gSU5JVCBJTkZPCiMgUHJvdmlkZXM6ICAgICAgICAgIGhhbHR1c2Jwb3dlcgojIFJlcXVpcmVkLVN0YXJ0OiAgICAkYWxsCiMgUmVxdWlyZWQtU3RvcDoKIyBEZWZhdWx0LVN0YXJ0OiAgICAgMiAzIDQgNQojIERlZmF1bHQtU3RvcDoKIyBTaG9ydC1EZXNjcmlwdGlvbjogSGFsdHMgVVNCIHBvd2VyLi4uCiMjIyBFTkQgSU5JVCBJTkZPCiMgZGVzY3JpcHRpb246IHN0b3BzL3N0YXJ0cyBnb3BoaXNoIGFwcGxpY2F0aW9uIHNlcnZlcgojIHByb2Nlc3NuYW1lOmdvcGhpc2gKIyBjb25maWc6L29wdC9Hb1BoaXNoL2NvbmZpZy5qc29uCiMgZGVmaW5lIHNjcmlwdCB2YXJpYWJsZXMKcHJvY2Vzc05hbWU9R29waGlzaApwcm9jZXNzPWdvcGhpc2gKYXBwRGlyZWN0b3J5PS9vcHQvR29QaGlzaC8KbG9nZmlsZT0vdmFyL2xvZy9nb3BoaXNoL2dvcGhpc2gubG9nCmVycmZpbGU9L3Zhci9sb2cvZ29waGlzaC9nb3BoaXNoLmVycm9yCnN0YXJ0KCkgewogICAgZWNobyAnU3RhcnRpbmcgJyR7cHJvY2Vzc05hbWV9Jy4uLicKICAgIGNkICR7YXBwRGlyZWN0b3J5fQogICAgbm9odXAgLi8kcHJvY2VzcyA+PiRsb2dmaWxlIDI+PiRlcnJmaWxlICYKICAgIHNsZWVwIDEKfQpzdG9wKCkgewogICAgZWNobyAnU3RvcHBpbmcgJyR7cHJvY2Vzc05hbWV9Jy4uLicKICAgIHBpZD0kKC91c3Ivc2Jpbi9waWRvZiAke3Byb2Nlc3N9KQogICAga2lsbCAke3BpZH0KICAgIHNsZWVwIDEgCn0Kc3RhdHVzKCkgewogICAgcGlkPSQoL3Vzci9zYmluL3BpZG9mICR7cHJvY2Vzc30pCiAgICBpZiBbWyAiJHBpZCIgIT0gIiIgXV07IHRoZW4KICAgICAgICBlY2hvICR7cHJvY2Vzc05hbWV9JyBpcyBydW5uaW5nLi4uJwogICAgZWxzZQogICAgICAgIGVjaG8gJHtwcm9jZXNzTmFtZX0nIGlzIG5vdCBydW5uaW5nLi4uJwogICAgZmkKfQpjYXNlICQxIGluCiAgICBzdGFydHxzdG9wfHN0YXR1cykgIiQxIiA7Owplc2Fj" | base64 --decode > /tmp/decoded_script.txt
mv /tmp/decoded_script.txt /etc/init.d/gophish
mkdir /var/log/gophish
chmod +x /etc/init.d/gophish
update-rc.d gophish defaults
systemctl enable gophish
echo "IyEvdXNyL2Jpbi9zdWRvIGJhc2gKZWNobyAtZSAiU3RhcnRpbmcgR29QaGlzaCB2aWEgJ3N5c3RlbWN0bCdcbiIKc2xlZXAgMgpzeXN0ZW1jdGwgc3RhcnQgZ29waGlzaApzbGVlcCAxCmVjaG8gLWUgIlJlc2V0dGluZyB1c2VybmFtZSBhbmQgcGFzc3dvcmQuLi5cbiIKc3FsaXRlMyAvb3B0L0dvUGhpc2gvZ29waGlzaC5kYiAndXBkYXRlIHVzZXJzIHNldCBoYXNoPSIkMmEkMTAkSVlrUHAwLlFzTTgxbFlZUHJReDZXLlU2b1FHdzd3TXBvenJLaEtBSFVCVkw0bWttL0V2QVMiIHdoZXJlIHVzZXJuYW1lPSJhZG1pbiI7JwplY2hvIC1lICJVc2VybmFtZTogYWRtaW5cblBhc3N3b3JkOiBnb3BoaXNoLlxuXG5TZXR1cCBDb21wbGV0ZS4iCnN5c3RlbWN0bCBzdGF0dXMgZ29waGlzaA==" | base64 --decode > /home/ubuntu/gophish-config.sh
## Command to reset password is `sqlite3 /opt/GoPhish/gophish.db 'update users set hash="$2a$10$IYkPp0.QsM81lYYPrQx6W.U6oQGw7wMpozrKhKAHUBVL4mkm/EvAS" where username="admin";'`
echo -e "Command to reset the password is 'sqlite3 /opt/GoPhish/gophish.db 'update users set hash=\"$2a$10$IYkPp0.QsM81lYYPrQx6W.U6oQGw7wMpozrKhKAHUBVL4mkm/EvAS\" where username="admin";'" 
echo "IyEvdXNyL2Jpbi9zdWRvIGJhc2gKCmVjaG8gLWUgIlJlc2V0dGluZyBHb1BoaXNoIHBhc3N3b3JkLi4uXG4iCgpzcWxpdGUzIC9vcHQvR29QaGlzaC9nb3BoaXNoLmRiICd1cGRhdGUgdXNlcnMgc2V0IGhhc2g9IiQyYSQxMCRJWWtQcDAuUXNNODFsWVlQclF4NlcuVTZvUUd3N3dNcG96cktoS0FIVUJWTDRta20vRXZBUyIgd2hlcmUgdXNlcm5hbWU9ImFkbWluIjsnCgpzbGVlcCAxCgplY2hvIC1lICJHb1BoaXNoIHBhc3N3b3JkIHN1Y2Nlc3NmdWxseSByZXNldC5cblVzZXJuYW1lOiBhZG1pblxuUGFzc3dvcmQ6IGdvcGhpc2hcbiI=" | base64 --decode > /home/ubuntu/gophish-credential-reset.sh
chmod +x /opt/GoPhish/gophish && chown -R "ubuntu:ubuntu" /opt/GoPhish/
chmod +x /home/ubuntu/gophish*
chmod u+s /home/ubuntu/gophish*
/home/ubuntu/gophish-config.sh
# Certbot Portion Below - Commented Out
sudo snap install --classic certbot
ln -s /snap/bin/certbot
sudo certbot certonly -d ev0-ex4mple-d0main.online --manual --preferred-challenges dns
## Configure the TXT record according to the instructions.

sudo cp /etc/letsencrypt/live/ev0-ex4mple-d0main.online/fullchain.pem /opt/GoPhish/
sudo cp /etc/letsencrypt/live/ev0-ex4mple-d0main.online/privkey.pem /opt/GoPhish/

## Manually change the "Phish Server" keys to "fullchain.pem" and "privkey.pem", in that order.
sed -i 's/gophish_admin.crt/fullchain.pem/g' /opt/GoPhish/config.json
sed -i 's/gophish_admin.key/privkey.pem/g' /opt/GoPhish/config.json
sed -i 's/example.crt/fullchain.pem/g' /opt/GoPhish/config.json
sed -i 's/example.key/privkey.pem/g' /opt/GoPhish/config.json
sed -i 's/\"use_tls\": false/\"use_tls\": true/g' /opt/GoPhish/config.json
sed -i 's/0.0.0.0:80/0.0.0.0:443/g' /opt/GoPhish/config.json

## Change "Use TLS" to "True"
## Restart the server. Emails will now run over TLS. Change the URL in any campaign to `https://`. Make sure to adjust `config.json` to 443 as well. 
 