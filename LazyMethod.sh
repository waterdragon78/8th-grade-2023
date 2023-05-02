cd "$(dirname "$0")"
chmod +x configure
echo
echo
./configure && make
if [ $? -eq 0 ]; then
  echo
  echo
    ./BLmural2023
    echo
    echo
else
  echo
  echo "Command failed! Trying again with --disable-dependancy-tracking in 5 seconds..."
  sleep 5
  echo
  echo
    ./configure --disable-dependency-tracking && make
    echo
    echo
    ./BLmural2023
    echo
    echo
fi
