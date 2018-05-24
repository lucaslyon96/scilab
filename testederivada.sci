function [F]=deriva(f,ra)
    F=numderivative (f,x);
    F=F(ra);
endfunction
