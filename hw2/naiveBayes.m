clear all;
%% read data
[train_data,train_label] = dataTransform('car_train.data');
[validation_data, validation_label] = dataTransform('car_valid.data');
[test_data, test_label] = dataTransform('car_test.data');
%% end of read data

[nTrain,f] = size(train_data);
%nTest = size(train_data,1);
nTest = size(validation_data,1);
%nTest = size(test_data,1);
y = zeros(nTest,1);
class = unique(train_label);
nClass = size(class,1);

%%begin
%%I found when alph=4, we have the highest validation accuracy. 
%%Thus I choose 4.
[likehood_matrix, priors] = naiveBayesClassify(train_data,train_label,4);

for j = 1 : nTest
    res = 0;
    result = zeros(nClass,1);
    for k = 1 : nClass
        for i = 1 : f
            %if train_data(j,i) == 1
            if validation_data(j,i) == 1
            %if test_data(j,i) == 1

                res = res+log(likehood_matrix(k,i));
            else
                res = res+log(1 - likehood_matrix(k,i));
            end
        end
        result(k,1) = log(priors(k,1))+res;
        res = 0;
    end
       [val,ind] = max(result(:,1));
       y(j) = class(ind);
end

%error = y - train_label;
error = y - validation_label;
%error = y -test_label;
%accuracy = length(find(error==0))/nTrain;
accuracy = length(find(error==0))/nTest;
