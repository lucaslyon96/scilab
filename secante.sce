function [raiz,inter] = secante(x0,x1,p,n)
    ra1=x0;
    rn=x1;
    cont=0;
    erro=1;
    while(erro>p & cont<n)
        ra2=ra1;
        ra1=rn;
        rn=ra1-(fx(ra1)*(ra1-ra2)/(fx(ra1)-fx(ra2)));
        cont=cont+1;
        erro=abs(rn-ra1)/abs(rn);
    end
    raiz=rn;
    inter=cont;
endfunction
