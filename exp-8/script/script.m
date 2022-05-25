% importing data
df1=readtable("../data/experimental-data-1.csv")
df2=readtable("../data/experimental-data-2.csv")
tools=readtable("../data/tools.csv")

% defining values
hl=string(df1.dimension);
l=df1.value./100;
dl=df1.uncertainty(1)/100;
t=zeros(length(hl),1);
dg=zeros(length(hl),1);
cfr=zeros(length(hl),1);
dt=df2.uncertainty(1);
uom=string(zeros(length(hl),1));


for i=1:length(hl)
    t(i)=(mean(table2array(df2(string(df2.configuration)==hl(i),"t"))));
end

% calculating gravitational acceleration
g=l.*(((2.*pi)./(t./10)).^2);

% propagazione errori
for i=1:length(dg)
    dg(i) = (2.*pi./t(i)).^2 .* 100 .* ( (l(i).*2.*dt.*10)./(t(i))  +dl );

    % rounding value
    cfr(i)=-floor(log10(dg(i))); % position first significant digit g
    dg(i)=round(dg(i),cfr(i));   % round dg
    g(i)=round(g(i),cfr(i));   % round g calculated

    %uom
    uom(i)="MSK";
end

% relative error
re=round((dg./g)*100,2);

% mean
gt=round(mean(g),1);
dgt=round(mean(dg),1);
ret=round((dgt/gt)*100,2);

% creating output array
out1=array2table(cat(2,hl,l,t,g,dg,uom,re),"VariableNames",{'l','length','period_s','g','uncertainty_g','uom','relative_error_g'})
out2=array2table(cat(2,gt,dgt,uom(1),ret),"VariableNames",{'gravitational_acceleration','uncertainty','uom','relative_error'})
%%
% exporting plot
% saveas(plot1,"../img/plot-1.png")

% exporting csv
writetable(out1,"../data/output-data-1.csv","Encoding",'UTF-8','Delimiter',',')
writetable(out2,"../data/output-data-2.csv","Encoding",'UTF-8','Delimiter',',')

% exporting mlx2m
mlxloc = fullfile(pwd,'livescript.mlx');
fileout = 'script.m';
matlab.internal.liveeditor.openAndConvert(mlxloc,fileout);