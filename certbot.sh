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
 