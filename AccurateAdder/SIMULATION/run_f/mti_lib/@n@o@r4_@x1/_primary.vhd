library verilog;
use verilog.vl_types.all;
entity NOR4_X1 is
    port(
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic;
        A4              : in     vl_logic;
        ZN              : out    vl_logic
    );
end NOR4_X1;
