clear all;
[X1,Y1] = dataTransform('ionosphere_train.dat');
[X,Y] = spam_data('/Users/yangyang/Desktop/CS260_HW3_MAT/spam/train/ham/','/Users/yangyang/Desktop/CS260_HW3_MAT/spam/train/spam/');
[X1_test,Y1_test] = dataTransform('ionosphere_test.dat');
[X_test,Y_test] = spam_data('/Users/yangyang/Desktop/CS260_HW3_MAT/spam/test/ham/','/Users/yangyang/Desktop/CS260_HW3_MAT/spam/test/spam/');

%%This is for Question 3, without regulaization
%for ionosphere
theta_1I=Q3_GD_withoutR_Plot(X1,Y1,0.001,'r');
hold on;
theta_2I=Q3_GD_withoutR_Plot(X1,Y1,0.01,'b');
hold on;
theta_3I=Q3_GD_withoutR_Plot(X1,Y1,0.05,'k');
hold on;
theta_4I=Q3_GD_withoutR_Plot(X1,Y1,0.1,'g');
hold on;
theta_5I=Q3_GD_withoutR_Plot(X1,Y1,0.5,'y');
L1I = norm(theta_1I,2);
L2I = norm(theta_2I,2);
L3I = norm(theta_3I,2);
L4I = norm(theta_4I,2);
L5I = norm(theta_5I,2);
%for emailspam
figure();
theta_1_3a=Q3_GD_withoutR_Plot(X,Y,0.001,'r');
hold on;
theta_2_3a=Q3_GD_withoutR_Plot(X,Y,0.01,'b');
hold on;
theta_3_3a=Q3_GD_withoutR_Plot(X,Y,0.05,'k');
hold on;
theta_4_3a=Q3_GD_withoutR_Plot(X,Y,0.1,'g');
hold on;
theta_5_3a=Q3_GD_withoutR_Plot(X,Y,0.5,'y');
L1_3a = norm(theta_1_3a,2);
L2_3a = norm(theta_2_3a,2);
L3_3a = norm(theta_3_3a,2);
L4_3a = norm(theta_4_3a,2);
L5_3a = norm(theta_5_3a,2);

%%This is for Question 4(a), with regulaization
figure();
[~]=Q3_GD_withR_Plot(X1,Y1,0.001,'r',0.1);
hold on;
[~]=Q3_GD_withR_Plot(X1,Y1,0.01,'b',0.1);
hold on;
[~]=Q3_GD_withR_Plot(X1,Y1,0.05,'k',0.1);
hold on;
[~]=Q3_GD_withR_Plot(X1,Y1,0.1,'g',0.1);
hold on;
[~]=Q3_GD_withR_Plot(X1,Y1,0.5,'y',0.1);

figure();
[~]=Q3_GD_withR_Plot(X,Y,0.001,'r',0.1);
hold on;
[~]=Q3_GD_withR_Plot(X,Y,0.01,'b',0.1);
hold on;
[~]=Q3_GD_withR_Plot(X,Y,0.05,'k',0.1);
hold on;
[~]=Q3_GD_withR_Plot(X,Y,0.1,'g',0.1);
hold on;
[~]=Q3_GD_withR_Plot(X,Y,0.5,'y',0.1);

%%This is for Question 4(b)
figure();
[theta_1,~]=Q3_GD_withR_Plot(X,Y,0.01,'r',0);
[theta_2,~]=Q3_GD_withR_Plot(X,Y,0.01,'r',0.05);
[theta_3,~]=Q3_GD_withR_Plot(X,Y,0.01,'r',0.1);
[theta_4,~]=Q3_GD_withR_Plot(X,Y,0.01,'r',0.15);
[theta_5,~]=Q3_GD_withR_Plot(X,Y,0.01,'r',0.2);
[theta_6,~]=Q3_GD_withR_Plot(X,Y,0.01,'r',0.25);
[theta_7,~]=Q3_GD_withR_Plot(X,Y,0.01,'r',0.3);
[theta_8,~]=Q3_GD_withR_Plot(X,Y,0.01,'r',0.35);
[theta_9,~]=Q3_GD_withR_Plot(X,Y,0.01,'r',0.4);
[theta_10,~]=Q3_GD_withR_Plot(X,Y,0.01,'r',0.45);
[theta_11,~]=Q3_GD_withR_Plot(X,Y,0.01,'r',0.5);
L1_4b = norm(theta_1,2);
L2_4b = norm(theta_2,2);
L3_4b = norm(theta_3,2);
L4_4b = norm(theta_4,2);
L5_4b = norm(theta_5,2);
L6_4b = norm(theta_6,2);
L7_4b = norm(theta_7,2);
L8_4b = norm(theta_8,2);
L9_4b = norm(theta_9,2);
L10_4b = norm(theta_10,2);
L11_4b = norm(theta_11,2);

