module Half_adder( a,b,s,c);
input a,b;
output s,c;
xor(s,a,b);
and(c,a,b);
endmodule

////////////////

module TB_HA();
reg a,b;
wire s,c;

Half_adder a1(a,b,s,c);

initial
begin
a=1'b0; b=1'b0;

#100
a=1'b0; b=1'b1;

#100
a=1'b1; b=1'b0;

#100
a=1'b1; b=1'b1;

end

endmodule