FROM kissyouhunter/maiark:latest
COPY arkconfig.json /root/
EXPOSE 8082
VOLUME /MaiARK
RUN sed -e "s/\$ServerUrl/$ServerUrl/g" /root/arkconfig.json \
    && sed -e "s/\$ServerClientId/$ServerClientId/g" /root/arkconfig.json\
    && sed -e "s/\$ServerSecret/$ServerSecret/g" /root/arkconfig.json
    && env