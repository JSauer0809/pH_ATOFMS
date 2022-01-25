%Rough Data Analysis Benzoic Acid pH Experiments

allPID = cell2mat(experimentList(:,5));

%%
[tmpNeg, tmpPos] = get_NONint_spectrum_SUM(allPID,0.25:0.5:500.5,'Area',2);

%% create single index for experiments
experimentIndex = zeros(size(allPID,1),1);
for i = 1:size(experimentList, 1)
    [~,tmp] = intersect(allPID, experimentList{i,5}, 'rows', 'stable');
    experimentIndex(tmp,1) = i;
end

%% curation
% Early check showed mass spectra with no pos intensity were not useful.
% BadNeg file contains list of PIDs of unwanted spectra
% save('C:\Users\Jon\Desktop\FATES_Work\pH_Studies\Variables\BadNegs','BadNeg');
load('C:\Users\Jon\Desktop\FATES_Work\pH_Studies\Variables\BadNegs.mat');

[~,GoodNegIDX] = setdiff(allPID,BadNeg, 'rows', 'stable');
%%
%This section contains the variables of which particular masses of interest
%exist given a mass range of 1-500 with a bin size of .5
nBenzoicAcid = 2*[121 :0.5: 123];
nC6H5 = 2*[76.5 :0.5: 78];
n80Range = 2*[79 :0.5: 83];
nSodium = 2*[23];
nTighterBenzoate = 2*[121 121.5 123];
%Data Retrieval
%negBenzoicAll = sum(goodNeg(nBenzoicAcid,:));
%%
%PIDs in GoodNegIDX are used to generate a fresh set of workable pos and
%neg data
goodPID = allPID(GoodNegIDX,:); 
goodPos = tmpPos(:,GoodNegIDX);
goodNeg = tmpNeg(:,GoodNegIDX);
NegRel = bsxfun(@rdivide,goodNeg,sum(goodNeg));
PosRel = bsxfun(@rdivide,goodPos,sum(goodPos));
% goodSize =
% goodLP =

%Ok. So now we need to get the pos and neg spectra for each pH setting
%This requires 
%1: Getting PIDs of each pH using pooled laser power indices
%2: Comparing each pH range's PIDs to the "good" PIDs obtained above
%3: Using the get_NONint_Spectrum_SUM function to obtain spectra from
%   good PIDsnegBenzoicAll
%%
%experimentID by pH (all laser powers pooled)
pHIDXarray = {[1 2 3] [4 5 6] [7 8 9] [10 11 12] [13 14 15] [16 17 18] [19 20 21]};
pHName = [11 9 06 05 04 03 02];
pHIDXcell = {[1 2 3 4 5 6 7]}; %initialize cell array
for j = 1:length(pHIDXarray) %Populates cell array with all the IDXs for each pH according to the order in pHName
[tmpIDx] = ismember(experimentIndex, (pHIDXarray{j}));
pHIDXcell{:,j} = tmpIDx; 
end
pHPIDcell = {[1 2 3 4 5 6 7]}; %initialize cell array
for k = 1:length(pHIDXcell) %Populates a cell array that contains all the PIDs at each pH in order of pHName
    tmpPID = allPID(cell2mat(pHIDXcell(1,k)),:);
    pHPIDcell{1,k} = tmpPID;
end
pHgoodPIDcell = cell(1,7);
pHgoodIDXcell = cell(1,7);

for p = 1:length(pHPIDcell) %intersects with the goodPID list to populate the cell array with only good PIDs and INST @ each pH
    tmpPID = pHPIDcell{:,p};
    [tmpGoodPID, tmpGoodIDX] = intersect(goodPID,tmpPID,'rows','stable');
    pHgoodPIDcell{:,p} = tmpGoodPID;
    pHgoodIDXcell{:,p} = tmpGoodIDX;%these good IDXs can now be used to call spectra from goodPos and goodNeg without reuploading the data every time!
end

%% quick grab of data to visualize in guifates
%grab all data for dustBioPID within dataset
select = experimentIndex > 22 & experimentIndex < 35;
partData = allPID(select,:);
% [tmpNeg,tmpPos] = get_NONint_spectrum_SUM(partData,0.25:0.5:300.5,'Area',2);
% tmpPos = goodPos(:,reefIDX'==2&goodSize>1.5 &goodSize<2);
% tmpNeg = goodNeg(:,reefIDX'==2&goodSize>1.5 &goodSize<2);
% [~, ~, datasetIDX] = intersect(partData, PARTidMat(:,1:2), 'stable', 'rows'); 
% sizeData = PARTdataMat(datasetIDX, PARTdataFlds.DA);
% timeData = PARTidMat(datasetIDX, 3);
% [tmpNeg,tmpPos] = get_NONint_spectrum_SUM(partData,0.25:0.5:300.5,'Area',2);

guiNeg = tmpNeg(:,select);
guiPos = tmpPos(:,select);
guiNegRel = bsxfun(@rdivide,guiNeg,sum(guiNeg));
guiPosRel = bsxfun(@rdivide,guiPos,sum(guiPos));
useMZdata = [fliplr(guiNegRel') zeros(size(partData,1),1) guiPosRel'];
MZvector = -500:0.5:500;

sizeData = sum(guiPos,1);
timeData = sum(guiNeg,1);
clustData = experimentIndex(select);
clustRel = ones(sum(select),1);
%%
% clustData = zeros(length(sizeData),1);
% clustData(nCA1_IDX) = 1;
% clustData(nCA2_IDX) = 2;
% clustData(nCA3_IDX) = 3;
% clustData(nCA4_IDX) = 4;
% clustData(nCA5_IDX) = 5;
% clustData(nCA6_IDX) = 6;
% clustData = clustData(select);
%%
GUIfates(useMZdata,MZvector,partData,timeData,sizeData,clustData,clustRel)
