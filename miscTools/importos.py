import os
import subprocess

# Start the Wireshark capture
p = subprocess.Popen(["wireshark", "-k", "-i", "1"], stdout=subprocess.PIPE, stderr=subprocess.PIPE)

# Set the capture filter to only show HTTP and HTTPS traffic
p.stdin.write(b"http or https\n")

# Start the display filter to only show suspicious packages
p.stdin.write(b"frame contains \"suspicious\"\n")

# Wait for the capture to finish
p.wait()

# Stop the capture
p.terminate()

# Check the output for suspicious packages
output = p.stdout.read()
if b"suspicious" in output:
    print("Suspicious packages detected!")
else:
    print("No suspicious packages detected.")
    
#Lan packet analysis
import os
import subprocess

# Start the Wireshark capture
p = subprocess.Popen(["wireshark", "-k", "-i", "1"], stdout=subprocess.PIPE, stderr=subprocess.PIPE)

# Set the capture filter to only show HTTP and HTTPS traffic
p.stdin.write(b"http or https\n")

# Start the display filter to only show suspicious packages
p.stdin.write(b"frame contains \"suspicious\"\n")

# Wait for the capture to finish
p.wait()

# Stop the capture
p.terminate()

# Check the output for suspicious packages
output = p.stdout.read()
if b"suspicious" in output:
    print("Suspicious packages detected!")
else:
    print("No suspicious packages detected.")

# Local network malicious traffic package capture


import os
import subprocess

# Start the Wireshark capture
p = subprocess.Popen(["wireshark", "-k", "-i", "1"], stdout=subprocess.PIPE, stderr=subprocess.PIPE)

# Set the capture filter to only show HTTP and HTTPS traffic
p.stdin.write(b"http or https\n")

# Start the display filter to only show suspicious packages
p.stdin.write(b"frame contains \"suspicious\"\n")

# Wait for the capture to finish
p.wait()

# Stop the capture
p.terminate()

# Check the output for suspicious packages
output = p.stdout.read()
if b"suspicious" in output:
    print("Suspicious packages detected!")
else:
    print("No suspicious packages detected.")

# Local network malicious traffic package capture



