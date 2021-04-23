#!/bin/bash

# We assume that if the config is missing, that this is a fresh container
if [ ! -f "${STEAM_SAVEDIR}/serverconfig.xml" ]; then
    cp "${STEAMAPPDIR}/serverconfig.xml" ${STEAM_SAVEDIR}
    # Add in config file modification using environment variables
    # Example:
    # xmlstarlet ed --inplace -u '/ServerSettings/property[@name="ServerName"]/@value' -x 'string("I have changed")' serverconfig.xml
fi

# Add in warning for online players using telnet much like for PixARK

${STEAMAPPDIR}/7DaysToDieServer.x86_64 -quit -batchmode -nographics -dedicated -configfile=${STEAM_SAVEDIR}/serverconfig.xml
