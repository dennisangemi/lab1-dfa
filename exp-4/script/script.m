% cleaning
clc
clear

% importing data
df1=readtable("..\data\experimental-data-1.csv")
df2=readtable("..\data\experimental-data-2.csv")
tools=readtable("..\data\tools.csv")

% unique distance
hd=unique(df2.distance);
ld=length(hd);

% defining variable
l0=1;
g=9.8;
dg=0.1;

% creating empty array
tm=zeros(ld,1);     % tempi medi
dtm=zeros(ld,1);    % deviazione standard tempi
d=zeros(ld,1);      % distance from CM
dd=zeros(ld,1);     % delta distance
tt=zeros(ld,1);     % delta t
r=[0:0.0001:0.5];   % theoretical distance
gc=zeros(ld,1);     % gravitational acceleration calculated
dgc=zeros(ld,1);    % delta gc
regc=zeros(ld,1);   % relative error gravitational acceleration

% multiply *2 and converttng ms2s
for i=1:height(df2)
    df2.time(i)=df2.time(i).*2./1000;
    
    % rounding
    df2.time(i)=round(df2.time(i),2);
end


% core
for i=1:ld
    % calculating mean and converting ms2s
    tm(i)=mean(table2array(df2(df2.distance==string(hd(i)),"time")));
    
    % standard deviation on t
    % dtm(i)=round(std(table2array(df2(df2.distance==string(hd(i)),"time"))),2);
    dtm(i)=0.05;

    % distance from cm
    d(i)=table2array(df1(df1.dimension==string(hd(i)),"value"));
    d(i)=d(i)-50;
    d(i)=d(i)/100; %cm2m
    
    % errore su d
    % dd(i)=df1.uncertainty(1)/100; 
    dd(i)=0.005;

    % gravitational acceleration
    gc(i)=(l0.^2.*pi.^2)./(3.*d(i).*tm(i).^2)+(4.*pi.^2.*d(i))./(tm(i).^2);
    dgc(i)=((pi.^2).*2.*l0.*dd(i))./(3.*d(i).*tm(i).^2)  +  (((((l0.^2).*pi.^2)/(3.*d(i).*tm(i).^4))+(4.*pi^2.*d(i)./tm(i).^4)).*8.*tm(i).*dtm(i))  +  abs(-((l0.^2.*pi.^2)./(3.*d(i).^2.*tm(i).^2)) + (4.*pi.^2)./(tm(i).^2)).*dd(i);
    regc(i)=dgc(i)./gc(i)*100;
end

% view array
cat(2,gc,dgc,regc)
round(mean(gc(2:10)),1)
round(mean(dgc(2:10)),0)

% theoretical curve
tt=(2.*pi./sqrt(g)).*sqrt(((l0.^2)./(12.*r))+r);

% visualizing array
cat(2,string(hd),d,dd,tm,dtm)

% plotting
plt=figure;
errorbar(d,tm,dtm,dtm,dd,dd,'.')
xlabel('Distanza dal CM (m)')
ylabel('Periodo T (s)')
xlim([0,0.5])
hold on
plot(r,tt)
hold off
ylim([0,8])
legend('data','theoretical curve')



% df2(df2.distance=="d1","time") % sostituire "d1" con gli elementi degli array
% mean(table2array(df2(df2.distance=="d1","time")))
%%
% exporting csv
% writetable(array2table(namearray,'VariableNames',{'acceleration','uncertainty','uom','relative_error'}),'..\data\output-data-1.csv','Delimiter',',','Encoding','UTF-8')

% exporting img
saveas(plt,'..\img\plot.png');

% exporting mlx2m
mlxloc = fullfile(pwd,'livescript.mlx');
fileout = 'script.m';
matlab.internal.liveeditor.openAndConvert(mlxloc,fileout);