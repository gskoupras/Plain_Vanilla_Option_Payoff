clc;
clear;
ST = xlsread('Plain vanilla options.xlsx',1,'A15:A35');     %1 for determining the first sheet
K = xlsread('Plain vanilla options.xlsx',1,'B5');  
C=max(ST-K,0);
P=max(K-ST,0);
figure (1);
hold on;
grid on;
title('Option payoffs');
xlabel('Price at maturity date St');
ylabel('Payoff');
plot(ST,C);
plot(ST,P);
legend('Call','Put');
hold off;

