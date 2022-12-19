///8. Write a verilog design for 4x1 mux using decoder and tri state buffer and verify the same using testbench
module tri_buffer(d,c,e);
 input d,c;
 output reg e;
always@(*)
begin
 if(c)
 e=d;
 else
 e=1'bz;
 end
 endmodule
module mux_tri_dec(in,s,y_out);

input [3:0]in;
input [1:0]s;
output wor y_out;
wire [3:0]w;
 decoder_2to4(s,w);
 tri_buffer b1(in[0],w[0],y_out);
 tri_buffer b2(in[1],w[1],y_out);
 tri_buffer b3(in[2],w[2],y_out);
 tri_buffer b4(in[3],w[3],y_out);
endmodule