curl \
"https://raw.githubusercontent.com/CARRIER-project/remote-setup/make-configure-node-more-robust/ansible/files/node/VantageClient.py" -o \
VantageClient.py

curl "https://raw.githubusercontent.com/CARRIER-project/remote-setup/make-configure-node-more-robust/ansible/files/node/configure_node.py" -o \
configure_node.py

# I'm exposing some credentials here but it's only running locally. Root is the default password for the root user
python configure_node.py test --root_password root --username someuser --password someuserspassword --host localhost\
 --port 5000 --email fake@email.address --encrypted 1