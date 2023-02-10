function [y,periods] = Best_Correlation(x,N,maxNum,M)

r = x ;
periods = zeros(1,M);
y = zeros(M,maxNum) ;
for k = 1:M
    
    Nforr = seqperiod(r);
    rho = argmax(r,Nforr,maxNum) ;
    periods(k) = rho ;
    xp = projection(Nforr,rho,r,maxNum) ;
   
    % y = [y xp];
     y(k,:) = xp ;
     r = r - xp   ;
end
