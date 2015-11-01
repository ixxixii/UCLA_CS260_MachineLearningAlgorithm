%for 4d
%using load to import boundry.mat, we can get two matrics features
%and labels
clear all;
load boundary
boundry_data = features;
boudry_label = labels;
grid_matrix = [];
for i = 1:100
    for j = 1:100
        B = [i,j];
        grid_matrix = [grid_matrix;B];
    end
end
grid_matrix = grid_matrix/100;
k=1;
%k=5;
%k=15;
%k=20;
label_predicted1 = knn_classify_4d(boundry_data, boudry_label, grid_matrix,boudry_label,k);
for i = 1:10000
    if label_predicted1(i,1)==1
        plot(grid_matrix(i,1),grid_matrix(i,2),'k.');
        hold on;
    else
        plot(grid_matrix(i,1),grid_matrix(i,2),'w.');
        hold on;
    end
end


