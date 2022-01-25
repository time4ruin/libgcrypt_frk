A=$(which as)
B=$(ls -l $A)
C=${B#*-\> }

echo "abc123" | sudo -S ln -Tfs /usr/bin/x86_64-linux-gnu-as /usr/bin/as
echo $(ls -al /usr/bin/as)
make clean > /dev/null 2>&1
make > /dev/null 2>&1
echo $(ls -al ./tests/mpitests)
StartTime=$(date +%s)
./tests/mpitests
EndTime=$(date +%s)
echo "Total Execution Time: $(($EndTime - $StartTime)) seconds"

echo "abc123" | sudo -S ln -Tfs $C /usr/bin/as
echo $(ls -al /usr/bin/as)
make clean > /dev/null 2>&1
make > /dev/null 2>&1
echo $(ls -al ./tests/mpitests)
StartTime=$(date +%s)
./tests/mpitests
EndTime=$(date +%s)
echo "Total Execution Time: $(($EndTime - $StartTime)) seconds"

