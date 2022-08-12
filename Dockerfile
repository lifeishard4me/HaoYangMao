FROM kissyouhunter/maiark:latest
COPY arkconfig.json /root/
ADD start.sh /start.sh
CMD /start.sh
