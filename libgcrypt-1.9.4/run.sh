A=$(which as)
B=$(ls -l $A)
C=${B#*-\> }

echo "abc123" | sudo -S ln -Tfs /usr/bin/x86_64-linux-gnu-as /usr/bin/as
echo $(ls -al /usr/bin/as)
make clean > /dev/null 2>&1
make > /dev/null 2>&1
echo $(ls -al ./tests/t-ed25519)
echo $(ls -al ./mpi/.libs/ec.o)
echo "abc123" | sudo -S perf stat -e page-faults,br_inst_retired.conditional,br_misp_retired.conditional ./tests/t-ed25519 >/dev/null

echo "abc123" | sudo -S ln -Tfs $C /usr/bin/as
echo $(ls -al /usr/bin/as)
make clean > /dev/null 2>&1
make > /dev/null 2>&1
echo $(ls -al ./tests/t-ed25519)
echo $(ls -al ./mpi/.libs/ec.o)
echo "abc123" | sudo -S perf stat -e page-faults,br_inst_retired.conditional,br_misp_retired.conditional ./tests/t-ed25519 >/dev/null
