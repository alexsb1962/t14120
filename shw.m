f=fopen('win_sncs.txt','r'); m=fscanf(f,'%f %f',[2 inf]);size(m) 
c1=m(1,:);
c2=m(2,:);
plot( c2 );
