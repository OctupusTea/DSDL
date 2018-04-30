`timescale 1ns/100ps

module Half_Adder_Tb;

reg a;
reg b;
wire sum, carry;



initial begin

	$dumpfile( "half_adder.vcd" );
	$dumpvars;

end



initial begin

	a = 0; b = 0;
	
	# 100 a = 0; b = 0;
	# 100 a = 0; b = 1;
	# 100 a = 1; b = 0;
	# 100 a = 1; b = 1;
	# 100

	$finish;

end

Half_Adder half_adder( .a( a ), .b( b ), .sum( sum ), .carry_out( carry ) );

endmodule
