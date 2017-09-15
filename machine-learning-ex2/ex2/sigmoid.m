function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = ones(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

[m,n] = size(z);
len = m*n;

for i=1:len,
	g(i) = 1 / (1 + e**(-z(i)));


% =============================================================

end
