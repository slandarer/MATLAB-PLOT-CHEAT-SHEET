function MATLAB_cheat_sheet
% @ author : slandarer
% # reference:
% + https://github.com/peijin94/matlabPlotCheatsheet
% + https://github.com/mathworks/visualization-cheat-sheet
% + https://www.mathworks.com/products/matlab/plot-gallery.html
% + https://www.mathworks.com/help/matlab/release-notes.html


figPixH = 940; 
fontSize = 1;
figMain = figure('Units','pixels', 'Position',[200,50,[sqrt(2),1].*figPixH]);
axMain = axes('Parent',figMain, 'Position',[0,0,1,1], 'XColor','none', 'YColor','none');
axMain.XLim = [0, sqrt(2)*figPixH];
axMain.YLim = [0, figPixH];
axMain.NextPlot = 'add';

axMain1 = axes('Parent',figMain, 'Position',[0,0,1/4,1], 'XColor','none', 'YColor','none');
axMain1.XLim = [0, sqrt(2)*figPixH/4] + [-1,1].*.005.*figPixH;
axMain1.YLim = [0, figPixH];
axMain1.NextPlot = 'add';
axis off

axMain2 = axes('Parent',figMain, 'Position',[1/4,0,1/4,1], 'XColor','none', 'YColor','none');
axMain2.XLim = [0, sqrt(2)*figPixH/4] + [-1,1].*.005.*figPixH;
axMain2.YLim = [0, figPixH];
axMain2.NextPlot = 'add';
axis off

axMain3 = axes('Parent',figMain, 'Position',[2/4,0,1/4,1], 'XColor','none', 'YColor','none');
axMain3.XLim = [0, sqrt(2)*figPixH/4] + [-1,1].*.005.*figPixH;
axMain3.YLim = [0, figPixH];
axMain3.NextPlot = 'add';
axis off

axMain4 = axes('Parent',figMain, 'Position',[3/4,0,1/4,1], 'XColor','none', 'YColor','none');
axMain4.XLim = [0, sqrt(2)*figPixH/4] + [-1,1].*.005.*figPixH;
axMain4.YLim = [0, figPixH];
axMain4.NextPlot = 'add';
axis off

set(figMain,'renderer','Painters')
Font1 = {'FontName','consolas', 'FontSize',fontSize*11};
Font2 = {'FontName','consolas', 'FontSize',fontSize*10, 'Color',[167,9,245]./255};
Font3 = {'FontName','consolas', 'FontSize',fontSize*9, 'HorizontalAlignment', 'left'};
Font4 = {'FontName','consolas', 'FontSize',fontSize*9, 'Color',[0,116,165]./255};
Font5 = {'FontName','consolas', 'FontSize',fontSize*15, 'HorizontalAlignment',...
         'left', 'Color',[170,170,170]./255, 'FontWeight','bold'};
%% Title ==================================================================
text(axMain, figPixH*.02, figPixH*.96, 'MATLAB PLOT CHEAT SHEET', 'FontWeight','bold',...
    'FontName','consolas', 'FontSize',fontSize*45, 'Color',[206,125,0]./255)
text(axMain, figPixH*.02, figPixH*.925,'https://www.mathworks.com/matlabcentral/fileexchange/165846-matlab-plot-cheat-sheet',...
    'FontName','consolas', 'FontSize',fontSize*14, 'Color','k')

%% Titles for Each Part ===================================================
partTitle(axMain1, figPixH.*[0, .86, sqrt(2)/4, .04], 'Types of Plots', fontSize)
partTitle(axMain1, figPixH.*[0, .4, sqrt(2)/4, .04], 'Log Scales', fontSize)
partTitle(axMain1, figPixH.*[0, .115, sqrt(2)/4, .04], 'Light and Material', fontSize)
partTitle(axMain2, figPixH.*[0, .86, sqrt(2)/4, .04], 'Customizing Plots', fontSize)
partTitle(axMain2, figPixH.*[0, .375, sqrt(2)/4, .04], 'Edge and Face Color', fontSize)
partTitle(axMain2, figPixH.*[0, .135, sqrt(2)/4, .04], 'Text Alignment', fontSize)
partTitle(axMain3, figPixH.*[0, .86, sqrt(2)/4, .04], 'Figure and Axes', fontSize)
partTitle(axMain3, figPixH.*[0, .545, sqrt(2)/4, .04], 'Combining Plots', fontSize)
partTitle(axMain4, figPixH.*[0, .86, sqrt(2)/4, .04], 'Colormaps', fontSize) % orderedcolors
partTitle(axMain4, figPixH.*[0, .29, sqrt(2)/4, .04], 'Palettes(R2023b)', fontSize) % orderedcolors
    function partTitle(ax, pos, str, fsz)
        rectangle(ax, 'Position',pos, 'FaceColor',[0,64,115]./255, 'EdgeColor','none');
        text(ax, pos(1), pos(2) + pos(4)/2, [' ', str], 'FontName','consolas',...
            'FontSize',fsz*20, 'Color',[1,1,1].*.99, 'FontWeight','bold');
    end
