function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

positive = find(y==1);
negative = find(y==0);


plot(X(positive,:),'b+');
plot(X(negative,:),'b0');

hold off;

end
