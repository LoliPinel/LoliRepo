T = 0.03; % Sample time in seconds
data = csvread('../lectura/data.csv');

n = data(:,1);
x_off = data(:,2);
x_zmp = data(:,3);
x_out = data(:,4);
x_angle = data(:,5);
xref = zeros(size(n));

% y_off = data(:,2);
% y_zmp = data(:,3);
% y_out = data(:,4);
% y_angle = data(:,5);
% yref = zeros(size(n));
t = T.*n; % Time vector

%Sole borders
front = (120+55)/1000*ones(size(n));
back = -70/1000*ones(size(n));
left = (140+37.5)/1000*ones(size(n));
right = -(140+37.5)/1000*ones(size(n));

%% X REPRESENTATION
figure(1);
subplot(2,1,1)
title({'Experimento control'; '[K Kp Ki Kd]=[18.89, 6.14, -3000, 10, 10]'});
hold on; box on
plot(t,xref,'k');
plot(t,x_off,'b');
plot(t,x_zmp,'g');
plot(t,x_out,'r');
plot(t,front,'k--',t,back,'k--');
legend('x_{ref}','x_{ref}-x_{zmp}','x_{zmp}','x_{out}');
ylabel('[meters]')

subplot(2,1,2)
plot(t,x_angle,'b');
legend('angle');
ylabel('Degrees');
xlabel('Time [s]');

%% Y REPRESENTATIONS
% figure(2); hold on;
% subplot(2,1,1)
% title({'Experimento control'; '[K Kp Ki Kd]=[18.89, 6.14, -3000, 10, 10]'});
% hold on
% plot(n,yref,'k');
% plot(n,y_off,'b');
% plot(n,y_zmp,'g');
% plot(n,y_out,'r');
% plot(n,left,'k--',n,right,'k--');
% legend('y_{ref}','y_{ref}-y_{zmp}','y_{zmp}','y_{out}');
% ylabel('[meters]')
% 
% subplot(2,1,2)
% hold on;
% plot(n,y_angle,'b');
% plot(n,-y_angle,'r');
% legend('angleRL','angleLL');
% ylabel('Degrees');

%% X-Y GRAPHS

% figure(3); hold on;
% plot(x_zmp,yzmp,'b');
