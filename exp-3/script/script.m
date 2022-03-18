% cleaning
clc
clear

% importing data
df1=readtable("..\data\experimental-data-1.csv")
df2=readtable("..\data\experimental-data-3.csv")
tools=readtable("..\data\tools.csv")
%%
% defining variables
t0=df2.t1(1:20,:);
t1=df2.t1(21:40,:);
t2=df2.t1(41:60,:);
t3=df2.t1(61:80,:);
t4=df2.t1(81:100,:);

s1=df1.value(1);
s2=df1.value(2);
ds=df1.uncertainty(1);
dm=df1.uncertainty(5)./1000; %kg

% uncomment to aproximate t
% dt=0.01;
% t0=round(t0,2);
% t1=round(t1,2);
% t2=round(t2,2);
% t3=round(t3,2);
% t4=round(t4,2);

% average t
tm0=mean(t0);
tm1=mean(t1);
tm2=mean(t2);
tm3=mean(t3);
tm4=mean(t4);

% creating array for t
tm=[tm0,tm1,tm2,tm3,tm4];
lt=length(tm);

% space
s=s1-s2;

% gravitational acceleration
g=9.8;
dg=0.1;

% masses in g
m=zeros(lt,1);
m(1)=df1.value(5);
m(2)=m(1)+df1.value(6);
m(3)=m(1)+df1.value(7);
m(4)=m(1)+df1.value(8);
m(5)=m(1)+df1.value(9);

% masses in kg
m=m/1000;

% standard deviation t
std0=round(std(t0),3);
std1=round(std(t1),3);
std2=round(std(t2),3);
std3=round(std(t3),3);
std4=round(std(t4),3);
dt=[std0,std1,std2,std3,std4];

% creating empty array
a=zeros(lt,1);      % acceleration
da=zeros(lt,1);     % delta a
rea=zeros(lt,1);    % relative error a
cfra=zeros(lt,1);   % position first significant digit da
cfrf=zeros(lt,1);   % position first significant digit df
f=zeros(lt,1);      % force
df=zeros(lt,1);     % delta F
ref=zeros(lt,1);    % relative error force
mc=zeros(lt,1);     % mass of the cart
dmc=zeros(lt,1);    % error mass cart
remc=zeros(lt,1);   % rleative error mass cart
cfrmc=zeros(lt,1);  % position first significant digit dmc
uoma=string(zeros(lt,1));   % uom acceleration
uomf=string(zeros(lt,1));   % uom force
uommc=string(zeros(lt,1));  % uom mass cart

% core
for i=1:lt

    % acceleration
    a(i)=(2.*s)./(tm(i))^2;

    % force
    f(i)=m(i).*(g-a(i));
    
    % mass of cart
    mc(i)=m(i).*((g./a(i))-1);

    % propagation of error acceleration
    da(i)=(2.*ds+((4.*s.*dt(i))/(tm(i))))./(tm(i).^2);
    cfra(i)=-floor(log10(da(i)));   % position first significant digit a
    da(i)=round(da(i),cfra(i));     % round da
    a(i)=round(a(i),cfra(i));       %round acceleration
    
    % propagation of error force
    df(i)=((g-a(i))*2*dm)+(m(i)*dg)+(m(i)*((2.*ds+((4.*s.*dt(i))/(tm(i))))./(tm(i).^2)));
    cfrf(i)=-floor(log10(df(i)));   % position first significant digit f
    df(i)=round(df(i),cfrf(i));     % round df
    f(i)=round(f(i),cfrf(i));       % round f
    
    % propagation of error mass cart
    dmc(i)=((g/(a(i))-1)*2*dm)+((m(i)*dg)/a(i))+(((m(i)*g)/(a(i)^2))*(2.*ds+((4.*s.*dt(i))/(tm(i))))./(tm(i).^2));
    cfrmc(i)=-floor(log10(dmc(i)));     % position first significant digit dmc
    dmc(i)=round(dmc(i),cfrmc(i));      % round dmc
    mc(i)=round(mc(i),cfrmc(i));        % round f

    % relative error
    rea(i)=round((da(i)./a(i))*100,2);        % relative error a
    ref(i)=round((df(i)./f(i))*100,2);        % relative error f
    remc(i)=round((dmc(i)./mc(i))*100,2);     % relative error mc
    
