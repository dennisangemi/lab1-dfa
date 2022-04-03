% table density
% https://www.usgs.gov/special-topics/water-science-school/science/water-density#:~:text=A%20common%20unit%20of%20measurement,Celsius%20(39.2%C2%B0%20Fahrenheit).

% cleaning
clc
clear

% importing data
df1=readtable("..\data\experimental-data-1.csv")
%df2=readtable("..\data\experimental-data-2.csv")
tools=readtable("..\data\tools.csv")

% defining variables
M1=table2array(df1(df1.dimension=="M1","value"));
M21=table2array(df1(df1.dimension=="M21","value"));
M22=table2array(df1(df1.dimension=="M22","value"));
M23=table2array(df1(df1.dimension=="M23","value"));
M31=table2array(df1(df1.dimension=="M31","value"));
M32=table2array(df1(df1.dimension=="M32","value"));
M33=table2array(df1(df1.dimension=="M33","value"));
DM=df1.uncertainty(1);
DA=0.99802;     % density of water
DDA=0.00001;    %uncertainty density

% array
M1=[M1;M1;M1];
M2=[M21;M22;M23];
M3=[M31;M32;M33];
uomD=["23";"23";"23"]

% empty array
DD=zeros(length(M2),1);
DDS=zeros(length(M2),1); % error D string
DS=zeros(length(M2),1); % D string
reDS=zeros(length(M2),1); % relative error D string

% density
D=((M2-M1).*DA)./(M2-M3)

% uncertainty
DD=(2.*DA.*DM)./(M2-M3) + abs(((M2-M1).*DDA)./((M2-M3).^2)) + ((M2-M1).*DDA)./(M2-M3)
reD=DD./D;

% significant digits
cfrD=zeros(length(D),1);

for i=1:length(D)
    cfrD(i)=-floor(log10(DD(i)));
    DD(i)=round(DD(i),cfrD(i));
    DDS(i)=sprintf(strcat('%.',string(cfrD(i)),'f'),DD(i));
    D(i)=round(D(i),cfrD(i));
    DS(i)=sprintf(strcat('%.',string(cfrD(i)),'f'),D(i));
    reD(i)=round(reD(i),cfrD(i));
    reDS(i)=sprintf(strcat('%.',string(cfrD(i)),'f'),reD(i));
end

% creating output array
density=array2table(string(horzcat([1;2;3],D,DD,uomD,reD)),"VariableNames",{'configuration','density','uncertainty','uom','relative_error'})
%%
% exporting csv
writetable(density,'..\data\output-data-1.csv','Delimiter',',','Encoding','UTF-8')

% exporting img
% saveas(grid,'..\img\plot-1.png');

% exporting mlx2m
mlxloc = fullfile(pwd,'livescript.mlx');
fileout = 'script.m';
matlab.internal.liveeditor.openAndConvert(mlxloc,fileout);