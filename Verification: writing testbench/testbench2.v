module top_module();
    reg clk;
    reg in;
    reg [2:0]s;
    wire out;
    
    q7 dut(clk,in,s,out);
    initial begin
        s<=3'd2;in<=0;
        #10;
        s<=3'd6;
        #10;
        in<=1;
        s<=3'd2;
        #10;
        in<=0;s<=3'd7;
        #10;
        in<=1;s<=3'd0;
        #30;
        in<=0;    
    end
    
    initial clk=0;
    always #5 clk=~clk;
    

endmodule
