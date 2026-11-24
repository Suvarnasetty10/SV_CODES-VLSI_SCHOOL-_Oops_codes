class baseclass;
  int count;
  function new(int c1);
    count=c1;
    $display("%0d",count);
  endfunction
endclass

class childclass extends baseclass;
  int id;
  int roll;
  function new(int a,int b);
    super.new(800);
    id=a;
    roll=b;
    $display("%0d,%0d",id,roll);
  endfunction
endclass

module tb;
  initial begin
   baseclass t1=new(5);
   childclass ch1,ch2;
   ch1=new(10,20);
   ch2=new(40,80);
  end
endmodule

//oputput:
# KERNEL: 5
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: 800
# KERNEL: 10,20
# KERNEL: 800
# KERNEL: 40,80

    
    
  
  
