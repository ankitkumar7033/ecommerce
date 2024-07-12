# build_files.sh
echo "BUILD START"
apt-get update && apt-get install -y postgresql libpq-dev
python3.9 -m pip install -r requirements.txt
python manage.py collectstatic --noinput --clear
echo "BUILD END"
