function qstar = find_qstar(rhoi,xqi,maxNum)
 Ns = seqperiod(xqi) ;
len = length(rhoi) ;
qstar = 0;
tc = 0;
for k =1:len
    poQstar = projection(Ns,k,xqi,maxNum) ;
    for q = 1:len
        poQ = projection(Ns,q,xqi,maxNum) ;
       if(Norm_x(poQstar) >= Norm_x(poQ))
            tc = tc + 1;
        end
       
    end
    if(tc == len)
        qstar = k ;
    end
tc = 0;
end
