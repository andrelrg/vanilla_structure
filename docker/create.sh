#! /bin/bash

docker(){
    cp -R $VSDIRECTORY/docker/build $NEWDIRECTORY/
    bold "The docker control directory is at :"
    echo "$NEWDIRECTORY/build"
    bold "Remember to edit the docker compose file. Ready to GO!"
    #TODO make this command do what its supposed to do.
    # awk '{if ($1 ~ /{service_name}/) print $1 "$NAME"; else print $1}' < ./docker/build/docker-compose.yml > "$NEWDIRECTORY/build/docker-compose.yml"
}