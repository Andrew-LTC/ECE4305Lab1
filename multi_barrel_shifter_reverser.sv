`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2022 04:22:33 PM
// Design Name: 
// Module Name: multi_barrel_shifter_reverser
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


module multi_barrel_shifter_reverser
    #(parameter N = 3)(
    input logic [2**N - 1:0] A,
    input logic [N - 1:0] AMT,
    input logic lr,
    output logic [2**N - 1:0] Y
    );
    
    logic [2**N - 1: 0] rev, shiftOut;
    
    reverser #(.N(N)) PreRev (
        .x(A),
        .s(lr),
        .out(rev)
    );
    
    param_right_shifter #(.N(N)) rshift (
        .a(rev),
        .amt(AMT),
        .y(shiftOut)
    );
    
    reverser #(.N(N)) PostRev (
        .x(shiftOut),
        .s(lr),
        .out(Y)
    );
endmodule
