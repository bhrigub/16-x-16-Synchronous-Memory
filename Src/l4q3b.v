module mems (output [15:0] op, input [15:0] ip,input [3:0] addr, input we,oe,clk);
wire [15:0] en1;
wire [15:0] ip1,ip2,ip3,ip4,ip5,ip6,ip7,ip8,ip9,ip10,ip11,ip12,ip13,ip14,ip15,ip16,top;


deco_4x16 deco1 (en1,we,addr);

dff2 d1 (ip1, ip,clk,en1[0]);
dff2 d2 (ip2, ip,clk,en1[1]);
dff2 d3 (ip3, ip,clk,en1[2]);
dff2 d4 (ip4, ip,clk,en1[3]);
dff2 d5 (ip5, ip,clk,en1[4]);
dff2 d6 (ip6, ip,clk,en1[5]);
dff2 d7 (ip7, ip,clk,en1[6]);
dff2 d8 (ip8, ip,clk,en1[7]);
dff2 d9 (ip9, ip,clk,en1[8]);
dff2 d10 (ip10, ip,clk,en1[9]);
dff2 d11 (ip11, ip,clk,en1[10]);
dff2 d12 (ip12, ip,clk,en1[11]);
dff2 d13 (ip13, ip,clk,en1[12]);
dff2 d14 (ip14, ip,clk,en1[13]);
dff2 d15 (ip15, ip,clk,en1[14]);
dff2 d16 (ip16, ip,clk,en1[15]);

mux16 m1 (top,ip1,ip2,ip3,ip4,ip5,ip6,ip7,ip8,ip9,ip10,ip11,ip12,ip13,ip14,ip15,ip16,addr);
mux2 m2 (op,top,oe);
endmodule


//---------------------DFF----------------------//
module dff2 (output reg [15:0] op, input [15:0] d, input clk,en);
always @ (posedge clk)
begin
if (en==1'b1) 
op=d;
end
endmodule

//-------------------Mux 2:1-------------------------//
module mux2 (output reg [15:0] op,input [15:0] ip, input sel);
always @ (*)
begin
case (sel)
0: ;
1: op=ip;

endcase
end
endmodule


//-------------------Mux 16:1-------------------------//
module mux16 (output reg [15:0] op,input [15:0] ip1,ip2,ip3,ip4,ip5,ip6,ip7,ip8,ip9,ip10,ip11,ip12,ip13,ip14,ip15,ip16, input [3:0] sel);
always @ (*)
begin
case (sel)
0: op=ip1;
1: op=ip2;
2: op=ip3;
3: op=ip4;
4: op=ip5;
5: op=ip6;
6: op=ip7;
7: op=ip8;
8: op=ip9;
9: op=ip10;
10: op=ip11;
11: op=ip12;
12: op=ip13;
13: op=ip14;
14: op=ip15;
15: op=ip16;
endcase
end
endmodule

//-------------------Decoder 4:16---------------------//
module deco_4x16 (d,en,ip);
input [3:0] ip;
output [15:0] d;
input en;
wire [4:0] t2;
wire [15:0] t1;
assign t1=16'd1;
assign t2={en,ip};
assign d=t1<<t2-16;
endmodule


