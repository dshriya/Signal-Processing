function rho = argmax(r,N,maxNum)

rho1 = 0;
max_rho = 0;
max_rho1 = 0;

for p = 2:N
    for s = 0:p-1
    rho1 = abs(Inner_Product(r, p_basis_elems(p,s,maxNum)));
    if(rho1 > max_rho1 )
        max_rho1 = rho1 ;
        max_rho = p;
    end
    
    end
end

rho = max_rho ;
end 
