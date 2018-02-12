library verilog;
use verilog.vl_types.all;
entity dff2 is
    port(
        op              : out    vl_logic_vector(15 downto 0);
        d               : in     vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        en              : in     vl_logic
    );
end dff2;
