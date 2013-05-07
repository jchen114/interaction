%   Author:         I.Bogun (ibogun2010@my.fit.edu)
%   Date  :         03/07/2013
%% Plot trajectories seperately
close all;
record=processedData(1);
trajectory=record.trajectoryRighthand.singlePointArray;
tGrasp=record.tGrasp;
tInteractionStart=record.tInteractionStart;
tInteractionStop=record.tInteractionStop;
tPutBack=record.tPutBack-1;


figure;
subplot(1,4,1);
I1=imread('GuptaDataset/c01/018.jpg');


imshow(I1);


hold on;

lineWidth=3;

plot(trajectory(1:tGrasp,1),trajectory(1:tGrasp,2),'Color','blue','lineWidth',lineWidth);
hold on;

trajectory=record.trajectoryObject.singlePointArray;
plot(trajectory(1:tGrasp,1),trajectory(1:tGrasp,2),'Color','red','lineWidth',lineWidth);

hold off;



subplot(1,4,2);
I1=imread('GuptaDataset/c01/033.jpg');


imshow(I1);


hold on;


trajectory=record.trajectoryRighthand.singlePointArray;
plot(trajectory(tGrasp:tInteractionStart,1),trajectory(tGrasp:tInteractionStart,2),'Color','blue','lineWidth',lineWidth);
hold on;

trajectory=record.trajectoryObject.singlePointArray;
plot(trajectory(tGrasp:tInteractionStart,1),trajectory(tGrasp:tInteractionStart,2),'Color','red','lineWidth',lineWidth);

hold off;



subplot(1,4,3);
I1=imread('GuptaDataset/c01/050.jpg');


imshow(I1);


hold on;


trajectory=record.trajectoryRighthand.singlePointArray;
plot(trajectory(tInteractionStart:tInteractionStop,1),trajectory(tInteractionStart:tInteractionStop,2),'Color','blue','lineWidth',lineWidth);
hold on;

trajectory=record.trajectoryObject.singlePointArray;
plot(trajectory(tInteractionStart:tInteractionStop,1),trajectory(tInteractionStart:tInteractionStop,2),'Color','red','lineWidth',lineWidth);

hold off;



subplot(1,4,4);
I1=imread('GuptaDataset/c01/068.jpg');


imshow(I1);


hold on;


trajectory=record.trajectoryRighthand.singlePointArray;
plot(trajectory(tInteractionStart:tInteractionStop,1),trajectory(tInteractionStart:tInteractionStop,2),'Color','blue','lineWidth',lineWidth);
hold on;
plot(trajectory(tInteractionStop:tPutBack,1),trajectory(tInteractionStop:tPutBack,2),'Color','blue','lineWidth',lineWidth);
hold on;

trajectory=record.trajectoryObject.singlePointArray;
plot(trajectory(tInteractionStop:tPutBack,1),trajectory(tInteractionStop:tPutBack,2),'Color','red','lineWidth',lineWidth);

hold off;

%% Plotting different interactions

figure;
yValue=443;
record=processedData(2);

tGrasp=record.tGrasp;
tInteractionStart=record.tInteractionStart;
tInteractionStop=record.tInteractionStop;



subplot(3,3,1);
I1=imread('GuptaDataset/c09/050.jpg');


imshow(I1);


hold on;


trajectory=record.trajectoryRighthand.singlePointArray;
plot(trajectory(tInteractionStart:tInteractionStop,1),trajectory(tInteractionStart:tInteractionStop,2),'Color','blue','lineWidth',lineWidth);
hold on;

trajectory=record.trajectoryObject.singlePointArray;
plot(trajectory(tInteractionStart:tInteractionStop,1),trajectory(tInteractionStart:tInteractionStop,2),'Color','red','lineWidth',lineWidth);
text(555,yValue,['drinking'],...
	'HorizontalAlignment','center',... 
	'BackgroundColor',[0 0 .0],...
	'Margin',3);
hold off;


record=processedData(4);

tGrasp=record.tGrasp;
tInteractionStart=record.tInteractionStart;
tInteractionStop=record.tInteractionStop;



subplot(3,3,2);
I1=imread('GuptaDataset/c20/097.jpg');


imshow(I1);


hold on;


trajectory=record.trajectoryLefthand.singlePointArray;
plot(trajectory(tInteractionStart+40:tInteractionStop-30,1),trajectory(tInteractionStart+40:tInteractionStop-30,2),'Color','blue','lineWidth',lineWidth);
hold on;

