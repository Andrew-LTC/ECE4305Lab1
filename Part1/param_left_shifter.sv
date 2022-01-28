`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2022 04:07:28 PM
// Design Name: 
// Module Name: param_left_shifter
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


module param_left_shifter
    #(parameter N = 3)
    (
        input logic [2**N - 1:0] a,
        input logic [2:0] amt,
        output logic [2**N - 1:0] y
    );
    
    //param for stages
    logic [2**N - 1: 0] s0, s1;
    
    //stage 0
    //take the MSB and throw it to the LSB and shift all others to the left thru concatenation
    assign s0 = amt[0] ? {a[2**N - 2:0], a[2**N-1]} : a;
    
    //stage 1
    //same methodology as stage 0 but move two bits from the front to the back via concatenation
    assign s1 = amt[1] ? {s0[2**N - 3:0], s0[2**N - 1:2**N - 2]} : s0;
    
    //stage 2
    assign y = amt[2] ? {s1[2**N - 5: 0], s1[2**N - 1:2**N - 4]} : s1;
endmodule
