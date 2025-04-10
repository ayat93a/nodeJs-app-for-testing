# Create NodeJs app artifact :
______
tar -czvf my-express-app.tar.gz app.js package.json package-lock.json

## untar the artifact 
tar -xzvf my-express-app.tar.gz

## Run the app after untar
1- npm i

2- node app.js


# Run as Docker Container 
_____

1- docker build -t my-node-app .

2- docker run -dp 3000:3000 --name nodeapp my-node-app
