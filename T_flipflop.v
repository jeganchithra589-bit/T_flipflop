module T_flipflop (
    input  wire clk, rst, T,
    output reg  Q
);

    always @(posedge clk or posedge rst) begin
        if (rst)
            Q <= 1'b0;       // Asynchronous reset
        else if (T)
            Q <= ~Q;         // Toggle when T = 1
        else
            Q <= Q;          // Hold when T = 0
    end

endmodule