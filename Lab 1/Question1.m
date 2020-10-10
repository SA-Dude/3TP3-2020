% John Wyeth
% 400171677

% The range I chose is [-10, 20] - I believe it shows the characteristics of each
% plot well enough
n = -10:20;

% (a)
Xa = unitstep(n) - 2*unitstep(n-1) + unitstep(n-4);
figure('Name','Question 1: Part (a)')
stem(n, Xa);

% (b)
Xb = (n+2).*unitstep(n+2) - 2*unitstep(n) - n.*unitstep(n-4);
figure('Name','Question 1: Part (b)')
stem(n, Xb);

% (c)
Xc = ((n+1) == 0) - ((n) == 0) + unitstep(n+1) - unitstep(n-2);
figure('Name','Question 1: Part (c)')
stem(n, Xc);

% (d)
Xd = exp(0.8.*n).*unitstep(n+1) + unitstep(n);
figure('Name','Question 1: Part (d)')
stem(n, Xd);
