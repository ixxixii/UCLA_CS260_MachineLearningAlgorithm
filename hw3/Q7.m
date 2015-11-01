function [L,e] =Q7(X,Y,X_test, Y_test, color,lamda)

[theta,b]= Newton_withR_Plot(X,Y,color,lamda);
L = norm(theta,2);
tmp = sigmoid(b+X_test*theta);
        for i=1:length(tmp)
            if tmp(i)< 1e-16
                tmp(i)= 1e-16;
            end
            if tmp(i)> (1- 1e-16)
                tmp(i) = (1-1e-16);
            end
        end
e = - sum(Y_test.*log(tmp)+(1-Y_test).*log(1-tmp)) + lamda*norm(theta,2)^2;
end
