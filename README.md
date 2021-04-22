# silentmecha/7dtd

This repository contains the files needed for the image silentmecha/7dtd:latest

## Usage

This stack uses an image from [atmoz](https://github.com/atmoz). To see more on the image used visit thier github [https://github.com/atmoz/sftp](https://github.com/atmoz/sftp).

For more info on environment variabes and what they do see [Environment Variables](#environment-variables)

### Simplest Method

The simplest usage for this is using the `docker-compose` method.

```console
git clone https://github.com/silentmecha/7dtd.git 7DaysToDie
cd 7DaysToDie
cp .env.example .env
nano .env
docker-compose up -d
```

### Without building the image locally

```console
git clone https://github.com/silentmecha/7dtd.git 7DaysToDie
cd 7DaysToDie
cp .env.example .env
nano .env
docker-compose pull
docker-compose up -d
```

### Updating

Updating is still currently in devolpment so once that is sorted this README will be updated. The idea is to allow an image to be updated without needing to either download the full image or rebuilding the image

### Environment Variables

| Variable Name        | Default Value                                     | Description                                                                                                                                                                                                                                                                                                                                                                                                         |
| -------------------- | ------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| SERVERNAME           | ServerName                                        | Whatever you want the name of the server to be.                                                                                                                                                                                                                                                                                                                                                                     |
| SERVERPORT           | 26900                                             | Port used to connect to the server                                                                                                                                                                                                                                                                                                                                                                                  |
| SERVERPORT_1         | 26901                                             | Server port + 1 ( Confirmation for the port usage to follow )                                                                                                                                                                                                                                                                                                                                                       |
| SERVERPORT_2         | 26902                                             | Server port + 2 ( Confirmation for the port usage to follow )                                                                                                                                                                                                                                                                                                                                                       |
| SERVERVISIBILITY     | 2                                                 | Visibility of this server: 2 = public, 1 = only shown to friends, 0 = not listed. As you are never friend of a dedicated server setting this to "1" will only work when the first player connects manually by IP.                                                                                                                                                                                                   |
| SERVERPASSWORD       |                                                   | Password to gain entry to the server                                                                                                                                                                                                                                                                                                                                                                                |
| SERVERMAXPLAYERCOUNT | 8                                                 | Maximum Concurrent Players (8 is the maximum supported player count. Anything over 30 will cause corrupted save data.)                                                                                                                                                                                                                                                                                              |
| SERVERRESERVEDSLOTS  | 0                                                 | Out of the MaxPlayerCount this many slots can only be used by players with a specific permission level.                                                                                                                                                                                                                                                                                                             |
| SERVERADMINSLOTS     | 0                                                 | This many admins can still join even if the server has reached MaxPlayerCount                                                                                                                                                                                                                                                                                                                                       |
| SERVERDESCRIPTION    | "A 7 Days to Die server running inside of docker" | Whatever you want the server description to be, will be shown in the server browser.                                                                                                                                                                                                                                                                                                                                |
| SERVERWEBSITEURL     |                                                   | Website URL for the server, will be shown in the serverbrowser as a clickable link                                                                                                                                                                                                                                                                                                                                  |
| EACENABLED           | true                                              | Enables/Disables EasyAntiCheat                                                                                                                                                                                                                                                                                                                                                                                      |
| GAMEWORLD            | Navezgane                                         | "RWG" (see WorldGenSeed and WorldGenSize options below) or any already existing world name in the Worlds folder (currently shipping with e.g. "Navezgane", "PREGEN01", ...)                                                                                                                                                                                                                                         |
| GAMENAME             | "My Game"                                         | Whatever you want the game name to be. This affects the save game name as well as the seed used when placing decoration (trees etc) in the world. It does not control the generic layout of the world if creating an RWG world                                                                                                                                                                                      |
| WORLDGENSEED         | "asdf"                                            | If RWG this is the seed for the generation of the new world. If a world with the resulting name already exists it will simply load it                                                                                                                                                                                                                                                                               |
| WORLDGENSIZE         | 4096                                              | If RWG this controls the width and height of the created world. It is also used in combination with WorldGenSeed to create the internal RWG seed thus also creating a unique map name even if using the same WorldGenSeed. Has to be between 2048 and 16384, though large map sizes will take long to generate / download / load. Must be a value of 1024, and later than 12k maps do not function for multiplayer. |
| PLAYERKILLINGMODE    | 3                                                 | Player Killing Settings (0 = No Killing, 1 = Kill Allies Only, 2 = Kill Strangers Only, 3 = Kill Everyone)                                                                                                                                                                                                                                                                                                          |
| CONTROLPANELPORT     | 8080                                              | Port of the control panel webpage                                                                                                                                                                                                                                                                                                                                                                                   |
| CONTROLPANELENABLED  | true                                              | Enable/Disable the web control panel                                                                                                                                                                                                                                                                                                                                                                                |
| CONTROLPANELPASSWORD | CHANGEME                                          | Password to gain entry to the control panel                                                                                                                                                                                                                                                                                                                                                                         |
| TELNETENABLED        | true                                              | Enable/Disable the telnet                                                                                                                                                                                                                                                                                                                                                                                           |
| TELNETPORT           | 8081                                              | Port of the telnet server                                                                                                                                                                                                                                                                                                                                                                                           |
| TELNETPASSWORD       |                                                   | Password to gain entry to telnet interface. If no password is set the server will only listen on the local loopback interface                                                                                                                                                                                                                                                                                       |
| ADDITIONAL_ARGS      |                                                   | Currently not used                                                                                                                                                                                                                                                                                                                                                                                                  |
| SFT_USER             | foo                                               | Username for SFTP access to edit save data                                                                                                                                                                                                                                                                                                                                                                          |
| SFT_PASS             | pass                                              | Password for SFTP access to edit save data                                                                                                                                                                                                                                                                                                                                                                          |
| SFT_PORT             | 2222                                              | Port for SFTP access (should not be 22 )                                                                                                                                                                                                                                                                                                                                                                            |

For more info on the usage of SFTP see [here](https://github.com/atmoz/sftp). If you do not want to use a plane text password see [encrypted-password](https://github.com/atmoz/sftp#encrypted-password)

### Ports
Currently the following ports are used.

| Port             | Type | Default |
| ---------------- | ---- | ------- |
| TELNETPORT       | TCP  | 8081    |
| CONTROLPANELPORT | TCP  | 8080    |
| SERVERPORT       | TCP  | 26900   |
| SERVERPORT       | UDP  | 26900   |
| SERVERPORT_1     | UDP  | 26901   |
| SERVERPORT_2     | UDP  | 26902   |
| SFT_PORT         | TCP  | 2222    |

All these ports need to be forwarded through your router except for `TELNETPORT`, `CONTROLPANELPORT` and `SFT_PORT` unless you wish to externally Telnet into the server, externally use the web control panel or remotely edit the save data.

## Notes
Currently this is based off of Ubuntu 18.04 as there are known issues with steamcmd and Ubuntu 20.04. Once Ubuntu 20.04 is stable I will update the images

## License

[MIT license](LICENSE)