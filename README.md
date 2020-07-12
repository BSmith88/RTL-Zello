# RTL-Zello

RTL SDR to Zello designed to run on a Raspberry Pi

## Instructions

### Update and upgrade Pi

```sudo apt-get update && sudo apt-get upgrade```

### Install NPM and RTL-SDR

```sudo apt-get install npm rtl-sdr git```

### Install PM2

```sudo npm install pm2@latest -g```

### Download files from GitHub

```git clone https://github.com/blackwellj/RTL-Zello.git```

### Generate Private key and Issuer String for token

Go to https://developers.zello.com/keys and login

Click on Keys at top of page and then Add Key

Copy Issuer and Private Key

```cd RTL-Zello```

```nano key.txt```

Paste Private Key into key.txt

### Edit RTLZello.sh to change Frequency, Login details and Issuer String

```nano RTL-Zello/RTLZello.sh```

### Start PM2 at boot

```pm2 startup```

### Run RTlZello.sh using PM2

```pm2 start RTL-Zello/RTLZello.sh```

### Save PM2 so RTLZello starts on boot

```pm2 save```

# nrad by unmaintained  (https://openrepos.net/users/unmaintained)
