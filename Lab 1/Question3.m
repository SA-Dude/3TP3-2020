% John Wyeth
% 400171677
num_bins = 20;
alpha = 7;
beta = -1070;

image = imread("ee3tp3picture2020.png");
image_of_doubles = double(image);

new_image_of_doubles = alpha .* image_of_doubles + beta;

[n_elements, centers] = hist(new_image_of_doubles(:), num_bins);
bar(centers, n_elements);
xlim([0, 255]);

imshow(uint8(new_image_of_doubles));