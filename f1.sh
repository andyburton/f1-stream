#!/bin/sh

defaultUrl="https://serid-c1.ofemm.com/plyvivo/di70k0rudoxo80ku2uya/chunklist.m3u8"
url=${1:-"$defaultUrl"}

streamlink --http-header "Referer=https://kenitv.me/" "hlsvariant://${url}" best
