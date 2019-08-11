# 1. Prerequisites

+ docker (3.X version)
+ bash

# 2. Getting Started

Before you start you need to choose directory for **phpdev** and all your projects. Files tree might look like this if you will choose `/var/www/phpdev`:

+ /var/www/phpdev
  + sites
    + default
    + project1
    + project2
  + conf
    + nginx
    + php

After choosing directory, go inside it and clone **phpdev** using next command

    $ cd /var/www/phpdev
    $ git clone https://github.com/shevaua/docker-phpdev.git ./ 

Next step is basic configuration for docker. You can do that by executing `./configure.sh`. It will create:

- folders for logs
- log files with required permissions
- docker-compose.yml
- nginx configuration for pointing to `sites` folder

Also, it will ask you about:

- docker subnetwork
- mysql password

That's all. You can start it with `./start.sh`

# 3. Troubleshooting

1. make sure all this ports aren't bound tp other services:

   + 80 tcp
   + 3306 tcp
   + 33060 tcp
   + 11211 tcp 
