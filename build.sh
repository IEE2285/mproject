if [ ! -d "debug/no_time_log/" ];then
    mkdir debug
    cd debug
    mkdir no_time_log
    cd ..
fi

if [ ! -d "bin" ]; then
    mkdir bin
    echo "create bin dir"
fi

function build_app()
{
    make;
    mv test ./bin/
    echo Build done!
}

function build_clean()
{
    make clean;
    rm ./bin/*
    echo Clean done!
}

if [ $# -lt 1 ]; then 
    build_clean;
    build_app;
    exit;
fi

while getopts "c" arg
do
    case $arg in
    c)
        build_clean;
    ;;
esac
done