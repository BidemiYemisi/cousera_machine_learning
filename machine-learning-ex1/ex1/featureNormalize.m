function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
% 
  
mu = mean(X);  % mean of each fetaure, this gives 1 X 2 matrix for the two features i.e each feature is a column of the matrix
%f1mean = X(:,1) - mu(:,1);
%f2mean = X(:,2) - mu(:, 2);

sigma = std(X); % standard deviation for each feature, this give a 1 X 2 matrix for the two features

%f1std = f1mean/sigma(:,1);
%f2std = f2mean/sigma(:,2);

%X_norm = [f1std, f2std]; 


numColumns = size(X, 2);

for i = 1:numColumns
    X_norm(:,i) = (X(:, i) - mu(i)) / sigma(i);
end;







% ============================================================

end
