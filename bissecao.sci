function [x,iter] = bissecao (a, b, p, n) 
    x=a
    iter=0;
    Er=10;
    
    while (Er>10^(p)) & (iter<n) 
    xold = x
    x=(a+b)/2
    Er= abs((x-xold)/x)
    if (fx(a)*fx(x)<0) then
        b=x
    else 
        a=x
    end
    iter=iter+1
    end
    
endfunction
