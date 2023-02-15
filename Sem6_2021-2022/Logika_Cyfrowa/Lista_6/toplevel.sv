//============================================

module d_latch(output q, nq, input en, d);
  logic nr, ns;
  nand gq(q, nr, nq), gnq(nq, ns, q),
  gr(nr, d, en), gs(ns, nr, en);
endmodule

// D flip-flop (master-slave) wyzwalany zboczem rosnącym (z wykładu)
module dff_ms(output q, nq, input clk, d);
  logic q1;
  d_latch dl1(q1, , !clk, d), dl2(q, nq, clk, q1);
endmodule

//============================================
// 4-wejściowy multiplekser

module _4way_mux(output o, input a,b,c,d,x,y);
  logic o0, o1, o2, o3;
  and(o0, a, !x, !y);
  and(o1, b, !x,  y);
  and(o2, c,  x, !y);
  and(o3, d,  x,  y);
  or (o, o0, o1, o2, o3);
endmodule

//============================================
// rejestr 8-bitowy składający się z 8 części -
// każda z nich to D flip-flop, do którego wejściem
// D jest odpowiednia wartość zależna od l,r

module _1bit_register(output o, input c, l, r, o_next, o_prev, d);
  logic o_mux;
  _4way_mux mux(o_mux, o, o_prev, o_next, d, l, r);
  dff_ms dff(o, , c, o_mux);
endmodule

module _8bit_register(output [7:0] q, input [7:0] d, input i, c, l, r);
  _1bit_register reg7(q[7], c, l, r, i, q[6], d[7]);
  _1bit_register reg6(q[6], c, l, r, q[7], q[5], d[6]);
  _1bit_register reg5(q[5], c, l, r, q[6], q[4], d[5]);
  _1bit_register reg4(q[4], c, l, r, q[5], q[3], d[4]);
  _1bit_register reg3(q[3], c, l, r, q[4], q[2], d[3]);
  _1bit_register reg2(q[2], c, l, r, q[3], q[1], d[2]);
  _1bit_register reg1(q[1], c, l, r, q[2], q[0], d[1]);
  _1bit_register reg0(q[0], c, l, r, q[1], i, d[0]);
endmodule


