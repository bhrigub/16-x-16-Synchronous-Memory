library verilog;
use verilog.vl_types.all;
entity mux16 is
    port(
        op              : out    vl_logic_vector(15 downto 0);
        ip1             : in     vl_logic_vector(15 downto 0);
        ip2             : in     vl_logic_vector(15 downto 0);
        ip3             : in     vl_logic_vector(15 downto 0);
        ip4             : in     vl_logic_vector(15 downto 0);
        ip5             : in     vl_logic_vector(15 downto 0);
        ip6             : in     vl_logic_vector(15 downto 0);
        ip7             : in     vl_logic_vector(15 downto 0);
        ip8             : in     vl_logic_vector(15 downto 0);
        ip9             : in     vl_logic_vector(15 downto 0);
        ip10            : in     vl_logic_vector(15 downto 0);
        ip11            : in     vl_logic_vector(15 downto 0);
        ip12            : in     vl_logic_vector(15 downto 0);
        ip13            : in     vl_logic_vector(15 downto 0);
        ip14            : in     vl_logic_vector(15 downto 0);
        ip15            : in     vl_logic_vector(15 downto 0);
        ip16            : in     vl_logic_vector(15 downto 0);
        sel             : in     vl_logic_vector(3 downto 0)
    );
end mux16;
