function [y,periods] = Small_To_Large(x,N,maxNum )
T = 0.01 ;
r = x ;
m = N / 2 ;
v = Norm_x(x);
y  = 0 ;
periods = N;
for p = 2 : m
    k = seqperiod(r);
    xp = projection(k,p,r,maxNum) ; 
    u = Norm_x(r-xp);
    if u == 0
        y = [y xp];
        periods = [periods p];
    end
    if (u/v) > T
        r = r - xp ;
         if y == 0 
             y = xp ;
             periods = p ;
         else 
            y = [y xp];
            periods = [periods p] ;
        end 
    end 
end
end
