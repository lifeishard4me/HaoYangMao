#!/bin/sh
sed -e "s/\$ServerUrl/$ServerUrl/g" >/root/arkconfig.json
sed -e "s/\$ServerClientId/$ServerClientId/g" >/root/arkconfig.json
sed -e "s/\$ServerSecret/$ServerSecret/g" >/root/arkconfig.json