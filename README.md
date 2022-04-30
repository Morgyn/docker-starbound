# morgyn/starbound

This is a docker image of the dedicated server for Stardbound, using steam.

* [ http://playstarbound.com/ ]
* [ http://store.steampowered.com/app/211820/ ]

The difference between this docker image and others, is that you do not need to store your steam username, password and either disable steamguard or save a steamguard key. The downside is you need to manually update when needed.

## Get the image
`docker pull morgyn/starbound`

## Run the image
```sh
docker run --name starbound -p 21025:21025 -v /root/starbound:/starbound morgyn/starbound
```

Replace ``/root/starbound`` with where you wish to store your Starbound installation.

The image contains nothing but the update script and the steamcmd. You will have to first run update.sh to download first

## Run the update script while the image is running
```sh
docker exec -t -i starbound /update.sh <steam login id>
```

This script will prompt you to for your password (and steamguard if it's required), it will then perform the initial installation.

If it fails or quits for some reason, you can just rerun to complete.

After the installation has completed successfully, the container will stop


## Configure your Starbound server.

Edit your configuration in the installation directory you chose (``.../starbound/storage/starbound_server.config``)

[ http://starbounder.org/Guide:Setting_Up_Multiplayer#Advanced_Server_Configuration ]

## Restart the docker image to start the server
`docker run starbound`

## Updating.

With the server still running, run the update script as above. It will quit the server, then begin the update. Like the initial installation, if the update fails or quits for some reason, just run again, it will stop the container when it is successful.

To run with the update, just start the docker image again as above.


