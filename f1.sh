#!/bin/sh

defaultUrl="https://serid-c5.ofemm.com/plyvivo/rul03e3i3alere4i4eja/chunklist.m3u8"
url=${1:-"$defaultUrl"}

streamlink --hls-segment-queue-threshold 10 --stream-timeout 1200 --http-header "Referer=https://kenitv.me/" "hlsvariant://${url}" best
