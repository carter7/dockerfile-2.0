# Step 1: Use Node.js 16 official image as the base
FROM node:16

# Step 2: Set the working directory inside the container to /app
WORKDIR / app

# Step 3: Copy package.json and package-lock.json first
# This lets Docker install dependencies before copying all files (faster builds)
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application files into the container
COPY . .

# Step 6: Expose port 3000 so the app is accessible outside the container
EXPOSE 3000

# Step 7: Command to start the application
CMD ["npm", "start"]
