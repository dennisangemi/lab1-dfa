% importing data
df1=readtable("../data/experimental-data-1.csv")
df2=readtable("../data/experimental-data-2.csv")
% df3=readtable("../data/experimental-data-3.csv")
tools=readtable("../data/tools.csv")

% defining values and converting to SI
d=df1.value(2:5)/1000
d(1)=df1.value(1)/1000
r=d/2
dd=df1.uncertainty(1)/1000
F=table2array(df1(df1.dimension=="F","value"))/1000
c=table2array(df1(df1.dimension=="c","value"))/1000
mh=unique(df2.mass)

T1=table2array(df2(df2.mass=="m1","t5"))/5;
T2=table2array(df2(df2.mass=="m3","t5"))/5;
T3=table2array(df2(df2.mass=="m4","t5"))/5;
T4=table2array(df2(df2.mass=="m5","t5"))/5;

dF=table2array(df1(df1.dimension=="F","uncertainty"))/1000
dc=table2array(df1(df1.dimension=="c","uncertainty"))/1000
dT=df2.uncertainty(2)/5
dr=df1.uncertainty(1)/1000
dr=dr/2;

% average of T
T=[mean(T1);mean(T2);mean(T3);mean(T4)]

% creating empty array
g=zeros(length(T),1);
dg=zeros(length(T),1);
cfr=zeros(length(T),1);
re=zeros(length(T),1);
uom=string(zeros(length(T),1));

% calculating curvature radius
R=((c.^2./(8.*F)) + (F./2))

for i=1:length(T)
    % gravitational acceleration
    g(i)= ((28*pi^2)*(R-r(i)))/(5*T(i)^2);

    % propagation of error
    dg(i)=((28.*pi.^2)./(5.*T(i).^2)).*((2.*c.*dc)./(8.*F) + abs(1./2 - (c.^2)./(8.*F.^2)).*dF) + 28.*pi.^2.*dr./(5*T(i)^2) + 28.*pi^2.*(R-r(i))*(2*T(i)*dT)/(5*T(i)^4);

    % uom
    uom(i)="MSK";

    % significant value
    cfr(i)=-floor(log10(dg(i)));
    dg(i)=round(dg(i),cfr(i));
    g(i)=round(g(i),cfr(i)+1);

    % relative error
    re(i)=round((dg(i)./g(i))*100,2);
end

plot1=figure;
plot([0;1;2;3;4;5],[9.81;9.81;9.81;9.81;9.81;9.81])
hold on
errorbar([1;2;3;4],g,dg,dg,'.')
xlim([0,5])
ylim([0,15])
hold off
legend('theoretical','data','Location','southeast')
title('Gravitational acceleration')
ylabel('g (m/s^2)')
xlabel('index')

% creating table
out1=array2table(cat(2,string(mh),g,dg,uom,re),"VariableNames",{'body','gravitational_acceleration','uncertainty','uom','relative_error'})
out2=array2table(cat(2,round(mean(g),2),round(mean(dg),2),uom(1),round((round(mean(dg),2)/round(mean(g),2)*100),2)),"VariableNames",{'gravitational_acceleration','uncertainty','uom','relative_error'})

% exporting plot
saveas(plot1,"../img/plot-1.png")

% exporting csv
writetable(out1,"../data/output-data-1.csv","Encoding",'UTF-8','Delimiter',',')
writetable(out2,"../data/output-data-2.csv","Encoding",'UTF-8','Delimiter',',')

% exporting mlx2m
mlxloc = fullfile(pwd,'livescript.mlx');
fileout = 'script.m';
matlab.internal.liveeditor.openAndConvert(mlxloc,fileout);