./install_dependencies.sh

MONGO_CXX_DRIVER_PATH=/opt/mongo-cxx-driver

cd $MONGO_CXX_DRIVER_PATH/build

cmake \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_INSTALL_PREFIX=/usr/local \
  -DCMAKE_PREFIX_PATH=/usr/local \
  -DBSONCXX_POLY_USE_BOOST=1 \
  ..

make
sudo make install


