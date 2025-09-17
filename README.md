# Web Application - Localhost:7775

This project is a Node.js web application that runs on **http://127.0.0.1:7775**.  
It uses **Node 20 (Alpine)** as the base image and exposes port **7775** for development.

---

## Getting Started

Follow the steps below to run the application locally using Docker.

### 1. Clone the Repository
```bash
git clone <your-repo-url>
cd <your-repo-folder>
````

### 2. Build the Docker Image

```bash
docker build -t deshui_yu_coding_assignment11 .
```

### 3. Run the Container

```bash
docker run -d -p 7775:7775 --name deshui_yu_coding_assignment11 deshui_yu_coding_assignment11
```

This will:

* Start the container in **detached mode** (`-d`)
* Map port **7775** on your local machine to port **7775** inside the container
* Name the running container **deshui\_yu\_coding\_assignment11**

---

## Access the Application

Once the container is running, open your browser and go to:

```
http://127.0.0.1:7775
```

---

## Development Notes

* The container runs `npm run dev` with `--host 0.0.0.0 --port 7775`, making it accessible from your local machine.
* If you update the code, rebuild the image and restart the container:

  ```bash
  docker build -t deshui_yu_coding_assignment11 .
  docker restart deshui_yu_coding_assignment11
  ```

---

## Useful Docker Commands

* **Check running containers**

  ```bash
  docker ps
  ```

* **View logs**

  ```bash
  docker logs deshui_yu_coding_assignment11
  ```

* **Stop container**

  ```bash
  docker stop deshui_yu_coding_assignment11
  ```

* **Remove container**

  ```bash
  docker rm deshui_yu_coding_assignment11
  ```

* **Remove image**

  ```bash
  docker rmi deshui_yu_coding_assignment11
  ```
