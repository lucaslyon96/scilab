function w=df1(x,y,z)
    w=z;
endfunction

function d=df2(x,y,z)
    d=(5/7)*12862.985*sin(0.2931197)
endfunction

function  [x,y,z]=Euler2(a,b,h,y0,z0)
    x = a:h:b;
y(1) = y0;
z(1) = z0;
n=length(x);
for i=2:n

y(i)=y(i-1)+h*df1(x(i-1),y(i-1),z(i-1));
 z(i)=z(i-1)+h*df2(x(i-1),y(i-1),z(i-1));
 end
endfunction
