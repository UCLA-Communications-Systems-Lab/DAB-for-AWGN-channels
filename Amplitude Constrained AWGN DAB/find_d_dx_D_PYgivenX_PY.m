function [d_dx_D_PYgivenX_PY]  = find_d_dx_D_PYgivenX_PY(PY, PYgivenX, x, xSupport, N)

f = @(y) PYgivenX(y,x); %p(y|x) with a fixed x
g = @(y) PY(y);

pad = 5*sqrt(N);
ymin = min(xSupport);
ymax = max(xSupport);
arg = @(y) ((y-x)/N).*f(y).*(log2(f(y)./g(y))+1/log(2));
d_dx_D_PYgivenX_PY = integral(arg, ymin - pad, ymax + pad);
% test 
% d_dx_D_PYgivenX_PY = integral(arg, 0-pad,1+pad);
end