trajectory=record.trajectoryObject.singlePointArray;
plot(trajectory(tInteractionStart+40:tInteractionStop-30,1),trajectory(tInteractionStart+40:tInteractionStop-30,2),'Color','red','lineWidth',lineWidth);
text(550,yValue,['spraying'],...
	'HorizontalAlignment','center',... 
	'BackgroundColor',[0 0 .0],...
	'Margin',3);
hold off;


record=processedData(5);

tGrasp=record.tGrasp;
tInteractionStart=record.tInteractionStart;
tInteractionStop=record.tInteractionStop;



subplot(3,3,3);
I1=imread('GuptaDataset/c23/108.jpg');


imshow(I1);


hold on;


trajectory=record.trajectoryRighthand.singlePointArray;
plot(trajectory(tInteractionStart:tInteractionStop,1),trajectory(tInteractionStart:tInteractionStop,2),'Color','blue','lineWidth',lineWidth);
hold on;

trajectory=record.trajectoryObject.singlePointArray;
plot(trajectory(tInteractionStart:tInteractionStop,1),trajectory(tInteractionStart:tInteractionStop,2),'Color','red','lineWidth',lineWidth);
text(465,yValue,['answering phone'],...
	'HorizontalAlignment','center',... 
	'BackgroundColor',[0 0 .0],...
	'Margin',3);
hold off;

record=processedData(6);

tGrasp=record.tGrasp;
tInteractionStart=record.tInteractionStart;
tInteractionStop=record.tInteractionStop;



subplot(3,3,4);
I1=imread('GuptaDataset/c24/063.jpg');


imshow(I1);


hold on;


trajectory=record.trajectoryRighthand.singlePointArray;
plot(trajectory(tInteractionStart:tInteractionStop,1),trajectory(tInteractionStart:tInteractionStop,2),'Color','blue','lineWidth',lineWidth);
hold on;

trajectory=record.trajectoryObject.singlePointArray;
plot(trajectory(tInteractionStart:tInteractionStop,1),trajectory(tInteractionStart:tInteractionStop,2),'Color','red','lineWidth',lineWidth);
text(510,yValue,['making a call'],...
	'HorizontalAlignment','center',... 
	'BackgroundColor',[0 0 .0],...
	'Margin',3);
hold off;


record=processedData(7);

tGrasp=record.tGrasp;
tInteractionStart=record.tInteractionStart;
tInteractionStop=record.tInteractionStop;



subplot(3,3,5);
I1=imread('GuptaDataset/c25/072.jpg');


imshow(I1);


hold on;


trajectory=record.trajectoryRighthand.singlePointArray;
plot(trajectory(tInteractionStart:tInteractionStop,1),trajectory(tInteractionStart:tInteractionStop,2),'Color','blue','lineWidth',lineWidth);
hold on;

trajectory=record.trajectoryObject.singlePointArray;
plot(trajectory(tInteractionStart:tInteractionStop,1),trajectory(tInteractionStart:tInteractionStop,2),'Color','red','lineWidth',lineWidth);

text(560,yValue,['lighting'],...
	'HorizontalAlignment','center',... 
	'BackgroundColor',[0 0 .0],...
	'Margin',3);
hold off;


record=processedData(8);

tGrasp=record.tGrasp;
tInteractionStart=record.tInteractionStart;
tInteractionStop=record.tInteractionStop;



subplot(3,3,6);
I1=imread('GuptaDataset/c27/126.jpg');


imshow(I1);


hold on;


trajectory=record.trajectoryRighthand.singlePointArray;
plot(trajectory(tInteractionStart:tInteractionStop,1),trajectory(tInteractionStart:tInteractionStop,2),'Color','blue','lineWidth',lineWidth);
hold on;

trajectory=record.trajectoryObject.singlePointArray;
plot(trajectory(tInteractionStart:tInteractionStop,1),trajectory(tInteractionStart:tInteractionStop,2),'Color','red','lineWidth',lineWidth);
text(560,yValue,['pouring'],...
	'HorizontalAlignment','center',... 
	'BackgroundColor',[0 0 .0],...
	'Margin',3);
figureHandle = gcf;
%# make all text in the figure to size 14 and bold
set(findall(figureHandle,'type','text'),'fontSize',14,'fontWeight','bold','color','y')
hold off;


