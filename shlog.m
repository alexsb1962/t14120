f=fopen('win_log.txt','r'); m=fscanf(f,'%f %f',[1 inf]);size(m) 
a=m(1,:);
plot((a));
fclose(f);