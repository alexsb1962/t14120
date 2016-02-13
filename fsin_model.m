% Altera NCO version 9.0
%    function [s,c] = fsin_model(phi_inc_i,phase_mod_i,freq_mod_i)
%    input  :  phi_inc_i   : phase increment input (required)
%              phase_mod_i : phase modulation input(optional)
%              freq_mod_i  : frequency modulation input(optional)
%    output :  s           : sine wave output
%              c           : cosine wave output
function [s,c] = fsin_model(phi_inc_i,phase_mod_i,freq_mod_i)
addpath c:/altera/11.0sp1/ip/altera/nco/lib/ip_toolbench/../;
if(nargin==0)
 fprintf('Error using fsin_model : Not enough input arguments\n');
else
 N=length(phi_inc_i);
end
if(nargin==1)
 phase_mod_i=zeros(1,N);
 freq_mod_i=zeros(1,N);
elseif(nargin==2)
 if(length(phase_mod_i)~=N)
   fprintf('Error using fsin_model : input vector length mismatch\n');
 else
   freq_mod_i=zeros(1,N);
 end
elseif(nargin==3)
 if((length(phase_mod_i)~=N)|length(freq_mod_i)~=N)
   fprintf('Error using fsin_model : input vector length mismatch\n');
 end
else
 fprintf('Error using fsin_model : Incorrect number of input arguments\n');
end
N=length(phi_inc_i);
numch = 1.0;
apr = 20.0;
apri = 20.0;
mpr = 16.0;
aprp = 16.0;
aprf = 32.0;
dpri = 10.0;
arch = 2.0;
wantFmod = 0.0;
wantPmod = 0.0;
dual = 1.0;
[s,c] = Sncomodel(phi_inc_i,phase_mod_i,freq_mod_i,wantFmod,wantPmod,numch,apr,mpr,apri,aprp,aprf,dpri,arch,dual,N);
