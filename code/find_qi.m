function qi_value = find_qi(N,i,r,maxNum)

tc = 0; % to check if energy qi is greater than energy q for all q
qi_value = 0 ;
Ns = seqperiod(r(i,:)) ;
for qi = 1:N
    for q = 1:(N/2)
        %Ns = seqperiod(r) ;
        poqi = projection(Ns,qi,r(i,:),maxNum) ;
        poq = projection(Ns,q,r(i,:),maxNum) ;
       if(Norm_x(poqi) >= Norm_x(poq))
            tc = tc + 1;
        end
       
    end
    if(tc == N/2)
        qi_value = qi ;
    end
    tc = 0;
end

end
