# Use an official Node.js runtime as a parent image
FROM node:14-alpine

  # Set the working directory to /app
WORKDIR /app

  # Copy the package.json and yarn.lock files to the container
COPY package.json yarn.lock ./

  # Install dependencies
RUN yarn install

  # Copy the rest of the application code to the container
COPY . .

  # Build the Angular app
RUN yarn build

  # Expose port 4200 for the Angular app
EXPOSE 4200

  # Start the Angular app with the command "yarn start"
CMD ["yarn", "start"]
