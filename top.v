`timescale 1ns / 1ps

module top(
    input  [15:0] sw,
    input         btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);

    wire [1:0] mux_sel   = {btnU, btnL};   // btnL = Sel[0], btnU = Sel[1]
    wire [1:0] demux_sel = {btnR, btnD};   // btnD = Sel[0], btnR = Sel[1]

    wire [3:0] line;

    wire [3:0] local_lib, fire_dept, school, rib_shack;

    mux4_4bit sender_valve (
        .A(sw[3:0]),        // CEO
        .B(sw[7:4]),        // You
        .C(sw[11:8]),       // Fred
        .D(sw[15:12]),      // Jill
        .sel(mux_sel),
        .enable(btnC),
        .Y(line)
    );

    demux4_4bit receiver_valve (
        .In(line),
        .sel(demux_sel),
        .enable(btnC),
        .Y0(local_lib),
        .Y1(fire_dept),
        .Y2(school),
        .Y3(rib_shack)
    );

    assign led[3:0]   = local_lib;
    assign led[7:4]   = fire_dept;
    assign led[11:8]  = school;
    assign led[15:12] = rib_shack;

endmodule
