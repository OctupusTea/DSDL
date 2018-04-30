module Half_Adder( a, b, sum, carry_out );
input a;
input b;
output sum;
output carry_out;

xor sum0 ( sum, a, b );
and carry0 ( carry_out, a, b );

endmodule
