module circuit(output o, input [3:0] i);
  logic x = i[3];
  logic y = i[2];
  logic z = i[1];
  logic w = i[0];
  // idea - układ zwraca 0 wtw, gdy >=3 wejścia są równe 0, albo wszystkie równe 1
  assign o = !(!x && !y && !z || !x && !z && !w || !x && !y && !w || !y && !z && !w || x && y && z && w);
endmodule