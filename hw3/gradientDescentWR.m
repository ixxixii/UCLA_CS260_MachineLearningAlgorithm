function [theta, b, cycle] = gradientDescentWR(X,Y,stepsize)
    lamda = 0.1;
    theta = zeros(size(X,2),1);
    b = 0.01;
    %N = size(X,1);
    criteria = 50;
    cycle = 1;

    tmp = sigmoid(b+X*theta);
        for i=1:length(tmp)
            if tmp(i)< 1e-16
                tmp(i)= 1e-16;
            end
            if tmp(i)> (1- 1e-16)
                tmp(i) = (1-1e-16);
            end
        end

    errFun = - sum(Y.*log(tmp)+(1-Y).*log(1-tmp)) + lamda*norm(theta,2)^2 ;
    prev_errFun = errFun;   
    while abs(errFun - prev_errFun)>=0.01
        if cycle > criteria
            break;
        end
    
        grad_theta = sum(repmat(tmp-Y,1,size(X,2)).*X) + 2*lamda*theta';
        theta = theta - (stepsize*grad_theta');
    
        grad_b = sum(tmp-Y);
        b = b - (stepsize*grad_b');
   
        tmp = sigmoid(b+X*theta);
        for i=1:length(tmp)
            if tmp(i)< 1e-16
                tmp(i)= 1e-16;
            end
            if tmp(i)> (1- 1e-16)
                tmp(i) = (1-1e-16);
            end
        end
        prev_errFun = errFun;
        errFun =-sum(Y.*log(tmp)+(1-Y).*log(1-tmp))+lamda*norm(theta,2)^2;
        cycle = cycle+1;
       
    end
end
