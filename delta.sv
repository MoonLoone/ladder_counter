module delta(
input logic [2:0] delta,
inout logic [3:0] count,
inout logic [3:0] current,
logic clk, resetn, direction
);
always_ff(posedge clk or negedge resetn)
if (direction)
	if (current == delta) 
		begin
		current = current-1;
		count = count - 1;
		direction = 0;
		end
	else begin
		count = count+1;
		count = count+1;
		end
else if (current == delta-1) begin
current = current+1;
count = count + 1;
direction = 1;
end
endmodule
