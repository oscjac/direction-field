function [] = direction_field(M, start)
%Plots a direction field for the given 2x2 system of differential
%equations M.
   arguments
       M (2,2) {mustBeFinite}
       start (1,2) {mustBeVector} = [1,1]
   end
[X, Y] = meshgrid(-5:.5:5, -5:.3:5);

% defines ODE
U = M(1,1).*X + M(1,2).*Y;
V = M(2,1).*X + M(2,2).*Y;

% normalize vectors
S = sqrt(U .* U + V .* V);

quiver(X, Y, U./S, V./S, 0.5);
hold on;

path = stream2(X,Y,U,V,start(1),start(2));
streamline(path);
uiwait;
end

