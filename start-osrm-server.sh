OSRM=./node_modules/osrm/lib/binding/osrm-routed

if ! [ -x "$(command -v $OSRM)" ]; then
  echo "Error: Missing OSRM. Install all dependencies using 'npm install'\n"
  exit 1
fi

$OSRM -p 5001 data/lts1/data.osrm &
$OSRM -p 5002 data/lts2/data.osrm &
$OSRM -p 5003 data/lts3/data.osrm &
$OSRM -p 5004 data/lts4/data.osrm &
