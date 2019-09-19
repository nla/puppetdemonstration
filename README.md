# puppetdemonstration

This activity is 

What you'll need:

* A linux machine with internet access (you can use virtualbox and a linux live CD on windows if you don't have access to a linux machine) 
*  on the linux machine you'll need 
	* The latest version of docker, which should also have docker-compose
	* git
	* port 8080 free


To start the instances:

````
docker-compose up
````

To stop the instances:
````
docker-compose down
````

Force your module to be loaded by adding it in manifests/site.pp
````
node default {
  include module_name
}
````

To run puppet against the code you placed in the manifests directory execute this command
````
docker exec -it puppetdemonstration_web_1 /opt/puppetlabs/bin/puppet agent -t
````

To reset the environment if there are any issues, remove the images
````
puppetdemonstration_web
puppet/puppetserver
nginx
````

To enter the docker container to debug or look around:
* puppet agent
````
docker exec -it puppetdemonstration_web_1 /bin/bash
````
* puppet server
````
docker exec -it puppetdemonstration_puppet_1 /bin/bash
````
* nginx
````
 docker exec -it nginx /bin/bash
````
