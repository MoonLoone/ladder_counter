module delta(
input logic [2:0] delta,
output logic [3:0] count,
output logic [3:0] current,
input logic clk,
input logic resetn,
output logic direction
);
always_ff @(posedge clk or negedge resetn)
begin
if (!resetn) begin
current <= 0;
count <= 0;
direction <= 1;
end
else if (direction)
	if (current == delta) 
		begin
		current <= current - 1;
		count <= count - 1;
		direction <= 0;
		end
	else begin
		count <= count+1;
		current <= current+1;
		end
else if (current == 1) begin
	count <= count + 1;
	direction <= 1;
	end
	else begin
		count <= count-1;
		current <= current-1;
	end
end
endmodule
