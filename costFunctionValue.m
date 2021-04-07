function cost= costFunctionValue(X,Y,theta)
cost=(1/(2*length(Y)))*sum(((X*theta-Y)).**2);