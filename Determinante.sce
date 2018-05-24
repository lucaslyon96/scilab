function dt=determinante(u)
    [l,c]=size(u)
    np=1 //numero do pivo
        dt=1
        disp("A=")
    disp(u)
    if l~=c then
        disp("A matriz deve ser quadrada")
        dt="erro"
    else
    for n=1:c // numero da coluna a ser escalonada
        if np==l+1 then // numero do pivo e menor ou igual ao numero de linhas
            break
        end
        //
    if u(np,n)==0 then
    for i=np+1:l // se a primeira entrada for zero, entao procure entradas não nulas
        if u(i,n)~=0 then
         disp("L"+string(i)+" <=> L"+string(np)+" Det(A)=-"+string(dt)+"Det")
            for j=n:c // permutar a linha da primeira entrada com uma linha de entrada nao nula
        aux=u(i,j)
        u(i,j)=u(np,j);
        u(np,j)=aux;
        dt=-dt
    end
            disp(u)
        break
        end
     end
 end
 if u(np,n)~=0 then //se a linha possui entrada nao nula, entao escalonar
  if u(np,n)~=1 then
     k=u(np,n)
     u(np,n)=1
     dt=k*dt
            disp("(1/"+string(k)+")L"+string(np)+" => L"+string(np)+" Det(A)="+string(dt)+"Det")
     for j=n+1:c  // deixar o pivo igual a 1 e dividir as demais entradas
         u(np,j)=u(np,j)/k 
     end
     disp(u)
  end
     for i=np+1:l
  if u(i,n)~=0 then
            disp("L"+string(i)+"+("+string(-u(i,n))+")L"+string(np)+ " => L"+string(i)+" Det(A)="+string(dt)+"Det")
            u(i,:)=u(i,:)-u(i,n)*u(np,:) // zerar as entradas abaixo do pivo
            disp(u)          

    end
     end
           np=np+1
 else
  dt=0
  break   
  end
     //
end
    end
endfunction
