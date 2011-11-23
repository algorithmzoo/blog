#!/usr/bin/sh

cat thanks |
grep -v IND |
cut -c 1-10 | 
sed 's/-/ /g' | 
awk '{if($3 >= 21 && $3 < 28) print $1, $2, $3, "gobble"}' |
sed 's/ /-/g' > thanksgiving


# not implemented how to not separate $3 and gobble with a space
# done manually in vi
