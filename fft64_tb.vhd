-- ================================================================================
-- Legal Notice: Copyright (C) 1991-2008 Altera Corporation
-- Any megafunction design, and related net list (encrypted or decrypted),
-- support information, device programming or simulation file, and any other
-- associated documentation or information provided by Altera or a partner
-- under Altera's Megafunction Partnership Program may be used only to
-- program PLD devices (but not masked PLD devices) from Altera.  Any other
-- use of such megafunction design, net list, support information, device
-- programming or simulation file, or any other related documentation or
-- information is prohibited for any other purpose, including, but not
-- limited to modification, reverse engineering, de-compiling, or use with
-- any other silicon devices, unless such use is explicitly licensed under
-- a separate agreement with Altera or a megafunction partner.  Title to
-- the intellectual property, including patents, copyrights, trademarks,
-- trade secrets, or maskworks, embodied in any such megafunction design,
-- net list, support information, device programming or simulation file, or
-- any other related documentation or information provided by Altera or a
-- megafunction partner, remains with Altera, the megafunction partner, or
-- their respective licensors.  No other licenses, including any licenses
-- needed under any third party's intellectual property, are provided herein.
-- ================================================================================
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all; 
entity fft64_tb is
end fft64_tb;

architecture tb of fft64_tb is
  
  constant clk_time_step : time := 1 ns;

  signal clk     : std_logic;
  signal reset_n : std_logic;
  signal fftpts_in     : std_logic_vector (6 downto 0);
  signal fftpts_out     : std_logic_vector (6 downto 0);
  signal inverse      : std_logic;
  signal sink_valid   : std_logic;
  signal sink_sop     : std_logic;
  signal sink_eop     : std_logic;
  signal sink_error   : std_logic_vector(1 downto 0);
  signal sink_real    : std_logic_vector (32 - 1 downto 0);
  signal sink_imag    : std_logic_vector (32 - 1 downto 0);
  signal source_ready : std_logic;
  signal sink_ready   : std_logic;
  signal source_sop   : std_logic;
  signal source_eop   : std_logic;
  signal source_valid : std_logic;
  signal source_error : std_logic_vector(1 downto 0);
  signal source_real : std_logic_vector (32 - 1 downto 0);
  signal source_imag : std_logic_vector (32 - 1 downto 0);
  
  constant NUM_FRAMES_c : natural := 4;
  -- for testing purposes, the input file contains 2 frames of data of sizes
  type     fftpts_list_t is array (NUM_FRAMES_c - 1 downto 0) of natural;
  signal fftpts_array : fftpts_list_t := (64, 16, 64, 16);
  signal start            : std_logic;
  -- number of input frames
  signal frames_in_index   : natural range 0 to NUM_FRAMES_c := 0;
  -- number of output frames
  signal frames_out_index : natural range 0 to NUM_FRAMES_c := 0;

  signal cnt        : natural range 0 to 64;
  signal end_test   : std_logic;
  -- signal the end of the input data stream and output data stream.
  signal end_input  : std_logic;
  signal end_output : std_logic;

--------------------------------------------------------------------------------------------                                      
-- FFT Component Declaration
--------------------------------------------------------------------------------------------                                      
  component fft64 is
    port (
      clk          : in  std_logic;
      reset_n      : in  std_logic;
      fftpts_in    : in  std_logic_vector (6 downto 0);
      fftpts_out   : out  std_logic_vector (6 downto 0);
      inverse      : in  std_logic;
      sink_valid   : in  std_logic;
      sink_sop     : in  std_logic;
      sink_eop     : in  std_logic;
      sink_real    : in  std_logic_vector (32 - 1 downto 0);
      sink_imag    : in  std_logic_vector (32 - 1 downto 0);
      source_ready : in  std_logic;
      sink_ready   : out std_logic;
      sink_error   : in  std_logic_vector(1 downto 0);
      source_error : out std_logic_vector(1 downto 0);
      source_sop   : out std_logic;
      source_eop   : out std_logic;
      source_valid : out std_logic;
      source_real  : out std_logic_vector (32 - 1 downto 0);
      source_imag  : out std_logic_vector (32 - 1 downto 0)
      ); 
  end component fft64;
  
