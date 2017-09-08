MONGO_C_DRIVER_PATH=/opt/mongo-c-driver

sudo git clone -b feature/installable git@github.com:DavidUser/mongo-c-driver.git $MONGO_C_DRIVER_PATH
sudo chown -R david:david $MONGO_C_DRIVER_PATH
cd $MONGO_C_DRIVER_PATH
./install.sh

sudo dnf install -y boost-devel

