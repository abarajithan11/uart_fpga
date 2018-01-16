module uart_implementation(LEDR,SW,LEDG,key1,key2,r_Tx_Serial,r_Rx_Serial);
	output [7:0] LEDR;
	output [7:0] LEDG;
	output r_Tx_Serial;
	input [7:0] SW;
	input key1,key2;
	input r_Rx_Serial;
	
	assign LEDR = SW;
	
	 // Testbench uses a 10 MHz clock
  // Want to interface to 115200 baud UART
  // 10000000 / 115200 = 87 Clocks Per Bit.
  parameter c_CLOCK_PERIOD_NS = 100;
  parameter c_CLKS_PER_BIT    = 87;
  parameter c_BIT_PERIOD      = 8600;
   
  reg r_Clock = 0;
  reg r_Tx_DV = 0;
  wire w_Tx_Done;
  reg [7:0] r_Tx_Byte = 0;
  wire [7:0] w_Rx_Byte;
   
 
  // Takes in input byte and serializes it 
  /*task UART_WRITE_BYTE;
    input [7:0] i_Data;
    integer     ii;
    begin
       
      // Send Start Bit  
      r_Rx_Serial <= 1'b0;
      #(c_BIT_PERIOD);
      #1000;
       
       
      // Send Data Byte
      for (ii=0; ii<8; ii=ii+1)
        begin
          r_Rx_Serial <= i_Data[ii];
          #(c_BIT_PERIOD);
        end
       
      // Send Stop Bit
      r_Rx_Serial <= 1'b1;
      #(c_BIT_PERIOD);
     end
  endtask // UART_WRITE_BYTE*/
   
   
  uart_rx UART_RX_INST
    (.i_Clock(r_Clock),
     .i_Rx_Serial(r_Rx_Serial),
     .o_Rx_DV(),
     .o_Rx_Byte(w_Rx_Byte)
     );
   
  uart_tx UART_TX_INST
    (.i_Clock(r_Clock),
     .i_Tx_DV(key1),
     .i_Tx_Byte(SW),
     .o_Tx_Active(),
     .o_Tx_Serial(r_Tx_Serial),
     .o_Tx_Done(w_Tx_Done)
     );
 
   
  always
    #(c_CLOCK_PERIOD_NS/2) r_Clock <= !r_Clock;
 
  /* 
  // Main Testing:
    
      // Tell UART to send a command (exercise Tx)
      @(posedge r_Clock);
      @(posedge r_Clock);
		if (key <= 1'b1)
			r_Tx_DV <= 1'b1;
			r_Tx_Byte <= SW;
      @(posedge r_Clock);
      r_Tx_DV <= 1'b0;
      @(posedge w_Tx_Done);
		
       
      // Send a command to the UART (exercise Rx)
      //@(posedge r_Clock);
      //UART_WRITE_BYTE(8'h3F);
      //@(posedge r_Clock);
		*/
		// jester
		//always @(posedge r_Clock)
		//begin
			assign LEDG = w_Rx_Byte;
		//end
             
endmodule 
		