begin
  -----------------------------------------------------------------------------------------------
  -- Reset Generation                                                                          
  -----------------------------------------------------------------------------------------------
  reset_n <= '0',
             '1' after 92*clk_time_step;
  -----------------------------------------------------------------------------------------------
  -- Clock Generation                                                                         
  -----------------------------------------------------------------------------------------------
  clkgen : process
  begin
    if end_test = '1' and  end_output = '1' then
      clk <= '0';
      wait;
    else
      clk <= '0';
      wait for 5*clk_time_step;
      clk <= '1';
      wait for 5*clk_time_step;
    end if;
  end process clkgen;

  -----------------------------------------------------------------------------------------------
  -- Set FFT Direction                                                                           
  -- '0' => FFT                                                                                  
  -- '1' => IFFT                                                                                 
  -----------------------------------------------------------------------------------------------
  inverse <= '0';


  -- for example purposes, the ready signal is always asserted.
  source_ready <= '1';

  -- no input error
  sink_error <= (others => '0');

  -- start valid for first cycle to indicate that the file reading should start.
  start_p : process (clk, reset_n)
  begin
    if reset_n = '0' then
      start <= '1';
    elsif rising_edge(clk) then
      if sink_valid = '1' and sink_ready = '1' then
        start <= '0';
      end if;
    end if;
  end process start_p;


  -- sop and eop asserted in first and last sample of data
  cnt_p : process (clk, reset_n)
  begin
    if reset_n = '0' then
      cnt <= 0;
    elsif rising_edge(clk) then
      if sink_valid = '1' and sink_ready = '1' then
        if cnt = fftpts_array(frames_in_index) - 1 then
          cnt <= 0;
        else
          cnt <= cnt + 1;
        end if;
      end if;
    end if;
  end process cnt_p;

  fftpts_in <= std_logic_vector(to_unsigned(fftpts_array(frames_in_index), fftpts_in'length));

  -- count the input frames and increment the index
  increment_index_p : process (clk, reset_n)
  begin
    if reset_n = '0' then
      frames_in_index <= 0;
    elsif rising_edge(clk) then
      if sink_eop = '1' and sink_valid = '1' and sink_ready = '1' then
        if frames_in_index < NUM_FRAMES_c - 1 then
          frames_in_index <= frames_in_index + 1;
        end if;
      end if;
    end if;
  end process increment_index_p;

  -- count the output frames and increment the index
  increment_out_index_p : process (clk, reset_n)
  begin
    if reset_n = '0' then
      frames_out_index <= 0;
    elsif rising_edge(clk) then
      if source_eop = '1' and source_valid = '1' and source_ready = '1' then
        if frames_out_index < NUM_FRAMES_c - 1 then
          frames_out_index <= frames_out_index + 1;
        end if;
      end if;
    end if;
  end process increment_out_index_p;

  -- signal when all of the input data has been sent to the DUT
  end_input <= '1' when (sink_eop = '1' and sink_valid = '1' and sink_ready = '1' and (frames_in_index = NUM_FRAMES_c - 1)) else
               '0';

  -- signal when all of the output data has be received from the DUT
  end_output <= '1' when source_eop = '1' and source_valid = '1' and source_ready = '1' and (frames_out_index = NUM_FRAMES_c - 1) else
                '0';

  -- generate start and end of packet signals
  sink_sop <= '1' when cnt = 0 else
              '0';

  sink_eop <= '1' when cnt = fftpts_array(frames_in_index) - 1 else
              '0';

  -- halt the input when done
  end_test_p : process (clk, reset_n)
  begin
    if reset_n = '0' then
      end_test <= '0';
    elsif rising_edge(clk) then
      if end_input = '1' then
        end_test <= '1';
      end if;
    end if;
  end process end_test_p;

  -----------------------------------------------------------------------------------------------
  -- Read input data from files                                                                  
  -----------------------------------------------------------------------------------------------
  testbench_i : process(clk) is
    file r_file     : text open read_mode is "fft64_real_input.txt";
    variable data_r : std_logic_vector(sink_real'length  - 1  downto 0);
    variable rdata  : line;
    file i_file     : text open read_mode is "fft64_imag_input.txt";
    variable idata  : line;
    variable data_i :  std_logic_vector(sink_imag'length - 1 downto 0);
  begin
    if(reset_n = '0') then
      sink_real  <= std_logic_vector(to_signed(0, 32));
      sink_imag  <= std_logic_vector(to_signed(0, 32));
      sink_valid <= '0';
    elsif rising_edge(clk) then

      -- send in NUM_FRAMES_c of data or until the end of the file
      if not endfile(r_file) and (end_input = '0' and end_test = '0') then
        if((sink_valid = '1' and sink_ready = '1') or
           (start = '1' and not (sink_valid = '1' and sink_ready = '0'))) then
          readline(r_file, rdata);
          hread(rdata, data_r);
          readline(i_file, idata);
          hread(idata, data_i);
          sink_valid <= '1';
          sink_real  <= data_r;
          sink_imag  <= data_i;
        else
          sink_valid <= '1';
          sink_real  <= sink_real;
          sink_imag  <= sink_imag;
        end if;
      else
        sink_valid <= '0';
        sink_real <= std_logic_vector(to_signed(0, 32));
        sink_imag <= std_logic_vector(to_signed(0, 32));
      end if;
    end if;
    
  end process testbench_i;

  ---------------------------------------------------------------------------------------------
  -- Write Real and Imginary Components and Block Exponent to Files                                               
  ---------------------------------------------------------------------------------------------

  testbench_o : process(clk, reset_n) is
    file ro_file   : text open write_mode is "fft64_real_output_vhd.txt";
    variable rdata : line;
    variable data_r : std_logic_vector(32 - 1 downto 0);
    file io_file   : text open write_mode is "fft64_imag_output_vhd.txt";
    variable idata : line;
    variable data_i : std_logic_vector(32 - 1 downto 0);
  begin
    if rising_edge(clk) and reset_n = '1' then
      if(source_valid = '1' and source_ready = '1') then
        data_r := source_real;
        data_i := source_imag;
        hwrite(rdata, data_r);
        writeline(ro_file, rdata);
        hwrite(idata, data_i);
        writeline(io_file, idata);
      end if;
    end if;
  end process testbench_o;

  -----------------------------------------------------------------------------
  -- Write the blocks sizes and inverse generated to files
  -----------------------------------------------------------------------------
  blksize_report_o : process(clk) is
    file blk_file     : text open write_mode is "fft64_blksize_report.txt";
    variable blkdata  : line;
    variable data_blk : integer;
    file inv_file     : text open write_mode is "fft64_inverse_report.txt";
    variable invdata  : line;
    variable data_inv : bit;
  begin
    if rising_edge(clk) then
      if(sink_valid = '1' and sink_ready = '1' and sink_sop = '1') then
        data_blk := to_integer(unsigned(fftpts_in));
        write(blkdata, data_blk);
        writeline(blk_file, blkdata);
        data_inv := to_bit(inverse);
        write(invdata, data_inv);
        writeline(inv_file, invdata);
     end if;
    end if;
  end process blksize_report_o;


  ---------------------------------------------------------------------------------------------
  -- FFT Component Instantiation                                                               
  ---------------------------------------------------------------------------------------------
  fft64_inst : fft64
    port map (
      clk          => clk,
      reset_n      => reset_n,
      fftpts_in    => fftpts_in,
      fftpts_out   => fftpts_out,
      inverse      => inverse,
      sink_valid   => sink_valid,
      sink_sop     => sink_sop,
      sink_eop     => sink_eop,
      sink_real    => sink_real,
      sink_imag    => sink_imag,
      sink_error   => sink_error,
      source_error => source_error,
      source_ready => source_ready,
      sink_ready   => sink_ready,
      source_sop   => source_sop,
      source_eop   => source_eop,
      source_valid => source_valid,
      source_real  => source_real,
      source_imag  => source_imag);


end tb;