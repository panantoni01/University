module pwm(
  input clk,
  input [15:0] d,
  input [1:0] sel,
  output logic [15:0] cnt,
  output logic [15:0] cmp,
  output logic [15:0] top,
  output out
);
  always_ff @(posedge clk) begin
    if (sel == 1)
      cmp <= d;
    else if (sel == 2)
      top <= d;
  end
  
  always_ff @(posedge clk) begin
    if (sel == 3)
      cnt <= d;
    else
      cnt <= (cnt >= top) ? 0 : cnt + 1;
  end
  
  assign out = (cnt < cmp);
endmodule