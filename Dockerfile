# first of all, build the current react project for the production environment
FROM node:alpine

WORKDIR '/app'

COPY package.json .
RUN npm install
COPY . .

RUN npm run build

# step 2
# /app/build -> react's built directory for the production environment. Its going to dump everything from the first phase

FROM nginx

# copy the build folder BUT from the previous phase!
# copies the build folder to /usr/share/nginx/html in NGINX web server!
COPY --from=0 /app/build /usr/share/nginx/html