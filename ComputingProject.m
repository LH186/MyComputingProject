clear all; clc; close all;

% Setting parameters
h = 10;
m = 9;          % Discretization of x axis
n = 9;          % Discretization of y axis

% Setting up the global and block matrix of zeros
v = zeros(m^2,n^2);  % Creating Global matrix
u = zeros(m,n);      % Creating Block matrix


% Boundary Conditions
% u(1,:) = 10;    % Top boundary
% u(m,:) = 5;     % Lower boundary
% u(:,1) = 4;     % Left boundary
% u(:,m) = 3;     % right boundary

% This loop creates the standard tridiagonal block matrix for solving the
% Laplace equation.

for k = 1:n
    u(k,k) = -4;
    
    if k < n
        u(k,k+1) = 1;
    end
    
    if k > 1
        u(k,k-1) = 1;
    end
    for k = 1:n
    v(n*k-n+1:k*n,n*k-n+1:k*n) = u;
    end
end


% This loop will enclose the block matrix as the diagonal of the global
% matrix u



% This loop will enclose the two minor diagonal outer vectors of ones
% within the global matrix





%%Plotting the solution
% h=surf(x,y,p','EdgeColor','none');       
% shading interp
% axis([-0.5 2.5 -0.5 2.5 -100 100])
% title({'2-D Poisson equation';['{\itNumber of iterations} = ',num2str(it)]})
% xlabel('Spatial co-ordinate (x) \rightarrow')
% ylabel('{\leftarrow} Spatial co-ordinate (y)')
% zlabel('Solution profile (P) \rightarrow')