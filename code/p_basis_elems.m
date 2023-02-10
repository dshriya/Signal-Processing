function y = p_basis_elems(p,s,maxNum)
j = 0: maxNum -1 ;
for k = 1 : maxNum
    if mod(k - s -1 , p) == 0 
        y(k) = 1;
    else 
        y(k) = 0 ;
    end
end


end
