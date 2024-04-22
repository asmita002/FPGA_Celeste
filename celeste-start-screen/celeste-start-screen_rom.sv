module celeste-start-screen_rom (
	input logic clock,
	input logic [14:0] address,
	output logic [2:0] q
);

logic [2:0] memory [0:25599] /* synthesis ram_init_file = "./celeste-start-screen/celeste-start-screen.COE" */;

always_ff @ (posedge clock) begin
	q <= memory[address];
end

endmodule
