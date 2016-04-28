#!/bin/sh
kill `ps -ef |grep hubot|grep -v grep|awk '{print $2}'`
