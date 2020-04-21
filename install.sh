#!/bin/bash

echo 'instaluji zavislosti parenta'
npm install

echo 'aktualizuji veskere submoduly na posledni verzi'
git submodule foreach git pull origin master

echo 'diplomka-backend'
cd diplomka-backend
git reset --hard
git pull
echo -e '\t instaluji zavislosti...'
npm install
echo -e '\t generuji schemata...'
npm run build:prepare
echo -e '\t vytvarim produkcni verzi...'
npm run build
echo -e '\t diplomka-backend hotovo'
cd ..

echo 'diplomka-frontend'
cd diplomka-frontend
git reset --hard
git pull
echo -e '\t instaluji zavislosti'
npm install
echo -e '\t vytvarim produkcni verzi...'
npm run release
echo -e '\t diplomka-backend hotovo'
cd ..

# echo 'diplomka-stimulator'
# cd diplomka-stimulator
# echo -e '\t vytvarim produkcni verzi...'
# platformio run
# echo 'diplomka-stimulator hotovo'
# cd ..

echo 'instalace vsech zavislosti dokoncena'