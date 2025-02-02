source ~/anaconda3/etc/profile.d/conda.sh
conda activate web
echo "Active Conda Env: $(conda info --envs | grep '*' | awk '{print $1}')"

if git rev-parse --verify data > /dev/null 2> ./log.txt; then
echo "Starting Commit"
git checkout data
git add ./data/data.csv
git commit -m 'update data'
git push
echo "Commit Done"
fi