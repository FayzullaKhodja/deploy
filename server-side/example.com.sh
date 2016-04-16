# Project name
Project="example.com"

# Log File name
Logfile="$Project-logfile.log"

# Log message
MAIL_LOG="${SSH_CLIENT%% *} $1 [$(date +%Y-%m-%d:%H:%M:%S)]"

# Store Log
if [ -f $Logfile ]  
then   
sudo echo "$MAIL_LOG " >> $Logfile

else        

touch $Logfile   
sudo echo "$MAIL_LOG" >> $Logfile    

fi

# Commands
cd /var/www/example.com
git fetch --all
git reset --hard origin/master
/var/www/example.com/bin/python3.5 src/manage.py collectstatic
supervisorctl restart example

# Message 
echo Updated successfully! 
echo $1, Thank you for deploying!