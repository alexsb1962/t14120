%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %{tool}
% file : fft_tb.m
%
% Description : The following Matlab testbench excercises the Altera FFT Model fft_model.m
% generated by Altera's FFT Megacore and outputs results to text files.
%
% 2001-2009 Altera Corporation, All Rights Reserved
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read transform sizes from source text file
fidnps = fopen('fft_blksize_report.txt','r');
fidinv = fopen('fft_inverse_report.txt','r');
% Note: fft_blksize_report.txt is generated when the HDL simulation is run, so if it does
% not exist then flag an error
if fidnps == -1 
  msgbox('Error: fft_blksize_report does not exist, run the HDL simulation first.', 'fft_blksize_report.txt missing', 'error');
elseif fidinv == -1 
  msgbox('Error: fft_inverse_report does not exist, run the HDL simulation first.', 'fft_inverse_report.txt missing', 'error');
else
  % Read input complex vector, and transform sizes from source text files 
  fidr = fopen('fft_real_input.txt','r');                                            
  fidi = fopen('fft_imag_input.txt','r');
  % input files are use a hexadecimal representation of the float value
  xreali=fscanf(fidr,'%x\n');                                                      
  ximagi=fscanf(fidi,'%x\n');   
  %
  % convert from hex to float value:
  % value = (-1)sign(2^exp-127)(1.significand)
  % where
  %     sign is bit 1, 
  %     exponent is bits 2-9,
  %     mantissa is bits 10-32
  %
  xrealib = dec2bin(xreali,32);
  ximagib = dec2bin(ximagi,32); 
  xrealisign  = bin2dec(xrealib(:,1));
  ximagisign  = bin2dec(ximagib(:,1));
  xrealiexp = bin2dec(xrealib(:,2:9));
  ximagiexp = bin2dec(ximagib(:,2:9));
  xrealiman = bin2dec(xrealib(:,10:32));
  ximagiman = bin2dec(ximagib(:,10:32));
  xreali = ((-1).^xrealisign).*(1+xrealiman./(2^23)).*(2.^(xrealiexp - 127));
  ximagi = ((-1).^ximagisign).*(1+ximagiman./(2^23)).*(2.^(ximagiexp - 127));
  nps=fscanf(fidnps,'%d');
  inverse=fscanf(fidinv,'%d'); 
  fclose(fidi);                                                                  
  fclose(fidr);   
  fclose(fidnps); 
  % Create input complex row vector from source text files 
  x = xreali' + j*ximagi';
  [y] = fft_model(x,nps,inverse); 
  fidro = fopen('fft_real_output_c_model.txt','w');                                  
  fidio = fopen('fft_imag_output_c_model.txt','w');
  realout = real(y);
  imagout = imag(y);
  for i=1:length(realout)
    fprintf(fidro, '%tX\n', realout(:,i));
    fprintf(fidio, '%tX\n', imagout(:,i));
  end
  fclose(fidro);                                                                 
  fclose(fidio);
end