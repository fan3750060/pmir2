#/usr/bin/
kill -9 $(netstat -nlp | grep :7000 | awk '{print $7}' | awk -F"/" '{ print $1 }');
kill -9 $(netstat -nlp | grep :7200 | awk '{print $7}' | awk -F"/" '{ print $1 }');
ps aux | grep Server/start | awk '{print $2}' | xargs kill -9;
ps aux | grep swoole_mir2 | awk '{print $2}' | xargs kill -9;
php script Server/start