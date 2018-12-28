function V = volume (r,L,h)
% Volume is a function of radius, height and lenth of the cylinder
% r is radius of the cylinder
% L is the lenth of the cylinder
% h height of the liquid in cylinder not more than 2 times Radius

if h>2*r
    disp (' h can not be more than the diameter of the cylinder')
else
   
R=2*r;
H (1)=0;
dh = .1;
HH (1) = 0;
for i = 1:R/dh
 H (i+1)= H(i) + dh;
 HH (i+1)= H(i+1)*H(i+1);
 v (i+1) = ({r^2*acos((r-H(i+1))/r)})-(r-H(i+1)*((2*r*H(i+1))-HH(i+1))

 
end
end

