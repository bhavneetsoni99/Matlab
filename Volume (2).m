function V = Volume (r,L,h)
% Volume is a function of radius, height and lenth of the cylinder
% r is radius of the cylinder
% L is the lenth of the cylinder
% h height of the liquid in cylinder not more than 2 times Radius

if h>2*r
    disp (' h can not be more than the diameter of the cylinder')
else
    h = 0:.1:h;

V=[(r^2*(acos((r-h)/r)))-((r-h).*((2*r*h-h.^2).^(1/2)))]*L
plot (V,h)
title('Volume with respect to h');
xlabel ('Volume (V - cu.mts )');
ylabel ('Height (h - mts)');
end
end