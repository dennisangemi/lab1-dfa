% importing data
df1=readtable("../data/experimental-data-1.csv")
df2=readtable("../data/experimental-data-2.csv")
tools=readtable("../data/tools.csv")

% defining values
hl=string(df1.dimension);
l=df1.value./100;
t=zeros(length(hl),1);
for i=1:length(hl)
    t(i)=(mean(table2array(df2(string(df2.configuration)==hl(i),"t")))./10);
end

g=l.*(((2.*pi)./t).^2);
out1=array2table(cat(2,hl,l,t,g),"VariableNames",{'l','length','period','g'})

mean(g)
%%
% exporting plot
% saveas(plot1,"../img/plot-1.png")

% exporting csv
writetable(out1,"../data/output-data-1.csv","Encoding",'UTF-8','Delimiter',',')
% writetable(out2,"../data/output-data-2.csv","Encoding",'UTF-8','Delimiter',',')

% exporting mlx2m
mlxloc = fullfile(pwd,'livescript.mlx');
fileout = 'script.m';
matlab.internal.liveeditor.openAndConvert(mlxloc,fileout);