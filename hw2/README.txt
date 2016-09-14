This is the source code for CS260 Homework 2.

    1.dataTransform.m is used to read data from .data document and transform to matrix for compute.
    
    2.naiveBayesClassify.m is used to compute the likelihood matrix.
        In this part, because some feature values might exist in the validation/testing data that do not exist in the training data. 
        To avoid error, when compute likelihood I add a adjustable small value alph to both denominator and numerator.
        And I found when alph=4, we have the highest validation accuracy. For specific, you can see the code. 

    3.naiveBayes.m is used to compute the predict label according to the likelihood matix.

    4.Decision_tree.m is used to train decision tree and make prediction.

    5.Logistic Regression is used to train multi-class logistic regression using mnrfit and make a prediction using mnrval.
