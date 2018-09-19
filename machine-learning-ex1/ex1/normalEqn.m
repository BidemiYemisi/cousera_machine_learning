function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1); % size(X, 1) means number of rows in X while size(X, 2) is number of columns in X

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------


theta = (pinv(X' * X)) * X' * y; % Theta here gives 3 columns 

% -------------------------------------------------------------


% ============================================================

end
