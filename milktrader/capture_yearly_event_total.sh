cat mud | cut -c 1-4 | uniq -c | grep -v Ind | awk '{print $2, $1}' > clean
