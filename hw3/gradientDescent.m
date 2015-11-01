function [theta, b, cycle] = gradientDescent(X,Y,stepsize)

theta = zeros(size(X,2),1);
b = 0.01;
%%N = size(X,1);
criteria = 50;
cycle = 1;

tmp = sigmoid(b+X*theta);
   for i=1:length(temp)
        if tmp(i)< 1e-16
            tmp(i)= 1e-16;
        end
        if tmp(i)> (1- 1e-16)
                tmp(i) = (1-1e-16);
        end
   end

   errFun = - sum(y.*log(tmp)+(1-y).*log(1-log(tmp)));
   prev_errFun = errFun;
while abs(errFun - prev_errFun)>=0.01
   if cycle > criteria
       break;
   end
    
   grad_theta = sum(repmat(tmp-Y,1,size(X,2)).*X);
   theta = theta - (stepsize*grad_theta');
    
   grad_b = sum(tmp-Y);
   b = b - (stepsize*grad_b');
   
   tmp = sigmoid(b+X*theta);
   for i=1:length(temp)
        if tmp(i)< 1e-16
            tmp(i)= 1e-16;
        end
        if tmp(i)> (1- 1e-16)
                tmp(i) = (1-1e-16);
        end
   end
   prev_errFun = errFun;
   errFun =-sum(y.*log(tmp)+(1-y).*log(1-log(tmp)));
   cycle = cycle+1;
end
end