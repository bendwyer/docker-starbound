FROM cm2network/steamcmd:steam

LABEL maintainer="Ben Dwyer <https://github.com/bendwyer/docker-starbound>"
LABEL description="Dockerized Starbound server."

ENV STEAMCMDDIR /home/steam/steamcmd
ENV STEAMDIR /home/steam/Steam
ENV STEAMAPPDIR /home/steam/starbound
ENV STEAMAPPID 211820

USER steam

RUN mkdir ${STEAMAPPDIR}

COPY --chown=steam:steam start.sh update.sh .update ${STEAMAPPDIR}/

RUN chmod +x start.sh update.sh

WORKDIR ${STEAMAPPDIR}
VOLUME ${STEAMAPPDIR}

EXPOSE 21025/tcp

ENV STEAM_LOGIN FALSE

ENTRYPOINT ["./start.sh"]
