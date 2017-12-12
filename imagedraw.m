function [  ] = imagedraw( image_width, image_height, image_num, image_outnum )
% integer image_width, image_height
% string image_num, image_outnum
set(gca, 'Fontname', 'Times New Roman', 'Fontsize', 10);
set(gcf,'Unit','centimeters','Position',[1,1,image_width,image_height])
   
print(strcat('-f',image_num),'-r600',image_outnum,'-djpeg'); % 出现下划线符号，需要加.jpg拓展名！
img=imread(strcat(image_outnum,'.jpg'));
imwrite(img,strcat(image_outnum,'.tif'), 'tiff', 'Resolution',600); 

end

