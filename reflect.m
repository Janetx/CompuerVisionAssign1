function [ reflectIM ] = reflect( image )
% reflect image about the vertical axis
reflectIM = image(:,end:-1:1,:);
end

