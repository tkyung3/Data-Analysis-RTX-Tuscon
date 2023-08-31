function plotAngRates_app(app, X1, YMatrix1)
%plotAngRates(X1, YMATRIX1)
%  X1:  vector of x data
%  YMATRIX1:  matrix of y data

%  Auto-generated by MATLAB on 05-May-2017 01:03:10

% Create figure
% figure1 = figure('Name','Raw Angular Rates');

% Create axes
axes1 = app.UIAxes;
hold(axes1,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(X1,YMatrix1,'Parent',axes1);
set(plot1(1),'DisplayName','p', 'Marker', 'square');
set(plot1(2),'DisplayName','q', 'Marker', 'o');
set(plot1(3),'DisplayName','r','Color',[0.929 0.694 0.125], 'Marker', '*');

% Create xlabel
xlabel(axes1,'Time');

% Create title
title(axes1,{'Quadcopter Flight Data: IMU Angular Rates'});

% Create ylabel
ylabel(axes1,'Angular Rate (deg/s)');

% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[-2 2]);
box(axes1,'on');
% Set the remaining axes properties
set(axes1,'XGrid','on','YGrid','on');
% Create legend
legend1 = legend(axes1,'show');
set(legend1,'Location','best');
