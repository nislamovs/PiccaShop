#!/usr/bin/env bash

JAVA=/usr/lib/jvm/java-8-oracle/bin/java
PICCASHOP_HOME=/applications/piccashop

cd $PICCASHOP_HOME
RUN_PICCASHOP="$JAVA -jar $PICCASHOP_HOME/piccashop.jar"

start() {
  echo "Starting Piccashop ..."
  nohup $RUN_PICCASHOP > $PICCASHOP_HOME/piccashop.log &
}

restart() {
  echo "Restarting Piccashop ..."
  nohup $RUN_PICCASHOP > $PICCASHOP_HOME/piccashop.log &
}

stop () {
  echo "Stopping Piccashop ..."
  kill $(ps aux | grep "piccashop.jar" | grep -v 'grep' | awk '{print $2}')
}

status () {
  echo " === Piccashop status === "
  curl -k https://localhost:8080/piccashop/api/
  echo
}

case "$1" in
  start)
        start
        ;;
  stop)
        stop
        ;;
  status)
        status
	;;
  restart)
        restart
        ;;
  *)
        echo $"Usage: $0 {start|stop|restart|status}"
        exit 1
esac
exit 0
