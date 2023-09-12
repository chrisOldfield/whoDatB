#!/bin/bash

# Define network interface to capture traffic on
interface="eth0"

# Define the number of packets to capture
num_packets=10

echo "Capturing $num_packets packets of network traffic on interface $interface..."

# Capture network traffic and output to a file
tcpdump -i $interface -c $num_packets -w network_traffic.pcap

echo "Network traffic captured and saved to network_traffic.pcap."

# Analyze network traffic using Wireshark
echo "Launching Wireshark to analyze captured traffic..."
wireshark network_traffic.pcap

echo "Done."
