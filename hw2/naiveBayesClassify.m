function [likelihood_matrix, priors] = naiveBayesClassify(training_data, training_label, alph)
%clear all;
 %   [training_data,training_label] = dataTransform('car_train.data');
  %  alph = 0;
    class = unique(training_label);
    nClass = size(class,1);
    
    likelihood_matrix = zeros(nClass, size(training_data,2));
    priors = zeros(nClass, 1);
    nTrain = size(training_data,1);
    count = zeros(nClass,1);

    %%begin
    %%compute prior   
    for k = 1 : nClass;
        for i = 1 : nTrain
            if training_label(i,1) == class(k,1)
               count(k,1) = count(k,1) +1;
            end
        end
    end
    
    for class=1:nClass
        priors(class,1) = count(class,1) / nTrain;
        
        fm = training_data(find(training_label == class), :);
        % calc and store likelihoods
        
        % because some feature values might exist in the validation/testing data that do not exist in the training data. 
        % To aviod error, when compute likehood I add a adjustable small value alph to both denominator and numerator.
        % And I found when alph=4, we have the highest validation accuracy.
        likelihoods = (sum(fm,1) + alph) / (sum(fm(:)) + alph * nClass); 
        
        likelihood_matrix(class, :) = likelihoods;
    end
    
end
