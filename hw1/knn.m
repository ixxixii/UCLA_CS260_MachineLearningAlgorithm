clear all;

[train_data,train_label] = dataTransform('car_train.data');
[validation_data, validation_label] = dataTransform('car_valid.data');
[test_data, test_label] = dataTransform('car_test.data');

%k = 1;
%[new_accu1, train_accu1] = knn_classify(train_data, train_label, validation_data, validation_label, k);
%k = 3;
%[new_accu3, train_accu3] = knn_classify(train_data, train_label, validation_data, validation_label, k);
%k = 5;
%[new_accu5, train_accu5] = knn_classify(train_data, train_label, validation_data, validation_label, k);
%k = 7;
%[new_accu7, train_accu7] = knn_classify(train_data, train_label, validation_data, validation_label, k);
%k = 9;
%[new_accu9, train_accu9] = knn_classify(train_data, train_label, validation_data, validation_label, k);
%k = 11;
%[new_accu11, train_accu11] = knn_classify(train_data, train_label, validation_data, validation_label, k);
%k = 13;
%[new_accu13, train_accu13] = knn_classify(train_data, train_label, validation_data, validation_label, k);
%k = 15;
%[new_accu15, train_accu15] = knn_classify(train_data, train_label, validation_data, validation_label, k);
%k = 17;
%[new_accu17, train_accu17] = knn_classify(train_data, train_label, validation_data, validation_label, k);
%k = 19;
%[new_accu19, train_accu19] = knn_classify(train_data, train_label, validation_data, validation_label, k);
%k = 21;
%[new_accu21, train_accu21] = knn_classify(train_data, train_label, validation_data, validation_label, k);
%k = 23;
%[new_accu23, train_accu23] = knn_classify(train_data, train_label, validation_data, validation_label, k);

k = 9;
[new_accu9, train_accu9] = knn_classify(train_data, train_label, test_data, test_label, k);
