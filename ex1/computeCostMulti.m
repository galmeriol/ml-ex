
function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples


J = 0;

sum = 0;
for addition_step = 1:m
    sum_in = 0;
    for feature_step = 1:size(X,2)
        sum_in = sum_in + theta(feature_step)*X(addition_step, feature_step);
    end
    sum_in = sum_in - y(addition_step);
    sum_in = power(sum_in, 2);
    sum = sum + sum_in;
end

J = (1/(2*m))*sum;

end