%% Types of Plots =========================================================
tR = (.01+sqrt(2)/4)/(sqrt(2)/4);
data1 = 1+sin(0.4*linspace(1,15,15));
ax11 = axes2D(figMain, [.0045,.79,1/23,.04]); 
ax12 = axes2D(figMain, [.0045+1/20.2,.79,1/23,.04]);
ax13 = axes2D(figMain, [.0045+2/20.2,.79,1/23,.04]);
ax14 = axes2D(figMain, [.0045+3/20.2,.79,1/23,.04]);
ax15 = axes2D(figMain, [.0045+4/20.2,.79,1/23,.04]);
plot(ax11, data1, 'LineWidth',.8); text(axMain1, figPixH*((0/20.2+1/40)*sqrt(2).*tR), figPixH*.84, 'plot(y)', Font3{:}, 'HorizontalAlignment', 'center')
stairs(ax12, data1, 'LineWidth',.8); text(axMain1, figPixH*((1/20.2+1/40)*sqrt(2).*tR), figPixH*.84, 'stairs(y)', Font3{:}, 'HorizontalAlignment', 'center')
stem(ax13, data1, 'LineWidth',.8, 'MarkerSize',3); text(axMain1, figPixH*((2/20.2+1/40)*sqrt(2).*tR), figPixH*.84, 'stem(y)', Font3{:}, 'HorizontalAlignment', 'center')
area(ax14, data1, 'LineWidth',.5); text(axMain1, figPixH*((3/20.2+1/40)*sqrt(2).*tR), figPixH*.84, 'area(y)', Font3{:}, 'HorizontalAlignment', 'center')
bar(ax15, data1, 'LineWidth',.5); text(axMain1, figPixH*((4/20.2+1/40)*sqrt(2).*tR), figPixH*.84, 'bar(y)', Font3{:}, 'HorizontalAlignment', 'center')

data2 = peaks(15);
ax21 = axes2D(figMain, [.0045,.725,1/23,.04]); 
ax22 = axes2D(figMain, [.0045+1/20.2,.725,1/23,.04]);
ax23 = axes2D(figMain, [.0045+2/20.2,.725,1/23,.04]);
ax24 = axes2D(figMain, [.0045+3/20.2,.725,1/23,.04]);
ax25 = axes2D(figMain, [.0045+4/20.2,.725,1/23,.04]);
contour(ax21, data2.*10); text(axMain1, figPixH*((0/20.2+1/40)*sqrt(2).*tR), figPixH*.775, 'contour(z)', Font3{:}, 'HorizontalAlignment', 'center')
ax21.XLim = [1,15]; ax21.YLim = [1,15];
contourf(ax22, data2.*10); text(axMain1, figPixH*((1/20.2+1/40)*sqrt(2).*tR), figPixH*.775, 'contour(z)', Font3{:}, 'HorizontalAlignment', 'center')
ax22.XLim = [1,15]; ax22.YLim = [1,15];
image(ax23, data2.*10); text(axMain1, figPixH*((2/20.2+1/40)*sqrt(2).*tR), figPixH*.775, 'image(z)', Font3{:}, 'HorizontalAlignment', 'center')
ax23.XLim = [.5,15.5]; ax23.YLim = [.5,15.5];
imagesc(ax24, data2.*10); text(axMain1, figPixH*((3/20.2+1/40)*sqrt(2).*tR), figPixH*.775, 'imagesc(z)', Font3{:}, 'HorizontalAlignment', 'center')
ax24.XLim = [.5,15.5]; ax24.YLim = [.5,15.5];
pcolor(ax25, data2.*10); text(axMain1, figPixH*((4/20.2+1/40)*sqrt(2).*tR), figPixH*.775, 'pcolor(z)', Font3{:}, 'HorizontalAlignment', 'center')
ax25.XLim = [1,15]; ax25.YLim = [1,15];

ax31 = axes2D(figMain, [.0045,.66,1/23,.04]); view(ax31, 3)
ax32 = axes2D(figMain, [.0045+1/20.2,.66,1/23,.04]); view(ax32, 3)
ax33 = axes2D(figMain, [.0045+2/20.2,.66,1/23,.04]); view(ax33, 3)
ax34 = axes2D(figMain, [.0045+3/20.2,.66,1/23,.04]); view(ax34, 3)
ax35 = axes2D(figMain, [.0045+4/20.2,.66,1/23,.04]); view(ax35, 3)
contour3(ax31, data2); view(3); text(axMain1, figPixH*((0/20.2+1/40)*sqrt(2).*tR), figPixH*.71, 'contour3(z)', Font3{:}, 'HorizontalAlignment', 'center', 'Rotation',10);
waterfall(ax32, data2); view(3); text(axMain1, figPixH*((1/20.2+1/40)*sqrt(2).*tR), figPixH*.71, 'waterfall(z)', Font3{:}, 'HorizontalAlignment', 'center', 'Rotation',10);
mesh(ax33, data2); view(3); text(axMain1, figPixH*((2/20.2+1/40)*sqrt(2).*tR), figPixH*.71, 'mesh(z)', Font3{:}, 'HorizontalAlignment', 'center', 'Rotation',10);
meshz(ax34, data2); view(3); text(axMain1, figPixH*((3/20.2+1/40)*sqrt(2).*tR), figPixH*.71, 'meshz(z)', Font3{:}, 'HorizontalAlignment', 'center', 'Rotation',10);
meshc(ax35, data2); view(3); text(axMain1, figPixH*((4/20.2+1/40)*sqrt(2).*tR), figPixH*.71, 'meshc(z)', Font3{:}, 'HorizontalAlignment', 'center', 'Rotation',10);

data3 = peaks(12);
ax41 = axes2D(figMain, [.0045,.595,1/23,.04]); view(ax41, 3)
ax42 = axes2D(figMain, [.0045+1/20.2,.595,1/23,.04]); view(ax42, 3)
ax43 = axes2D(figMain, [.0045+2/20.2,.595,1/23,.04]); view(ax43, 3)
ax44 = axes2D(figMain, [.0045+3/20.2,.595,1/23,.04]); view(ax44, 3)
ax45 = axes2D(figMain, [.0045+4/20.2,.595,1/23,.04]); view(ax45, 3)
[x,y] = meshgrid(1:12,1:12);
T = delaunay(x,y);
ribbon(ax41, data3); view(3); text(axMain1, figPixH*((0/20.2+1/40)*sqrt(2).*tR), figPixH*.645, 'ribbon(z)', Font3{:}, 'HorizontalAlignment', 'center', 'Rotation',10);
trisurf(T,x,y,data3, 'Parent',ax42, 'lineWidth',.1); view(3); text(axMain1, figPixH*((1/20.2+1/40)*sqrt(2).*tR), figPixH*.645, 'trisurf(TO)', Font3{:}, 'HorizontalAlignment', 'center', 'Rotation',10);
surf(ax43, data2); view(3); text(axMain1, figPixH*((2/20.2+1/40)*sqrt(2).*tR), figPixH*.645, 'surf(z)', Font3{:}, 'HorizontalAlignment', 'center', 'Rotation',10);
surfl(ax44, data2); view(3); text(axMain1, figPixH*((3/20.2+1/40)*sqrt(2).*tR), figPixH*.645, 'surfl(z)', Font3{:}, 'HorizontalAlignment', 'center', 'Rotation',10);
surfc(ax45, data2); view(3); text(axMain1, figPixH*((4/20.2+1/40)*sqrt(2).*tR), figPixH*.645, 'surfc(z)', Font3{:}, 'HorizontalAlignment', 'center', 'Rotation',10);

