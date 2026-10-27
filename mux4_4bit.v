//      sel = 00 -> A (CEO)
//      sel = 01 -> B (You)
//      sel = 10 -> C (Fred)
//      sel = 11 -> D (Jill)
//      enable = 0 -> line is 0000 no matter what

module mux4_4bit(
    input  [3:0] A, B, C, D,   // the four 4-bit inputs
    input  [1:0] sel,          // which input to pass through
    input        enable,       // 1 = normal, 0 = output forced to 0
    output [3:0] Y             // the single 4-bit output
);

    // if / else-if / else-if / else chain.

    assign Y = !enable      ? 4'b0000 :
               (sel == 2'd0) ? A :
               (sel == 2'd1) ? B :
               (sel == 2'd2) ? C :
                               D;

endmodule
