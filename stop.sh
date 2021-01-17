#telnet localhost 1234 << EOF
#quit
#EOF

{ sleep 1; echo "quit";  } | telnet localhost 1234