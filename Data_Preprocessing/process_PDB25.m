clear;clear all;
load casp9arn42.mat;
load casp10arn42.mat;
load casp11arn42.mat;
load casp12arn42.mat;
load cb513arn42.mat;
load pdb25arn42.mat;
%% ��ȡdssp��pssm,�ŵ��µ�cell�з��㴦��
row_d=[];row_p=[]; column=1;
dssp = cell(row_d,1);
pssm = cell(row_p,1);
for i=1:length(cb513)
    if(isempty(cb513{1,i}))
        i=i+1;
    else
        if ((length(cb513{1,i}.arn42)==length(cb513{1,i}.pssm62))&&(length(cb513{1,i}.arn42)==length(cb513{1,i}.dssp)))
            dssp{column,1}=cb513{1,i}.dssp;
            pssm{column,1}=cb513{1,i}.pssm62;
            column=column+1;
        end
    end
end
pssm = cellfun(@(x){x'},pssm);
%% ��DSSP��3̬ת��
for u=1:length(dssp)
    U=length(dssp{u,1});
    for i=1:U
        if(dssp{u,1}(i)=='H'||dssp{u,1}(i)=='G'||dssp{u,1}(i)=='I')
            dssp{u,1}(i)='H';%G H I Ϊ H
        else
            if(dssp{u,1}(i)=='E'||dssp{u,1}(i)=='B')
                dssp{u,1}(i)='E';% B E ΪE
            else
                dssp{u,1}(i)='C';%�����Ķ�ΪC
            end
        end
    end
end
%% ����ѵ�����Ͳ��Լ�
% ��dsspÿһ����Ԫ���������ַ���ת�����ַ�����
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
%% ȫ����Ϊѵ����
X_testcb_20 = pssm;
Y_testcb_20 = dssp2;