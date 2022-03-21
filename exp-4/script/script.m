% cleaning
clc
clear

% importing data
df1=readtable("..\data\experimental-data-1.csv")
df2=readtable("..\data\experimental-data-2.csv")
tools=readtable("..\data\tools.csv")

histogram(table2array(df2(df2.distance=="d3","time")),20)
%%


% unique distance
d=unique(df2.distance);
ld=length(d);

% creating empty array
tm=zeros(ld,1);     % tempi medi
dtm=zeros(ld,1);    % deviazione standard tempi

% multiply *2
for i=1:height(df2)
    df2.time(i)=df2.time(i)*2;
end


% calculating mean t in s
for i=1:ld
    tm(i)=mean(table2array(df2(df2.distance==string(d(i)),"time"))./1000);
    dtm(i)=std(table2array(df2(df2.distance==string(d(i)),"time"))./1000);
end

cat(2,tm,dtm)

% histogram

histogram(table2array(df2(df2.distance==string(d(1)),"time")))
histogram(table2array(df2(df2.distance==string(d(2)),"time")))
histogram(table2array(df2(df2.distance==string(d(3)),"time")),20)
histogram(table2array(df2(df2.distance==string(d(4)),"time")))
histogram(table2array(df2(df2.distance==string(d(5)),"time")))
histogram(table2array(df2(df2.distance==string(d(6)),"time")))



% df2(df2.distance=="d1","time") % sostituire "d1" con gli elementi degli array
% mean(table2array(df2(df2.distance=="d1","time")))
%%
% exporting csv
% writetable(array2table(namearray,'VariableNames',{'acceleration','uncertainty','uom','relative_error'}),'..\data\output-data-1.csv','Delimiter',',','Encoding','UTF-8')

% exporting img
% saveas(nameplot,'..\img\filename.png');

% exporting mlx2m
mlxloc = fullfile(pwd,'livescript.mlx');
fileout = 'script.m';
matlab.internal.liveeditor.openAndConvert(mlxloc,fileout);