function Q4c(X,Y)

yAxis = zeros(1,11);
xAxis = zeros(1,11);
for i = 1:11
    xAxis(i) =xAxis(i)+(i-1)*0.05;
end
for i=1:11
    lambda = (i-1)*0.05;
    [~,e] = Q3_GD_withR(X,Y,0.001,lambda);
    yAxis(i) = e;
end
plot(xAxis,yAxis,'b');
hold on;

yAxis = zeros(1,11);
xAxis = zeros(1,11);
for i = 1:11
    xAxis(i) =xAxis(i)+(i-1)*0.05;
end
for i=1:11
    lambda = (i-1)*0.05;
    [~,e] = Q3_GD_withR(X,Y,0.01,lambda);
    yAxis(i) = e;
end
plot(xAxis,yAxis,'r');
hold on;

yAxis = zeros(1,11);
xAxis = zeros(1,11);
for i = 1:11
    xAxis(i) =xAxis(i)+(i-1)*0.05;
end
for i=1:11
    lambda = (i-1)*0.05;
    [~,e] = Q3_GD_withR(X,Y,0.05,lambda);
    yAxis(i) = e;
end
plot(xAxis,yAxis,'k');
hold on;

yAxis = zeros(1,11);
xAxis = zeros(1,11);
for i = 1:11
    xAxis(i) =xAxis(i)+(i-1)*0.05;
end
for i=1:11
    lambda = (i-1)*0.05;
    [~,e] = Q3_GD_withR(X,Y,0.1,lambda);
    yAxis(i) = e;
end
plot(xAxis,yAxis,'y');
hold on;


end