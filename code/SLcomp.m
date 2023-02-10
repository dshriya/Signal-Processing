clc ; close all; 
x = [1,0,4,-3,4,0];
 N = 6 ;
 maxNum = 40;
  for k = 1:maxNum - N 
      x(k+N) = x(k) ;
  end
  
 [u,v] = Small_To_Large(x,N,maxNum);
 
 figure(1);
  subplot(4,1,1);
  plot(x);
  xlabel('n');
  ylabel('x[n]')
  title('original signal');
  z = u(1:maxNum)+ u(maxNum+1 : 2*maxNum) ;
  
  subplot(4,1,2);
  plot(u(1:maxNum));
  xlabel('n');
  ylabel('b_2');
  title('projection of x on P_2');
  subplot(4,1,3);
  plot(u(maxNum+1 : 2*maxNum));
  xlabel('n');
  ylabel('b_3');
  title('projection of residual on P_3');

  subplot(4,1,4);
  plot(z);
  xlabel('n');
  ylabel('b2 + b3');
  title('sum of periodic sequences');
  sgtitle('Small to Large');
   [u,v] = Large_To_Small(x,N,maxNum);

figure(2);
subplot(4,1,1);
  plot(x);
  xlabel('n');
  ylabel('x[n]')
  title('original signal');
  z = u(1:maxNum)+ u(maxNum+1 : 2*maxNum) ;
  
  subplot(4,1,2);
  plot(u(1:maxNum));
  xlabel('n');
  ylabel('b_3');
  title('projection of x on P_3');
  subplot(4,1,3);
  plot(u(maxNum+1 : 2*maxNum));
  xlabel('n');
  ylabel('b_2');
  title('projection of residual on P_2');

  subplot(4,1,4);
  plot(z);
  xlabel('n');
  ylabel('b2 + b3');
  title('sum of periodic sequences');
  sgtitle('Large To Small');

