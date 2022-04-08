FROM mrismanaziz/man-userbot:buster

RUN git clone -b main https://github.com/AppleBotz/Shark /home/shark/ \

    && chmod 777 /home/shark \

    && mkdir /home/shark/bin/

COPY ./sample_config.env ./config.env* /home/shark/

WORKDIR /home/shark/

CMD ["python3", "-m", "userbot"]
