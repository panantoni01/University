module microwave(
  input clk, nrst, door, start, finish,
  output logic heat, light, bell
);
  // kody stanów automatu
  const logic [3:0] closed = 4'b0000, open = 4'b0001, 
  cook = 4'b0010, ring = 4'b0100, pause = 4'b1000;
  // stan automatu
  logic [3:0] q;
  
  // funkcja wyjścia
  always_comb begin
    heat = 0; light = 0; bell = 0;
    unique case(q)
      closed: ;
      open:  light = 1;
      cook:  begin heat = 1; light = 1; end
      ring:  bell = 1;
      pause: light = 1;
    endcase
  end
  
  // funkcja przejścia
  always_ff @(posedge clk or negedge nrst) begin
    if (!nrst)
      q <= closed;
    else unique case(q)
      closed: begin if (door) q <= open; else if (start) q <= cook; end
      open: begin if (!door) q <= closed; end
      cook: begin if (door) q <= pause; else if (finish) q <= ring; end
      ring: begin if (door) q <= open; end
      pause: begin if (door) q <= cook; end
    endcase
  end
endmodule