module bad_gray_counter(
output logic [3:0] o,
input clk, nrst
);
  logic [3:0] q;
  always_ff @(posedge clk or negedge nrst)
    if (!nrst) q <= 0;
    else begin
      q <= q + 4'd1;
      o <= q ^ (q >> 1);
    end
endmodule

module bad2_gray_counter(
output logic [3:0] o,
input clk, nrst
);
  logic [3:0] q;
  always_ff @(posedge clk or negedge nrst)
    if (!nrst) q = 0;
    else begin
      q = q + 4'd1;
      o = q ^ (q >> 1);
    end
endmodule 

module gray_counter(
output [3:0] o,
input clk, nrst
);
  logic [3:0] q;
  always_ff @(posedge clk or negedge nrst)
    if (!nrst) q <= 0;
    else q <= q + 4'd1;
  assign o = q ^ (q >> 1);
endmodule


module compare_counters(
output [3:0] o1, o2, o3,
input clk, nrst
);
  gray_counter c1(o1, clk, nrst);
  bad_gray_counter c2(o2, clk, nrst);
  bad2_gray_counter c3(o3, clk, nrst);
endmodule