library verilog;
use verilog.vl_types.all;
entity uart_implementation is
    port(
        LEDR            : out    vl_logic_vector(0 downto 0);
        SW              : in     vl_logic_vector(2 downto 0)
    );
end uart_implementation;
