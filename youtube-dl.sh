#!/bin/bash

cd "/run/media/khanshaheb/Entertainments/Wedding Songs/Audios" && youtube-dl -f bestaudio "$1"

cd "/run/media/khanshaheb/Entertainments/Wedding Songs/Videos" && youtube-dl "$1"
