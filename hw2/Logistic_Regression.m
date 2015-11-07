clear all;
%% read data
[train_data,train_label] = dataTransform('car_train.data');
[validation_data, validation_label] = dataTransform('car_valid.data');
[test_data, test_label] = dataTransform('car_test.data');

B = mnrfit(train_data, train_label);
Pro_matrix_train = mnrval(B,train_data);
[~,label_train] = max(Pro_matrix_train,[],2);
train_error = label_train - train_label;
train_accuracy = length(find(train_error==0))/size(train_data,1);

Pro_matrix_validation = mnrval(B,validation_data);
[~,label_validation] = max(Pro_matrix_validation,[],2);
validation_error = label_validation - validation_label;
validation_accuracy = length(find(validation_error==0))/size(validation_data,1);

Pro_matrix_test = mnrval(B,test_data);
[~,label_test] = max(Pro_matrix_test,[],2);
test_error = label_test - test_label;
test_accuracy = length(find(test_error==0))/size(test_data,1);



