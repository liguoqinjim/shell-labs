#!/bin/bash

run(){
    echo 'run' $1
}

start(){
    echo 'start' 
}

stop(){
    echo 'stop'
}

restart(){
    echo 'restart' $@
}

action="$1"
if [ "${action}" == "" ]
then
    action="run"
fi

case "${action}" in
    start)
        start "$@";;
    stop)
        stop "$@";;
    restart)
        restart "$@";;
    run)
        run "$@";;
    *)
        echo "Usage: $0 {start|stop|restart|run} {dev|test|prod|...}";
        echo "      eg: ./${RUN_FILE_NAME} run dev";
        exit 1;
esac

exit 0