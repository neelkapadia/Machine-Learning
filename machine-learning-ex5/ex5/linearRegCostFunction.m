function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

H = X * theta;
diff = H - y;
error = diff .^ 2;
error = sum(error);
error = error/(2*m);

A = theta .^ 2;
A = sum(A(2:end));
A = (lambda/(2*m))*A;
J = error + A;

%d0 = diff' * X(:,1);
%d0 /= m;
%d0 = sum(d0);

%j = diff' * X(:,2:end);
%dj /= m;
%dj += (lambda/m) .* sum(theta(2:end));
%dj = sum(dj));
%grad = [d0 dj];

temp=theta;
temp(1)=0;
grad=(1/m).*(X'*(H-y)+lambda.*temp);

% =========================================================================

grad = grad(:);

end