library verilog;
use verilog.vl_types.all;
entity NAND4_X2 is
    port(
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic;
        A4              : in     vl_logic;
        ZN              : out    vl_logic
    );
end NAND4_X2;
