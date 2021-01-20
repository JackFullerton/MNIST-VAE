% Tests the generative nature of the VAE
function generate(decoderNet, latentDim)
% dlarray object containing 25 randomly generated encodings
randomNoise = dlarray(randn(1,1,latentDim,25),'SSCB');
% Pass random encodings through the decoder network
generatedImage = sigmoid(predict(decoderNet, randomNoise));
generatedImage = extractdata(generatedImage);

% Plot the outputs
f3 = figure;
figure(f3)
imshow(imtile(generatedImage, "ThumbnailSize", [100,100]))
title("Generated samples of digits")
drawnow
end

