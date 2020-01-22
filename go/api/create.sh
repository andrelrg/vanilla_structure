#! /bin/bash

goapi(){
    cd ..
    mkdir -p $NAME/src/config
    mkdir -p $NAME/src/services
    mkdir -p $NAME/src/repositories
    mkdir -p $NAME/src/controllers
    mkdir -p $NAME/src/common
    touch $NAME/config/config.json
    touch $NAME/README.md
    cd $NAME
    cp ../vanilla_structure/go/api/main.go ./
    cp ../vanilla_structure/go/api/app.go ./
    cp ../vanilla_structure/go/api/config.go ./src/config/
    cp ../vanilla_structure/go/api/general.go ./src/common/
    cp ../vanilla_structure/go/api/heartbeat.go ./src/controllers/
    pwd
}