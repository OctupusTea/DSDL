`timescale 1ns/100ps

module adder_tb;

reg [ 5 : 0 ] a;
reg [ 5 : 0 ] b;

wire [ 5 : 0 ] sum;

Binary_Adder binary_adder( .a( a ), .b( b ), .sum( sum ) );


initial begin
	$dumpfile( "binary_adder.vcd" );
	$dumpvars;
end


initial begin

	a = 6'b000101; b = 6'b000011;
	# 100 a = 6'b000101; b = 6'b000111;
	# 100 a = 6'b001001; b = 6'b000010;
	# 100 a = 6'b011001; b = 6'b100010;
	# 100;
	$finish;

end

endmodule
