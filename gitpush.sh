source ~/anaconda3/etc/profile.d/conda.sh
conda activate web
echo "Active Conda Env: $(conda info --envs | grep '*' | awk '{print $1}')"

if git rev-parse --verify csv > /dev/null 2> ./log.txt; then
echo "Checkout branch"

git checkout csv
git pull

echo "Python Process"
python ./backend/python/data_process.py

echo "Commit ->"

git add ./data/data.csv
git commit -m 'update data'
git push
echo "Commit Done"
fi

python ./backend/python/telegram.py