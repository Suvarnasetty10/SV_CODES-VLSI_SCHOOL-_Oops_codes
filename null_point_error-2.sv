class packet;
  int count;
endclass

module tb;
  initial begin
    packet p1;
    //p1=new();
    if(p1==null)
      $display("packet handle is null");
    //$display("count=%0d",p1.count);
    p1=new();
    if(p1==null)
      $display("packet handle is null");
    else
      $display("packet handle is not null");
    $display("count=%0d",p1.count);
  end
endmodule
//output:
# KERNEL: packet handle is null
# KERNEL: packet handle is not null
# KERNEL: count=0
