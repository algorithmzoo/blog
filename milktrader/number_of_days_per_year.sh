# s/spx/rut & s/SPX/RUT for the RUT version

cat spx | cut -c 1-4 | uniq -c | grep -v Ind | awk '{print $2, $1}' | grep -v 1987 > spx.clean


