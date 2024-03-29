function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================



Sig = sigmoid((theta')*X')';


J = (1/m) * sum(-y.*log(Sig)-(1-y).*log(1-Sig))+(lambda / (2*m))*(theta(2:end)')*theta(2:end);

% Gradient
RegTerm = (lambda / m) *theta;
RegTerm(1)=0;
grad = (1/m)*(X'*(Sig-y))+RegTerm;








% =============================================================

grad = grad(:);

end
