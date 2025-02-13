# Library Management System Backend
This project consists of a backend for a Library Management System. Below are the instructions to set up and run both the backend and frontend.

Link to the PDF of Report: https://github.com/ishii1218/LibraryManagementBackend/blob/master/Project%20Report%20Library%20Management%20System.pdf


Frontend Repository: https://github.com/ishii1218/LibraryManagementCRUD-app
## Running the Backend

### Step 1: Clone the Repository
Clone the backend repository using the following command:

```bash
git clone https://github.com/ishii1218/LibraryManagementBackend.git
```
### Step 2: Choose a Running Option
### Option 1: Run Docker Image
If you prefer to run the docker image, ensure you have Docker installed. Then, run the following command:


1.Build the Docker image:
```bash
docker build -t library-management-backend .
```
2.Run the Docker container:
```bash
docker run -d -p 5103:5103 --name library-backend library-management-backend
```
### Option 2: Run the Backend Locally
If you prefer to run the backend locally, ensure you have .NET 8.0 or higher installed. Then, run the following command:
```bash
dotnet run
```
## Running the Frontend
Go to the Frontend Repository : https://github.com/ishii1218/LibraryManagementCRUD-app
### Step 1: Clone the Repository
Clone the frontend repository using the following command:
```bash
git clone https://github.com/ishii1218/LibraryManagementCRUD-app.git
```
### Step 2: Navigate to the Frontend Directory
Change to the frontend directory:
```bash
cd library-management-frontend
```
### Step 3: Install Dependencies
```bash
npm install
```
### Step 4: Run the Frontend
```bash
npm run dev
```
The backend runs on port 5103 by default. Ensure this port is available.
