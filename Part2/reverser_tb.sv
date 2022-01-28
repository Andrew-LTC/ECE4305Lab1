`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2022 03:26:53 PM
// Design Name: 
// Module Name: reverser_tb
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


module reverser_tb(

    );
    parameter N = 3;
    logic [2**N - 1:0] x;
    logic s;
    logic [2**N - 1:0] out;
    
    reverser uut (
        .x(x),
        .s(s),
        .out(out)
    );
    
    initial
    begin
        x = 8'b1111_0000;
        s = 0;
    
        #10
        s = 1;

        #10
        $stop;
    end
    
endmodule
