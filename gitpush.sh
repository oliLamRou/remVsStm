#Conda
source ~/anaconda3/etc/profile.d/conda.sh
conda activate web
echo "Active Conda Env: $(conda info --envs | grep '*' | awk '{print $1}')"

#Git setup
git checkout main
git pull

#Process Data
python ./backend/python/data_process.py

#Git commit
git add ./data/data.csv
git commit -m 'update data'
git push

python ./backend/python/telegram.py 'Data updated'