%% 生成42基团
clear all;
load ('casp9_pssm_20.mat')
load ('casp10_pssm_20.mat')
load ('casp11_pssm_20.mat')
load ('casp12_pssm_20.mat')
load ('cb513_PSSM_GHi_20.mat')
load ('rePDB25.mat')
load ('arn.mat')
load ('BeginNotG.mat')
load ('EndArn.mat')
for p =1:length(cb513)
    se = regexp(cb513{1,p}.se,'.','match');
    for s=1:length(se)
        if (se{1,s}>='a' && se{1,s}<='z')
            se{1,s} = upper(se{1,s});
        end
        cb513{1,p}.arn42 = [];
        if (se{1,1} == 'G')
            cb513{1,p}.arn42 = [arn_beginG];
        elseif (se{1,1}== 'A')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnA1];
        elseif (se{1,1}== 'C')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnC1];
        elseif (se{1,1}== 'D')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnD1];
        elseif( se{1,1}== 'F')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnF1];
        elseif (se{1,1}== 'E')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnE1];
        elseif (se{1,1}== 'H')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnH1];
        elseif (se{1,1}== 'I')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnI1];
        elseif (se{1,1}== 'K')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnK1];
        elseif (se{1,1}== 'L')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnL1];
        elseif (se{1,1}== 'M')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnM1];
        elseif (se{1,1}== 'N')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnN1];
        elseif (se{1,1}== 'P')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnP1];
        elseif (se{1,1}== 'Q')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnQ1];
        elseif (se{1,1}== 'R')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnR1];
        elseif (se{1,1}== 'S')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnS1];
        elseif (se{1,1}== 'T')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnT1];
        elseif (se{1,1}== 'V')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnV1];
        elseif (se{1,1}== 'W')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnW1];
        elseif (se{1,1}== 'Y')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnY1];
        else
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnother1];
        end
        for i = 2:(length(se)-1)
            if (se{1,i}== 'A')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnA];
            elseif (se{1,i}== 'C')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnC];
            elseif (se{1,i}== 'D')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnD];
            elseif (se{1,i}== 'F')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnF];
            elseif (se{1,i}== 'E')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnE];
            elseif (se{1,i}== 'G')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnG];
            elseif (se{1,i}== 'H')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnH];
            elseif (se{1,i}== 'I')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnI];
            elseif (se{1,i}== 'K')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnK];
            elseif (se{1,i}== 'L')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnL];
            elseif (se{1,i}== 'M')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnM];
            elseif (se{1,i}== 'N')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnN];
            elseif (se{1,i}== 'P')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnP];
            elseif (se{1,i}== 'Q')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnQ];
            elseif (se{1,i}== 'R')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnR];
            elseif (se{1,i}== 'S')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnS];
            elseif (se{1,i}== 'T')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnT];
            elseif (se{1,i}== 'V')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnV];
            elseif (se{1,i}== 'W')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnW];
            elseif (se{1,i}== 'Y')
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnY];
            else
                cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnother];
            end
        end
        if (se{end}== 'A')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnAend];
        elseif (se{end}== 'C')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnCend];
        elseif (se{end}== 'D')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnDend];
        elseif (se{end}== 'F')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnFend];
        elseif (se{end}== 'E')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnEend];
        elseif (se{end}== 'G')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnGend];
        elseif (se{end}== 'H')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnHend];
        elseif (se{end}== 'I')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnIend];
        elseif (se{end}== 'K')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnKend];
        elseif (se{end}== 'L')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnLend];
        elseif( se{end}== 'M')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnMend];
        elseif (se{end}== 'N')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnNend];
        elseif (se{end}== 'P')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnPend];
        elseif (se{end}== 'Q')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnQend];
        elseif (se{end}== 'R')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnRend];
        elseif (se{end}== 'S')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnSend];
        elseif (se{end}== 'T')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnTend];
        elseif (se{end}== 'V')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnVend];
        elseif (se{end}== 'W')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnWend];
        elseif (se{end}== 'Y')
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnYend];
        else
            cb513{1,p}.arn42 = [cb513{1,p}.arn42;arnotherend];
        end
    end
