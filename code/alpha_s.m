function as = alpha_s(s,N,p,x,maxNum) 

sum = 0;

if mod(N,p) == 0
     for k = 1 : N/p 
            m = s + (k-1)*p + 1;
            sum = sum + x(m) ;
     end
      as =  (p/N)*sum;
  
else
    dx = x;
    for k = 1:maxNum -(N+1)
    dx(k + N + 1) = dx(k) ;
    end
    for k = 1 : floor(N/p)
           m = s + (k-1)*p + 1;
           sum = sum + dx(m) ;
    end
       as = (1/ floor(N/p))*sum ;
   
end
  
end
