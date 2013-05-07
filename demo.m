%   Author:         I.Bogun (ibogun2010@my.fit.edu)
%   Date  :         03/07/2013

clc;
clear;

%% Demo code supporting the paper 
%'Recognizing Human-Object Interactions Using Sparse  Subspace Clustering'


%% Resample the data so that all trajectories have the same length
% Resample all trajectories to start from tMin and end on tMax so that the
% length is equal to (tMax-tMin)

tNewMin=3;
tNewMax=100;

% load the data
data=load('fullRawDataSet');
data=data.data;
record=data(1);

n=length(data);
processedAndNormalizedAndResampledData=repmat(record,n,1);

for i=1:n
    record=data(i);
    
    record=record.resample(tNewMin,tNewMax);
    processedAndNormalizedAndResampledData(i)=record;
end

ss='fullProcessedAndNormalizedAndResampledData.mat';
save(ss,'processedAndNormalizedAndResampledData');


%% Stack all the data into one big matrix


data=load('fullProcessedAndNormalizedAndResampledData');
data=data.processedAndNormalizedAndResampledData;



record=data(1);

recordMatrix=record.toRawVector;

colSize=length(data);
rawSize=length(recordMatrix);

dataMatrix=zeros(colSize,rawSize);

for i=1:colSize
    record=data(i);
    dataMatrix(i,:)=record.toRawVector;
end

dataMatrix=dataMatrix';
% data=load('fullProcessedAndNormalizedAndResampledData');
% data=data.processedAndNormalizedAndResampledData;

%% Set up ground truth data
load('groundTruth');
colSize=length(data);
groundTruth=zeros(1,colSize);

for i=1:colSize
    if (data(i).interactionName==interaction.drinking);
        groundTruth(1,i)=1;
    end
    if (data(i).interactionName==interaction.lighting);
        groundTruth(1,i)=2;
    end
    if (data(i).interactionName==interaction.pouring);
        groundTruth(1,i)=3;
    end
    if (data(i).interactionName==interaction.spraying);
        groundTruth(1,i)=4;
    end
    if (data(i).interactionName==interaction.talkingOnThePhone);
        groundTruth(1,i)=5;
    end
    if (data(i).interactionName==interaction.talkingOnThePhoneAndDialing);
        groundTruth(1,i)=6;
    end
end

% add path to the SSC code
addpath('SSC_1.0/');

display(' Results using code from the authors of SSC (parameter-dependent)');
% if you run code from the authors of SSC
mySSC;

display(' Results using parameter-independent version of SSC');
% or the one with error term
noiseAndOutlyingEntriesSSCproblem;

















