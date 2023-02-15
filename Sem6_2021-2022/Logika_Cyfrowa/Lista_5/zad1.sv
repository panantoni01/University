module comparator(
  input [3:0] a, b,
  output[3:0] great, less
);
  assign great = a > b ? a : b;
  assign less =  a > b ? b : a;
endmodule

module sorting_network(
  input [15:0] i,
  output [15:0] o
);
  logic [3:0] great13, less13, great24, less24, great23, less23;
  // komparatory 1-ego poziomu
  comparator com13(i[3:0], i[11:8],  great13, less13);
  comparator com24(i[7:4], i[15:12], great24, less24);
  //komparatory 2-ego poziomu
  comparator com12(less13,  less24,  great23 , o[3:0]);
  comparator com34(great13, great24, o[15:12], less23);
  //komparator 3-ego poziomu
  comparator com23(great23, less23, o[11:8], o[7:4]);
  
endmodule 