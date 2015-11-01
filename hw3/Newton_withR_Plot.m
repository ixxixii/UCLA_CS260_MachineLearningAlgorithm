function [theta,b] = Newton_withR_Plot(X,Y,color,lamda)
    theta = zeros(size(X,2),1);
    b = 0.01;
    plot_y = zeros(1,51);
    plot_x = zeros(1,51);
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
    plot_y(1,1) = errFun; 
    while 1
        if cycle > criteria
            break;
        end
        %%calculate theta
        grad_theta = sum(repmat(tmp-Y,1,size(X,2)).*X) + 2*lamda*theta';
        H_theta = zeros(size(X,2),size(X,2));
        for row = 1:size(X,1)
            H_theta = H_theta + X(row,:)'*X(row,:)*tmp(row)*(1-tmp(row));
        end
        H_theta = H_theta + 2*lamda*eye(length(H_theta));
        theta = theta - (pinv(H_theta)*grad_theta');
    
        %%calulate b 
        grad_b = sum(tmp-Y);
        H_b = sum(tmp'*(1-tmp));
        b = b - (grad_b'/H_b);
        %% update tmp errFun
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
        cycle = cycle+1;
        plot_y(1,cycle) = errFun;
        plot_x(1,cycle) = cycle;
    end

    plot(plot_x,plot_y,color);
end