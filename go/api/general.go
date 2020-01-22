package common

import (
	c "config"
	"encoding/json"
	"log"
	"os"
)

//ReadConfig Reads Settings file.
func ReadConfig() (c.Config, error) {
	config := c.Config{}
	dir, err := os.Getwd()
	if err != nil {
		log.Fatal(err)
	}
	file, err := os.Open(dir + "/config/config.json")
	if err != nil {

		return config, err
	}

	decoder := json.NewDecoder(file)
	err = decoder.Decode(&config)
	if err != nil {
		return config, err
	}

	return config, nil
}
