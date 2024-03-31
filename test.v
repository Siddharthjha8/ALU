`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2024 17:37:43
// Design Name: 
// Module Name: test
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


module test;
reg [3:0]a,b;
reg [3:0] opcode;
wire [3:0] out;
wire carryout;
alu A1(a,b,opcode,out,carryout);
initial
begin
opcode=4'b1111;a=4'b0000;b=4'b0000;
#100opcode=4'b0000;a=4'b1111;b=4'b0010;
#100opcode=4'b0001;a=4'b0011;b=4'b0010;
#100opcode=4'b0010;a=4'b0011;b=4'b0010;
#100opcode=4'b0011;a=4'b0011;b=4'b0010;
#100opcode=4'b0100;a=4'b0011;b=4'b0010;
#100opcode=4'b0101;a=4'b0011;b=4'b0010;
#100opcode=4'b0110;a=4'b0011;b=4'b0010;
#100opcode=4'b0111;a=4'b0011;b=4'b0010;
#100opcode=4'b1000;a=4'b0011;b=4'b0010;
#100opcode=4'b1001;a=4'b0011;b=4'b0010;
#100opcode=4'b1010;a=4'b0011;b=4'b0010; 
#100opcode=4'b1011;a=4'b0011;b=4'b0010;
#100opcode=4'b1100;a=4'b0011;b=4'b0010;

#1000 $finish();
end
initial
begin
$monitor("operand1=%b and operand2=%b output=%b opcode=%b",a,b,out,opcode);
#1000 $finish();
end
endmodule
