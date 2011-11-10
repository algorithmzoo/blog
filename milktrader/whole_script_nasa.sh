# this requires operating this script on two different scrapes
# change the input and output for the second one
# s/firstscrape/secondscrape
# s/firsthalf/secondhalf
# connect the halves by $ cat secondhalf >> firsthalf 
# and then rename it fullmoon


cat firstscrape | grep -v Phases | grep -v Year | grep -v Time | grep . 
| cut -c 2-5,44-52 
| awk 'NF==1{yr=$1; getline; sub(/^[[:blank:]]*/, ""); print yr, $0; next}1'
| awk 'NF == 3 { year = $1 } NF > 0 { printf "%s-%02d-%d\n", $(NF-1), $NF, year }'
> firsthalf
