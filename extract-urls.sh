cat zura-log.err | grep Forbidden | awk '{print $12}' | cut -c5-90 | cut -d "]" -f1 > urls.txt
