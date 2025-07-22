module MUX4x1(y,i0,i1,i2,i3,s0,s1);
output y;
input i0,i1,i2,i3;
input s0,s1;
//logic equation for out
assign y=(~s1&~s0&i0)|(~s1&s0&i1)|(s1&~s0&i2)|(s1&s0&i3);
endmodule

/////////////////
module TB_mux();
wire y;
reg s0,s1,i0,i1,i2,i3;
MUX4x1 m1(y,i0,i1,i2,i3,s1,s0);

always 
begin
 i0=1'b0; i1=1'b1; i2=1'b0; i3=1'b1;
s0=1'b0; s1=1'b0;
#100
s0=1'b1; s1=1'b0;
#100
s0=1'b1; s1=1'b1;
#100
s0=1'b0; s1=1'b1;
end
endmodule
