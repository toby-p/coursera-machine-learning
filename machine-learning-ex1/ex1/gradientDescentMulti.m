function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    new_theta = theta;
    hypotheses = X * theta;
    parentheses = (hypotheses - y);
    for column = 1:length(theta)
        new_theta(column) = theta(column) - (alpha * (1/m) * sum(parentheses .* X(:, column)));
    
    % ============================================================

    % Save the cost J in every iteration
    j_value = computeCostMulti(X, y, theta);
    J_history(iter) = j_value;
    theta = new_theta;

end

end
