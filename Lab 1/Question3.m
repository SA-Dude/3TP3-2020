% John Wyeth
% 400171677
num_bins = 20;
alpha = 7;
beta = -1070;

image = imread("ee3tp3picture2020.png");
image_of_doubles = double(image);

% Applying the constants (alpha) and (beta) to a new matrix of pixels
new_image_of_doubles = alpha .* image_of_doubles + beta;

% Generating the histogram of byte values and their quanitity for each
[n_elements, centers] = hist(new_image_of_doubles(:), num_bins);
bar(centers, n_elements);
xlim([0, 255]);

% Saving the new image as 'saved_image.png'
image_to_save = uint8(new_image_of_doubles);
imwrite(image_to_save, "saved_image.png");