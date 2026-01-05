module tb;

    reg clk, rst;
    reg signed [15:0] x;
    wire signed [31:0] y;

    FIR_Filter dut (.clk(clk), .rst(rst), .x(x), .y(y));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end

    always #5 clk = ~clk;

    initial begin
        clk=0; rst=1; x=0;
        #20 rst=0;

        x=100; #10;
        x=300; #10;
        x=150; #10;
        x=80;  #10;
        x=200; #10;
        x=120; #10;

        #100 $finish;
    end
endmodule
