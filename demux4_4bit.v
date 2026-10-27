//      sel = 00 -> Y0 (Library)
//      sel = 01 -> Y1 (Fire Department)
//      sel = 10 -> Y2 (School)
//      sel = 11 -> Y3 (Rib Shack)
//      enable = 0 -> all outputs are 0000

module demux4_4bit(
    input  [3:0] In,           // the 4-bit line coming in
    input  [1:0] sel,          // which output gets the data
    input        enable,       // 1 = normal, 0 = all outputs off
    output [3:0] Y0, Y1, Y2, Y3
);

    assign Y0 = (enable && sel == 2'd0) ? In : 4'b0000;
    assign Y1 = (enable && sel == 2'd1) ? In : 4'b0000;
    assign Y2 = (enable && sel == 2'd2) ? In : 4'b0000;
    assign Y3 = (enable && sel == 2'd3) ? In : 4'b0000;

endmodule
