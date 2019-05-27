#!/bin/bash
sed -i s/botToken/"$bottoken"/ flaskAlert.py
sed -i s/xchatIDx/"$chatid"/ flaskAlert.py
sed -i s/proxy_login/"$proxy_login"/ flaskAlert.py
sed -i s/proxy_pass/"$proxy_pass"/ flaskAlert.py
sed -i s/proxy_url/"$proxy_url"/ flaskAlert.py
sed -i s/proxy_port/"$proxy_port"/ flaskAlert.py

/usr/bin/gunicorn -w 4 -b 0.0.0.0:9119 flaskAlert:app
