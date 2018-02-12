module memb (output reg [15:0] op, input [15:0] ip, input [3:0] addr, input we, oe,clk);
reg [15:0] mem [15:0];
always @ (posedge clk)
begin
if(oe==1'b1)
op=mem[addr];
else if(we==1'b1)
mem[addr]=ip;
end 
endmodule