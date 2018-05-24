function x=retro(A,b)
    [L,c]=size(A)
    for i = L:-1:1
        soma=0
        for j=(i+1):c
            soma=soma+x(j)*A(i,j)
        end
        x(i)=(b(i)-soma)/A(i,i)
    end
endfunction
