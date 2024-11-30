## Setup Guide

Follow these steps to set up and run the project locally using Docker Compose:

### 1. Clone the Repository

Clone the project repository to your local machine and navigate to the project directory:
```bash
git clone <repository-url>
cd <project-folder>
```

### 2. Configure Environment Variables

#### Root Directory
1. In the root directory, create a `.env` file:
    ```bash
    touch .env
    ```
2. Add the following variables:
    ```plaintext
    USER=<username for the database container>
    PASSWORD=<password for the database container>
    ```

#### Authentication Service
1. Navigate to the `authentication-service` directory:
    ```bash
    cd authentication-service
    ```
2. Create a `.env` file:
    ```bash
    touch .env
    ```
3. Add the following variables:
    ```plaintext
    PORT=3001
    SALT_ROUNDS=8
    SECRET_KEY='mroy13'
    ```

### 3. Generate the Sequelize Configuration

1. Inside the `src` folder of the authentication service, run the following command:
    ```bash
    npx sequelize init:config
    ```
2. Update the generated `config/config.json` file with the following PostgreSQL credentials:
    ```json
      {
      "development": {
      "username": "<USER from root .env>",
      "password": "<PASSWORD from root .env>",
      "database": "your_database",
      "host": "db-service-name",
      "dialect": "postgres"
      }
    }
  ```

### 4. Start the Application

1. Return to the root directory of the project:
    ```bash
    cd ..
    ```
2. Start the application using Docker Compose:
    ```bash
   docker compose up -d
    ```

### Prerequisite

Ensure Docker is installed and running on your system before proceeding.