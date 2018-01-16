library verilog;
use verilog.vl_types.all;
entity uart_tb is
    generic(
        c_CLOCK_PERIOD_NS: integer := 100;
        c_CLKS_PER_BIT  : integer := 87;
        c_BIT_PERIOD    : integer := 8600
    );
end uart_tb;
