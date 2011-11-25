python thanks.py  |
awk '{if($3 < 2011) print $1, $2, $3}' |
sed 's/,//g' |
sed 's/ /-/g' |
awk '{print $1, "gobble"}' > thankspython 
