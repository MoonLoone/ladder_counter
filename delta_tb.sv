module delta_tb;

logic resetn = 0;
logic [3:0] delta;
logic clk = 0;
logic [3:0] count;
logic direction; 
initial forever #10 clk = ~clk;

initial begin
delta = 3;
#60 delta = 2;
#40 delta = 7;
#60 delta = 0;
end

initial #5 resetn = 1;

delta init()

endmodule