[theta_1,~]=Q3_GD_withR_Plot(X1,Y1,0.01,'r',0);
[theta_2,~]=Q3_GD_withR_Plot(X1,Y1,0.01,'r',0.05);
[theta_3,~]=Q3_GD_withR_Plot(X1,Y1,0.01,'r',0.1);
[theta_4,~]=Q3_GD_withR_Plot(X1,Y1,0.01,'r',0.15);
[theta_5,~]=Q3_GD_withR_Plot(X1,Y1,0.01,'r',0.2);
[theta_6,~]=Q3_GD_withR_Plot(X1,Y1,0.01,'r',0.25);
[theta_7,~]=Q3_GD_withR_Plot(X1,Y1,0.01,'r',0.3);
[theta_8,~]=Q3_GD_withR_Plot(X1,Y1,0.01,'r',0.35);
[theta_9,~]=Q3_GD_withR_Plot(X1,Y1,0.01,'r',0.4);
[theta_10,~]=Q3_GD_withR_Plot(X1,Y1,0.01,'r',0.45);
[theta_11,~]=Q3_GD_withR_Plot(X1,Y1,0.01,'r',0.5);
L1_4b2 = norm(theta_1,2);
L2_4b2 = norm(theta_2,2);
L3_4b2 = norm(theta_3,2);
L4_4b2 = norm(theta_4,2);
L5_4b2 = norm(theta_5,2);
L6_4b2 = norm(theta_6,2);
L7_4b2 = norm(theta_7,2);
L8_4b2 = norm(theta_8,2);
L9_4b2 = norm(theta_9,2);
L10_4b2 = norm(theta_10,2);
L11_4b2 = norm(theta_11,2);

%%Question 4(c)
figure();
Q4c_2(X,Y);
figure();
Q4c(X,Y);

figure();
Q4c(X1,Y1);


%%for question 6 a
figure();
[theta_1_6,b1]=Newton_withoutR_Plot(X1,Y1,'k');
L1 = norm(theta_1_6,2);
hold on;
[theta_2_6,b2]=Newton_withoutR_Plot(X,Y,'b');
L2 = norm(theta_2_6,2);

tmp1 = sigmoid(b1+X1_test*theta_1_6);
       for i=1:length(tmp1)
            if tmp1(i)< 1e-16
                tmp1(i)= 1e-16;
            end
            if tmp1(i)> (1- 1e-16)
                tmp1(i) = (1-1e-16);
            end
       end
  errFun1 = - sum(Y1_test.*log(tmp1)+(1-Y1_test).*log(1-tmp1));
        
        
tmp2 = sigmoid(b2+X_test*theta_2_6);
        for i=1:length(tmp2)
            if tmp2(i)< 1e-16
                tmp2(i)= 1e-16;
            end
            if tmp2(i)> (1- 1e-16)
                tmp2(i) = (1-1e-16);
            end
       end        
  errFun2 = - sum(Y_test.*log(tmp2)+(1-Y_test).*log(1-tmp2));


%%Question 7
figure();
[l1_spam_7,e1_spam_7] = Q7(X,Y,X_test, Y_test, 'b',0.05);
hold on;
[l1_Io_7,e1_Io_7] = Q7(X1,Y1,X1_test, Y1_test, 'k',0.05);

figure();
[l2_spam_7,e2_spam_7] = Q7(X,Y,X_test, Y_test, 'b',0.1);
hold on;
[l2_Io_7,e2_Io_7] = Q7(X1,Y1,X1_test, Y1_test, 'k',0.1);

