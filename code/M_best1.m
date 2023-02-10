function [xq1,qi_value] = M_best1(M,x,N,maxNum)

qi_value = 0;
%q = zeros(1,M) ;
r = zeros(M+1,length(x)) ;
% r(1) = 0;
r(1,:) = x(1,:) ;
xq1 = 0;
for i = 1:M
    
    qi = find_qi(N,i,r,maxNum);
    r(i + 1,:) = r(i,:) - projection(N,qi,r(i,:),maxNum) ;
    qi_value = [qi_value qi] ;
    pro = projection(N,qi,r(i+1,:),maxNum) ;
    xq1 = [xq1 pro] ; %% xq1 is basically    x(q-1) so be careful over here because u put different indices for r and q I mean just don't get cofused
end

end
% carefhul with indexing qi check again at last make change
