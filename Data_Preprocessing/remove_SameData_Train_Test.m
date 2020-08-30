%% 本程序找出了42集团基训练集和casp9--casp12,cb513,pdb25中相同的数据
clear;clear all;
load casp9_pssm_20.mat;
load casp10_pssm_20.mat;
load casp11_pssm_20.mat;
load casp12_pssm_20.mat;
load rePDB25Seq.mat;
load cb513_PSSM_GHi_20.mat
load cull_15125_arn42.mat;
%% 提取dssp,pssm和sequence
row_d=[];row_p=[]; row_a=[];column=1;
dssp = cell(row_d,1); pssm = cell(row_p,1);seq = cell(row_a,1);
for i=1:length(SS)
    if(isempty(SS{1,i}))
        i=i+1;
    else
        if ((length(SS{1,i}.arn42)==length(SS{1,i}.pssm62))&&(length(SS{1,i}.arn42)==length(SS{1,i}.dssp)))
            dssp{column,1}=SS{1,i}.dssp;
            pssm{column,1}=SS{1,i}.pssm62;
            seq{column,1}=SS{1,i}.seq;
            column=column+1;
        end
    end
end
%% 
a=1;
for k = 1:length(seq)
       for k1= 1:length(casp9)
        if strcmp(seq{k,1},casp9{1,k1}.se)
            diffcasp9(a,1) = k;
            a=a+1;
        end
       end
end
for t9 = 1:length(diffcasp9)
    SS{1,(diffcasp9(t9,1))} = [];
end
%%
diff10=1;
for k10 = 1:length(seq)
       for kk10= 1:length(casp10)
        if strcmp(seq{k10,1},casp10{1,kk10}.se)
            diffcasp10(diff10,1) = k10;
            diff10=diff10+1;
        end
       end
end
for t10 = 1:length(diffcasp10)
    SS{1,(diffcasp10(t10,1))} = [];
end
%% 
diff11=1;
for k11 = 1:length(seq)
       for kk11= 1:length(casp11)
        if strcmp(seq{k11,1},casp11{1,kk11}.se)
            diffcasp11(diff11,1) = k11;
            diff11=diff11+1;
        end
       end
end
for t11 = 1:length(diffcasp11)
    SS{1,(diffcasp11(t11,1))} = [];
end
%%
diff12=1;
for k12 = 1:length(seq)
       for kk12= 1:length(casp12)
        if strcmp(seq{k12,1},casp12{1,kk12}.se)
            diffcasp12(diff12,1) = k12;
            diff12=diff12+1;
        end
       end
end
for t12 = 1:length(diffcasp12)
    SS{1,(diffcasp12(t12,1))} = [];
end
%% 
diffcb=1;
for kcb = 1:length(seq)
       for kkcb= 1:length(cb513)
        if strcmp(seq{kcb,1},cb513{1,kkcb}.seq)
            diffcb513(diffcb,1) = kcb;
            diffcb=diffcb+1;
        end
       end
end
for tcb = 1:length(diffcb513)
    SS{1,(diffcb513(tcb,1))} = [];
end
%% 原本PDB25的数据集有空值，所以需要进行剔除
diffpdb=1;
for s = 1:length(seq)
       for s1= 1:length(pdb25seq)
        if strcmp(seq{s,1},pdb25seq{s1,1})
            diffpdb25(diffpdb,1) = s;
            diffpdb=diffpdb+1;
        end
       end
end
for t25 = 1:length(diffpdb25)
    SS{1,(diffpdb25(t25,1))} = [];
end