figure();
[l3_spam_7,e3_spam_7] = Q7(X,Y,X_test, Y_test, 'b',0.15);
hold on;
[l3_Io_7,e3_Io_7] = Q7(X1,Y1,X1_test, Y1_test, 'k',0.15);

figure();
[l4_spam_7,e4_spam_7] = Q7(X,Y,X_test, Y_test, 'b',0.2);
hold on;
[l4_Io_7,e4_Io_7] = Q7(X1,Y1,X1_test, Y1_test, 'k',0.2);

figure();
[l5_spam_7,e5_spam_7] = Q7(X,Y,X_test, Y_test, 'b',0.25);
hold on;
[l5_Io_7,e5_Io_7] = Q7(X1,Y1,X1_test, Y1_test, 'k',0.25);

figure();
[l6_spam_7,e6_spam_7] = Q7(X,Y,X_test, Y_test, 'b',0.3);
hold on;
[l6_Io_7,e6_Io_7] = Q7(X1,Y1,X1_test, Y1_test, 'k',0.3);

figure();
[l7_spam_7,e7_spam_7] = Q7(X,Y,X_test, Y_test, 'b',0.35);
hold on;
[l7_Io_7,e7_Io_7] = Q7(X1,Y1,X1_test, Y1_test, 'k',0.35);

figure();
[l2_spam_8,e2_spam_8] = Q7(X,Y,X_test, Y_test, 'b',0.4);
hold on;
[l2_Io_8,e2_Io_8] = Q7(X1,Y1,X1_test, Y1_test, 'k',0.4);

figure();
[l2_spam_9,e2_spam_9] = Q7(X,Y,X_test, Y_test, 'b',0.45);
hold on;
[l2_Io_9,e2_Io_9] = Q7(X1,Y1,X1_test, Y1_test, 'k',0.45);

figure();
[l2_spam_10,e2_spam_10] = Q7(X,Y,X_test, Y_test, 'b',0.5);
hold on;
[l2_Io_10,e2_Io_10] = Q7(X1,Y1,X1_test, Y1_test, 'k',0.5);


% for a, plot all smialspam together
figure();
[~,~]= Q7(X,Y,X_test, Y_test, 'r',0.05);
hold on;
[~,~]= Q7(X,Y,X_test, Y_test, 'y',0.1);
hold on;
[~,~]= Q7(X,Y,X_test, Y_test, 'g',0.15);
hold on;
[~,~]= Q7(X,Y,X_test, Y_test, 'k',0.2);
hold on;
[~,~]= Q7(X,Y,X_test, Y_test, 'b',0.25);
hold on;
[~,~]= Q7(X,Y,X_test, Y_test, 'r:.',0.3);
hold on;
[~,~]= Q7(X,Y,X_test, Y_test, 'y:.',0.35);
hold on;
[~,~]= Q7(X,Y,X_test, Y_test, 'g:.',0.4);
hold on;
[~,~]= Q7(X,Y,X_test, Y_test, 'k:.',0.45);
hold on;
[~,~]= Q7(X,Y,X_test, Y_test, 'b:.',0.5);




% for a, plot all Ionosphere tpgether
figure();
[~,~]= Q7(X1,Y1,X1_test, Y1_test, 'r',0.05);
hold on;
[~,~]= Q7(X1,Y1,X1_test, Y1_test, 'y',0.1);
hold on;
[~,~]= Q7(X1,Y1,X1_test, Y1_test, 'g',0.15);
hold on;
[~,~]= Q7(X1,Y1,X1_test, Y1_test, 'k',0.2);
hold on;
[~,~]= Q7(X1,Y1,X1_test, Y1_test, 'b',0.25);
hold on;
[~,~]= Q7(X1,Y1,X1_test, Y1_test, 'r:.',0.3);
hold on;
[~,~]= Q7(X1,Y1,X1_test, Y1_test, 'y:.',0.35);
hold on;
[~,~]= Q7(X1,Y1,X1_test, Y1_test, 'g:.',0.4);
hold on;
[~,~]= Q7(X1,Y1,X1_test, Y1_test, 'k:.',0.45);
hold on;
[~,~]= Q7(X1,Y1,X1_test, Y1_test, 'b:.',0.5);