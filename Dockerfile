FROM node:12-alpine

LABEL maintainer = Andrew Porter
LABEL name = rapidturtle.com

##
# Set any environment variables
ENV APP_DIR=/home/app/rapidturtle

##
# Install Angular CLI and AWS Amplify CLI
RUN yarn global add @angular/cli && ng config -g cli.packageManager yarn
RUN yarn global add @aws-amplify/cli

##
# Create a cache layer with package.json for node_modules
COPY package.json yarn.lock /tmp/
RUN cd /tmp && yarn

##
# Create the application directory and copy the node_modules in
RUN mkdir -p ${APP_DIR} && cp -a /tmp/node_modules ${APP_DIR}

WORKDIR ${APP_DIR}

COPY . .

EXPOSE 4200

CMD ["ng", "serve", "--host=0.0.0.0"]
