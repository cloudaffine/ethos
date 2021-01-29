#telnet localhost 4321 << EOF
#quit
#EOF

{ sleep 1; echo "quit";  } | telnet localhost 4321