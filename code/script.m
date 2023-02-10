%% Example 1
% N = 14 ;
% x = [2,-1.1,-1.1,2,-1.2,-1.2,2,-1.1,-1.1,2,-1.2,-1.1,2,-1.1] ;
% maxNum = 400000;
%  for k = 1:400000 - N 
%      x(k+N) = x(k) ;
%  end


%  x = [1100 ,110,001,000,100,010,001,000,000,110,011,001,100,010,000,000,100,110,000,000,000] ;
%  disp(length(x)) ;
%  N = length(x);

%% Example 2 
 x = [1,2,3,4,1,2,3,4];
 N = 8 ;
 maxNum = 4000;
 for k = 1:4000 - N 
     x(k+N) = x(k) ;
 end
%% Example 3
% x = [1,0,4,-3,4,0];
% N = 6 ;
% maxNum = 4000;
%  for k = 1:4000 - N 
%      x(k+N) = x(k) ;
%  end
 M = 5;

 [u,v] = M_Best(x,N,maxNum,M);
%[u,v] = Small_To_Large(x,N,maxNum);
%[u,v] = Best_Correlation(x,N,maxNum,M) ;
disp(v);
