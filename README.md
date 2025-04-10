# Create NodeJs app artifact :
tar -czvf my-express-app.tar.gz app.js package.json package-lock.json

# untar the artifact 
tar -xzvf my-express-app.tar.gz

# Run the app after untar
1- npm i

2- node app.js
