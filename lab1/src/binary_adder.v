module Binary_Adder( a, b, sum );
input [ 5 : 0 ] a;
input [ 5 : 0 ] b;
output [ 5 : 0 ] sum;

wire carry[ 5 : 0 ];

Full_Adder full_adder0( .a( a[ 0 ] ), .b( b[ 0 ] ), .carry_in( 0 ), .sum( sum[ 0 ] ), .carry_out( carry[ 0 ] ) );
Full_Adder full_adder1( .a( a[ 1 ] ), .b( b[ 1 ] ), .carry_in( carry[ 0 ] ), .sum( sum[ 1 ] ), .carry_out( carry[ 1 ] ) );
Full_Adder full_adder2( .a( a[ 2 ] ), .b( b[ 2 ] ), .carry_in( carry[ 1 ] ), .sum( sum[ 2 ] ), .carry_out( carry[ 2 ] ) );
Full_Adder full_adder3( .a( a[ 3 ] ), .b( b[ 3 ] ), .carry_in( carry[ 2 ] ), .sum( sum[ 3 ] ), .carry_out( carry[ 3 ] ) );
Full_Adder full_adder4( .a( a[ 4 ] ), .b( b[ 4 ] ), .carry_in( carry[ 3 ] ), .sum( sum[ 4 ] ), .carry_out( carry[ 4 ] ) );
Full_Adder full_adder5( .a( a[ 5 ] ), .b( b[ 5 ] ), .carry_in( carry[ 4 ] ), .sum( sum[ 5 ] ), .carry_out( carry[ 5 ] ) );

endmodule
