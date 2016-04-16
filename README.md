# MinDeploy

Minimalistic deployment shell script.

The script consists of two side:
  - Server side
  - Client side

### Installation

You need gcc(GNU Compiler Collection):

```sh
$ gcc -o deploy deploy.c
```

```sh
$ chown root.root deploy
$ chmod +s deploy
```

Copy example.com.sh file with your project name

```sh
$ cp example.com.sh yoursite.com.sh
```
You need edit file 
```sh
$ vi yoursite.com.sh
```
Add your commands

For example:
>cd /var/www/example.com\
>git fetch --all\
>git reset --hard origin/master\
>/var/www/example.com/bin/python3.5 src/manage.py collectstatic\
>supervisorctl restart example


### Server side
> Only need to wake another script on server

```sh
$ bash deploy.sh
```


### Version
1.0.0

License
----

MIT

**If you want something done right, you have to do it yourself.**

