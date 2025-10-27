# What is a Multibranch Pipeline?

A Multibranch Pipeline in Jenkins is a special type of pipeline job that automatically detects branches (and even pull requests) in your Git repository and creates separate pipeline jobs for each branch.

**It’s like Jenkins saying:**

“If you create a new branch in Git, I’ll automatically create and run a pipeline for it — no manual setup needed.”

**⚙️ How it works**

You configure a Multibranch Pipeline job in Jenkins.

You connect it to a GitHub / GitLab / Bitbucket repository.

Jenkins scans the repo and looks for a Jenkinsfile in each branch.

For every branch that has a Jenkinsfile, Jenkins:

Automatically creates a new sub-job.

Runs the pipeline defined in that branch’s Jenkinsfile.

🧩 Example

Suppose your GitHub repo has:
```
main
dev
feature/login
```

Each branch contains its own Jenkinsfile.

When you create a Multibranch Pipeline job in Jenkins, it will automatically show:
```
> my-multibranch-job
    > Branches
        > main
        > dev
        > feature/login
```

Each branch will have its own build history, logs, and status.

<img width="888" height="785" alt="image" src="https://github.com/user-attachments/assets/0e51c097-f383-441a-aa50-6b347c676db0" />


<img width="1048" height="513" alt="image" src="https://github.com/user-attachments/assets/47c810b4-05ed-4693-b4d8-fe5beaa24b82" />

# Creating a Multibranch Pipeline

https://www.jenkins.io/doc/book/pipeline/multibranch/

# Build simple-java-docker-app manually
A simple java app that runs on docker 


# Create docker image

      docker build -t java-app . 

# List the docker images

        docker images

# Create docker container

     docker run -d -p 8081:8080 <image id> or <image name> 


# List the running containers

       docker ps
# Access the application on browser

        http://<ec2-public ip>:8081

  or 

        http://localhost:8081
