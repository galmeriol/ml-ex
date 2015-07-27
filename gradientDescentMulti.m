function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
for iter = 1:num_iters
    temp = zeros(2, 1);
    for gradient_step = 1:size(theta)
        sum = 0;
        for addition_step = 1:m
            sum_in = 0;
            for feature_step = 1:size(X,2)
		if feature_step > 1
	                sum_in = sum_in + theta(feature_step)*X(addition_step, feature_step - 1);
		else
			sum_in = sum_in + theta(feature_step)
		end
            end
            sum_in = sum_in - y(addition_step);
	    if gradient_step > 1
	            sum_in = sum_in*X(addition_step, gradient_step - 1);
	    end
            sum = sum + sum_in;
        end
        temp(gradient_step) = theta(gradient_step) - ((alpha/m)*sum);
    end
    theta = temp;	
  
    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
