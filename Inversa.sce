function a=inversa(u)
    [l,c]=size(u)
    np=1 //numero do pivo
    if l~=c then
        disp("A deve ser quadrada")
       a="erro"
    else
    e(:,:)=0
    for i=1:l
    e(i,1:l)=u(i,1:l)
    end
        for i=1:l
            e(i,l+i)=1
        end
    disp("[A | I]=")
    disp(e)
    for n=1:c // numero da coluna a ser escalonada
        if np==l+1 then // numero do pivo e menor ou igual ao numero de linhas
            break
        end
        //
    if e(np,n)==0 then
    for i=np+1:l // se a primeira entrada for zero, entao procure entradas não nulas
        if e(i,n)~=0 then
         disp("L"+string(i)+" <=> L"+string(np))
            for j=1:2*l // permutar a linha da primeira entrada com uma linha de entrada nao nula
        aux=e(i,j)
        e(i,j)=e(np,j);
        e(np,j)=aux;
    end
            disp(e)
        break
        end
     end
 end
 if e(np,n)~=0 then //se a linha possui entrada nao nula, entao escalonar
  if e(np,n)~=1 then
     k=e(np,n)
     e(np,n)=1
            disp("(1/"+string(k)+")L"+string(np)+" => L"+string(np))
     for j=n+1:2*l  // deixar o pivo igual a 1 e dividir as demais entradas
         e(np,j)=e(np,j)/k 
     end
     disp(e)
  end
     for i=np+1:l
  if e(i,n)~=0 then
            disp("L"+string(i)+"+("+string(-e(i,n))+")L"+string(np)+ " => L"+string(i))
            k=e(i,n)
            e(i,:)=e(i,:)-k*e(np,:) // zerar as entradas abaixo do pivo
            disp(e)
  end          
     end
    b(np)=n
           np=np+1
 else
  disp("A matriz não possui inversa")
  a="erro"
  return
  end
     //
end
    m = np-1
     for n=2:m
     for i=1:m-n+1
            disp("L"+string(i)+"+("+string(-e(i,b(m-n+2)))+")L"+string(n)+ " => L"+string(i))
            k=e(i,b(m-n+2))
            e(i,:)=e(i,:)-k*e(m-n+2,:) // zerar as entradas acima do pivo
            disp(e)
     end	
 end
 for i=1:l
 a(i,:)=e(i,l+1:2*l)
 end
 end
endfunction
