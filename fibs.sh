#####################
function fib () {
        fib=$1
        cur=1
        prev=0
        cnt=1
        while [ "$cnt" -lt "$fib" ]; do
                tmp_cur=$cur
                cur=$(($cur + $prev))
                prev=$tmp_cur
                cnt=$(($cnt + 1))    
        done
        echo "fib of $fib is $cur"
}
fib 8
function rec_fib () {
        if [ "$1" = "0" ] || [ "$1" = "1" ]; then
                echo $1
        else    
                #rec_fib($1 - 1) + rec_fib($ - 2)
                echo $(( $(rec_fib $(($1 - 1))) + $(rec_fib $(($1 - 2)))))
        fi
}
rec_fib 1
#test_var=rec_fib 1
#echo $test_var

