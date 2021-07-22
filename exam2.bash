count=0;
p=0;
while IFS= read -r line; do
    if (( $count >= 4 && count <= 8))
    then
        if [[ $(rev <<< "$line") == "$line" ]]; then
            ((p++));
        fi
    fi
    ((count++));
done < num.txt
echo "Number of palindromes $p_count";