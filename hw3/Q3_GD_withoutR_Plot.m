
function theta = Q3_GD_withoutR_Plot(X,Y,stepsize,color)
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

    errFun = - sum(Y.*log(tmp)+(1-Y).*log(1-tmp));
    plot_y(1,1) = errFun; 
    while 1
        if cycle > criteria
            break;
        end
    
        grad_theta = sum(repmat(tmp-Y,1,size(X,2)).*X);
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
   
        errFun =-sum(Y.*log(tmp)+(1-Y).*log(1-tmp));
        cycle = cycle+1;
        plot_y(1,cycle) = errFun;
        plot_x(1,cycle) = cycle;
    end

    plot(plot_x,plot_y,color);
end