| conn | 
conn := DiameterS6aNetworkServiceOsmoDirect new
    hostname: '127.0.0.1' port: 3869;
    yourself.

conn start.
