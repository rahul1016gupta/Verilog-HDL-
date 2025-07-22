module Half_adder(s,c,a,b);
input a,b;
output s,c;
xor ( s,a,b);
and( c,a,b);
endmodule

///////////////

module Full_adder(S,Co,A,B,Ci);
input A,B,Ci;
output S,Co;
wire w1,w2,w3;

Half_adder h1(w1,w2,A,B);
Half_adder h2(S,w3,w1,Ci);
or(Co,w2,w3);

endmodule

////////////////

module TB_FA();
reg a,b,c_in;
wire s,c_out;
Full_adder F1(s,c_out,a,b,c_in);

initial
begin
a=1'b0;b=1'b0;c_in=1'b0;

#100
a=1'b1;b=1'b1;c_in=1'b0;

#100
a=1'b0;b=1'b1;c_in=1'b1;

#100
a=1'b1;b=1'b1;c_in=1'b0;

end
endmodule










