# Genpasswd

cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 10

# Install sshx
curl -sSf https://sshx.io/get | sh > /dev/null 2>&1

sudo sshx 
