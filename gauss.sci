function [x,Aa]=gauss(A,b)
    [L,c]=size(A)
    Aa=[A b]
    for i= 1 : L-1
        pivo = Aa(i,i)
        for j=(i+1):L
            m=Aa(j,i)/pivo
            Aa(j,:)=Aa(j,:) - m*Aa(i,:)
        end
    end
    x=retro(Aa(:,1:c),Aa(:,c+1))
endfunction
