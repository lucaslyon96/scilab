function [s]=newton(x,y,p)
    n=length(x)
    tabdifdiv=difdiv(x,y);
    s=y(1);
    for i=2 :n
        m=1
        for j=1 :i-1
            m=m*(p-x(j))
        end
        s=s+m*tabdifdiv(1,i)
    end
endfunction
