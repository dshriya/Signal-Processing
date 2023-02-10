function [y,periods] = M_Best(x,N,maxNum,M)

[xq1,qi_value] = M_best1(M,x,N,maxNum) ;

[y,periods] = M_best2(qi_value,xq1,M,maxNum) ;

end
