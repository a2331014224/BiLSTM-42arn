%% 这段程序是制做42+PSSM特征训练集的
clear;clear all;
load cull_15125_arn42.mat;
%% 提取dssp,pssm和arn
row_d=[];row_p=[]; row_a=[];column=1;
dssp = cell(row_d,1); pssm = cell(row_p,1);arn = cell(row_a,1);
for i=1:length(SS)
    if(isempty(SS{1,i}))
        i=i+1;
    else
        if ((length(SS{1,i}.arn42)==length(SS{1,i}.pssm62))&&(length(SS{1,i}.arn42)==length(SS{1,i}.dssp)))
            dssp{column,1}=SS{1,i}.dssp;
            pssm{column,1}=SS{1,i}.pssm62;
            arn{column,1}=SS{1,i}.arn42;
            column=column+1;
        end
    end
end
fea = [];
for s=1:length(arn)
    fea{s,1} = [arn{s,1},pssm{s,1}];
end
fea = cellfun(@(x){x'},fea);
%% 对DSSP做3态转换
for u=1:length(dssp)
    U=length(dssp{u,1});
    for i=1:U
        if(dssp{u,1}(i)=='H'||dssp{u,1}(i)=='G'||dssp{u,1}(i)=='I')
            dssp{u,1}(i)='H';%G H I 为 H
        else
            if(dssp{u,1}(i)=='E'||dssp{u,1}(i)=='B')
                dssp{u,1}(i)='E';% B E 为E
            else
                dssp{u,1}(i)='C';%其他的都为C
            end
        end
    end
end
%% 构建训练集和测试集
% 把dssp每一个单元的数据由字符串转换成字符向量
a=[];
b=[];
for i=1:length(dssp)
    data=dssp{i,1};
    b=[];
    for j=1:length(data)
        b{1,j}=data(j);
    end
    a{1,i}=b;
end
a = cellfun(@(x){categorical(x)},a);
dssp2 =a';
%% 全部作为训练集
X_train = fea(:,:);
Y_train = dssp2(:,:);
sequenceLengths = cellfun(@(X) size(X,2), X_train01);
[sequenceLengthsSorted,idx] = sort(sequenceLengths);
X_train01 = X_train01(idx);
sequenceLengths = cellfun(@(X) size(X,2), Y_train01);
[sequenceLengthsSorted,idx] = sort(sequenceLengths);
Y_train01 = Y_train01(idx);
% %% 3折验证
% % 分三分
% fea01 = fea(1:4951);
% dssp01 = dssp2(1:4951);
% fea02 = fea(4952:9903);
% dssp02 = dssp2(4952:9903);
% fea03 = fea(9903:14855);
% dssp03 = dssp2(9903:14855);
% % 制作01
% X_train01 = [fea01;fea02];
% Y_train01 = [dssp01;dssp02];
% X_test01 = fea03;
% Y_test01 = dssp03;
% sequenceLengths = cellfun(@(X) size(X,2), X_train01);
% [sequenceLengthsSorted,idx] = sort(sequenceLengths);
% X_train01 = X_train01(idx);
% sequenceLengths = cellfun(@(X) size(X,2), Y_train01);
% [sequenceLengthsSorted,idx] = sort(sequenceLengths);
% Y_train01 = Y_train01(idx);
% % 制作02
% X_train02 = [fea01;fea03];
% Y_train02 = [dssp01;dssp03];
% X_test02 = fea02;
% Y_test02 = dssp02;
% sequenceLengths = cellfun(@(X) size(X,2), X_train02);
% [sequenceLengthsSorted,idx] = sort(sequenceLengths);
% X_train02 = X_train02(idx);
% sequenceLengths = cellfun(@(X) size(X,2), Y_train02);
% [sequenceLengthsSorted,idx] = sort(sequenceLengths);
% Y_train02 = Y_train02(idx);
% % 制作03
% X_train03 = [fea02;fea03];
% Y_train03 = [dssp02;dssp03];
% X_test03 = fea01;
% Y_test03 = dssp01;
% sequenceLengths = cellfun(@(X) size(X,2), X_train03);
% [sequenceLengthsSorted,idx] = sort(sequenceLengths);
% X_train03 = X_train03(idx);
% sequenceLengths = cellfun(@(X) size(X,2), Y_train03);
% [sequenceLengthsSorted,idx] = sort(sequenceLengths);
% Y_train03 = Y_train03(idx);

sequenceLengths = cellfun(@(X) size(X,2), X_test10);
[sequenceLengthsSorted,idx] = sort(sequenceLengths);
X_test10 = X_test10(idx);
sequenceLengths = cellfun(@(X) size(X,2), Y_test10);
[sequenceLengthsSorted,idx] = sort(sequenceLengths);
Y_test10 = Y_test10(idx);