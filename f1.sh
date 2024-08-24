#!/bin/sh

defaultUrl="https://serid-c1.ofemm.com/plyvivo/yo4i5i8a6anopujabemo/chunklist.m3u8"
url=${1:-"$defaultUrl"}

streamlink --http-header "Referer=https://kenitv.me/" "hlsvariant://${url}" best
