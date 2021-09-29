module imem(
	input logic [31:0] a,
	output logic [31:0] rd
	);

	logic [31:0] RAM[63:0];
	
	initial
		$readmemh("/home/vagrant/ARM_V4/memfile.dat", RAM);

	assign rd = RAM[a[31:2]];

endmodule
