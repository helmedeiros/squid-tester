./extract-urls.sh

for x in $(cat ../urls.txt)
do 
	java -jar ../test-squid.jar $x
done
