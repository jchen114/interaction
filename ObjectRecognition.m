%% Create a cell of object images
clc; clear all; close all;
Objects = GetDataset('./GuptaDataset');
save('objects.mat', Objects);

%% Pick out which ones are phones, cups, flashlights.
