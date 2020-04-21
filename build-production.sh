echo 'vytvarim produkcni slozku webove aplikace...'
mkdir application
echo 'kopiruji package.json'
cp diplomka-backend/package.json application
echo 'kopiruji package-lock.json'
cp diplomka-backend/package-lock.json application
echo 'kopiruji .env.production soubor'
cp diplomka-backend/.env.production application
echo 'prejmenovavam .env.production na .env'
mv application/.env.production application/.env
echo 'vytvarim zdrojovou slozku serveru'
mkdir application/src
echo 'kopiruji server do slozky application...'
cp -R diplomka-backend/dist/* application/src
echo 'vytvarim slozku pro schemata'
mkdir application/schemas
cp -R diplomka-backend/schemas/*.json application/schemas
cp -R diplomka-backend/triggers application
echo 'kopiruji zavislosti serveru'
cp -R diplomka-backend/node_modules application
echo 'vytvarim slozku klienta'
mkdir application/client
echo 'kopiruji klienta do slozky application/client...'
cp -R diplomka-frontend/build/* application/client

echo 'hotovo'