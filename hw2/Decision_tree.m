clear all;
%%read datat
[train_data,train_label] = dataTransform('car_train.data');
[validation_data, validation_label] = dataTransform('car_valid.data');
[test_data, test_label] = dataTransform('car_test.data');

%%start, using ClassificationTree.fit
%%split criterions, Gini index
%%change minimum size of leaf nodes from 1 to 10
    tree_Gini = ClassificationTree.fit(train_data,train_label,'SplitCriterion','gdi','Prune','off','MinLeaf',10);
%%compute accuracy
    label = predict(tree_Gini,train_data);
    aTrain_Gini = label - train_label;
    accuTrain_Gini = length(find(aTrain_Gini==0))/size(train_data,1);

    label = predict(tree_Gini,validation_data);
    aVal_Gini = label - validation_label;
    accuVal_Gini = length(find(aVal_Gini==0))/size(validation_data,1);
    
    label = predict(tree_Gini, test_data);
    aTest_Gini = label - test_label;
    accuTest_Gini = length(find(aTest_Gini==0))/size(test_data,1);
%%split criterions, cross-entropy
%%change minimum size of leaf nodes from 1 to 10
    tree_cross = ClassificationTree.fit(train_data,train_label,'SplitCriterion','deviance','Prune','off','MinLeaf',10);
    
%%compute accuracy
    label = predict(tree_cross,train_data);
    aTrain_cross = label - train_label;
    accuTrain_cross = length(find(aTrain_cross==0))/size(train_data,1);

    label = predict(tree_cross,validation_data);
    aVal_cross = label - validation_label;
    accuVal_cross = length(find(aVal_cross==0))/size(validation_data,1);
    
    label = predict(tree_cross, test_data);
    aTest_cross = label - test_label;
    accuTest_cross = length(find(aTest_cross==0))/size(test_data,1);

