#! /bin/bash

phpapi(){
    cd ..
    mkdir -p $NAME/Src/Controllers
    mkdir -p $NAME/Src/Services
    mkdir -p $NAME/Src/Repositories
    mkdir -p $NAME/Src/Components
    mkdir -p $NAME/Settings
    touch $NAME/Settings/config.json
    touch $NAME/README.md
    cd $NAME
    cp ../vanilla_structure/php/api/index.php ./
    cp ../vanilla_structure/php/api/composer.json ./
    pwd
    # TODO fix composer not found issue
    # composer install
    code .
}