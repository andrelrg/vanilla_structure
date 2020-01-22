#! /bin/bash

bold(){
    echo "\033[1m$1\033[0m"
}

tabs(){
    for i in $@; do
        echo "\t$i"
    done
}

help(){
    bold "Vannila Sctructure Project"
    echo "This useful tool creates the directories for your amazing project."
    echo "To use it, just execute the program and follow the instructions."
    echo "At this moment the supported languages are:"
    tabs "php" "go"
    echo "And the project types are:"
    tabs "api"
    bold "Example:"
    echo "sh create.sh"
}

choose() {
    bold "Name your project:"
    read NAME

    bold "Choose your language:"
    tabs "1)Php" "2)Go"
    read lang
    if [[ ! "$lang" == "" ]]; then
        if [[ ! "$lang" =~ ^(1|2)$ ]]; then
            echo "Not an option."
            exit
        fi
    else
        bold "Language missing" 
        exit

    fi

    case "$lang" in
        1)
            LANGUAGE="php";;
        2)
            LANGUAGE="go";;
        *)
            exit;;
    esac
    
    bold "Choose your project type:"
    tabs "1)Api"
    read ptype
    if [[ ! "$ptype" == "" ]]; then
        if [[ ! "$ptype" =~ ^(1|2)$ ]]; then
            echo "Not an option."
            exit
        fi
    else
        bold "Project type missing" 
        exit

    fi

    case "$ptype" in
        1)
            PROJECT_TYPE="api";;
        *)
            exit;;
    esac

    bold "Want a docker swarm structure to this project?"
    tabs "1)Yes" "2)No"
    read docker
    if [[ ! "$ptype" == "" ]]; then
        if [[ ! "$ptype" =~ ^(1|2)$ ]]; then
            echo "Not an option."
            exit
        fi
    else
        bold "Docker option missing" 
        exit
    fi

    case "$lang" in
        1)
            DOCKER=1;;
        2)
            DOCKER=0;;
        *)
            exit;;
    esac
    # TODO implement project structure types
}
source ./php/api/create.sh
source ./go/api/create.sh

if [[ "$LANGUAGE" == "help" ]]; then
    help
    exit
fi

clear
bold "Vannila Sctructure Project"
choose
"$LANGUAGE$PROJECT_TYPE"