theta = 0:0.01:2*pi;
rho = sin(2*theta).*cos(2*theta);
pax1 = polaraxes('Parent',figMain, 'Position',[.0045,.525,1/23,.04], 'RTickLabel',[],'ThetaTickLabel',[], 'NextPlot','add');
polarplot(pax1, theta, rho, 'LineWidth',.8); text(axMain1, figPixH*((0/12+1/40)*sqrt(2).*tR), figPixH*.575, 'polarplot', Font3{:}, 'HorizontalAlignment', 'center', 'Rotation',10);
th = linspace(0,2*pi,20);
r = rand(1,20);
pax2 = polaraxes('Parent',figMain, 'Position',[.0045+1/20,.525,1/23,.04], 'RTickLabel',[],'ThetaTickLabel',[], 'NextPlot','add');
polarscatter(pax2, th,r,5,'filled'); text(axMain1, figPixH*((1/20+1/40)*sqrt(2).*tR), figPixH*.575, 'polarscatter', Font3{:}, 'HorizontalAlignment', 'center', 'Rotation',10);
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));

ax55 = axes2D(figMain, [.0045+4/20,.525,1/23,.04]);
ax55.DataAspectRatio = [1,1,1];
CPie = sky(5);
X = [1 3 0.5 2.5 2];
P = pie(ax55, X);
for i = 1:2:length(P)
    P(i).FaceColor = CPie((i+1)/2,:);
end
delete(P(2:2:end));
ax55.XColor = 'none';
ax55.YColor = 'none';
text(axMain1, figPixH*((4/20+1/40)*sqrt(2).*tR), figPixH*.575, 'pie', Font3{:}, 'HorizontalAlignment', 'center', 'Rotation',10);

pax4 = polaraxes('Parent',figMain, 'Position',[.0045+2/20,.525,1/23,.04], 'RTickLabel',[],'ThetaTickLabel',[], 'NextPlot','add');
polarhistogram(theta, 25, 'Parent',pax4); text(axMain1, figPixH*((2/20+1/40)*sqrt(2).*tR), figPixH*.575, 'polarhistogram', Font3{:}, 'HorizontalAlignment', 'center', 'Rotation',10);

th = linspace(0,2*pi,10);
rng(1)
r = rand(1,10);
sz = rand(1,10);
pax4 = polaraxes('Parent',figMain, 'Position',[.0045+3/20,.525,1/23,.04], 'RTickLabel',[],'ThetaTickLabel',[], 'NextPlot','add');
polarbubblechart(th,r,sz, 'Parent',pax4); text(axMain1, figPixH*((3/20+1/40)*sqrt(2).*tR), figPixH*.568, {'polarbubblechart';'          R2020b'}, Font3{:}, 'HorizontalAlignment', 'center', 'Rotation',10);
bubblelim([1,10])

ax61 = axes2D(figMain, [.0045,.45,1/23,.04]); 
ax62 = axes2D(figMain, [.0045+1/20.2,.45,1/23,.04]);
ax63 = axes2D(figMain, [.0045+2/20.2,.45,1/23,.04]);
ax64 = axes2D(figMain, [.0045+3/20.2,.45,1/23,.04]); 
ax65 = axes2D(figMain, [.0045+4/20.2,.45,1/23,.04]); 
x = linspace(0,3*pi,50);
y = cos(x) + rand(1,50);  
scatter(ax61, x,y, 3, 'filled'); text(axMain1, figPixH*((0/20.2+1/42)*sqrt(2).*tR), figPixH*.505, 'scatter', Font3{:}, 'HorizontalAlignment', 'center');
x = 1:10:80;
y = [20 30 45 40 60 65 80 75];
err = [4 3 5 3 5 3 6 4]*2;
errorbar(ax62, x, y, err, 'LineStyle','none', 'LineWidth',.8, 'CapSize',3); axis tight
text(axMain1, figPixH*((1/20.2+1/42)*sqrt(2).*tR), figPixH*.505, 'errorbar', Font3{:}, 'HorizontalAlignment', 'center');

err = [4 3 5 3 5 3 6 4]*2;
errorbar(ax63, x, y, err,'horizontal', 'LineStyle','none', 'LineWidth',.8, 'CapSize',3); axis tight
ax63.XLim = [1,80];
text(axMain1, figPixH*((2/20.2+1/42)*sqrt(2).*tR), figPixH*.505, 'errorbar', Font3{:}, 'HorizontalAlignment', 'center');

x = 1:10;
y = rand(1,10);
sz = rand(1,10)*40;
ax64.XLim = [0,11];
scatter(ax64, x,y,sz,'filled', 'MarkerFaceColor',lines(1),'MarkerFaceAlpha',.3)
scatter(ax64, x,y,sz, 'CData',lines(1))
text(axMain1, figPixH*((3/20.2+1/47)*sqrt(2).*tR), figPixH*.505, {'bubblechart';'R2020b'}, Font3{:}, 'HorizontalAlignment', 'center');

