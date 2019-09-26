#!/bin/bash
directories='chapter02.05-calendar chapter02.06-calendar
chapter03.00-calendar chapter03.01-calendar chapter03.02-calendar chapter03.03-calendar chapter03.04-calendar chapter03.05-calendar
chapter03.06-calendar chapter04.00-calendar chapter04.01-calendar chapter04.02-calendar chapter04.03-calendar chapter04.04-calendar chapter04.05-calendar
chapter05.00-calendar chapter05.01-calendar chapter05.02-calendar chapter05.03-calendar chapter05.04-calendar chapter05.05-calendar chapter05.06-calendar
chapter05.07-calendar chapter05.08-calendar chapter05.09-calendar chapter05.10-calendar chapter06.00-calendar chapter06.01-calendar chapter06.02-calendar
chapter06.03-calendar chapter06.04-calendar chapter06.05-calendar chapter06.06-calendar chapter07.00-calendar chapter07.01-calendar chapter07.02-calendar
chapter07.03-calendar chapter08.00-calendar chapter08.01-calendar chapter08.02-calendar chapter08.03-calendar chapter08.04-calendar chapter08.05-calendar
chapter08.06-calendar chapter08.07-calendar chapter09.00-calendar chapter09.00-cas-server chapter09.01-calendar chapter09.01-cas-server chapter09.02-calendar
chapter09.02-cas-server chapter09.03-calendar chapter09.03-cas-server chapter09.04-calendar chapter09.04-cas-server chapter09.05-calendar chapter09.05-cas-server
chapter09.06-calendar chapter09.06-cas-server chapter10.00-calendar chapter10.01-calendar chapter10.02-calendar chapter10.03-calendar chapter10.04-calendar chapter10.05-calendar
chapter10.06-calendar chapter10.07-calendar chapter10.08-calendar chapter10.09-calendar chapter10.10-calendar chapter10.11-calendar chapter11.00-calendar
chapter11.01-calendar chapter11.02-calendar chapter11.03-calendar chapter11.04-calendar chapter11.05-calendar chapter12.00-calendar chapter12.01-calendar
chapter12.02-calendar chapter12.03-calendar chapter13.00-calendar chapter13.01-calendar chapter13.02-calendar chapter13.03-calendar
chapter13.04-calendar chapter13.05-calendar chapter13.06-calendar chapter14.00-richfaces chapter14.01-eventsa'



for b in $directories
do
  git co -b $b
  cd $b
  cp -r * ../boot
  cd ../boot
  git st
  git add .
  git st
  git ci -m "cp $b to /boot"
  git push origin $b
  cd ..
done
