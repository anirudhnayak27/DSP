f = 1;     
sps = 10;    
Fs = sps*f; 
dt = 1/Fs;  
t = (0:dt:pi); 
x = sin(2*pi*f*t);
N = input("Enter No of samples: ");


subplot(4,1,1)
stem(t,x)
title('Time domain plot')
if (N>=length(x))
    X = calculateDFT(x,N);
end

y=[];
for i=1:length(X)
     y(i)=magnitude(X(i));
end
a=0:1:N-1;
subplot(4,1,2)
stem(a,y)
title('Magnitude Plot')


z=[];
for i=1:length(X)
     z(i)=phase(X(i));
end
subplot(4,1,3)
stem(a,z)
title('Phase Plot')
 
xn=calculateIDFT(X,N);
subplot(4,1,4)
stem(a,xn)
title('IDFT plot')





