
function y = unitstep(timeVector)
    if (nargin ~= 1)
       disp('unit step requires 1 argument');
       return;
    end
    y = cast(timeVector >= 0, class(timeVector));
end