OSRM=./node_modules/osrm/lib/binding/osrm-routed

if ! [ -x "$(command -v $OSRM)" ]; then
  echo "Error: Missing OSRM. Install using 'npm install osrm@5.15.1'\n"
  exit 1
fi

./node_modules/osrm/lib/binding/osrm-routed -p 5001 data/lts1/data.osrm &
./node_modules/osrm/lib/binding/osrm-routed -p 5002 data/lts2/data.osrm &
./node_modules/osrm/lib/binding/osrm-routed -p 5003 data/lts3/data.osrm &
./node_modules/osrm/lib/binding/osrm-routed -p 5004 data/lts4/data.osrm &
