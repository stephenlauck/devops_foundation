# Devops Practice Primer
## A Journey From Laptop to Production

### Write, build and test code

We need to write build and test code. Then we push that code to a central repository. If we do not have the code to build a central repository that should be the first code that we write.

1. write, build and test the code to [build](#provisioning-as-code) a VCS
  a. ansible code to install/configure Gitlab
  b. Kitchen file to build local infrastructure
  c. Inspec code to validate our build
2. from laptop build VCS
3. push code to build VCS into VCS

### Delivery and Deploy code from VCS to Production

Code is continuously being delivered to the VCS, tested, reviewed and merged (integrated). After the code is merged we need an automated way to test again (post integration) and continuously deliver that new code towards production if the tests pass.

1. write, build and test the code to [build](#provisioning-as-code) Jenkins
  a. ansible code to install/configure Jenkins
  b. Kitchen file to build local infrastructure
  c. Inspec code to validate our build
2. write a Jenkinsfile that defines the pipeline to deploy the Jenkins build code.
3. push code to VCS
4. from laptop build Jenkins
5. Add Jenkinsfile to Jenkins build code to automatically build jobs based on repositories in VCS
5. Add Jenkinsfile to VCS build code
6. push all updated code to VCS

### Provisioning as Code

We need a code driven provisioning process in order to build our infrastructure.

1. write the request for infrastructure in code
2. from laptop build the infrastructure
3. push code that builds infrastrcture to VCS
4. pipeline infrastructure build with Jenkinsfile
