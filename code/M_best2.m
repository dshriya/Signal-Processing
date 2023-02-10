function [y,qi_value] = M_best2(qi_value,xq1,M,maxNum)

%while(length(xq1) > 1)
for k = 1:M
    qi = qi_value(k + 1) ;
 %   rhoi = find_multiples(qi) ;
    rhoi = factor(qi) ;
    xqi = xq1(k+2) ;
    xqM = xq1(M+2) ;
    Q_star = find_qstar(rhoi,xqi,maxNum) ;
    Ns = seqperiod(xqi) ;
    xQ_star = projection(Ns,Q_star,xqi,maxNum) ;
    xq_star = xqi - xQ_star ;
    xqk = min(xq1) ;
    norm_xqstar = Norm_x(xq_star) ;
    norm_xQstar = Norm_x(xQ_star) ;
    if ( ((norm_xqstar + norm_xQstar ) > (Norm_x(xqM) + Norm_x(xqi))) &&  (norm_xqstar > xqk) && (norm_xQstar > xqk) )
        q_star = seqperiod(xq_star) ;
        qi_value(k + 1) = q_star ;
        xq1(k+2) = xq_star ;
        qi_value(k) = Q_star ;
        xq1(k+1) = xQ_star ;
%         xq1 = xq1(1:(end-1)) ;
%         qi_value(k) = qi_value(1:(end-1)) ;
    end
%end
y = xq1(2:end) ;
end
