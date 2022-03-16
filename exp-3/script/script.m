% cleaning
clc
clear

% importing data
df1=readtable("..\data\experimental-data-1.csv")
df2=readtable("..\data\experimental-data-2.csv")
tools=readtable("..\data\tools.csv")
%%
% defining variables
t0=df2.t1(1:10,:);
t1=df2.t1(11:20,:);
t2=df2.t1(21:30,:);
t3=df2.t1(31:40,:);
t4=df2.t1(41:50,:);
s1=df1.value(1);
s2=df1.value(2);
ds=df1.uncertainty(1);
dm=df1.uncertainty(5)./1000; %kg
dt=df2.uncertainty(2);

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

% creating empty array
a=zeros(lt,1);      % acceleration
da=zeros(lt,1);     % delta a
rea=zeros(lt,1);    % relative error a
cfra=zeros(lt,1);   % position first significant digit da
cfrf=zeros(lt,1);   % position first significant digit df
f=zeros(lt,1);      % force
df=zeros(lt,1);     % delta F
ref=zeros(lt,1);     % relative error force

%%% --- WIP --- %%%

% core
for i=1:lt

    % acceleration
    a(i)=(2.*s)./(tm(i))^2;

    % force
    f(i)=m(i).*(g-a(i));
    
    % propagation of error acceleration
    da(i)=(2.*ds+((4.*s.*dt)/(tm(i))))./(tm(i).^2);
    cfra(i)=-floor(log10(da(i)));   % position first significant digit a
    da(i)=round(da(i),cfra(i));     % round da
    a(i)=round(a(i),cfra(i));       %round acceleration
    rea(i)=round((da(i)./a(i))*100,2); % relative error a
    
    % propagation of error force
    df(i)=((g-a(i))*2*dm)+(m(i)*dg)+(m(i)*((2.*ds+((4.*s.*dt)/(tm(i))))./(tm(i).^2)));
    cfrf(i)=-floor(log10(df(i)));   % position first significant digit f
    df(i)=round(df(i),cfrf(i));     % round df
    f(i)=round(f(i),cfrf(i));       % round f
    ref(i)=round((df(i)./f(i))*100,2);

end

% plotting
scatter=figure;
errorbar(a,f,df,df,da,da,'.')
xlabel('Acceleration (m/s^2)')
ylabel('Force (N)')

% visualize force array
force=horzcat(f,df,ref)

% visualize acceleration array
acceleration=horzcat(a,da,rea)

%%% --- WIP --- %%%

% significant digits
as=zeros(lt,1);     % acceleration significant digits
fs=zeros(lt,1);     % force significant digits

for i=1:lt
    as(i)=sprintf(strcat('%.',string(cfra(i)),'f'),a(i));
    fs(i)=sprintf(strcat('%.',string(cfrf(i)),'f'),f(i));
end

% converting array to string
a=string(a);
da=string(da);
rea=string(rea);
f=string(f);
df=string(df);
ref=string(df);

% substituting values
for i=1:lt
    a(i)=as(i);
    f(i)=fs(i);
    rea(i)=sprintf('%.2f',rea(i));
    ref(i)=sprintf('%.2f',ref(i));
end

% creating output array
acceleration=horzcat(a,da,rea)
force=horzcat(f,df,ref)

% testing (deleted m2)
% a2=zeros(lt-1,1);
% f2=zeros(lt-1,1);
% a2(1)=a(1);
% a2(2)=a(3);
% a2(3)=a(4);
% a2(4)=a(5);
% 
% f2(1)=f(1);
% f2(2)=f(3);
% f2(3)=f(4);
% f2(4)=f(5);
%%
% exporting csv
writetable(array2table(acceleration,'VariableNames',{'acceleration','uncertainty','relative_error'}),'..\data\output-data-1.csv','Delimiter',',','Encoding','UTF-8')
writetable(array2table(force,'VariableNames',{'force','uncertainty','relative_error'}),'..\data\output-data-2.csv','Delimiter',',','Encoding','UTF-8')

% exporting img
saveas(scatter,'..\img\img-1.png');
%saveas(name-figure,'..\img\img-2.png');

% exporting mlx2m
mlxloc = fullfile(pwd,'livescript.mlx');
fileout = 'script.m';
matlab.internal.liveeditor.openAndConvert(mlxloc,fileout);