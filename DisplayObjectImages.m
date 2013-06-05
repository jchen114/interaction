clc; clear all; close all;
load objects.mat;
figure(1);
I = [];
objectImages = struct('flashlight', I, 'spraycan', I, 'cup', I, 'telephone', I);
flashlightIndex = 1;
spraycanIndex = 1;
cupIndex = 1;
telephoneIndex = 1;
for i = 1 : length(objects)
    image(objects{i});
    index = input('key: flashlight = 1; spraycan = 2; cup = 3; telephone = 4; \ncategory for image: ');
    switch index
        case 1
            %flashlight
            objectImages.flashlight.image{flashlightIndex} = objects{i};
            %objectImages.flashlight.center{flashlightIndex} = center{i};
            flashlightIndex = flashlightIndex + 1;
        case 2
            %spray can
            objectImages.spraycan.image{spraycanIndex} = objects{i};
            %objectImages.spraycan.center{spraycanIndex} = center{i};
            spraycanIndex = spraycanIndex + 1;
        case 3
            %cup
            objectImages.cup.image{cupIndex} = objects{i};
            %objectImages.cup.center{cupIndex} = center{i};
            cupIndex = cupIndex + 1;
        case 4
            %telephone
            objectImages.telephone.image{telephoneIndex} = objects{i};
            %objectImages.telephone.center{telephoneIndex} = center{i};
            telephoneIndex = telephoneIndex + 1;
        otherwise
            disp('try again');
            i = i - 1;
    end
end