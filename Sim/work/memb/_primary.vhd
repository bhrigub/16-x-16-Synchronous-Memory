library verilog;
use verilog.vl_types.all;
entity memb is
    port(
        op              : out    vl_logic_vector(15 downto 0);
        ip              : in     vl_logic_vector(15 downto 0);
        addr            : in     vl_logic_vector(3 downto 0);
        we              : in     vl_logic;
        oe              : in     vl_logic;
        clk             : in     vl_logic
    );
end memb;
