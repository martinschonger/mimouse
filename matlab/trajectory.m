%points = [0 0; 1 0; 1 1; 0 1; 0 2; 1 2];
%x = points(:,1);
%y = points(:,2);
t = 0:15;
x = [1 1 2 3 4 5 6 7 8 9 10 12 13 13 14 15];
y = [7 2 1 2 3 4 5 6 7 8  9  9  8  0 -1 -1];
%xx = 0:.25:10;
%yy = spline(x,y,xx);
%plot(x,y,'o',xx,yy)

%plot(x,y,x,y,'o');
%axis([-1.5 15.5 -1.5 15.5]);
%title('Waypoints for N-Point example');

figure;
plot(t,x,t,x,'o');
title('x vs. t');
axis([-1.5 15.5 -1.5 15.5]);

figure;
plot(t,y,t,y,'o');
title('y vs. t');
axis([-1.5 15.5 -1.5 15.5]);

figure;
plot(x,y,x,y,'o');
title('y vs. x');
axis([-1.5 15.5 -1.5 15.5]);
