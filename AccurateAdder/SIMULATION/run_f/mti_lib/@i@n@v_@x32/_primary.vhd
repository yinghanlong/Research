library verilog;
use verilog.vl_types.all;
entity INV_X32 is
    port(
        A               : in     vl_logic;
        ZN              : out    vl_logic
    );
end INV_X32;
