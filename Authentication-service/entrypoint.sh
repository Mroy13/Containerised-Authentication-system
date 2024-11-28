#!/bin/bash
cd src

npx sequelize db:create
npx sequelize-cli db:migrate

cd ..
npm install nodemon
npm start