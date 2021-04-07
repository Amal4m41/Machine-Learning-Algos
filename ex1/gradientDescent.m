function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

delta=[0;0];

for iter = 1:num_iters


   
   
%   for j=1:2
%     z=(X*theta-y);
%     q=X(:,j);
%     delta(j)=(1/m)*sum(z.* q);  
%
%   end
 
%  theta=theta-alpha*delta;

   delta=(1/m)*(X'*(X*theta-y));
   %disp(delta);
   theta=theta-alpha*delta;    %Updating the values of theta1 and theta2.
   %disp(theta) ;   %Just to check the values :) 
   %disp('Theta='),disp(theta);



    % ============================================================

    % Save the cost J in every iteration to plot later   
   J_history(iter) = computeCost(X, y, theta);
    

    
end
%disp('Cost='),disp(J_history)
%plot(num_iters,J_history);
end
