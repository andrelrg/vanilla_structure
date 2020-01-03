#!/bin/bash

bold(){
    echo "\033[1m$1.\033[0m"
}

tabs(){
    for i in $@; do
        echo "\t-$i"
    done
}

help(){
    bold "Vannila Sctructure Project"
    echo "This useful tool creates the directories for your amazing project."
    echo "To use it pass this as arguments (in that order):"
    tabs "Language" "ProjectType"
    echo "In this moment the supported languages are:"
    tabs "php" "go"
    echo "And the project types are:"
    tabs "api"
    bold "Example:"
    echo "sh create.sh php api"
}

validate() {
    if [[ ! "$LANGUAGE" == "" ]]; then
        if [[ ! "$LANGUAGE" =~ ^(php|go)$ ]]; then
            bold "Language not supported"
            echo "The supported languages are:"
            tabs "php" "go"
            exit
        fi
    else
        bold "Language argument missing, consult help for more instructions" 
        echo "create.sh help"
    fi
    
    if [[ ! "$LANGUAGE" == "" ]]; then
        if [[ ! "$PROJECT_TYPE" =~ ^(api)$ ]]; then
            bold "Project type not supported"
            echo "The supported project types avaliable are:"
            tabs "api"
            exit
        fi
    else
        bold "Project type argument missing, consult help for more instructions" 
        echo "create.sh help"
    fi
    # TODO implement project structure types
    # if [[ ! "$STRUCTURE_TYPE" =~ ^(mvc)$ ]]; then
    #     bold "Structure type not supported"
    #     echo "The supported structure types avaliable are:"
    #     tabs "web"
    #     exit
    # fi
}

LANGUAGE=$1
PROJECT_TYPE=$2
STRUCTURE_TYPE=$3

if [[ "$LANGUAGE" == "help" ]]; then
    help
    exit
fi

validate
