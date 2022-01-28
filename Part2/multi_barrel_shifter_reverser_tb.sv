`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2022 04:29:56 PM
// Design Name: 
// Module Name: multi_barrel_shifter_reverser_tb
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


module multi_barrel_shifter_reverser_tb(

    );
    
    parameter N = 3;
    logic [2**N - 1:0] A;
    logic [2:0] AMT;
    logic s;
    logic [2**N - 1:0] Y;
    
    multi_barrel_shifter_reverser uut (
        .A(A),
        .AMT(AMT),
        .s(s),
        .Y(Y)
    );
    
    initial
    begin
        A = 8'b1111_0000;
        AMT = 0;
        s = 0;
    
        #10
        AMT = 1;
        
        #10
        s = 1;
        
        #10
        s = 0;
        
        #10
        AMT = 4;
        
        #10
        s = 1;

        #10
        $stop;
    end
endmodule
