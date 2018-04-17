script_dir=$(dirname $(readlink -f $0) )
echo script_dir is $script_dir
cd $script_dir

OSRM=./node_modules/osrm/lib/binding/osrm-routed

echo "expecting OSRM to be in $OSRM"

if ! [ -x "$(command -v $OSRM)" ]; then
  echo "Error: Missing OSRM. Install using 'npm install osrm@5.15.1'\n"
  exit 1
fi

killall -9 osrm-routed
killall -9 node


$OSRM -p 5001 data/lts1/data.osrm &
$OSRM -p 5002 data/lts2/data.osrm &
$OSRM -p 5003 data/lts3/data.osrm &
$OSRM -p 5004 data/lts4/data.osrm &

node iso-server.js &
