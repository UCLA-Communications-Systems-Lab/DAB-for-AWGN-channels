function MI = MutualInformation(pX,xSupport,N)
% we calculate MI as h(Y) - h(y|x), since h(y|x) is easily found, and need
% not be computed. 
% only PY needs to be passed if we assume that the noise P(y|x) is AWGN
% independant of input 

    
hYgivenX = 0.5*log2(2*pi*exp(1)*N);

fy = @(y) pX.'*gaussian(y,xSupport,N);
dh = @(y) -fy(y).*log2(fy(y));
xmax = max(xSupport);
xmin = min(xSupport);
pad = 10*sqrt(N);
if length(xSupport) == 2 && xSupport(2) - xSupport(1) > 20*sqrt(N)
    hY = integral(dh, xmin-pad,xmin + pad)+integral(dh, xmax-pad,xmax + pad);
    MI = hY - hYgivenX;
else
    hY = integral(dh, xmin-pad,xmax + pad);
    MI = hY - hYgivenX;
end


end