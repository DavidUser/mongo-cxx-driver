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

cd /usr/include
ln -s /usr/local/include/bsoncxx/v_noabi/bsoncxx
ln -s /usr/local/include/mongocxx/v_noabi/mongocxx

