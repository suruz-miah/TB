clear all;clc;
load('test_mod')
% DAT = iddata(y,u,0.05)
% ss1 = n4sid(DAT, 4, 'Form', 'canonical')
% ss1.A
% ss1.B
A1 =[0 1 0 0; 0 0 1 0; 0 0 0 1;-0.5724 1.551 -2.193 2.106]
B1 =[-2.4988 * 10^(-4); -3.6800 * 10^(-4); -0.0025; -0.0031]

A=[      0    1.0000         0         0;
         0         0    1.0000         0;
         0         0         0    1.0000;
   -0.7392    1.9504   -2.6493    2.4375];

B=1.0e-03*[-0.0846;-0.0969;-0.4450;-0.5497];
X=[2.9 2.9 2.9 2.9]';
X1=[2.9 2.9 2.9 2.9]';
 for i=1:length(u)
      X=A*X+B*u(i);
      X1=A1*X1+B1*u(i);
      yy(i)=X(1);
      yy1(i)=X1(1);

 end
 figure
 plot((1:i)*0.05,y,(1:i)*0.05,yy,'-.',(1:i)*0.05,yy1,':','LineWidth',2)
 xlabel('Time [s]')
 ylabel('Output y (bar)')
 legend('Original Data','Original SS','New SS')
 grid