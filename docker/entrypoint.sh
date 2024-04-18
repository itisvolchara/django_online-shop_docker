until python manage.py migrate
do
    echo "Waiting for migrations"
done


until python manage.py runserver 0.0.0.0:8000
do
    echo "Waiting for runserver"
    sleep 2
done