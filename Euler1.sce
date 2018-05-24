function w=df(x,y)
    w=(12-y);
endfunction
function [x,y] = Euler(a,b,h,y0)
    x=a:h:b;
    y(1)=y0;
    n=length(x);
    for i=2:n
       y(i) = y(i-1) + h*df(x(i-1),y(i-1));
    end
    endfunction
