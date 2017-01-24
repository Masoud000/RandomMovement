function [ x,y ] = changeDirection( x,y )
xstep = randn;
ystep = randn;
x = x - sign(x)*abs(xstep);
y = y - sign(y)*abs(ystep);
end







