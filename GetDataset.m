function [objects] = GetDataset( datasetFolder )
%GetDataset
%   give it the folder of the dataset assumes format c(some number) i.e
%   c01, c09, etc.
%   objects will be a structure where each entry is the image.

%get the directories in the dataset folder
directories = dir(datasetFolder);

index = 1;
%get the names of the folders with the dataset
for i = 1 : length(directories)
    if(isempty(findstr(directories(i).name, '.')))
        datasets{index} = [directories(i).name];
        index = index + 1;
    end
end

datasets = datasets';

%start matching each dataset to its corresponding trajectories
load interpolatedFullData.mat;

Xspace = 50;
Yspace = 50;

for datasetNumber = 1 : length(processedData)
    %assume that the object can be located in the first frame
    data = strcat(datasetFolder, '/', datasets(datasetNumber), '/', '001.jpg');
    img = (imread(data{1})); 
    %figure('name','Frame');
    figure(1);
    image(img);
    title('Frame');
    %trajectory vector for each
    traj = processedData(datasetNumber).trajectoryObject.singlePointArray;
    %multiply image by a mask to get the object
    originOfObject = traj(1,:); %originofObject(1) is X direction, originOfObject(2) is Y direction
    imageMask = uint8(zeros(size(img,1), size(img,2), size(img,3)));
    %imageMask(originOfObject(1) - 15 : originOfObject(1) + 35, originOfObject(2) - 30 : originOfObject(2) + 20, : )  = 1;
    %size(img(1)) is y direction, size(img(2)) is x direction
    %originofObject(1) is X direction, originOfObject(2) is Y direction
    if(originOfObject(1) + Xspace > size(img,2))
        Xspace = size(img,2) - originOfObject(1);
    elseif(originOfObject(2) + Yspace > size(img,1))
        Yspace = size(img,1) - originOfObject(2);
    else
        Xspace = 50;
        Yspace = 50;
    end
    %imageMask (Ydirection, Xdirection,:)
    corner = [originOfObject(1) - Xspace, originOfObject(2) - Yspace];
    imageMask(originOfObject(2) - Yspace : originOfObject(2) + Yspace, originOfObject(1) - Xspace : originOfObject(1) + Xspace, : )  = 1;
    objectImage = imageMask .* img;
    %objectImage = objectImage(originOfObject(1) - 15 : originOfObject(1) + 35, originOfObject(2) - 30 : originOfObject(2) + 20, : );
    objectImage = objectImage(originOfObject(2) - Yspace : originOfObject(2) + Yspace, originOfObject(1) - Xspace : originOfObject(1) + Xspace, : );
    %figure('name', 'Object');
    figure(2);
    image(objectImage);
    %get object
    objects{datasetNumber}  = objectImage;
    %get the center of the object
end

end

