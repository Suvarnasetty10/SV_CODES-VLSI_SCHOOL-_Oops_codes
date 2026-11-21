// Code your testbench her
class transcation;
  bit[31:0]data;
  int id;
  function new( int data , int id);
    this.data=data;
    this.id=id;
  endfunction
endclass

module tb;
  initial begin
    transcation tr1,tr2;
    tr1=new(43,48);
    $display("data=%0d,id=%0d",tr1.data,tr1.id);
    tr2=new(55,99);
    $display("data=%0d,id=%0d",tr2.data,tr2.id);
  end
endmodule

//output:
# KERNEL: data=43,id=48
# KERNEL: data=55,id=99

 
