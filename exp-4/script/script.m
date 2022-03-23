% cleaning
clc
clear

% importing data
df1=readtable("..\data\experimental-data-1.csv")
df2=readtable("..\data\experimental-data-2.csv")
tools=readtable("..\data\tools.csv")
%%


% unique distance
hd=unique(df2.distance);
ld=length(hd);

% creating empty array
tm=zeros(ld,1);     % tempi medi
dtm=zeros(ld,1);    % deviazione standard tempi
d=zeros(ld,1);      % distance from CM
dd=zeros(ld,1);     % delta distance

% multiply *2
for i=1:height(df2)
    df2.time(i)=df2.time(i)*2;
end


% calculating mean t in s
for i=1:ld
    tm(i)=mean(table2array(df2(df2.distance==string(hd(i)),"time"))./1000);
    dtm(i)=std(table2array(df2(df2.distance==string(hd(i)),"time"))./1000);
    d(i)=table2array(df1(df1.dimension==string(hd(i)),"value"));
    d(i)=d(i)-50;
    dd(i)=df1.uncertainty(1);
end

cat(2,string(hd),d,dd,tm,dtm)
% plotting
errorbar(d,tm,dtm,dtm,dd,dd,'o')
xlabel('distance (cm)')
ylabel('Periodo T (s)')
xlim([0,50])

% histogram

histogram(table2array(df2(df2.distance==string(hd(1)),"time")))
histogram(table2array(df2(df2.distance==string(hd(2)),"time")))
histogram(table2array(df2(df2.distance==string(hd(3)),"time")),20)
histogram(table2array(df2(df2.distance==string(hd(4)),"time")))
histogram(table2array(df2(df2.distance==string(hd(5)),"time")))
histogram(table2array(df2(df2.distance==string(hd(6)),"time")))


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