function [XTrain, numTrainImages,XTest,YTest] = loadData()
%LOADDATA Load image test and training data here
trainImagesFile = 'train-images.idx3-ubyte';
testImagesFile = 't10k-images.idx3-ubyte';
testLabelsFile = 't10k-labels.idx1-ubyte';

XTrain = processImagesMNIST(trainImagesFile);
numTrainImages = size(XTrain,4);
XTest = processImagesMNIST(testImagesFile);
YTest = processLabelsMNIST(testLabelsFile);
end

