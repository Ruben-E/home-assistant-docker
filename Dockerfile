FROM homeassistant/home-assistant:0.23.1

ADD configuration/configuration.yaml /config/configuration.yaml
ADD configuration/mysensors.json /config/mysensors.json
ADD configuration/run.sh /usr/src/app

CMD ["bash", "run.sh"]
