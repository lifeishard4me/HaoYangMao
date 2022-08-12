#!/bin/sh
sed -e "s/\$ServerUrl/$ServerUrl/g" /MaiARK/arkconfig.json
sed -e "s/\$ServerClientId/$ServerClientId/g" /MaiARK/arkconfig.json
sed -e "s/\$ServerSecret/$ServerSecret/g" /MaiARK/arkconfig.json