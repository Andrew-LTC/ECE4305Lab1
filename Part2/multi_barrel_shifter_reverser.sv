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
    input logic [2:0] AMT,
    input logic s,
    output logic [2**N - 1:0] Y
    );
    //wire for shifter output to be fed to reverser
    logic [2**N - 1:0] shifterOut;
    
    param_right_shifter #(.N(N)) RS (
        .a(A),
        .amt(AMT),
        .y(shifterOut)
    );
    
    reverser #(.N(N)) REV(
        .x(shifterOut),
        .s(s),
        .out(Y)
    );
endmodule
