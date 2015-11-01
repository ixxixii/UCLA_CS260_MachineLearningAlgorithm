function [matrix_feature,matrix_label]=spam_data(mydir_ham,mydir_spam)
dictionary = textread('dic.dat','%s','delimiter', ',');
%mydir_ham = '/Users/yangyang/Desktop/CS260_HW3_MAT/spam/test/ham/';
%mydir_spam = '/Users/yangyang/Desktop/CS260_HW3_MAT/spam/test/spam/';

F_spam = dir([mydir_spam,'*.txt']);
F_ham = dir([mydir_ham,'*.txt']);

totalNum = length(F_ham) + length(F_spam);
raw = length(dictionary);
matrix_feature = zeros(totalNum, raw);

matrix_label = zeros(totalNum,1);
for i = 1:length(F_spam)
    matrix_label(i+length(F_ham),1) = 1;
end

for i = 1:length(F_ham)
    filename_ham = [mydir_ham,F_ham(i).name];
    content_ham = textread(filename_ham,'%s','delimiter',' .,?');
    for x = 1:raw
        for y = 1:length(content_ham)
            if strcmp(dictionary(x),content_ham(y))
                matrix_feature(i,x) = matrix_feature(i,x) + 1;
            end
        end
    end
end

for i = 1:length(F_spam)
    filename_spam = [mydir_spam,F_spam(i).name];
    content_spam = textread(filename_spam,'%s','delimiter',' .,?');
    for a = 1:raw
        for b = 1:length(content_spam)
            if strcmp(dictionary(a), content_spam(b))
                matrix_feature(i+length(F_ham),a)=matrix_feature(i+length(F_ham),a)+1;
            end
        end
    end
end
end

%%count
%sum_matrix_feature = sum (matrix_feature);
%[num,val]=sort(sum_matrix_feature);
%%from result we know the largest three is number 769, 917 and 402. Their
%%vaues are 600, 451, 291
%%Numer 769, 917 and 402 are 'enron','will' and 'please'
%dictionary(769);
%dictionary(917);
%dictionary(402);

