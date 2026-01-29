# 2603-YOSHIDA.Moka

# Overview

This is a program that modifies the code of chrony-4.8 to bypass encryption processing during NTS communication and, when running in the foreground, displays T1 and T2 on standard output based on the time contained in the NTP packet.

# Description

This program rewrites the code from chrony-4.8 to achieve the following two points:
- Bypassing encryption and decryption processing
- Displaying T1 and T2 on screen using printf statements

# Requirements
chrony version 4.8

gcc / make


# Install/Usage
Install the chrony package using the following site as a reference.

URL: https://chrony-project.org/download.html

When chrony is started with the -d option, it displays T1 and T2 values on the screen. 
T1 indicates the time the client sent the request, and T2 indicates the time the server received the request. The difference T2-T1 shows the time taken for the request to be sent and received. Note that each time is obtained from the timestamp within the NTP or NTS packet.

# Author

Moka Yoshida

# References
chrony https://chrony-project.org/index.html

# License
GPLv2.0
