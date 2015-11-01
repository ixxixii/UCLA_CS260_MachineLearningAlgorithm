function label_predicted = knn_classify_4d(train_data, train_label, new_data,new_label,k)
% k-nearest neighbor classifier
% Input:
%  train_data: N*D matrix, each row as a sample and each column as a
%  feature
%  train_label: N*1 vector, each row as a label
%  new_data: M*D matrix, each row as a sample and each column as a
%  feature
%  k: number of nearest neighbors
%
% Output:
%  label_predicted: the predicted label vector
%
% CS260 2015 Fall, for Homework 1 4d
[nTrain, ~] = size(train_data);
nTest = size(new_data,1);
D = zeros(nTrain,nTest);
label_predicted = ones(nTest,1);
class = unique (train_label);
nClass = size(class,1);
%%calculate distance
D = distance_computing(train_data,new_data);

[~, disind] = sort(D);

for j = 1:nTest
label = train_label(disind(1:k,j));
    count = zeros(nClass, 1);
    tmp = 0;
    for jj = 1:nClass
        for i = 1:length(label)
            if label(i,1) == class(jj,1)
                tmp = count(jj,1);
                tmp = tmp + 1;
            end
            count(jj,1) = tmp;
        end
        tmp = 0;
    end
    
    for i = 1: nClass;
        p(i,1) = count(i,1)/k;
    end
    
    [~, valueind] = max(p);
    ans = class(valueind, 1);
    label_predicted(j,1) = ans;
end
end
       