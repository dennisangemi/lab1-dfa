%% Data Analysis
%% Piano inclinato

clear

% importing data
df1=readtable("experimental-data-1.csv")
df2=readtable("experimental-data-2.csv")
tools=readtable("tools.csv")
%%
% incertezza
ds=tools.Sensibilita(1);
dt=tools.Sensibilita(3),


% tempi
t=df2.t;
tm1=t(1:40,:);
%histfit(t1m1)
%hist(tm1)


tm2=df2.t(41:80,:);
%hist(tm2)

tm3=df2.t(81:120,:);
%hist(tm3)

tm4=df2.t(121:160,:);
%hist(tm4)

tm5=df2.t(161:200,:);
%hist(tm5)

% spazio
s1=df1.valore(3);
s2=df1.valore(4);
s=s1-s2

% altezza
h2=df1.valore(1);
h1=df1.valore(2);
h=h1-h2

% angolo
rteta=asin(h./s)
dteta=(180./pi)*rteta

figure
plot(1:40,tm1,".")
title('m1')
ylabel('t(s)')
xlabel('index')

figure
plot(1:40,tm2,".")
title('m2')
ylabel('t(s)')
xlabel('index')

figure
plot(1:40,tm3,".")
title('m3')
ylabel('t(s)')
xlabel('index')

figure
plot(1:40,tm4,".")
title('m4')
ylabel('t(s)')
xlabel('index')

figure
plot(1:40,tm5,".")
title('m5')
ylabel('t(s)')
xlabel('index')

% subplot
% subplot(5,1,1)
% plot(1:40,tm1,".")
% title('m1')
% ylabel('t(s)')
% xlabel('index')
% subplot(5,1,2)
% plot(1:40,tm2,".")
% title('m2')
% ylabel('t(s)')
% xlabel('index')
% subplot(5,1,3)
% plot(1:40,tm3,".")
% title('m3')
% ylabel('t(s)')
% xlabel('index')
% subplot(5,1,4)
% plot(1:40,tm4,".")
% title('m4')
% ylabel('t(s)')
% xlabel('index')
% subplot(5,1,5)
% plot(1:40,tm5,".")
% title('m5')
% ylabel('t(s)')
% xlabel('index')
%%
% test g
g1=(2.*s)/(sin(rteta).*((mean(tm1)).^2))
g2=(2.*s)/(sin(rteta).*((mean(tm2)).^2))
g3=(2.*s)/(sin(rteta).*((mean(tm3)).^2))
g4=(2.*s)/(sin(rteta).*((mean(tm4)).^2))
g5=(2.*s)/(sin(rteta).*((mean(tm5)).^2))

% acceleration
a1=(2.*s)/((mean(tm1)).^2)
a2=(2.*s)/((mean(tm2)).^2)
a3=(2.*s)/((mean(tm3)).^2)
a4=(2.*s)/((mean(tm4)).^2)
a5=(2.*s)/((mean(tm5)).^2)
%%
% propagazione errori
dg= 0.01;
g=9.81;
n=length(tm1);

dmu=(((2*ds)/(((cos(rteta))^2)*sqrt(s^2-h^2)))*(1-((a1*sin(rteta))/g))*(1+(h/s)))+((2*(ds+(4*s*dt)))/((mean(tm1)^2)*g*cos(rteta)))+((a1*dg)/((g^2)*cos(rteta)))
m1=tan(rteta)-(a1/g*cos(rteta))

% save to .m
mlxloc = fullfile(pwd,'livescript.mlx');
fileout = 'script.m';
matlab.internal.liveeditor.openAndConvert(mlxloc,fileout);
%% 
% mu1=