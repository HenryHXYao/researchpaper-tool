%% 设置图片大小，
% 文献中图片不宜太大，高度6cm左右即可！
% 注意print 打印图片后大小变化了！
figure(1)
%     xlabel('\omega/\omega_p')
    xlabel('$\hat{\omega}$','Interpreter','latex')
    ylabel('$\hat{y}$','Interpreter','latex')
%     ylabel('Y/L_0')
    xlim([0,2.25])
    ylim([0,0.2])
    ylim([-20,25])
    set(gca,'Xtick',[0:0.25:2.25])
    set(gca,'Ytick',[0:0.2:1])
    grid on
%     title(['\alpha=',num2str(Alpha),',\it{\theta_0}\rm=',num2str(Theta0), '°, \it{b}\rm=',num2str(b)])
    set(gca, 'Fontname', 'Times New Roman', 'Fontsize', 10);
    set(gcf,'Unit','centimeters','Position',[1,1,10,5])
    box on
    set (gcf,'windowstyle','normal') % figure编辑后恢复正常大小
    set(gcf,'Position',[2,2,12,6]);
    
    figure(1)
    xlabel('$\hat{\omega}$','Interpreter','latex')
    ylabel('$\hat{Y}$','Interpreter','latex')
    xlim([0,2])
    ylim([0,0.8])
    grid on
     box on
%     title(['\it{P}\rm=',num2str(P_j)])
    title('$\hat{P}$=0.01','Interpreter','latex')
    title('$\hat{P}$=0.04','Interpreter','latex')
    set(gcf,'Units','centimeters');
    set(gcf,'Position',[2,2,12,6]);
    set(gca, 'Fontname', 'Times New Roman', 'Fontsize', 10);
    set(gca,'Xtick',[0:0.25:2])
    set(gca,'Ytick',[0:0.2:0.8])
    
    
    
    
    figure(1)
    % xlabel('\omega/\omega_p')
 xlabel('$\hat{\omega}$','Interpreter','latex')
 ylabel('\it{T_d}\rm (dB)')
xlim([0,2.5])
ylim([-25,30])
box on
grid on
title(['\it{P}\rm=',num2str(P_j)])
set(gcf,'Units','centimeters');
set(gca, 'Fontname', 'Times New Roman', 'Fontsize', 10);
% figure_FontSize=10;
% set(get(gca,'XLabel'),'FontSize',figure_FontSize,'Vertical','top');
% set(get(gca,'YLabel'),'FontSize',figure_FontSize,'Vertical','middle');
set(gcf,'Position',[2,2,12,6])
set(gca,'Xtick',[0:0.25:2.5])

%% 保存幅频曲线、相位差和传递率
% 当前目录下处理图片、保存图片！

%     set(gcf, 'PaperPositionMode', 'manual');
%     set(gcf, 'PaperUnits', 'centimeters');
%     set(gcf, 'PaperPosition', [0 0 10 6]);  
    % print打印图片大小变化了，需要设置！ 但是设置后图片大小还是变化了！
    % print打印时不需要设置图片大小，不影响！
    % 我用PS打开图片，发现大小并没有变化，jpg格式粘贴到word中大小会改变，tif格式粘贴到word中大小不会改变！ 因此，没有问题！
    figure(1)
    fig_number=11;
    P_j=0.03;
    e=0.05;
    print('-f1','-r600',strcat(num2str(fig_number),'_P_',num2str(P_j),'.jpg'),'-djpeg'); % 出现下划线符号，需要加.jpg拓展名！
    img=imread(strcat(num2str(fig_number),'_P_',num2str(P_j),'.jpg'));
    imwrite(img,strcat(num2str(fig_number),'_P_',num2str(P_j),'.tif'), 'tiff', 'Resolution',600); 
    % 重新保存fig
    saveas(1,strcat(num2str(fig_number),'_P_',num2str(P_j),'_final_','.fig'))  % 最终版的fig，可以用于网站提交！
%  disp('画图完毕！')