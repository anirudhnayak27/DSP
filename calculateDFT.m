function [X]=calculateDFT(x,N)  
  for i=0:N-1
      sum=0;
      for j= 1:length(x)
          p=exp((-1i * 2 * pi * (i) * (j-1))/N);
          y=x(j)*p;
          sum=sum+y;
      end
      X(i+1)=sum;
  end
  X=X;
end