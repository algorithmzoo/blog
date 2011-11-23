

cat thanks |
grep -v IND |
cut -c 1-10 | 
sed 's/-/ /g' | 
awk '{if($3 >= 21 && $3 < 28) print $1, $2, $3, "gobble"}' |
sed 's/ /-/g' > thanksgiving
