# RTL-Zello
RTL SDR to Zello

##Instructions
Install PM2 
```sudo apt-get install pm2```
Install RTL-SDR
```sudo apt-get install rtl-sdr```
Download files from GitHub
```git clone https://github.com/blackwellj/RTL-Zello.git```
Run RTlZello.sh using PM2
```pm2 start RTLZello.sh```
Save PM2 so RTLZello starts on boot
```pm2 save```

Requires a Token
Get private key from https://developers.zello.com/keys
Create .txt file with private key
Run ./tokenmanager key.txt issuerstring



nrad from https://openrepos.net/users/unmaintained
