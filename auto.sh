while true
do
    ps -ef | grep "$UE_PROJECT_ROOT/bin/unidbg-fetch-qsign" | grep -v "grep"
    if [ "$?" -eq 1 ]
        then
        bash bin/unidbg-fetch-qsign --basePath=txlib/8.9.78 #启动应用，修改成自己的启动应用脚本或命令
        echo "process has been restarted!"
    else
        echo "process already started!"
    fi
    sleep 10
done