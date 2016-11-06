#!/bin/zsh
zmodload -i zsh/mathfunc
for k in {1..100000}
 do
echo  $(( (($k ** $k)/($k * 10000))+ log($k)/(tan($k)**2)  )) >/dev/null
done

