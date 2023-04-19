%points = [0 0; 1 0; 1 1; 0 1; 0 2; 1 2];
%x = points(:,1);
%y = points(:,2);
t = 0:15;

%consider max slope of both x/t and y/t -> take most restrictive
%t = [0 3:12 13 14 18 19 20];

x = [1 1 2 3 4 5 6 7 8 9 10 12 13 13 14 15];
y = [7 2 1 2 3 4 5 6 7 8  9  9  8  0 -1 -1];

tq = 0:0.01:15;
slope0 = 0;
slopeF = 0;
%xq = spline(t,[slope0 x slopeF],tq);
%yq = spline(t,[slope0 y slopeF],tq);
xq = makima(t,x,tq);
yq = makima(t,y,tq);

% plot spline in t-x, t-y and x-y space
figure;
plot(t,x,'o',tq,xq,':.');
axis([-1.5 20.5 -1.5 20.5]);
title('x vs. t');

figure;
plot(t,y,'o',tq,yq,':.');
axis([-1.5 20.5 -1.5 20.5]);
title('y vs. t');

figure;
plot(x,y,'o',xq,yq,':.');
axis([-1.5 20.5 -1.5 20.5]);
title('y vs. x');
