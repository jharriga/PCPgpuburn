#!/bin/bash
# Test script to install and verify pcp-pmda-nvidia-gpu

# PCP Configuration Steps
cd /var/lib/pcp/pmdas/nvidia
echo | ./Install
sleep 3

# Verify
pmrep nvidia.power --samples=3
