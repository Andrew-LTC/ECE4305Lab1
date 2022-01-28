`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2022 11:58:23 AM
// Design Name: 
// Module Name: mux_2x1_2nbit
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


module mux_2x1_2nbit
    #(parameter N = 3) (
    input logic [2**N - 1: 0] w0, w1,
    input logic s,
    input logic en,
    output logic [2**N - 1: 0] f
    );
    
    always_comb
    begin
    if (en)
        begin
            case(s)
                2'b00: f = w0;
                2'b01: f = w1;
                default: f = 'bx;
            endcase
        end
    end
endmodule