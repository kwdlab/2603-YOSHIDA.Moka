# 2603-YOSHIDA.Moka
2026年3月卒業  吉田望華
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

git clone https://github.com/kwdlab/2603-Yoshida.Moka.git

# Author

Moka Yoshida

# References


# License
GPLv2.0