x = [ones(1,100) 2*ones(1,100) 3*ones(1,100)];
y1 = 2 * randn(1,100);
y2 = 3 * randn(1,100) + 5;
y3 = 5 * randn(1,100) + 5;
y = [y1 y2 y3];
swarmchart(ax65, x,y, 1, 'filled')
text(axMain1, figPixH*((4/20.2+1/42)*sqrt(2).*tR), figPixH*.505, {'swarmchart';'R2020b'}, Font3{:}, 'HorizontalAlignment', 'center');


    function ax = axes2D(fig, pos)
        ax = axes('Parent',fig, 'Position',pos);
        ax.Box = 'on';
        ax.XTick = [];
        ax.YTick = [];
        ax.ZTick = [];
        ax.NextPlot = 'add';
    end
%% Log Scales =============================================================
t = linspace(0, 2*pi, 200);
X = (cos(t) + 1).*1e3;
Y = (sin(t) + 1).*1e3;
warning off

text(axMain1,figPixH*(.075 - .045),figPixH*.38 , 'plot(x,y)', Font4{:}, 'HorizontalAlignment', 'left')
text(axMain1,figPixH*(.185 - .045),figPixH*.38 , 'semilogy(x,y)', Font4{:}, 'HorizontalAlignment', 'left')
text(axMain1,figPixH*(.075 - .045),figPixH*.265 , 'semilogx(x,y)', Font4{:}, 'HorizontalAlignment', 'left')
text(axMain1,figPixH*(.185 - .045),figPixH*.265 , 'loglog(x,y)', Font4{:}, 'HorizontalAlignment', 'left')

axLG11 = axesLOG(figMain, [.001, .295, .1,.075]);
plot(axLG11, X,Y, 'LineWidth',.8)
axLG11.XTick = 0:1000:2000;
axLG11.YTick = 0:1000:2000;
axLG11.XTickLabelRotation = 0;

axLG12 = axesLOG(figMain, [.001 + .075, .295, .1,.075]);
axLG12.YScale = 'log';
plot(axLG12, X,Y, 'LineWidth',.8)
axLG12.XTick = 0:1000:2000;
axLG12.YTick = [10^0,10^1,10^2,10^3];
axLG12.XTickLabelRotation = 0;

axLG21 = axesLOG(figMain, [.001, .18, .1, .075]);
axLG21.XScale = 'log';
plot(axLG21, X,Y, 'LineWidth',.8)
axLG21.XTick = [10^0,10^1,10^2,10^3];
axLG21.YTick = 0:1000:2000;
axLG21.XTickLabelRotation = 0;

axLG22 = axesLOG(figMain, [.001 + .075, .18, .1, .075]);
axLG22.XScale = 'log';
axLG22.YScale = 'log';
plot(axLG22, X,Y, 'LineWidth',.8)
axLG22.XTick = [10^0,10^1,10^2,10^3];
axLG22.YTick = [10^0,10^1,10^2,10^3];
axLG22.XTickLabelRotation = 0;

text(axMain1, figPixH*.23, figPixH*(.373), 'axes properties', Font2{:}, 'Color','k', 'VerticalAlignment','top')
text(axMain1, figPixH*.23, figPixH*(.353), {'plot(x,y)';'ax = gca;';'ax.XScale = ''log'';';'ax.YScale = ''log'';'},...
    Font4{:}, 'VerticalAlignment','top')


text(axMain1, figPixH*.23, figPixH*(.258), 'function R2023b', Font2{:}, 'Color','k', 'VerticalAlignment','top')
text(axMain1, figPixH*.23, figPixH*(.238), {'plot(x,y)';'ax = gca;';'xscale(ax,''log'');';'yscale(ax,''log'');'},...
    Font4{:}, 'VerticalAlignment','top')


    function ax = axesLOG(fig, pos)
        ax = axes('Parent',fig, 'Position',pos);
        ax.Box = 'on';
        ax.XGrid = 'on';
        ax.YGrid = 'on';
        ax.PlotBoxAspectRatio = [1,1,1];
        ax.NextPlot = 'add';
        ax.FontName = 'consolas';
    end

%% Light and Material =====================================================
text(axMain1, figPixH.*.0055, figPixH*.1,{'light; material shiny'},Font4{:})
text(axMain1, figPixH.*(.055), figPixH*.08,'shiny',Font2{:}, 'Color','k', 'HorizontalAlignment', 'center')
text(axMain1, figPixH.*(.055 + sqrt(2)/12), figPixH*.08,'dull',Font2{:}, 'Color','k', 'HorizontalAlignment', 'center')
text(axMain1, figPixH.*(.055 + sqrt(2)/6), figPixH*.08,'metal',Font2{:}, 'Color','k', 'HorizontalAlignment', 'center')
axmt1 = axes2D(figMain, [.0045+0/12,.01,1/13.5,.06]); view(axmt1,[40,60])
axmt2 = axes2D(figMain, [.0045+1/12,.01,1/13.5,.06]); view(axmt2,[40,60])
axmt3 = axes2D(figMain, [.0045+2/12,.01,1/13.5,.06]); view(axmt3,[40,60])
Z = peaks(30)*2;
surface(axmt1, Z, 'EdgeColor','none'); light(axmt1); material(axmt1,'shiny')
surface(axmt2, Z, 'EdgeColor','none'); light(axmt2); material(axmt2,'dull')
surface(axmt3, Z, 'EdgeColor','none'); light(axmt3); material(axmt3,'metal')

