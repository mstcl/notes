#!/usr/bin/env bash
printf "Enter hash\n"
read -r current
printf "Enter document choice\n1. EM\n2. Thermal\n"
read -r choice
if [ "${choice}"  = 1 ]; then
    site="./sites/em.html"
    code="PHYS20029"
    topic="EM\/EM"
else
    site="./sites/thermal.html"
    code="PHYS20027"
    topic="Thermal"
fi
newline="content:{location: {url: '\https\:\/\/raw\.githubusercontent\.com\/mstcl\/notes\/${current}\/${code}\/Notes\/${topic}\.pdf'}},"
sed -i "15s/.*/$newline/" ${site}
