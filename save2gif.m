function save2gif(fig_num,filename,delaytime)
% Functionility: 
% to save current figure as one frame of gif. 
%(it shall be used in for/while loop after drawnow sentence,so that all the images can be merged together)
% Input:
%     current figure frame number
%     filename
%     delay time to update the gif file (recommanded 0.2s)
% Output:
%     gif file named as filename
% % Example: 
% save2gif(pic_num,'lalala.gif',0.2)
% Date of the update:   2020.Okt.22

F=getframe(gcf);
I=frame2im(F);
[I,map]=rgb2ind(I,256);
if fig_num == 1
    imwrite(I,map,filename,'gif','Loopcount',inf,'DelayTime',delaytime);
else
    imwrite(I,map,filename,'gif','WriteMode','append','DelayTime',delaytime);
end
end