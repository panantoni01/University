// przerzutnik T - wersja z wykładu
module tff(output q, nq, input t, clk, nrst);
    logic ns, nr, ns1, nr1, j, k;
    nand n1(ns, clk, j), n2(nr, clk, k), n3(q, ns, nq),
    n4(nq, nr, q, nrst), n5(ns1, !clk, t, nq),
    n6(nr1, !clk, t, q), n7(j, ns1, k), n8(k, nr1, j, nrst);
endmodule

module my_counter(output [3:0] out, input clk, nrst, step, down);
  logic q0, q1, q2, q3;
  logic nq0, nq1, nq2, nq3;
  tff t0(q0, nq0, !step, clk, nrst);
  tff t1(q1, nq1, step | (down ? nq0 : q0), clk, nrst);
  tff t2(q2, nq2, (step ? (down ? nq1 : q1) : (down ? nq0 & nq1 : q0 & q1)), clk, nrst);
  tff t3(q3, nq3, (step ? (down ? nq2 & nq1 : q2 & q1) : (down ? nq0 & nq1 & nq2 : q0 & q1 & q2)), clk, nrst);
  assign out = {q3, q2, q1, q0};
endmodule