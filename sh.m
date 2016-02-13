f=fopen('win_re.txt','r'); m=fscanf(f,'%f %f',[2 inf]);size(m) 
c1=m(1,:).^2;
c2=m(2,:).^2;
a=c1+c2;
a(32)=0;
plot((a));
