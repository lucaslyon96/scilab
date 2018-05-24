function [raiz,inter] = newton(x0,p,n)
    rn=x0;
    cont=0;
    erro=1;
    while(erro>p & cont<n)
        ra=rn;
        rn=ra-fx(ra)/dfx(ra);
        erro=abs(rn-ra)/abs(rn);
        cont=cont+1;
    end
    raiz =rn;
    inter =cont;
endfunction
