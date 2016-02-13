library verilog;
use verilog.vl_types.all;
entity sld_signaltap is
    generic(
        SLD_CURRENT_RESOURCE_WIDTH: integer := 0;
        SLD_INVERSION_MASK: string  := "0";
        SLD_POWER_UP_TRIGGER: integer := 0;
        SLD_ADVANCED_TRIGGER_6: string  := "NONE";
        SLD_ADVANCED_TRIGGER_9: string  := "NONE";
        SLD_ADVANCED_TRIGGER_7: string  := "NONE";
        SLD_STORAGE_QUALIFIER_ADVANCED_CONDITION_ENTITY: string  := "basic";
        SLD_STORAGE_QUALIFIER_GAP_RECORD: integer := 0;
        SLD_INCREMENTAL_ROUTING: integer := 0;
        SLD_STORAGE_QUALIFIER_PIPELINE: integer := 0;
        SLD_TRIGGER_IN_ENABLED: integer := 0;
        SLD_STATE_BITS  : integer := 11;
        SLD_STATE_FLOW_USE_GENERATED: integer := 0;
        SLD_INVERSION_MASK_LENGTH: integer := 1;
        SLD_DATA_BITS   : integer := 1;
        SLD_BUFFER_FULL_STOP: integer := 1;
        SLD_STORAGE_QUALIFIER_INVERSION_MASK_LENGTH: integer := 0;
        SLD_ATTRIBUTE_MEM_MODE: string  := "OFF";
        SLD_STORAGE_QUALIFIER_MODE: string  := "OFF";
        SLD_STATE_FLOW_MGR_ENTITY: string  := "state_flow_mgr_entity.vhd";
        SLD_NODE_CRC_LOWORD: integer := 50132;
        SLD_ADVANCED_TRIGGER_5: string  := "NONE";
        SLD_TRIGGER_BITS: integer := 1;
        SLD_STORAGE_QUALIFIER_BITS: integer := 1;
        SLD_ADVANCED_TRIGGER_10: string  := "NONE";
        SLD_MEM_ADDRESS_BITS: integer := 7;
        SLD_ADVANCED_TRIGGER_ENTITY: string  := "basic";
        SLD_ADVANCED_TRIGGER_4: string  := "NONE";
        SLD_TRIGGER_LEVEL: integer := 10;
        SLD_ADVANCED_TRIGGER_8: string  := "NONE";
        SLD_RAM_BLOCK_TYPE: string  := "AUTO";
        SLD_ADVANCED_TRIGGER_2: string  := "NONE";
        SLD_ADVANCED_TRIGGER_1: string  := "NONE";
        SLD_DATA_BIT_CNTR_BITS: integer := 4;
        lpm_type        : string  := "sld_signaltap";
        SLD_NODE_CRC_BITS: integer := 32;
        SLD_SAMPLE_DEPTH: integer := 16;
        SLD_ENABLE_ADVANCED_TRIGGER: integer := 0;
        SLD_SEGMENT_SIZE: integer := 0;
        SLD_NODE_INFO   : integer := 0;
        SLD_STORAGE_QUALIFIER_ENABLE_ADVANCED_CONDITION: integer := 0;
        SLD_NODE_CRC_HIWORD: integer := 41394;
        SLD_TRIGGER_LEVEL_PIPELINE: integer := 1;
        SLD_ADVANCED_TRIGGER_3: string  := "NONE";
        ELA_STATUS_BITS : integer := 4;
        N_ELA_INSTRS    : integer := 8
    );
    port(
        jtag_state_sdr  : in     vl_logic;
        ir_out          : out    vl_logic_vector;
        jtag_state_cdr  : in     vl_logic;
        ir_in           : in     vl_logic_vector;
        tdi             : in     vl_logic;
        acq_trigger_out : out    vl_logic_vector;
        jtag_state_uir  : in     vl_logic;
        acq_trigger_in  : in     vl_logic_vector;
        trigger_out     : out    vl_logic;
        storage_enable  : in     vl_logic;
        acq_data_out    : out    vl_logic_vector;
        acq_data_in     : in     vl_logic_vector;
        acq_storage_qualifier_in: in     vl_logic_vector;
        jtag_state_udr  : in     vl_logic;
        tdo             : out    vl_logic;
        crc             : in     vl_logic_vector;
        jtag_state_e1dr : in     vl_logic;
        raw_tck         : in     vl_logic;
        usr1            : in     vl_logic;
        acq_clk         : in     vl_logic;
        shift           : in     vl_logic;
        ena             : in     vl_logic;
        clr             : in     vl_logic;
        trigger_in      : in     vl_logic;
        update          : in     vl_logic;
        rti             : in     vl_logic
    );
end sld_signaltap;
