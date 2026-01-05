module FIR_Filter (
    input clk,
    input rst,
    input signed [15:0] x,
    output reg signed [31:0] y
);

    reg signed [15:0] h [0:15];
    reg signed [15:0] shift_reg [0:15];
    integer i;

    initial begin
        h[0]=1;  h[1]=2;  h[2]=3;  h[3]=4;
        h[4]=4;  h[5]=3;  h[6]=2;  h[7]=1;
        h[8]=1;  h[9]=2;  h[10]=3; h[11]=4;
        h[12]=4; h[13]=3; h[14]=2; h[15]=1;
    end

    always @(posedge clk) begin
        if (rst) begin
            for(i=0;i<16;i=i+1)
                shift_reg[i] <= 0;
            y <= 0;
        end
        else begin
            shift_reg[0] <= x;
            for(i=1;i<16;i=i+1)
                shift_reg[i] <= shift_reg[i-1];

            y <= 0;
            for(i=0;i<16;i=i+1)
                y <= y + shift_reg[i] * h[i];
        end
    end
endmodule
