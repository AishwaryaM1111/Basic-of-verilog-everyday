module top_module ();
    
    reg clk, reset;
    reg t;
    wire q;
    
    tff dut (clk, reset, t, q);
    initial begin
        reset = 0;
        #10;
        reset<=1;
        #10;
        reset<=0;
        
    end
    always @(posedge clk) begin
        if(reset)
            t=1'b0;
        else
            t=1'b1;
    end
    
    initial clk=0;
    always #5 clk = ~clk;

endmodule
