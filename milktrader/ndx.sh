✈  cat ndx | awk '{print $NF}' | xargs | sed 's/ /+/g' > ndxs
