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
        input logic [N - 1:0] amt,
        output logic [2**N - 1:0] y
    );
    
    //param for stages
    logic [2**N - 1: 0] s [N - 1:0]; 
    
    generate
        genvar i;
        for(i = 0; i < N; i = i + 1)
        begin
            if(i == 0)
                assign s[0] = amt[0] ? {a[2**N - 2: 0], a[2**N - 1]} : a;
            else
                assign s[i] = amt[i] ? {s[i-1][(2**N - 1) - 2**i:0] , s[i-1][(2**N) - 1 : 2**N - 2**i]} : s[i-1];
        end
    endgenerate

    assign y = s[N-1];
endmodule
