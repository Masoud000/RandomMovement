n = input('Enter the Number of Particles : ');
L = input('Enter the length of plane : ');
d = input('Enter the length of steps : ');
t = input('Enter the time of running : ');
xp = zeros(1,n);
yp = zeros(1,n);
cs = zeros(1,t);
figure,
for j=1:t
    scatter(xp,yp,'fill')
    axis([-L L -L L])
    drawnow
    xstep = randn(1,length(xp));
    ystep = randn(1,length(xp));
    xp = xp + d*xstep./sqrt(xstep.^2  + ystep.^2);
    yp = yp + d*ystep./sqrt(xstep.^2  + ystep.^2);
    [xp,yp] = sorption(xp,yp,L);
    cs(j) = n - length(xp);
end

figure,
plot(1:t,cs)
