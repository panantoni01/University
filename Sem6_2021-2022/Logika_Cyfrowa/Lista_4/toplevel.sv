module funnel_shifter(input [7:0] a, b, input [3:0] n, output [7:0] o);
	wire [16:0] concat;
	assign concat = {a, b};
	assign o = concat >> n;
endmodule

module main_module(
  input [7:0] i, 
  input [3:0] n, 
  input ar, lr, rot, 
  output [7:0] o
);
  wire [7:0] left, right;
  wire [3:0] n_shift;
  // określamy jaki ma być każdy z argumentów funnel_shifter, w zależności od ar,lr,rot
  assign left = rot || lr ? i : (ar ? {8{i[7]}} : 8'h00);
  assign right = rot || !lr ? i : 8'h00;
  assign n_shift = lr ?  8-n : n;
  funnel_shifter funnel(left, right, n_shift, o);
endmodule