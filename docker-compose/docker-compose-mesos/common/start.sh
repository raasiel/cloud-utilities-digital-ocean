mkdir /root/.ssh -p
cp /root/common/rsa/*.* /root/.ssh/ -f
cat /root/common/rsa/id_rsa.pub >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
#sed -i 's/prohibit/without/g' /etc/ssh/sshd_config
/etc/init.d/ssh start
sleep infinity