%% Data Analysis
%% Piano inclinato

% cleaning
clc
clear

% importing data
df1=readtable("..\data\experimental-data-1.csv")
df2=readtable("..\data\experimental-data-2.csv")
df3=readtable("..\data\experimental-data-3.csv")
tools=readtable("..\data\tools.csv")

% defining variables
v1=df3.v1;
v2=df3.v2;

% uncertainty
ds=tools.uncertainty(1);
dt=tools.uncertainty(3);
dg=0.01;
dm=tools.uncertainty(2);
dv=tools.uncertainty(4);

% creating masses array
hm=unique(df2.mass);
m=df1.value([5:7 9],:)
lm=length(hm);

% gravitational acceleration
g=9.81;

% tempi
t1=df2.t(1:40,:);
t2=df2.t(41:80,:);
t3=df2.t(81:120,:);
t4=df2.t(121:160,:);
t5=df2.t(161:200,:);

% space
s1=df1.value(3);
s2=df1.value(4);

% height
h2=df1.value(1);
h1=df1.value(2);

% general variable
n=length(t1);

% number of bins
nb=6;

% small multiples
grid=figure;
subplot(5,2,1)
histogram(t1,nb)
title('Configurazione m_1')
subplot(5,2,2)
plot(1:40,t1,".")
ylabel('t(s)')
xlabel('index')
subplot(5,2,3)
histogram(t2,nb)
title('Configurazione m_2')
subplot(5,2,4)
plot(1:40,t2,".")
ylabel('t(s)')
xlabel('index')
subplot(5,2,5)
histogram(t3,nb)
title('Configurazione m_3')
subplot(5,2,6)
plot(1:40,t3,".")
ylabel('t(s)')
xlabel('index')
subplot(5,2,7)
histogram(t4,nb)
title('Configurazione m_4')
subplot(5,2,8)
plot(1:40,t4,".")
ylabel('t(s)')
xlabel('index')
subplot(5,2,9)
histogram(t5,nb)
title('Configurazione m_5')
subplot(5,2,10)
plot(1:40,t5,".")
ylabel('t(s)')
xlabel('index')
grid.Position=[10 10 400 800]; % [left bottom width height]

% average time
tm1=mean(t1);
tm2=mean(t2);
tm3=mean(t3);
tm4=mean(t4);
tm5=mean(t5);

% creating array tm
tm=[tm1;tm2;tm3;tm4;tm5];

% space
s=s1-s2;

% height
h=h1-h2;

% angle
rteta=asin(h./s); %rad
dteta=(180./pi)*rteta; %deg

% creating empty array
a=zeros(lm,1);      % acceleration
da=zeros(lm,1);     % error acceleration
rea=zeros(lm,1);    % relative error (acceleration)
mu=zeros(lm,1);     % coefficient of friction
dmu=zeros(lm,1);    % error coefficient of friction
rec=zeros(lm,1);    % relative error (coefficient)
cfra=zeros(lm,1);   % position first significant value (acceleration)
cfr=zeros(lm,1);
uoma=string(zeros(lm,1));  % uom acceleration

% multiply ds*2 because s=s1-s2
ds=ds.*2;

for i=1:lm

    % calculating accelerations
    a(i)=(2.*s)/((tm(i)).^2);

    % calculating coefficient of friction
    mu(i)=tan(rteta)-(a(i)./g.*cos(rteta));
    
    % propagation of uncertainty acceleration
    da(i)=(2.*(ds+(4.*s.*dt)))./(tm(i).^2);
    
    % propagation of uncertainty coefficient
    dmu(i)=(((2.*ds)/(((cos(rteta)).^2)*sqrt(s.^2-h^2))).*(1-((a(i).*sin(rteta))./g)).*(1+(h./s)))+((2.*(ds+(4.*s.*dt)))./((tm(i).^2).*g.*cos(rteta)))+((a(i).*dg)./((g.^2).*cos(rteta)));
    
    % rounding values
    cfr(i)=-floor(log10(dmu(i)));
    dmu(i)=round(dmu(i),cfr(i));
    mu(i)=round(mu(i),cfr(i));
    cfra(i)=-floor(log10(da(i)));
    da(i)=round(da(i),cfra(i));
    a(i)=round(a(i),cfra(i));
    
    % relative error
    rea(i)=(da(i)/a(i))*100;
    rea(i)=round(rea(i),2);
    rec(i)=(dmu(i)./mu(i))*100;
    rec(i)=round(rec(i),2);

    % uom
    uoma(i)="MSK";
end

% significant digits
as=string(zeros(lm,1));     %acceleration significant digits (temp)
mus=string(zeros(lm,1));    %mu significant digits (temp)

for i=1:lm
    as(i)=sprintf(strcat('%.',num2str(cfra(i)),'f'),round(a(i),cfra(i)));
    mus(i)=sprintf(strcat('%.',num2str(cfr(i)),'f'),round(mu(i),cfr(i)));
end

% converting a,mu,rea,rec array to string
a=string(a);
mu=string(mu);
rea=string(rea);
rec=string(rec);

% substituting values
for i=1:lm
    a(i)=as(i);
    mu(i)=mus(i);
    rec(i)=sprintf('%.2f',rec(i));
    rea(i)=sprintf('%.2f',rea(i));
end

% calculating density
v=v2-v1;
d=m./(v);

% error density
dv=dv./2; % sensibilità siringa
dd=dm./v + 2.*m.*dv./(v.^2);
red=round((dd./d)*100,2);

% creating empty array
cfrd=zeros(length(m),1);   % position first significant value error density
ds=string(zeros(length(m),1));     % density string
ms=string(zeros(length(m),1));     % mass string
reds=string(zeros(length(m),1));   % relative error density string
ms=string(zeros(length(m),1));     % mass string
hms=string(zeros(length(m),1));
hms(1)="m1"; hms(2)="m2"; hms(3)="m3";hms(4)="m5";
uomd=string(zeros(length(m),1));

% significant digit
for i=1:length(m)
    cfrd(i)=-floor(log10(dd(i)));
    dd(i)=round(dd(i),cfrd(i));
    d(i)=round(d(i),cfrd(i));

    uomd(i)="23";

    reds(i)=sprintf('%.2f',red(i));
    ms(i)=sprintf('%.2f',m(i));
    ds(i)=sprintf(strcat('%.',string(cfrd(i)),'f'),d(i));
end

% creating output array
acceleration=array2table(string(horzcat(string(hm),a,da,uoma,rea)),"VariableNames",{'configuration','acceleration','uncertainty','uom','relative_error'})
coefficient=array2table(string(horzcat(string(hm),mu,dmu,rec)),'VariableNames',{'configuration','coefficient_friction','uncertainty','relative_error'})
density=array2table(horzcat(hms,ds,dd,uomd,reds),"VariableNames",{'mass','density','uncertainty','uom','relative_error'})
%%
% exporting csv
writetable(acceleration,'..\data\output-data-1.csv','Delimiter',',','Encoding','UTF-8')
writetable(coefficient,'..\data\output-data-2.csv','Delimiter',',','Encoding','UTF-8')
writetable(density,'..\data\output-data-3.csv','Delimiter',',','Encoding','UTF-8')

% exporting img
saveas(grid,'..\img\plot-1.png');

% exporting mlx2m
mlxloc = fullfile(pwd,'livescript.mlx');
fileout = 'script.m';
matlab.internal.liveeditor.openAndConvert(mlxloc,fileout);