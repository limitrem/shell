#!/bin/zsh
echo "関数の決定"
read s
echo "x座標の決定"
read t
gnuplot -p << EOF
set sample 500
h=0.000000000001
a=$t
f(x)=$s
g(x)=(f(x+h)-f(x))/h
h(x)=g(a)*(x-a)+f(a)
plot f(x) title "元の関数",h(x) title "接線"
EOF
