`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2024 17:09:53
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu(a,b,opcode,out,carryout);
input [3:0]a,b;
input [3:0] opcode;
output reg [3:0] out;
output reg carryout;

always@(opcode)
begin
if(opcode==4'b0000)
out<=a&b;
else if(opcode==4'b0001)
out<=a|b;
else if(opcode==4'b0010)
out<=a^b;
else if(opcode==4'b0011)
out=~a;
else if(opcode==4'b0100)
out<=~a&b;
else if(opcode==4'b0101)
out<=~a|b;
else if(opcode==4'b0110)
out<=a~^b;
else if(opcode==4'b0111)
{carryout,out}<=a+b; 
else if(opcode==4'b1000)
out<=a-b;   
else if(opcode==4'b1001)
out<=a*b; 
else if(opcode==4'b1010)
out<=a/b; 
else if(opcode==4'b1011)
out<=a<<b; 
else if(opcode==4'b1100)
out<=a>>b; 
else
out<=0;
end        
endmodule
