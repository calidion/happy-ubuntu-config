SWAPFILE=/home/swapfile
sudo fallocate -l 5G $SWAPFILE
sudo chmod 600 $SWAPFILE
sudo mkswap $SWAPFILE
sudo swapon $SWAPFILE
sudo swapon --show
free -h
echo "${SWAPFILE} none swap sw 0 0" | sudo tee -a /etc/fstab
sudo sysctl vm.swappiness=10
echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf

