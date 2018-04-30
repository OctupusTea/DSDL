module Full_Adder( a, b, carry_in, sum, carry_out );

input a;
input b;
input carry_in;

output sum;
output carry_out;

wire carry_temp0;
wire carry_temp1;
wire sum_temp;

xor sum0( sum_temp, a, b );
and carry0( carry_temp0, a, b );

xor sum1( sum, sum_temp, carry_in );
and carry1( carry_temp1, sum_temp, carry_in );

xor carry2( carry_out, carry_temp0, carry_temp1 );


endmodule
