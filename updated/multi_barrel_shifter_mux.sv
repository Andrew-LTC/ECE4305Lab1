`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2022 10:32:05 AM
// Design Name: 
// Module Name: multi_barrel_shifter_mux
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


module multi_barrel_shifter_mux
    #(parameter N = 3)
    (
    input logic [2**N - 1:0] A,
    input logic [N - 1:0] AMT,
    input logic lr,
    output logic [2**N - 1:0] Y
    );
    
    //ouputs for right and left shifter to mux
    logic [2**N - 1:0] y0, y1;
    
    //instances of left and right shifter as well as mux
    param_right_shifter #(.N(N)) Rs (
        .a(A),
        .amt(AMT),
        .y(y0)
    );
        
     param_left_shifter #(.N(N)) Ls (
        .a(A),
        .amt(AMT),
        .y(y1)
    );   
        
     mux_2x1_2nbit #(.N(N)) mux (
        .w0(y0),
        .w1(y1),
        .s(lr),
        .en(1'b1),
        .f(Y)
    );       
endmodule
