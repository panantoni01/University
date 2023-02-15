module full_adder(
  input a,b,cin, 
  output s,cout
);
  assign s = a ^ b ^ cin;
  assign cout = a && b || b && cin || a && cin;
endmodule

module _4bit_adder(
  input [3:0] a, b, input c0,
  output [3:0] o, output c
);
  logic c1,c2,c3;
  full_adder f1(a[0], b[0], c0, o[0], c1);
  full_adder f2(a[1], b[1], c1, o[1], c2);
  full_adder f3(a[2], b[2], c2, o[2], c3);
  full_adder f4(a[3], b[3], c3, o[3], c);
endmodule

module _1digit_bcd_adder(
  input [3:0] a, b, input c0,
  output [3:0] o, output c
);
  logic c1, c2, need_six;
  wire [3:0] o_temp, six;
  _4bit_adder a1(a, b, c0, o_temp, c1);
  // jeśli a+b>9 - należy dodać 6, aby uzyskać prawidłową cyfrę BCD
  assign need_six = c1 || o_temp[3] && (o_temp[2] || o_temp[1]);
  assign six = {1'b0, need_six, need_six, 1'b0};
  _4bit_adder a2(o_temp, six, 0, o, c2);
  assign c = c1 || c2;
endmodule

module _2digit_bcd_adder(
  input [7:0] a, b,
  output [7:0] o
);
  logic c1;
  _1digit_bcd_adder add1(a[3:0], b[3:0], 0, o[3:0], c1);
  _1digit_bcd_adder add2(a[7:4], b[7:4], c1, o[7:4], ignore);
endmodule
  
module _1digit_9complement(
  input [3:0] i,
  output [3:0] o
);
  logic o0, o1, o2, o3;
  assign o0 = !i[0];
  assign o1 = i[1];
  assign o2 = (!i[3] && !i[2] && i[1]) || (!i[3] && i[2] && !i[1]);
  assign o3 = !i[3] && !i[2] && !i[1];
  assign o = {o3, o2, o1, o0};
endmodule

module _2digit_9complement(
  input [7:0] i,
  output [7:0] o
);
  _1digit_9complement comp0(i[7:4], o[7:4]);
  _1digit_9complement comp1(i[3:0], o[3:0]);
endmodule

module multiplexer(
  input [7:0] a, b, input sub,
  output [7:0] o
);
  assign o = (a & {8{!sub}}) | (b & {8{sub}});
endmodule

module main_mod(
  input [7:0] a, b, input sub,
  output [7:0] o
);
  wire [7:0] b_9comp, b_9comp_plus1, b_final;
  // wyliczamy (99-b) + 1
  _2digit_9complement comp(b, b_9comp);
  _2digit_bcd_adder add1(b_9comp, 8'b00000001, b_9comp_plus1);

  // jeśli sub=0, po prostu dodajemy b, a jeśli sub=1, to dodajemy (99-b)+1
  multiplexer choose(b, b_9comp_plus1, sub, b_final);
  _2digit_bcd_adder final_add(a, b_final, o);
endmodule