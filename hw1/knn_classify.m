function [new_accu, train_accu] = knn_classify(train_data, train_label, new_data, new_label, k)
% k-nearest neighbor classifier
% Input:
%  train_data: N*D matrix, each row as a sample and each column as a
%  feature
%  train_label: N*1 vector, each row as a label
%  new_data: M*D matrix, each row as a sample and each column as a
%  feature
%  new_label: M*1 vector, each row as a label
%  k: number of nearest neighbors
%
% Output:
%  new_accu: accuracy of classifying new_data
%  train_accu: accuracy of classifying train_data (using leave-one-out
%  strategy)
%
% CS260 2015 Fall, Homework 1
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
A = label_predicted - new_label;
new_accu = length(find(A==0))/nTest;


% compute train accuracy
D_train = distance_computing(train_data,train_data);
[~, disind_train] = sort(D_train);

for j = 1:nTrain  
label = train_label(disind_train(2:k+1,j));%except the point it self
    count_train = zeros(nClass, 1);
    tmp_train = 0;
    for jj = 1:nClass
        for i = 1:length(label)
            if label(i,1) == class(jj,1)
                tmp_train = count_train(jj,1);
                tmp_train = tmp_train + 1;
            end
            count_train(jj,1) = tmp_train;
        end
        tmp_train = 0;
    end
    
    for i = 1: nClass;
        p_train(i,1) = count_train(i,1)/k;
    end
    
    [~, valueind_train] = max(p_train);
    ans = class(valueind_train, 1);
    label_predicted_train(j,1) = ans;
end
A_train = label_predicted_train - train_label;
train_accu = length(find(A_train==0))/nTrain;

end
            