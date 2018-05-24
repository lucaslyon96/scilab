function [x,cont]=jacobi(A,b,x0,e,n)
    [l,c]=size(A)
    erro=1
    x=x0
    cont=0
    while (erro>e & cont<n)
        xa=x
        cont = cont+1
        for i = 1:l
            soma = 0
            for j=1:l
                if j ~= i
                soma=soma+(A(i,j)*xa(j))
                end
            end
        x(i)=(b(i)-soma)/A(i,i)
        end
    erro=max(abs(x-xa))/max(abs(x))
    end
endfunction
