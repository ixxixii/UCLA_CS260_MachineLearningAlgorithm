%Distance_computing
function D = distance_computing(XTrain,XTest)
    % distance computes using 'euclidean'
    % D: distance matrix, the size should be nTrain*nTest, where D(i,j) is
    % the distance of XTrain(i,:) and XTest(j,:)
    [nTrain,~] = size(XTrain);
    nTest = size(XTest,1);
    D = zeros(nTrain,nTest);
    
    Xi = sum(XTrain.*XTrain,2)
    Xi_2 = repmat(Xi,1,nTest)
    Xj = sum(XTest.*XTest,2)
    Xj = Xj'
    Xj_2 = repmat(Xj,nTrain,1)
    Xij = Xi_2+Xj_2
    
    Xj_3 = XTest'
    Xij_2 = -2*XTrain*Xj_3;
    
    ans = Xij + Xij_2;
    D = sqrt(ans);
end