%% Customizing Plots ======================================================
% Line Color Short Name
rectangle(axMain2, 'Position',figPixH.*[.0015, .765, .35, .075], 'FaceColor',[1,1,1])
text(axMain2, figPixH*.0055, figPixH*.83, 'Line Color', Font1{:})
text(axMain2, figPixH*.3515, figPixH*.83, "'Color'", Font2{:}, 'HorizontalAlignment','right')
colorList_P = {'r', 'g', 'b', 'c', 'm', 'y', 'k', 'w'};
for i = 1:length(colorList_P)
    rectangle(axMain2, 'Position',figPixH.*[.03-.02+.0015 + .0425*(i-1), .793, .03, .018], 'FaceColor',colorList_P{i}, 'LineWidth',.8);
    text(axMain2, figPixH*(.03-.02+.0015 + .0425*(i-1) + .015), figPixH*.78, ['''', colorList_P{i}, ''''], Font2{:}, 'HorizontalAlignment', 'center')
end
% Line Marker Short Name
rectangle(axMain2, 'Position',figPixH.*[.0015, .68, .35, .075], 'FaceColor',[1,1,1])
text(axMain2, figPixH*.0055, figPixH*.745, 'Line Marker', Font1{:})
text(axMain2, figPixH*.3515, figPixH*.745, "'Marker'", Font2{:}, 'HorizontalAlignment','right')
markerList_P = {'+', 'o', '*', '.', 'x', 's', 'd', 'v', '^', '>', '<', '|', '_' 'p', 'h', 'none'};
for i = 1:length(markerList_P)
    if i ~= 9 && i ~= 13  && i ~= 16
        plot(axMain2, figPixH*(.03-.02+.0015 + .02*(i-1) +.004), figPixH*.72, 'Marker', markerList_P{i}, 'MarkerEdgeColor', 'k', 'LineWidth',.8);
        text(axMain2, figPixH*(.03-.02+.0015 + .02*(i-1) +.004), figPixH*.695, ['''', markerList_P{i}, ''''], Font2{:}, 'HorizontalAlignment', 'center')
    elseif i == 16
        text(axMain2, figPixH*(.03-.02+.0015 + .02*(i-1) +.004 + .012), figPixH*.695, ['''', markerList_P{i}, ''''], Font2{:}, 'HorizontalAlignment', 'center')
    else
        plot(axMain2, figPixH*(.03-.02+.0015 + .02*(i-1) +.004), figPixH*.72, 'Marker', markerList_P{i}, 'MarkerEdgeColor', 'k', 'LineWidth',.8);
        text(axMain2, figPixH*(.03-.02+.0015 + .02*(i-1) +.004), figPixH*.695, ['''', '\', markerList_P{i}, ''''], Font2{:}, 'HorizontalAlignment', 'center')
    end
end
plot(axMain2, figPixH.*([.254, .254, .274, .274]-.02+.0015), figPixH.*[.73, .733, .733, .73], 'Color','k', 'LineWidth', .8)
text(axMain2, figPixH.*(.264-.02+.0015), figPixH.*.744, 'R2020b', Font3{:}, 'HorizontalAlignment', 'center', 'Fontsize',fontSize*10)
% Marker Size
rectangle(axMain2, 'Position',figPixH.*[0.0015, .595, .35, .075], 'FaceColor',[1,1,1])
text(axMain2, figPixH*.0055, figPixH*.66, 'Marker Size', Font1{:})
text(axMain2, figPixH*.3515, figPixH*.66, "'MarkerSize'", Font2{:}, 'HorizontalAlignment','right')
markerSizeList_P = [1,3,5,8,10,12,14,15,18,20];
for i = 1:length(markerSizeList_P)
    plot(axMain2, figPixH*(.03-0.02+0.0015 + (.021+.0013*i)*(i-1) +.004), figPixH*.633, 'MarkerSize', markerSizeList_P(i),...
        'MarkerEdgeColor', 'k', 'Marker','o', 'LineWidth',.8);
    text(axMain2, figPixH*(.03-0.02+0.0015 + (.021+.0013*i)*(i-1) +.004), figPixH*.608,num2str(markerSizeList_P(i)), Font2{:},...
        'HorizontalAlignment', 'center', 'Color','k')
end
% Line Style
rectangle(axMain2, 'Position',figPixH.*[0.0015, .51, .35, .075], 'FaceColor',[1,1,1])
text(axMain2, figPixH*.0055, figPixH*.575, 'Line Style', Font1{:})
text(axMain2, figPixH*.3515, figPixH*.575, "'LineStyle'", Font2{:}, 'HorizontalAlignment','right')
lineStyleList_P = {'-', '--', '-.', ':'};
tX = figPixH*[-.036,.036]; tY = figPixH*[-.008,.008];
for i = 1:length(lineStyleList_P)
    plot(axMain2, figPixH*(.075 +(i-1)*.08-0.02+0.0015) + tX, figPixH*.545 + tY, 'Color','k', 'LineStyle',lineStyleList_P{i}, 'LineWidth',2)
    text(axMain2, figPixH*(.075 +(i-1)*.08-0.02+0.0015), figPixH*.527, ['''', lineStyleList_P{i},''''], Font2{:}, 'HorizontalAlignment', 'center')
end
% Line Width
rectangle(axMain2, 'Position',figPixH.*[0.0015, .425, .35, .075], 'FaceColor',[1,1,1])
text(axMain2, figPixH*.0055, figPixH*.49, 'Line Width', Font1{:})
text(axMain2, figPixH*.3515, figPixH*.49, "'LineWidth'", Font2{:}, 'HorizontalAlignment','right')
lineWidthList_P = [1,3,5,7];
tX = figPixH*[-.036,.036]; tY = figPixH*[-.008,.008];
for i = 1:length(lineStyleList_P)
    plot(axMain2, figPixH*(.075-0.02+0.0015 +(i-1)*.08) + tX, figPixH*.46 + tY, 'Color','k', 'LineWidth',lineWidthList_P(i))
    text(axMain2, figPixH*(.075-0.02+0.0015 +(i-1)*.08), figPixH*.44, num2str(lineWidthList_P(i)), Font2{:}, 'HorizontalAlignment', 'center', 'Color','k')
end
%% Face and Edge Color ====================================================
axm11 = axesN(figMain, [.26, .3, .06, .04]);
axm21 = axesN(figMain, [.26, .245, .06, .04]);
axm31 = axesN(figMain, [.26, .19, .06, .04]);
[X,Y] = meshgrid(1:3,1:3);
Z = flipud([5,1,5;4,5,3;6,3,2]);
surface(axm11,X,Y,Z, 'Marker','o', 'MarkerFaceColor','flat', 'FaceColor','flat')
surface(axm21,X,Y,Z, 'Marker','o', 'MarkerFaceColor','flat', 'FaceColor','interp')
surface(axm31,X,Y,Z, 'Marker','o', 'MarkerFaceColor','flat', 'FaceColor',[79,148,204]./255)

axm12 = axesN(figMain, [.26+.075, .3, .06, .04]);
axm22 = axesN(figMain, [.26+.075, .245, .06, .04]);
axm32 = axesN(figMain, [.26+.075, .19, .06, .04]);
surface(axm12,X,Y,Z, 'Marker','o', 'MarkerFaceColor','flat', 'LineWidth',2, 'FaceColor','none', 'EdgeColor','flat')
surface(axm22,X,Y,Z, 'Marker','o', 'MarkerFaceColor','flat', 'LineWidth',2, 'FaceColor','none', 'EdgeColor','interp')
surface(axm32,X,Y,Z, 'Marker','o', 'MarkerFaceColor','flat', 'LineWidth',2, 'FaceColor','none', 'EdgeColor',[79,148,204]./255)

text(axMain2, figPixH*.22, figPixH*(.345 - .0165), "'flat'", Font2{:}, 'HorizontalAlignment','left', 'VerticalAlignment','top')
text(axMain2, figPixH*.22, figPixH*(.345-.055 - .0165), "'interp'", Font2{:}, 'HorizontalAlignment','left', 'VerticalAlignment','top')
text(axMain2, figPixH*.22, figPixH*(.345-.055*2), {'RGB triplet';'hexadecimal code';'color name'}, Font2{:}, 'HorizontalAlignment','left', 'VerticalAlignment','top', 'Color','k')

text(axMain2, figPixH*.0055, figPixH*.35, "FaceColor", Font1{:}, 'HorizontalAlignment','left', 'VerticalAlignment','bottom')
text(axMain2, figPixH*.115, figPixH*.35, "EdgeColor", Font1{:}, 'HorizontalAlignment','left', 'VerticalAlignment','bottom')
text(axMain2, figPixH*.22, figPixH*.35, "Value", Font1{:}, 'HorizontalAlignment','left', 'VerticalAlignment','bottom')

    function ax = axesN(fig, pos)
        ax = axes('Parent',fig, 'Position',pos);
        ax.Box = 'on';
        ax.XTick = [];
        ax.YTick = [];
        ax.ZTick = [];
        ax.NextPlot = 'add';
    end
%% Text Alignment =========================================================
rectangle(axMain2, 'Position',figPixH.*[0.0015, .006, .35, .12], 'FaceColor',[1,1,1])
rectangle(axMain2, 'Position',figPixH.*[0.0015, .006, .35, .065], 'FaceColor',[1,1,1])
text(axMain2, figPixH*.0055, figPixH*(.1+.015), "'HorizontalAlignment'", Font2{:}, 'HorizontalAlignment','left', 'VerticalAlignment','middle')
text(axMain2, figPixH*.0055, figPixH*(.05+.01), "'VerticalAlignment'", Font2{:}, 'HorizontalAlignment','left', 'VerticalAlignment','middle')
scatter(axMain2,figPixH.*[1,3,5,7,9].*sqrt(2)/40, figPixH.*[1,1,1,1,1].*.03, 'Marker','+','MarkerEdgeColor','k','LineWidth',.8,'SizeData',100)
% 'baseline' | 'top' | 'cap' | 'middle' | 'bottom'
text(axMain2, figPixH*1.*sqrt(2)/40, figPixH*.03, "'bottom'", Font2{:}, 'HorizontalAlignment','center', 'VerticalAlignment','bottom')
text(axMain2, figPixH*3.*sqrt(2)/40, figPixH*.03, "'baseline'", Font2{:}, 'HorizontalAlignment','center', 'VerticalAlignment','baseline')
text(axMain2, figPixH*5.*sqrt(2)/40, figPixH*.03, "'middle'", Font2{:}, 'HorizontalAlignment','center', 'VerticalAlignment','middle')
text(axMain2, figPixH*7.*sqrt(2)/40, figPixH*.03, "'top'", Font2{:}, 'HorizontalAlignment','center', 'VerticalAlignment','top')
text(axMain2, figPixH*9.*sqrt(2)/40, figPixH*.03, "'cap'", Font2{:}, 'HorizontalAlignment','center', 'VerticalAlignment','cap')
scatter(axMain2,figPixH.*[1.4,3,4.6].*sqrt(2)/24, figPixH.*[1,1,1].*.09, 'Marker','+','MarkerEdgeColor','k','LineWidth',.8,'SizeData',100)
text(axMain2, figPixH*1.4.*sqrt(2)/24, figPixH*.09, "'right'", Font2{:}, 'HorizontalAlignment','right', 'VerticalAlignment','middle')
text(axMain2, figPixH*3.*sqrt(2)/24, figPixH*.09, "'center'", Font2{:}, 'HorizontalAlignment','center', 'VerticalAlignment','middle')
text(axMain2, figPixH*4.6.*sqrt(2)/24, figPixH*.09, "'left'", Font2{:}, 'HorizontalAlignment','left', 'VerticalAlignment','middle')

%% Figure and Axes ========================================================
rectangle(axMain3, 'Position',figPixH.*[0.0015, .595, .35, .225], 'FaceColor',[1,1,1])
text(axMain3,figPixH*.0055,figPixH*.835 , 'ax = axes(''Position'',[left,bottom,width,height])', Font4{:})

ax = axes('Parent',figMain, 'Position',[.5755, .6755, .1355, .115]);
annotation('doublearrow','Position',[.506, .6885, .0675, 0])
annotation('doublearrow','Position',[.585, .5975, 0, .075])
annotation('doublearrow','Position',[.5755, .7905, .1355, 0])
annotation('doublearrow','Position',[.711, .6755, 0, .115])
text(axMain3, figPixH*.0507, figPixH*.68, 'left', Font2{:}, 'HorizontalAlignment', 'center', 'Color','k')
text(axMain3, figPixH*.093, figPixH*.64, 'bottom', Font2{:}, 'HorizontalAlignment', 'center', 'Color','k')
text(axMain3, figPixH*.327, figPixH*.7337, 'height', Font2{:}, 'HorizontalAlignment', 'center', 'Color','k')
text(axMain3, figPixH*.2647, figPixH*.7989, 'width', Font2{:}, 'HorizontalAlignment', 'center', 'Color','k')
text(axMain3, figPixH*.0114, figPixH*.8053 , 'Figure', Font5{:})

ax.FontName = 'consolas';
set(ax.XLabel, Font4{:})
set(ax.YLabel, Font4{:})
set(ax.Title, Font4{:})
ax.XLabel.String = 'xlabel(''X'')';
ax.YLabel.String = 'ylabel(''Y'')';
ax.Title.String = 'title(''T'')';
ax.XTick = 0:.2:1;
ax.YTick = 0:.2:1;
ax.XGrid = 'on';
ax.YGrid = 'on';
ax.XLim = [0,1];
t = linspace(.35,1,30);
ax.NextPlot = "add";
plot(ax, t, sin(t*1.5*pi)/2+.5,'LineWidth',1)
plot(ax, t, cos(t*1.5*pi)/2+.5,'LineWidth',1)
plot(ax, [.2,.8315], [.4,.1503], 'Color','none', 'Marker','o', 'MarkerSize',6, 'MarkerEdgeColor',[0,116,165]./255, 'LineWidth',.5)
lgd = legend({'A','B'},'Position',[.665, .745, .035, .0275]);
lgd.Title.String='legend()';
set(lgd.Title, Font4{:},'FontWeight','normal')
text(ax, .03, .88  , 'Axes', Font5{:})
text(ax, .18, .55  , 'grid on', Font4{:}, 'HorizontalAlignment','center')
text(ax, .65, .2  , 'hold on', Font4{:}, 'HorizontalAlignment','center')
%% Combining plots ========================================================
x = linspace(0,3*pi,60);
y1 = sin(x);
y2 = sin(3*x);
y3 = x/2;

pixL = .0895;
pix1 = 0*pixL;
axB11 = axesB(figMain, [.505, .455 + pix1, .05, .072]);
plot(axB11, x, y1, 'LineWidth',1.5)
axB12 = axesB(figMain, [.505 + .05*.6, .455 + .072*.6 + pix1, .05*.3, .072*.3]);
plot(axB12, x, y3, 'LineWidth',1.5)
text(axMain3, figPixH*.09, figPixH*(.53 + pix1), 'overlay charts', Font2{:}, 'Color','k', 'VerticalAlignment','top')
text(axMain3, figPixH*.09, figPixH*(.512 + pix1), {'plot(x1,y1)';'ax2 = axes(''Position'',[.6,.6,.3,.3])';'plot(ax2,x2,y2)'},...
    Font4{:}, 'VerticalAlignment','top')

pix2 = -1*pixL;
axB21 = axesB(figMain, [.505, .495 + pix2, .05, .032]);
plot(axB21, x, y1, 'LineWidth',1.5)
axB22 = axesB(figMain, [.505, .455 + pix2, .05, .032]);
plot(axB22, x, y2, 'LineWidth',1.5)
text(axMain3, figPixH*.09, figPixH*(.53 + pix2), 'subplot', Font2{:}, 'Color','k', 'VerticalAlignment','top')
text(axMain3, figPixH*.09, figPixH*(.512 + pix2), {'subplot(2,1,1); plot(x1,y1)';'subplot(2,1,2); plot(x2,y2)'},...
    Font4{:}, 'VerticalAlignment','top')

pix3 = -2*pixL;
axB31 = axesB(figMain, [.505, .495 + pix3, .05, .032]);
plot(axB31, x, y1, 'LineWidth',1.5)
axB32 = axesB(figMain, [.505, .455 + pix3, .05, .032]);
plot(axB32, x, y2, 'LineWidth',1.5)
text(axMain3, figPixH*.09, figPixH*(.53 + pix3), 'tiledlayout R2019b', Font2{:}, 'Color','k', 'VerticalAlignment','top')
text(axMain3, figPixH*.09, figPixH*(.512 + pix3), {'tiledlayout(''flow'')';'nexttile; plot(x1,y1)';'nexttile; plot(x2,y2)'},...
    Font4{:}, 'VerticalAlignment','top')

pix4 = -3*pixL;
axB41 = axesB(figMain, [.505, .495 + pix4, .023, .032]);
plot(axB41, x, y1, 'LineWidth',1.5)
axB42 = axesB(figMain, [.505, .455 + pix4, .023, .032]);
plot(axB42, x, y2, 'LineWidth',1.5)
axB43 = axesB(figMain, [.505 + .027, .455 + pix4, .023, .072]);
plot(axB43, x, y3, 'LineWidth',1.5)
text(axMain3, figPixH*.09, figPixH*(.53 + pix4), 'tiledlayout(varied) R2019b', Font2{:}, 'Color','k', 'VerticalAlignment','top')
text(axMain3, figPixH*.09, figPixH*(.512 + pix4), {'tiledlayout(''flow'')';'nexttile; plot(x1,y1)';'nexttile([2,1]); plot(x2,y2)';'nexttile; plot(x3,y3)'},...
    Font4{:}, 'VerticalAlignment','top')

pix5 = -4*pixL;
axB51 = axesB(figMain, [.505, .455 + pix5, .05, .072]);
yyaxis left
plot(x,y1, 'LineWidth',1.5)
yyaxis right
axB51.YTick = [];
plot(x,y3, 'LineWidth',1.5)
text(axMain3, figPixH*.09, figPixH*(.53 + pix5), 'yyaxis', Font2{:}, 'Color','k', 'VerticalAlignment','top')
text(axMain3, figPixH*.09, figPixH*(.512 + pix5), {'yyaxis left; plot(x1,y1)';'yyaxis right; plot(x2,y2)'},...
    Font4{:}, 'VerticalAlignment','top')

pix6 = -5*pixL;
axB61 = axesB(figMain, [.505, .495 + pix6, .05, .032]);
plot(axB61, x, y1, 'LineWidth',1.5)
axB62 = axesB(figMain, [.505, .455 + pix6, .05, .032]);
plot(axB62, x, y2, 'LineWidth',1.5)
axB61.Box = 'off';
axB62.Box = 'off';
text(axMain3, figPixH*.09, figPixH*(.53 + pix6), 'stackedplot R2018b', Font2{:}, 'Color','k', 'VerticalAlignment','top')
text(axMain3, figPixH*.09, figPixH*(.512 + pix6), {'tbl = table(y1(:),y2(:));';'stackedplot(tbl)'},...
    Font4{:}, 'VerticalAlignment','top')

    function ax = axesB(fig, pos)
        ax = axes('Parent',fig, 'Position',pos);
        ax.Box = 'on';
        ax.XTick = [];
        ax.YTick = [];
        ax.LineWidth = 1.5;
        ax.XColor = [.3,.3,.3];
        ax.YColor = [.3,.3,.3];
        ax.NextPlot = 'add';
    end
%% Colormaps ==============================================================
% R2020b R2023b
cmapList = { parula , jet , turbo , hsv , hot , cool , spring , summer ,...
     autumn , winter , gray , bone , copper , pink , sky , abyss , lines , colorcube , prism , flag };
cmapName = {'parula','jet','turbo','hsv','hot','cool','spring','summer',...
    'autumn','winter','gray','bone','copper','pink','sky','abyss','lines','colorcube','prism','flag'};
n = 1;
for i = 1:2
    for j = 1:10
        drawCMap(axMain4, figPixH.*[0 + (i-1)*(sqrt(2)/4-.165) , .8 - (j-1)*.05,.165,.03], cmapList{n})
        text(axMain4, figPixH*(0 + (i-1)*(sqrt(2)/4-.165)), figPixH*(.84 - (j-1)*.05), ['''',cmapName{n},''''], Font2{:})
        if n == 3
            text(axMain4, figPixH*(0 + (i-1)*(sqrt(2)/4-.165) + .165), figPixH*(.84 - (j-1)*.05), 'R2020b', Font2{:}, 'Color','k', 'HorizontalAlignment','right')
        end
        if n == 15
            text(axMain4, figPixH*(0 + (i-1)*(sqrt(2)/4-.165) + .165), figPixH*(.84 - (j-1)*.05), 'R2023a', Font2{:}, 'Color','k', 'HorizontalAlignment','right')
        end
        if n == 16
            text(axMain4, figPixH*(0 + (i-1)*(sqrt(2)/4-.165) + .165), figPixH*(.84 - (j-1)*.05), 'R2023b', Font2{:}, 'Color','k', 'HorizontalAlignment','right')
        end
        n = n + 1;
    end
end
    function drawCMap(ax, pos, CList)
        C=[];
        C(:,:,1)=repmat([CList(:,1)',nan],[3,1]);
        C(:,:,2)=repmat([CList(:,2)',nan],[3,1]);
        C(:,:,3)=repmat([CList(:,3)',nan],[3,1]);
        GList = rgb2gray(CList);
        [XMesh,YMesh]=meshgrid(linspace(pos(1),pos(1)+pos(3),size(CList,1)+1),linspace(pos(2)+pos(4)/2,pos(2)+pos(4),3));
        surface(ax, XMesh, YMesh, XMesh.*0, 'CData',C, 'EdgeColor','none')
        C=[];
        C(:,:,1)=repmat([GList(:,1)',nan],[3,1]);
        C(:,:,2)=repmat([GList(:,2)',nan],[3,1]);
        C(:,:,3)=repmat([GList(:,3)',nan],[3,1]);
        [XMesh,YMesh]=meshgrid(linspace(pos(1),pos(1)+pos(3),size(CList,1)+1),linspace(pos(2),pos(2)+pos(4)/2,3));
        surface(ax, XMesh, YMesh, XMesh.*0, 'CData',C, 'EdgeColor','none')
    end
%% Color Palettes =========================================================
rectangle(axMain4, 'Position',figPixH.*[0.0015, .006, .35, .265], 'FaceColor',[1,1,1])
text(axMain4,figPixH*.013,figPixH*.257 , 'C = orderedcolors(palettename)',Font4{:})
orderCList = {'gem','gem12','glow','glow12','sail','reef','meadow','dye','earth'};
for i = 1:length(orderCList)
    text(axMain4,figPixH*.008, figPixH*(.235 - (i-1)*.027), ['''',orderCList{i},''''], Font2{:})
    orderC = orderedcolors(orderCList{i});
    N = size(orderC,1);
    for j = 1:N
        plot(axMain4,figPixH*(0.09 + (j-1)*.0225), figPixH*(.235 - (i-1)*.027),'MarkerFaceColor',orderC(j,:),...
            'MarkerEdgeColor', 'none', 'Marker','o', 'LineWidth',.5, 'MarkerSize', 12)
    end
end
%% ========================================================================
% set(gcf,'WindowButtonDownFcn',@getpoint)
%     function getpoint(~,~)
%         xy1 = get(gca,'CurrentPoint')./figPixH
%         xy2 = get(gcf,'CurrentPoint')./figPixH./[sqrt(2),1]
%     end

print('cheatsheet.png','-dpng','-r500')
end

