library verilog;
use verilog.vl_types.all;
entity CLKGATE_X8 is
    port(
        CK              : in     vl_logic;
        E               : in     vl_logic;
        GCK             : out    vl_logic
    );
end CLKGATE_X8;
