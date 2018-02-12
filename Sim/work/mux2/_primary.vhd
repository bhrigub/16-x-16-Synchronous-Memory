library verilog;
use verilog.vl_types.all;
entity mux2 is
    port(
        op              : out    vl_logic_vector(15 downto 0);
        ip              : in     vl_logic_vector(15 downto 0);
        sel             : in     vl_logic
    );
end mux2;
