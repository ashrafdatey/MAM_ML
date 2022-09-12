function distance = euc(a,b)

% Ashraf Datey
% Registration Number: 210109641
% MSc Dissertaion Project: Fault detection in metal additive manufacturing for laser powder bed fusion systems using machine learning
% Supervisor: Professor George Panoutsos
% Automatic Control and Systems Engineering Department
% The University of Sheffield

if nargin ~= 2
error('Two input arguments required.');
return;
end

if ~all(size(a) == size(b))
error('Dimensions of inputs are not equal.');
return;
end

if min(size(a)) ~= 1
error('Input is not a vector');
return;
end

distance = norm(a - b);
