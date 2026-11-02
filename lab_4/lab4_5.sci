// Đọc ảnh và chuyển sang ảnh xám
img = imread("C:\Users\NGUYEN TAM NHU\Documents\HK261\XLTHS\Scilab_2412545_NguyenTamNhu\lab_4\picture.jpg"); 
if size(img, 3) == 3 then
    gray_img = rgb2gray(img);
else
    gray_img = img;
end

// Cân bằng Histogram 
[counts, bins] = imhist(gray_img);
cdf = double(cumsum(counts)) / double(sum(counts)); 

// Ánh xạ và ép kiểu bắt buộc về uint8 để tránh lỗi tràn màu trắng
eq_img = uint8(255 * cdf(double(gray_img) + 1));

// Làm mờ ảnh
h_blur = fspecial('gaussian', [5 5], 1.5);
blur_img = imfilter(gray_img, h_blur);

// Hiển thị kết quả trong đồ họa
subplot(2,3,1); imshow(gray_img); title('Ảnh xám gốc');
subplot(2,3,2); imshow(eq_img); title('Ảnh sau cân bằng Histogram');
subplot(2,3,3); imshow(blur_img); title('Ảnh làm mờ (Blurring)');

[counts_orig, bins_orig] = imhist(gray_img);
[counts_eq, bins_eq] = imhist(eq_img);

subplot(2,3,4); 
plot2d(bins_orig, counts_orig, style=2); 
title('Histogram ảnh gốc');
xlabel('Mức xám'); ylabel('Số lượng pixel');

subplot(2,3,5); 
plot2d(bins_eq, counts_eq, style=5); 
title('Histogram cân bằng');
xlabel('Mức xám'); ylabel('Số lượng pixel');
