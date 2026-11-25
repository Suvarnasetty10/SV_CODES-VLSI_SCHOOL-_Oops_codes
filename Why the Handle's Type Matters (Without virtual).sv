class baseclass;
  int data;
    function new(int data);
      this.data=data;
      $display("I Love my self");
    endfunction
    function display();
     $display("[Base class] data=%0d",data);
    endfunction
endclass

class childclass extends baseclass;
  int id;
  function new(int data ,int id);
    super.new(45678);
    super.display();
    this.id=id;
  endfunction
  function display();
     $display("data=%0d,id=%0d",data,id);
  endfunction
endclass

module tb;
  initial begin 
    childclass C1=new(45678,431);
    baseclass B1= C1;
    B1.display();
    C1.display();
  end
endmodule
//output:
# KERNEL: I Love my self
# KERNEL: [Base class] data=45678
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: [Base class] data=45678
# KERNEL: data=45678,id=431

//Reason:
  1. Without Virtual
- When a parent-class handle points to a child-class object, the parent-class method executes when we call it using the parent handle.though its handle pointing to same  child object.
- Therefore, the parent-class method executes when we call it using a parent-class handle.
- The child-class method will execute when we call it using a child-class handle.

   second type--> 2...//class baseclass;
  int data;
    function new(int data);
      this.data=data;
      $display("I Love my self");
    endfunction
     virtual function display();
     $display("[Base class] data=%0d",data);
    endfunction
endclass

class childclass extends baseclass;
  int id;
  function new(int data ,int id);
    super.new(45678);
    super.display();
    this.id=id;
  endfunction
  function display();
     $display("data=%0d,id=%0d",data,id);
  endfunction
endclass

module tb;
  initial begin 
    childclass C1=new(45678,431);
    baseclass B1= C1;
    B1.display();
    C1.display();
  end
endmodule
  //output:
  # KERNEL: I Love my self
# KERNEL: [Base class] data=45678
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: data=45678,id=431
# KERNEL: data=45678,id=431

  Reason:
  2. With Virtual
- When we declare a parent-class method as virtual, the method is selected based on the actual object the handle points to.
- If the parent-class handle points to a child-class object, the child's overridden method executes.
- It allows us to use a parent-class handle to access the appropriate child-class method.
  
