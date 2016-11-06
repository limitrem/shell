f(x)=x**2  # 被積分関数

x0=-10  # 積分区間の下限
x1=10   # 積分区間の上限
N=1000   # 積分区間の分割数

set xrange [x0:x1]
set samples N+1

set table "/home/ren/gnuplot/x**2.txt"
splot lastx=0.0,lasty=0.0,integ = 0.0,\
     "+" using 1:(f($1)):(dx=$1-lastx, \
     integ = ($0==0 ? 0.0 : integ+dx*(f($1)+lasty)*0.5), \
     lastx=$1, \
     lasty=f($1), \
     integ)
unset table

