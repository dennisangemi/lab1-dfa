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
dm=df1.uncertainty(5);
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
g=9.81;

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
for i=1:lt
    F(i)=m(i).*(g-a(i));
end

% plotting
scatter=figure
plot(a,F,'o')

% propagation of error
da=zeros(lt,1);
for i=1:lt
    da(i)=(2.*ds+((4.*s.*dt)/(tm(i))))./(tm(i).^2);
end
da
%%
% exporting csv
%writetable(array2table(name-array,'VariableNames',{'acceleration','uncertainty','relative_error'}),'..\data\output-data-1.csv','Delimiter',',','Encoding','UTF-8')
%writetable(array2table(name-array,'VariableNames',{'coefficient_friction','uncertainty','relative_error'}),'..\data\output-data-2.csv','Delimiter',',','Encoding','UTF-8')

% exporting img
%saveas(name-figure,'..\img\img-1.png');
%saveas(name-figure,'..\img\img-2.png');

% exporting mlx2m
mlxloc = fullfile(pwd,'livescript.mlx');
fileout = 'script.m';
matlab.internal.liveeditor.openAndConvert(mlxloc,fileout);