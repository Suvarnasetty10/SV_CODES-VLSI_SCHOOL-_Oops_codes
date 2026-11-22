class packet;
  int count;
endclass

module tb;
  initial begin
    packet p1,p2;
    p1=new();
    p1.count=16'h145;
    $display ("[p1] count = 0x%0h", p1.count);
    p2 = p1;
    p2.count=16'h111;
    $display ("[p2] count = 0x%0h", p2.count);
    $display ("[p1] count = 0x%0h", p1.count);

  end
endmodule

//output:
# KERNEL: [p1] count = 0x145
# KERNEL: [p2] count = 0x111
# KERNEL: [p1] count = 0x111
