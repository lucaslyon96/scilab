function [tab] = difdiv(x,y)
    n=length(x)
    tab(:,1)=y
    for i=1:n-1
        for j=1:n-i
            tab(j,i+1)=(tab(j+1,i)-tab(j,i))/(x(j+i)-x(j))
        end
    end
endfunction
