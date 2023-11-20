x = [3 -1 0 1 3 2 0 1 2 1];
h = [1 1 1 0 0 0 0];
m = 3;
l = 5;
N = m + l -1;
x1 = x(1:l);
x2 = x(l+1:end);

x1 = [zeros(1,2),x1];
x2 = [x1(end-1:end),x2]; 
x3 = [x2(end-1:end),zeros(1,5)];

y1 = Circular_convolution(x1,h,N);
y2 = Circular_convolution(x2,h,N);
y3 = Circular_convolution(x3,h,N);

y1 = y1(3:end);
y2 = y2(3:end);
y3 = y3(3:4);

y = [y1,y2,y3]