function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples
 
J = 0;
sum = 0;
for addition_step = 1:m
    sum_in = 0;
    sum_in = sum_in + theta(1)*X(addition_step, 1);
    sum_in = sum_in + theta(2)*X(addition_step, 2);
    sum_in = sum_in - y(addition_step);
    sum_in = power(sum_in, 2);
    sum = sum + sum_in;
end

J = (1/(2*m))*sum;

end
