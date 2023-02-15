// dla kodów graya o długości N będącej potęgą 2 możemy obliczać kod binarny następująco:
// for (k = 1; k < N; k *= 2) {
//   gray ^= gray >> k;
// }
// return gray;
//
// rozpisując algorytm krok po kroku można zauważyć, że w k-tej iteracji
// dostajemy bity o indeksach [N - 2^(k-1) - 1] ... [N - 2^k]
module bin_to_bin(
  input [31:0] i,
  output[31:0] o
);
  logic [31:0] tmp, bin;
  integer k;
  always_comb begin
    tmp = i;
    for (k = 1; k < 32; k = k * 2) begin
      bin = tmp ^ (tmp >> k);
      tmp = bin;
  	end
  end
  assign o = bin;
endmodule