library verilog;
use verilog.vl_types.all;
entity deco_4x16 is
    port(
        d               : out    vl_logic_vector(15 downto 0);
        en              : in     vl_logic;
        ip              : in     vl_logic_vector(3 downto 0)
    );
end deco_4x16;
