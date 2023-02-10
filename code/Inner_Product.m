function z = Inner_Product(x,y)

p1 = seqperiod(x);
p2 =seqperiod(y);

p1p2 = p1*p2 ;

z = 0 ;
for k  = 1 : p1p2 
    z = z + (x(k)*y(k));
end 

z = z/ p1p2 ;
end
