#!/bin/bash
# Update AMP Servers

# Stop All AMP instances
su -l amp -c "ampinstmgr --StopAllInstances"

# Update, Upgrade, and Autoremove
apt-get update
apt-get upgrade -y
apt-get autoremove -y

# Update AMP
su -l amp -c "ampinstmgr --UpgradeAll --no-cache"

# Start ADS instance
su -l amp -c "ampinstmgr start ADS01"