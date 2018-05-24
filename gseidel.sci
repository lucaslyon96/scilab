function [x,cont]=gseidel(A,b,x0,l,n)
    [l,c]size(A)
    erro=1;
    x=x0;
    cont=0;
    while erro>l & cont<n
        xa=x
        cont = cont+1
        for i = 1:l
            soma = 0
            for j=1:l
                if j ~= i
                soma=soma+A(i,j)*x(j)
                end
            end
        x(i)=(b(i)-soma)/A(i,i)
        end
    erro=mas(abs(x-xa)/mas(abs(x)))
    end
endfunction
