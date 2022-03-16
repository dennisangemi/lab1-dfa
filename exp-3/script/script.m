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
dm=df1.uncertainty(5)./1000;
dt=df2.uncertainty(2);

% calculating

% average t
tm0=mean(t0);
tm1=mean(t1);
tm2=mean(t2);
tm3=mean(t3);
tm4=mean(t4);

% creating array t
tm=[tm0,tm1,tm2,tm3,tm4];
lt=length(tm);


% space
s=s1-s2;

% acceleration
a=zeros(lt,1);
g=9.8;
dg=0.1;

for i=1:lt
    a(i)=(2.*s)./(tm(i))^2;
end
a

% masses in g
m=zeros(lt,1);
m(1)=df1.value(5);
m(2)=m(1)+df1.value(6);
m(3)=m(1)+df1.value(7);
m(4)=m(1)+df1.value(8);
m(5)=m(1)+df1.value(9);

% masses in kg
m=m/1000

% force
F=zeros(lt,1);
dF=zeros(lt,1);
ref=zeros(lt,1)
for i=1:lt
    F(i)=m(i).*(g-a(i));
    dF(i)=((g-a(i))*2*dm)+(m(i)*dg)+(m(i)*((2.*ds+((4.*s.*dt)/(tm(i))))./(tm(i).^2)));
    ref(i)=(dF(i)./F(i))*100;
end

force=horzcat(F,dF,ref)

% propagation of error
da=zeros(lt,1);
cfra=zeros(lt,1);
rea=zeros(lt,1);
for i=1:lt
    da(i)=(2.*ds+((4.*s.*dt)/(tm(i))))./(tm(i).^2);
    cfra(i)=-floor(log10(da(i))); % da sistemare
    da(i)=round(da(i),cfra(i)); % da sistemare
    rea(i)=(da(i)./a(i))*100; % da sistemare
    rea(i)=round(rea(i),2); % da sistemare
end

acceleration=horzcat(a,da,rea)

% plotting
scatter=figure
plot(a,F,'o')
errorbar(a,F,dF,dF,da,da,'.')

% testing
a2=zeros(lt-1,1);
f2=zeros(lt-1,1);
a2(1)=a(1);
a2(2)=a(3);
a2(3)=a(4);
a2(4)=a(5);

f2(1)=F(1);
f2(2)=F(3);
f2(3)=F(4);
f2(4)=F(5);
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