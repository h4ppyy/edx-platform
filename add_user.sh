if [ -z "$1" ]
then
  echo "user_id is null"
else
  echo "user_id is $1"
fi

if [ -z "$2" ]
then
  echo "user_pw is null"
else
  echo "user_pw is $2"
fi

sudo -u www-data /edx/bin/python.edxapp /edx/app/edxapp/edx-platform/manage.py lms --settings aws create_user -p $2 -e $1
