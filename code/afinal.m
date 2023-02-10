clc ; close all; 
 N = 14 ;
 x = [2,-1.1,-1.1,2,-1.2,-1.2,2,-1.1,-1.1,2,-1.2,-1.1,2,-1.1] ;
 maxNum = 400000;
  for k = 1:400000 - N 
      x(k+N) = x(k) ;
  end
   M = 6;
 %[u,v] = Small_To_Large(x,N,maxNum);
[u,v] = Best_Correlation(x,N,maxNum,M) ;

 figure(1);
  subplot(2,1,1);
  plot(x);
  xlim([1 50]);
  xlabel('n');
  ylabel('x[n]')
  title('original signal');
  
  figure(2);
  %z = u(1:maxNum)+ u(maxNum+1 : 2*maxNum) ;
  
  subplot(3,2,1);
  plot(u(1,:));
  xlim([1 50]);
  xlabel('n');
  ylabel('b_2');
  title('projection of x on P_2');
  subplot(3,2,2);
  plot(u(2,:));
  xlim([1 50]);
  xlabel('n');
  ylabel('b_3');
  title('projection of residual on P_3');
  subplot(3,2,3);
  plot(u(3,:));
  xlim([1 50]);
  xlabel('n');
  ylabel('b_4');
  title('projection of residual on P_4');
  subplot(3,2,4);
  plot(u(4,:));
  xlim([1 50]);
  xlabel('n');
  ylabel('b_5');
  title('projection of residual on P_5');
  subplot(3,2,5);
  plot(u(5,:));
  xlim([1 50]);
  xlabel('n');
  ylabel('b_6');
  title('projection of residual on P_6');
  subplot(3,2,6);
  plot(u(6,:));
  xlim([1 50]);
  xlabel('n');
  ylabel('b_7');
  title('projection of residual on P_7');
  sgtitle('small to large');

  figure(1);
  subplot(2,1,2);
  
%   z = u(1:maxNum);
%   
%   for k = 1 : 5
%       for m = 1 : maxNum
%       z(m) = z(m) + u(k*maxNum + m);
%       end 
%   end
%   
z = u(1,:) + u(2,:) + u(3,:) ;
  plot(z);
  xlim([1 50]);
  xlabel('n');
  ylabel('b_2+b_3+b_4+b_5+b_6+b_7');
  title('Sum of periodic sequences');