end

for p =1:length(pdb25)
    seq = regexp(pdb25{1,p}.seq,'.','match');
    for s=1:length(seq)
        if (seq{1,s}>='a' && seq{1,s}<='z')
            seq{1,s} = upper(seq{1,s});
        end
        pdb25{1,p}.arn42 = [];
        if (seq{1,1} == 'G')
            pdb25{1,p}.arn42 = [arn_beginG];
        elseif (seq{1,1}== 'A')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnA1];
        elseif (seq{1,1}== 'C')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnC1];
        elseif (seq{1,1}== 'D')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnD1];
        elseif( seq{1,1}== 'F')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnF1];
        elseif (seq{1,1}== 'E')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnE1];
        elseif (seq{1,1}== 'H')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnH1];
        elseif (seq{1,1}== 'I')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnI1];
        elseif (seq{1,1}== 'K')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnK1];
        elseif (seq{1,1}== 'L')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnL1];
        elseif (seq{1,1}== 'M')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnM1];
        elseif (seq{1,1}== 'N')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnN1];
        elseif (seq{1,1}== 'P')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnP1];
        elseif (seq{1,1}== 'Q')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnQ1];
        elseif (seq{1,1}== 'R')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnR1];
        elseif (seq{1,1}== 'S')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnS1];
        elseif (seq{1,1}== 'T')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnT1];
        elseif (seq{1,1}== 'V')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnV1];
        elseif (seq{1,1}== 'W')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnW1];
        elseif (seq{1,1}== 'Y')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnY1];
        else
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnother1];
        end
        for i = 2:(length(seq)-1)
            if (seq{1,i}== 'A')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnA];
            elseif (seq{1,i}== 'C')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnC];
            elseif (seq{1,i}== 'D')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnD];
            elseif (seq{1,i}== 'F')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnF];
            elseif (seq{1,i}== 'E')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnE];
            elseif (seq{1,i}== 'G')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnG];
            elseif (seq{1,i}== 'H')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnH];
            elseif (seq{1,i}== 'I')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnI];
            elseif (seq{1,i}== 'K')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnK];
            elseif (seq{1,i}== 'L')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnL];
            elseif (seq{1,i}== 'M')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnM];
            elseif (seq{1,i}== 'N')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnN];
            elseif (seq{1,i}== 'P')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnP];
            elseif (seq{1,i}== 'Q')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnQ];
            elseif (seq{1,i}== 'R')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnR];
            elseif (seq{1,i}== 'S')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnS];
            elseif (seq{1,i}== 'T')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnT];
            elseif (seq{1,i}== 'V')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnV];
            elseif (seq{1,i}== 'W')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnW];
            elseif (seq{1,i}== 'Y')
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnY];
            else
                pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnother];
            end
        end
        if (seq{end}== 'A')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnAend];
        elseif (seq{end}== 'C')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnCend];
        elseif (seq{end}== 'D')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnDend];
        elseif (seq{end}== 'F')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnFend];
        elseif (seq{end}== 'E')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnEend];
        elseif (seq{end}== 'G')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnGend];
        elseif (seq{end}== 'H')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnHend];
        elseif (seq{end}== 'I')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnIend];
        elseif (seq{end}== 'K')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnKend];
        elseif (seq{end}== 'L')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnLend];
        elseif( seq{end}== 'M')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnMend];
        elseif (seq{end}== 'N')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnNend];
        elseif (seq{end}== 'P')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnPend];
        elseif (seq{end}== 'Q')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnQend];
        elseif (seq{end}== 'R')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnRend];
        elseif (seq{end}== 'S')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnSend];
        elseif (seq{end}== 'T')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnTend];
        elseif (seq{end}== 'V')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnVend];
        elseif (seq{end}== 'W')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnWend];
        elseif (seq{end}== 'Y')
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnYend];
        else
            pdb25{1,p}.arn42 = [pdb25{1,p}.arn42;arnotherend];
        end
    end
end

