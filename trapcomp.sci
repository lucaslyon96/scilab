function y= f(x)
    y=sin (x) 
endfunction
function [I] = trapcomp(a,b,n)
    h=(b-a)/n
    x=a:h:b
    y=f(x)
    I=y(1)
    for i=2:n
        I=I+2*y(i)
    end
    I=h/2*(I+y(n+1))
endfunction

