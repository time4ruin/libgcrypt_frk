argc=$#

if [ 2 -eq $argc ]
then
    args_1=$1
    args_2=$2
    echo "sudo passwd : "$args_1
    echo "directory of custom gcc/as : "$args_2

    A=$(which as)
    B=$(ls -l $A)
    C=${B#*-\> }

    D=$(which gcc)
    E=$(ls -l $D)
    F=${E#*-\> }

    echo $args_1 | sudo -S ln -Tfs $args_2/as.out /usr/bin/as
    echo $args_1 | sudo -S ln -Tfs $args_2/gcc.out /usr/bin/gcc
    echo $(ls -al /usr/bin/gcc)
    echo $(ls -al /usr/bin/as)
    make clean
    make
    cp ./tests/test_suite_mpi.datax ./
    echo $args_1 | sudo -S perf stat -o result_perf_aligned.txt -e page-faults,br_inst_retired.conditional,br_misp_retired.conditional ./tests/t-ed25519 >/dev/null
    echo $(cat result_perf_aligned.txt) > result_aligned.txt
    echo $(ls -al ./tests/t-ed25519) >> result_aligned.txt
    echo $(ls -al ./mpi/.libs/ec.o) >> result_aligned.txt

    echo $args_1 | sudo -S ln -Tfs $C /usr/bin/as
    echo $args_1 | sudo -S ln -Tfs $F /usr/bin/gcc
    echo $(ls -al /usr/bin/gcc)
    echo $(ls -al /usr/bin/as)
    make clean
    make
    cp ./tests/test_suite_mpi.datax ./
    echo $args_1 | sudo -S perf stat -o result_perf_raw.txt -e page-faults,br_inst_retired.conditional,br_misp_retired.conditional ./tests/t-ed25519 >/dev/null
    echo $(cat result_perf_raw.txt) > result_raw.txt
    echo $(ls -al ./tests/t-ed25519) >> result_raw.txt
    echo $(ls -al ./mpi/.libs/ec.o) >> result_raw.txt
else
    echo "usage: ./run.sh {sudo passwd} {directory of custom gcc/as}"
fi