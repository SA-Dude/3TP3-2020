% John Wyeth
% 400171677

% The range I chose is [-10, 20] - I believe it shows the characteristics of each
% plot well enough
n = -10:20;

% (a)
Xa = unitstep(n) - 2*unitstep(n-1) + unitstep(n-4);
figure('Name','Question 1: Part (a)');
stem(n, Xa);
xlabel('n');
ylabel('x[n]');
text(5, 0.8, "John Wyeth 400171677");
text(5, 0.7, "Sawoud Alloss 400188404");

% (b)
Xb = (n+2).*unitstep(n+2) - 2*unitstep(n) - n.*unitstep(n-4);
figure('Name','Question 1: Part (b)')
stem(n, Xb);
xlabel('n') ;
ylabel('x[n]');
text(6, 2.5, "John Wyeth 400171677");
text(6, 2.35, "Sawoud Alloss 400188404");

% (c)
%    (dirac delta)  (dirac delta)
Xc = ((n+1) == 0) - ((n) == 0) + unitstep(n+1) - unitstep(n-2);
figure('Name','Question 1: Part (c)')
stem(n, Xc);
xlabel('n');
ylabel('x[n]');
text(5, 1.8, "John Wyeth 400171677");
text(5, 1.7, "Sawoud Alloss 400188404");

% (d)
Xd = exp(0.8.*n).*unitstep(n+1) + unitstep(n);
figure('Name','Question 1: Part (d)')
stem(n, Xd);
xlabel('n'); 
ylabel('x[n]');
text(0, 8*10^6, "John Wyeth 400171677");
text(0, 7.5*10^6, "Sawoud Alloss 400188404");
