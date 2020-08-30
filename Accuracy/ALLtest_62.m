clc;clear all;
load D:\LSTM序列到序列调试\Data\test_62.mat;
% load D:\LSTM序列到序列调试\options\onlyd2.mat
tic;
%% casp9
YPred9 = classify(net,X_test9, ...
      'MiniBatchSize',3, ...
      'SequenceLength','longest');
accuracy = [];
for i = 1:length(Y_test9)
            turenum = 0;
    for n = 1:length(Y_test9{i,1})
        if(YPred9{i,1}(n) == Y_test9{i,1}(n))
            turenum = turenum + 1;
            accuracy(i,1) = turenum/(length(Y_test9{i,1}));
        end
    end
end
accuracy_average9 = mean(accuracy,1);
%% casp10
YPred10 = classify(net,X_test10, ...
      'MiniBatchSize',3, ...
      'SequenceLength','longest');
accuracy = [];
for i = 1:length(Y_test10)
            turenum = 0;
    for n = 1:length(Y_test10{i,1}) 
        if(YPred10{i,1}(n) == Y_test10{i,1}(n))
            turenum = turenum + 1;
            accuracy(i,1) = turenum/(length(Y_test10{i,1}));
        end
    end
end
accuracy_average10 = mean(accuracy,1);
%% casp11
YPred11 = classify(net,X_test11, ...
      'MiniBatchSize',3, ...
      'SequenceLength','longest');
accuracy = [];
for i = 1:length(Y_test11)
            turenum = 0;
    for n = 1:length(Y_test11{i,1})
        if(YPred11{i,1}(n) == Y_test11{i,1}(n))
            turenum = turenum + 1;
            accuracy(i,1) = turenum/(length(Y_test11{i,1}));
        end
    end
end
accuracy_average11 = mean(accuracy,1);
%% casp12
YPred12 = classify(net,X_test12, ...
      'MiniBatchSize',3, ...
      'SequenceLength','longest');
accuracy = [];
for i = 1:length(Y_test12)
            turenum = 0;
    for n = 1:length(Y_test12{i,1})
        if(YPred12{i,1}(n) == Y_test12{i,1}(n))
            turenum = turenum + 1;
            accuracy(i,1) = turenum/(length(Y_test12{i,1}));
        end
    end
end
accuracy_average12 = mean(accuracy,1);
% %% cb513
% YPredcb = classify(net,X_testcb, ...
%       'MiniBatchSize',3, ...
%       'SequenceLength','longest');
% accuracy = [];
% for i = 1:length(Y_testcb)
%             turenum = 0;
%     for n = 1:length(Y_testcb{i,1})
%         if(YPredcb{i,1}(n) == Y_testcb{i,1}(n))
%             turenum = turenum + 1;
%             accuracy(i,1) = turenum/(length(Y_testcb{i,1}));
%         end
%     end
% end
% accuracy_averagecb = mean(accuracy,1);
% %% 25pdb
% YPredpdb = classify(net,X_testpdb, ...
%       'MiniBatchSize',3, ...
%       'SequenceLength','longest');
% accuracy = [];
% for i = 1:length(Y_testpdb)
%             turenum = 0;
%     for n = 1:length(Y_testpdb{i,1})
%         if(YPredpdb{i,1}(n) == Y_testpdb{i,1}(n))
%             turenum = turenum + 1;
%             accuracy(i,1) = turenum/(length(Y_testpdb{i,1}));
%         end
%     end
% end
% accuracy_averagepdb = mean(accuracy,1);
toc;