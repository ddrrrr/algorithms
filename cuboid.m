% cuboid
x_lim = [0,400];
y_lim = [0,345];
z_lim = [0,8];
c(1,1,:) = [0,200,100];

[x,y] = meshgrid(x_lim,y_lim);
for z = z_lim
    surf(x,y,z*ones(2),repmat(c,[2,2,1]),'FaceAlpha',0.2);
    hold on;
end
x = repmat([x_lim,fliplr(x_lim),x_lim(1)],[2,1]);
y = repmat([reshape([y_lim;y_lim],[1,4]),y_lim(1)],[2,1]);
z = repmat(z_lim',[1,5]);
surf(x,y,z,repmat(c,[2,5,1]),'FaceAlpha',0.2);

xlim(x_lim*1.1-max(x_lim)*0.05);
ylim(x_lim*1.1-(max(x_lim)*1.1-max(y_lim))*0.5);
zlim(z_lim*1.1-max(z_lim)*0.05);
