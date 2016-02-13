f=fopen('win_sin.hex','r'); m=fscanf(f,'%f',[1 inf]);size(m) 

plot((m));
fclose(f);