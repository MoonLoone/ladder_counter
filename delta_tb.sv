module delta_tb;

logic resetn = 1;
logic [2:0] delta = 0;
logic clk = 0;
logic [3:0] count;
logic [3:0] current;
logic direction = 1; 

initial begin
direction = 0;
count = 0;
current = 0;
end

initial forever #10 clk = ~clk;

initial begin
delta = 3;
#200 delta = 2;
#200 delta = 7;
#200 delta = 0;
#100 $stop;
end

initial begin
 #5 resetn = ~resetn;
 #5 resetn = ~resetn;
end

delta uut_inst(.delta(delta), .count(count),
.current(current),.clk(clk), .resetn(resetn), .direction(direction));

endmodule
