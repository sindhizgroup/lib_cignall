cd C:/merchantpulse/lib_cignall

net stop MpulseJob

echo "Syncing with Git"
git reset --hard origin/master
git clean -f
git pull

net start MpulseJob