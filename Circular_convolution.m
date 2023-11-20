function [y]=Circular_convolution(xn,hn,N)
  X = calculateDFT(xn,N);
  H = calculateDFT(hn,N);
  Y = X .* H;
  y = calculateIDFT(Y,N);
  y = y;
end