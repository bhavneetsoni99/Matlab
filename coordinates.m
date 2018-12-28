function polar = coordinates(x,y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


r = (x^2+y^2)^.5 % Calculate the value of r


if (x>0) % check if the value of x is positive
    Angle = atan (y/x)*(180/pi)% Angle caclulated base on the formula
end
% if x is not positive check if it is equal to 0
if (x==0)
    if (y>0) % if x is equal to 0, check weather y is positive
        Angle = 90% calculate value of Angle if x = 0 and y is positive
    elseif (y==0)% if y is not positive check 
        Angle = 0
    else Angle = -90
    end        
end 

if (x<0)
    if(y> 0)
        Angle = (atan (y/x)+pi)*180/pi
        elseif (y==0)
            Angle = 180
        else 
            Angle = (atan (y/x)-pi)*180/pi 
    end
end
end

