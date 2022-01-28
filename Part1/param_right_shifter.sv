`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2022 03:27:54 PM
// Design Name: 
// Module Name: param_right_shifter
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


module param_right_shifter
    #(parameter N = 3)
    (
        input logic [2**N - 1:0] a,
        input logic [2:0] amt,
        output logic [2**N - 1:0] y
    );
    
    //param stages
    logic [2**N - 1: 0] s0, s1;
    
    //stage 0
    assign s0 = amt[0] ? {a[0], a[2**N - 1:1]} : a;
    
    //stage 1
    assign s1 = amt[1] ? {s0[1:0], s0[2**N -1 : 2]} : s0;
    
    //stage 2
    assign y = amt[2] ? {s1[3:0], s1[2**N - 1: 4]} : s1;  
endmodule
