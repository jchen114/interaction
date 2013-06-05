clear all; close all; clc;
run ./vlfeat/toolbox/vl_setup;
load objectImages.mat;

%% for flashlights
flashlight.image = cell(length(objectImages.flashlight), 1);
flashlight.scale = [];
flashlight.appearance = [];
flashlight.shape = [];
for i = 1 : length(objectImages.flashlight.image)
    objectImages.flashlight.image{i} = single(rgb2gray(objectImages.flashlight.image{i}));
    [flashlight.image{i}.f,  flashlight.image{i}.d] = vl_sift(objectImages.flashlight.image{i});
    flashlight.scale = [flashlight.scale flashlight.image{i}.f(3, : )];
    flashlight.appearance = [flashlight.appearance flashlight.image{i}.d];
    for j = 1 : size(flashlight.image{i}.f, 2)
        flashlight.shape = [flashlight.shape sqrt( (flashlight.image{i}.f(1, j) - 50)^2 + (flashlight.image{i}.f(2, j) - 50)^2 )];
    end
end
%Save Graph Data
if( exist('./Attributes/Flashlight', 'dir') == 0)
    mkdir('./Attributes/Flashlight');
end
%Scale
h = figure('visible', 'off');
flashlight.scale = flashlight.scale';
%normalize flashlight.scale
flashlight.scale = (flashlight.scale - mean(flashlight.scale)) / norm(flashlight.scale);
hist(flashlight.scale);
saveas(h, './Attributes/Flashlight/Scale', 'png');
%Shape
flashlight.shape = flashlight.shape';
%normalize
h = figure('visible', 'off');
flashlight.shape = (flashlight.shape - mean(flashlight.shape)) / norm(flashlight.shape);
hist(flashlight.shape);
saveas(h, './Attributes/Flashlight/Shape', 'png');



%% for spraycans
spraycan.image = cell(length(objectImages.spraycan), 1);
spraycan.scale = [];
spraycan.appearance = [];
spraycan.shape = [];
for i = 1 : length(objectImages.spraycan.image)
    objectImages.spraycan.image{i} = single(rgb2gray(objectImages.spraycan.image{i}));
    [spraycan.image{i}.f,  spraycan.image{i}.d] = vl_sift(objectImages.spraycan.image{i});
    spraycan.scale = [spraycan.scale spraycan.image{i}.f(3, : )];
    spraycan.appearance = [spraycan.appearance spraycan.image{i}.d];
    for j = 1 : size(spraycan.image{i}.f, 2)
        spraycan.shape = [spraycan.shape sqrt( (spraycan.image{i}.f(1, j) - 50)^2 + (spraycan.image{i}.f(2, j) - 50)^2 )];
    end
end
%Save Graph Data
if( exist('./Attributes/Spraycan', 'dir') == 0)
    mkdir('./Attributes/Spraycan');
end
%Scale
h = figure('visible', 'off');
spraycan.scale = spraycan.scale';
%normalize spraycan.scale
spraycan.scale = (spraycan.scale - mean(spraycan.scale)) / norm(spraycan.scale);
hist(spraycan.scale);
saveas(h, './Attributes/Spraycan/Scale', 'png');
%Shape
spraycan.shape = spraycan.shape';
%normalize
h = figure('visible', 'off');
spraycan.shape = (spraycan.shape - mean(spraycan.shape)) / norm(spraycan.shape);
hist(spraycan.shape);
saveas(h, './Attributes/Spraycan/Shape', 'png');

%% for cups
cup.image = cell(length(objectImages.cup), 1);
cup.scale = [];
cup.appearance = [];
cup.shape = [];
for i = 1 : length(objectImages.cup.image)
    objectImages.cup.image{i} = single(rgb2gray(objectImages.cup.image{i}));
    [cup.image{i}.f,  cup.image{i}.d] = vl_sift(objectImages.cup.image{i});
    cup.scale = [cup.scale cup.image{i}.f(3, : )];
    cup.appearance = [cup.appearance cup.image{i}.d];
    for j = 1 : size(cup.image{i}.f, 2)
        cup.shape = [cup.shape sqrt( (cup.image{i}.f(1, j) - 50)^2 + (cup.image{i}.f(2, j) - 50)^2 )];
    end
end
%Save Graph Data
if( exist('./Attributes/Cup', 'dir') == 0)
    mkdir('./Attributes/Cup');
end
%Scale
h = figure('visible', 'off');
cup.scale = cup.scale';
%normalize cup.scale
cup.scale = (cup.scale - mean(cup.scale)) / norm(cup.scale);
hist(cup.scale);
saveas(h, './Attributes/Cup/Scale', 'png');
%Shape
cup.shape = cup.shape';
%normalize
h = figure('visible', 'off');
cup.shape = (cup.shape - mean(cup.shape)) / norm(cup.shape);
hist(cup.shape);
saveas(h, './Attributes/Cup/Shape', 'png');

%% for telephones
telephone.image = cell(length(objectImages.telephone), 1);
telephone.scale = [];
telephone.appearance = [];
telephone.shape = [];
for i = 1 : length(objectImages.telephone.image)
    objectImages.telephone.image{i} = single(rgb2gray(objectImages.telephone.image{i}));
    [telephone.image{i}.f,  telephone.image{i}.d] = vl_sift(objectImages.telephone.image{i});
    telephone.scale = [telephone.scale telephone.image{i}.f(3, : )];
    telephone.appearance = [telephone.appearance telephone.image{i}.d];
    for j = 1 : size(telephone.image{i}.f, 2)
        telephone.shape = [telephone.shape sqrt( (telephone.image{i}.f(1, j) - 50)^2 + (telephone.image{i}.f(2, j) - 50)^2 )];
    end
end
%Save Graph Data
if( exist('./Attributes/Telephone', 'dir') == 0)
    mkdir('./Attributes/Telephone');
end
%Scale
h = figure('visible', 'off');
telephone.scale = telephone.scale';
%normalize telephone.scale
telephone.scale = (telephone.scale - mean(telephone.scale)) / norm(telephone.scale);
hist(telephone.scale);
saveas(h, './Attributes/Telephone/Scale', 'png');
%Shape
telephone.shape = telephone.shape';
%normalize
h = figure('visible', 'off');
telephone.shape = (telephone.shape - mean(telephone.shape)) / norm(telephone.shape);
hist(telephone.shape);
saveas(h, './Attributes/Telephone/Shape', 'png');

