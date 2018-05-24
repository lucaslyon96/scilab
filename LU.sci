function [x,Aa,L,U]=LU(A,b)
    [l,c]=size(A)
    Aa=[A b]
    L=A
    U=A    
    for i= 1 : l-1
        pivo = Aa(i,i)
        for j=(i+1):l
            m=Aa(j,i)/pivo
            Aa(j,:)=Aa(j,:) - m*Aa(i,:)
            U(j,:)=A(j,:) - m*A(i,:)
            L(j,i)=m
        end
    end
    for i=1:l
        for j=1:c
            if i==j then L(i,j)=1                
            end
            if j>i then L(i,j)=0                
            end
            if j<i then U(i,j)=0                
            end
        end
    end
    x=retro(Aa(:,1:c),Aa(:,c+1))
endfunction
