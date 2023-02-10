function y = projection(N,p,x,maxNum )
y = 0 ;
for s = 0 : p -1
    a_val = alpha_s(s,N,p,x,maxNum) ;
    m = p_basis_elems(p,s,maxNum);
    y = y + a_val*m ;
end

end
