#!/bin/bash
# Runs an emulator from the ftp root
sudo chmod -R 777 /var/ftp/pub && pcsxr -cdfile /var/ftp/pub/tutdraw.ISO -nogui
