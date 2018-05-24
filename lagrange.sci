function s = lagrange(x,y,p)
    tam=length(x)
    s=0
    for i=1:tam
        l=1
        for j=1:tam
            if j~=i
                l=l*(p-x(j))/(x(i)-x(j))
            end
        end
        s=s+y(i)*l;
    end
endfunction
