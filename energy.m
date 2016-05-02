function [ energy ] = energy( xi, n1, n2, n3, n4, yi, h, beta, eta )
%ENERGY Summary of this function goes here
%   Detailed explanation goes here

%    output_args = energy_bias_term(cp) + energy_neighbor_term(cp, n1, n2, n3, n4) + energy_diff_term(xi, yi);
    
    %energy = h * xi - beta * (xi * (n1 + n2 + n3 + n4) ) - eta * (xi * yi);
    energy = xi * (h - (beta * (n1 + n2 + n3 + n4)) - (eta * yi));

end