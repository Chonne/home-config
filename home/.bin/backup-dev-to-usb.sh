#!/bin/bash

# backup files to my external samsung T5 500gb ssd (the blue one)
rsync -a --info=progress2 --exclude 'node_modules' --exclude '.git' --exclude '.nx_cache' ~/Projects/ /Volumes/Samsung/backup/
