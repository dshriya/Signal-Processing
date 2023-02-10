function [y,periods]  = Best_Freq_Algo(M,x,maxNum)
r = x ;
periods = 1;
y = 0 ;

for i = 1 : M 
    
  if size(periods) > M 
     break ;
 end 

 N = seqperiod(r);
 temp = fft(r(1:N));
  for k = 1:maxNum - N 
     temp(k+N) = temp(k) ;
 end
 z = abs(temp);
 z = Norm_x(z);
 
 z = round(z*100)/100;
 k = seqperiod(z);
 [v,w] = maxk(z,1);
 f = 2*pi * (w-1)/k; 
 p = round(1/f);
 
 xp = projection(k,p,r,maxNum) ; 
 r = r -xp ;
 
   if y == 0 
             y = xp ;
             periods = p ;
   else 
            y = [y xp];
            periods = [periods p] ;
   end 

end 

end
