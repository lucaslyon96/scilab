function [x,y,z] = RK2(a,b,h,y0,z0)
    x=a:h:b;
    y(1)=y0;
    z(1)=z0;
    n=length(x);
    for i=2:n
        k1y=df1(x(i-1),y(i-1),z(i-1))
        k1z=df2(x(i-1),y(i-1),z(i-1))
        k2y=df1(x(i-1),y(i-1)+h*k1y,z(i-1)+h*k1z)
        k2z=df2(x(i-1),y(i-1)+h*k1y,z(i-1)+h*k1z)
        y(i)=y(i-1)+(h/2)*(k1y+k2y)
        z(i)=z(i-1)+(h/2)*(k1z+k2z)
    end
endfunction
