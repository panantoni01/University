// idea - każdy bit o[k] może być jednym z trzech - i[k+1] (i_l), i[k] (i_mid), i[k-1] (i_r):
// jeśli lr == 00 -> o[k] = i[k] (i_mid)
// jeśli lr == 01 -> o[k] = i[k+1] (i_l)
// jeśli lr == 10 -> o[k] = i[k-1] (i_r)
module _1bit_chooser(input i_l, i_mid, i_r, l, r, output o);
  logic and_l, and_mid, and_r;
  assign and_l = i_l && r;
  assign and_mid = i_mid && !l && !r;
  assign and_r = i_r && l;
  assign o = and_l || and_mid || and_r;
endmodule

module main_module(input [3:0] i, input l, input r, output [3:0] o);
  logic o3, o2, o1, o0;
  _1bit_chooser chooser3(0,    i[3], i[2], l, r, o3);
  _1bit_chooser chooser2(i[3], i[2], i[1], l, r, o2);
  _1bit_chooser chooser1(i[2], i[1], i[0], l, r, o1);
  _1bit_chooser chooser0(i[1], i[0],    0, l, r, o0);
  assign o = {o3, o2, o1, o0};
endmodule 