end

% plotting

% distribution t1,t2,t3,t4,t5 scatterplot
tdist1=figure;

subplot(2,3,1)
plot(1:20,t0,'o')
% xlim([0,20])
% ylim([0,2.5])
title('t0')

subplot(2,3,2)
plot(1:20,t1,'o')
% xlim([0,20])
% ylim([0,2])
title('t1')

subplot(2,3,3)
plot(1:20,t2,'o')
% xlim([0,20])
% ylim([0,2])
title('t2')

subplot(2,3,4)
plot(1:20,t3,'o')
% xlim([0,20])
% ylim([0,2])
title('t3')

subplot(2,3,5)
plot(1:20,t4,'o')
% xlim([0,20])
% ylim([0,2])
title('t4')

% histogram
b=5;
tdist2=figure;
subplot(2,3,1)
histogram(t0,b)
title(strcat('m_0 ',' \sigma=',string(std0)))
subplot(2,3,2)
histogram(t1,b)
title(strcat('m_0 + m_1 ',' \sigma=',string(std1)))
subplot(2,3,3)
histogram(t2,b)
title(strcat('m_0 + m_2 ',' \sigma=',string(std2)))
subplot(2,3,4)
histogram(t3,b)
title(strcat('m_0 + m_3 ',' \sigma=',string(std3)))
subplot(2,3,5)
histogram(t4,b)
title(strcat('m_0 + m_4 ',' \sigma=',string(std4)))

% scatterplot F-a
scatter=figure;
errorbar(a,f,df,df,da,da,'.')
xlabel('Acceleration (m/s^2)')
ylabel('Force (N)')
xlim([0,2])
ylim([0,0.5])

% visualize force array
force=horzcat(f,df,ref)

% visualize acceleration array
acceleration=horzcat(a,da,rea)

% kg2g
mcm=mean(mc)*1000
mc=mc*1000;
dmc=dmc*1000;

% visualize mass of cart array
masscart=horzcat(mc,dmc,remc)

% significant digits
as=zeros(lt,1);     % acceleration significant digits
fs=zeros(lt,1);     % force significant digits
mcs=zeros(lt,1);    % mass cart significant digits

for i=1:lt
    as(i)=sprintf(strcat('%.',string(cfra(i)),'f'),a(i));
    fs(i)=sprintf(strcat('%.',string(cfrf(i)),'f'),f(i));
    mcs(i)=sprintf(strcat('%.',string(cfrmc(i)),'f'),mc(i));
end

% converting array num to string
a=string(a);
da=string(da);
rea=string(rea);
f=string(f);
df=string(df);
ref=string(ref);
mc=string(mc);
dmc=string(dmc);
remc=string(remc);

% substituting values
for i=1:lt
    a(i)=as(i);
    f(i)=fs(i);
    mc(i)=mcs(i);
    rea(i)=sprintf('%.2f',rea(i));
    ref(i)=sprintf('%.2f',ref(i));
    remc(i)=sprintf('%.2f',remc(i));
    uoma(i)='MSK';
    uomf(i)='NEW';
    uommc(i)='GRM';
end

% creating output array
acceleration=horzcat(a,da,uoma,rea)
force=horzcat(f,df,uomf,ref)
masscart=horzcat(mc,dmc,uommc,remc)
%%
% exporting csv
writetable(array2table(acceleration,'VariableNames',{'acceleration','uncertainty','uom','relative_error'}),'..\data\output-data-1.csv','Delimiter',',','Encoding','UTF-8')
writetable(array2table(force,'VariableNames',{'force','uncertainty','uom','relative_error'}),'..\data\output-data-2.csv','Delimiter',',','Encoding','UTF-8')
writetable(array2table(masscart,'VariableNames',{'mass','uncertainty','uom','relative_error'}),'..\data\output-data-3.csv','Delimiter',',','Encoding','UTF-8')

% exporting img
saveas(tdist1,'..\img\img-1.png');
saveas(tdist2,'..\img\img-2.png');
saveas(scatter,'..\img\img-3.png');

% exporting mlx2m
mlxloc = fullfile(pwd,'livescript.mlx');
fileout = 'script.m';
matlab.internal.liveeditor.openAndConvert(mlxloc,fileout);