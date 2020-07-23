
/***************************************************************************************************
* Description: 
* This testbench contains example test lists for one design which consists of one Master AXI4STREAM
* VIP and one Slave AXI4STREAM VIP.
* In the following scenarios,it demonstrates how Master AXI4STREAM VIP creates transactions, 
* and how Slave AXI4STREAM VIP generates ready(when TREADY is on).
* This testbench also has one simple scoreboard to do self-checking: 
* One scoreboard checks master AXI4STREAM VIP against slave AXI4STREAM VIP
****************************************************************************************************
* Description of How Master VIP works:
* This file contains example on how Master VIP create a simple transaction 
* For Master VIP to work correctly, user environment MUST have the lists of item below and 
* follow this order.
*    1. import two packages.
*       import axi4stream_vip_pkg::* 
*       import design_1_axi4stream_vip_0_0_pkg::*;
*    2. delcare "component_name"_mst_t agent
*    3. new agent (passing instance IF correctly)
*    4. set vif_proxy dummy drive type 
*    5. start_master
*    6. create_transaction
*    7. Fill in transaction( two methods. randomization and API)
*    8. send transaction
* if user wants to create his own ready signal, please refer task user_gen_rready 
****************************************************************************************************
* Description of how Slave VIP works: 
* This file contains example on how Slave VIP generates ready signal when TREADY is on 
* For Slave VIP to work correctly, user environment MUST have the lists of item below and
* follow this order.
*    1. import two packages.
*       import axi4stream_vip_pkg::* 
*       import design_1_axi4stream_vip_1_0_pkg::*;
*    2. delcare "component_name"_slv_t agent
*    3. new agent (passing instance IF correctly)
*    4. set vif_proxy dummy drive type 
*    5. start_slave
* As for ready generation, when TREADY is on, if user enviroment doesn't do anything, it will
* randomly generate ready signal if user wants to create his own ready signal,
* please refer task slv_gen_tready 
***************************************************************************************************/

`timescale 1ns / 1ps

/***************************************************************************************************
* As described above, this design has two VIPs. so it includes the two corresponding packages plus 
* axi4stream_vip_pkg
***************************************************************************************************/
import axi4stream_vip_pkg::*;
import design_1_axi4stream_vip_0_0_pkg::*;
import design_1_axi4stream_vip_1_0_pkg::*;

module tb_design_1_wrapper(
    );

  // Error count to check how many comparison failed
  xil_axi4stream_uint                            error_cnt = 0; 
  // Comparison count to check how many comparsion happened
  xil_axi4stream_uint                            comparison_cnt = 0;
  // Maximum number of comparisons to be done during the test
  xil_axi4stream_uint                            max_comparison_cnt = 100;
  // Event when comparison tests finished
  event                                          comparison_tests_finish_event;

  xil_axi4stream_data_byte InputData[4];
  xil_axi4stream_data_byte InputColors[3];
  xil_axi4stream_data_byte OutputData[3];

  /***************************************************************************************************
  * The following monitor transactions are for simple scoreboards doing self-checking
  * One Scoreboard is built here
  * The scoreboard checks master vip against slave VIP
  ***************************************************************************************************/

  // Monitor transaction from master VIP
  axi4stream_monitor_transaction                 mst_monitor_transaction;
  // Monitor transaction queue for master VIP 
  axi4stream_monitor_transaction                 master_moniter_transaction_queue[$];
  // Size of master_moniter_transaction_queue
  xil_axi4stream_uint                           master_moniter_transaction_queue_size =0;
  // Scoreboard transaction from master monitor transaction queue
  axi4stream_monitor_transaction                 mst_scb_transaction;
  // Monitor transaction for slave VIP
  axi4stream_monitor_transaction                 slv_monitor_transaction;
  // Monitor transaction queue for slave VIP
  axi4stream_monitor_transaction                 slave_moniter_transaction_queue[$];
  // Size of slave_moniter_transaction_queue
  xil_axi4stream_uint                            slave_moniter_transaction_queue_size =0;
  // Scoreboard transaction from slave monitor transaction queue
  axi4stream_monitor_transaction                 slv_scb_transaction;
  /***************************************************************************************************
  * Verbosity level which specifies how much debug information to be printed out
  * 0         - No information will be printed out
  * 400       - All information will be printed out
  ***************************************************************************************************/
  // Master VIP agent verbosity level
  xil_axi4stream_uint                           mst_agent_verbosity = 0;
  // Slave VIP agent verbosity level
  xil_axi4stream_uint                           slv_agent_verbosity = 0;
  /***************************************************************************************************
  * Parameterized agents which customer needs to declare according to AXI4STREAM VIP configuration
  * If AXI4STREAM VIP is being configured in master mode, "component_name"_mst_t has to declared 
  * If AXI4STREAM VIP is being configured in slave mode, "component_name"_slv_t has to be declared 
  * "component_name can be easily found in vivado bd design: click on the instance, 
  * then click CONFIG under Properties window and Component_Name will be shown
  * More details please refer PG277 for more details
  ***************************************************************************************************/
  design_1_axi4stream_vip_1_0_mst_t                              mst_agent;
  design_1_axi4stream_vip_0_0_slv_t                              slv_agent;

  
     
  // Clock signal
  bit                                     clock;
  // Reset signal
  bit                                     areset_n;

  bit [2:0]S_AXI_0_araddr;
  bit [2:0]S_AXI_0_arprot;
  bit S_AXI_0_arready;
  bit S_AXI_0_arvalid;
  bit [2:0]S_AXI_0_awaddr;
  bit [2:0]S_AXI_0_awprot;
  bit S_AXI_0_awready;
  bit S_AXI_0_awvalid;
  bit S_AXI_0_bready;
  bit [1:0]S_AXI_0_bresp;
  bit S_AXI_0_bvalid;
  bit [31:0]S_AXI_0_rdata;
  bit S_AXI_0_rready;
  bit [1:0]S_AXI_0_rresp;
  bit S_AXI_0_rvalid;
  bit [31:0]S_AXI_0_wdata;
  bit S_AXI_0_wready;
  bit [3:0]S_AXI_0_wstrb;
  bit S_AXI_0_wvalid;

  // instantiate bd
  design_1_wrapper DUT(
    .S_AXI_0_araddr(S_AXI_0_araddr),
    .S_AXI_0_arprot(S_AXI_0_arprot),
    .S_AXI_0_arready(S_AXI_0_arready),
    .S_AXI_0_arvalid(S_AXI_0_arvalid),
    .S_AXI_0_awaddr(S_AXI_0_awaddr),
    .S_AXI_0_awprot(S_AXI_0_awprot),
    .S_AXI_0_awready(S_AXI_0_awready),
    .S_AXI_0_awvalid(S_AXI_0_awvalid),
    .S_AXI_0_bready(S_AXI_0_bready),
    .S_AXI_0_bresp(S_AXI_0_bresp),
    .S_AXI_0_bvalid(S_AXI_0_bvalid),
    .S_AXI_0_rdata(S_AXI_0_rdata),
    .S_AXI_0_rready(S_AXI_0_rready),
    .S_AXI_0_rresp(S_AXI_0_rresp),
    .S_AXI_0_rvalid(S_AXI_0_rvalid),
    .S_AXI_0_wdata(S_AXI_0_wdata),
    .S_AXI_0_wready(S_AXI_0_wready),
    .S_AXI_0_wstrb(S_AXI_0_wstrb),
    .S_AXI_0_wvalid(S_AXI_0_wvalid),
    .aresetn_0(areset_n),
    .aclk_0(clock)
  );

  always #10 clock <= ~clock;

  //Main process
  initial begin
	/*mst_monitor_transaction = new("master monitor transaction");
    slv_monitor_transaction = new("slave monitor transaction");*/

    /***************************************************************************************************
    * The hierarchy path of the AXI4STREAM VIP's interface is passed to the agent when it is newed. 
    * Method to find the hierarchy path of AXI4STREAM VIP is to run simulation without agents being newed,
    * message like "Xilinx AXI4STREAM VIP Found at Path: 
    * my_ip_exdes_tb.DUT.design_1_i.axi4stream_vip_1.inst" will be printed out.
    ***************************************************************************************************/

    mst_agent = new("master vip agent",DUT.design_1_i.axi4stream_vip_1.inst.IF);
    slv_agent = new("slave vip agent",DUT.design_1_i.axi4stream_vip_0.inst.IF);
    $timeformat (-12, 1, " ps", 1);

    /***************************************************************************************************
    * When bus is in idle, it must drive everything to 0.otherwise it will 
    * trigger false assertion failure from axi_protocol_chekcer
    ***************************************************************************************************/
    
    mst_agent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);
    slv_agent.vif_proxy.set_dummy_drive_type(XIL_AXI4STREAM_VIF_DRIVE_NONE);

    /***************************************************************************************************
    * Set tag for agents for easy debug,if not set here, it will be hard to tell which driver is filing 
    * if multiple agents are called in one testbench
    ***************************************************************************************************/
    
    mst_agent.set_agent_tag("Master VIP");
    slv_agent.set_agent_tag("Slave VIP");
    // set print out verbosity level.
    mst_agent.set_verbosity(mst_agent_verbosity);
    slv_agent.set_verbosity(slv_agent_verbosity);

    /***************************************************************************************************
    * Master,slave agents start to run 
    ***************************************************************************************************/
    
    mst_agent.start_master();
    slv_agent.start_slave();

    /***************************************************************************************************
    * Fork off the process
    * Master VIP create transaction
    * Slave VIP create TREADY if it is on
    ***************************************************************************************************/

    areset_n <= 1'b0;
	#20ns;
    areset_n <= 1'b1;

    fork
      begin
        mst_gen_transaction();
        $display("Simple master to slave transfer example with randomization completes");
        for(int i = 0; i < max_comparison_cnt;i++) begin
          mst_gen_transaction();
        end  
        $display("Looped master to slave transfers example with randomization completes");
      end
      begin
        slv_gen_tready();
      end
    join_any
  
    #1ns;
 
    @(comparison_tests_finish_event);
 
    if(error_cnt ==0) begin
      $display("EXAMPLE TEST DONE : Test Completed Successfully");
    end else begin  
      $display("EXAMPLE TEST DONE ",$sformatf("Test Failed: %d Comparison Failed", error_cnt));
    end 
    $finish;
  end

  /*****************************************************************************************************************
  * Task slv_gen_tready shows how slave VIP agent generates one customerized tready signal. 
  * Declare axi4stream_ready_gen  ready_gen
  * Call create_ready from agent's driver to create a new class of axi4stream_ready_gen 
  * Set the poicy of ready generation in this example, it select XIL_AXI4STREAM_READY_GEN_OSC 
  * Set low time 
  * Set high time
  * Agent's driver send_tready out
  * Ready generation policy are listed below:
  *  XIL_AXI4STREAM_READY_GEN_NO_BACKPRESSURE     - Ready stays asserted and will not change. The driver
                                                 will still check for policy changes.
  *   XIL_AXI4STREAM_READY_GEN_SINGLE             - Ready stays low for low_time,goes high and stay high till one 
  *                                         ready/valid handshake occurs, it then goes to low repeats this pattern. 
  *   XIL_AXI4STREAM_READY_GEN_EVENTS             - Ready stays low for low_time,goes high and stay high till one
  *                                          a certain amount of ready/valid handshake occurs, it then goes to 
  *                                          low and repeats this pattern.  
  *   XIL_AXI4STREAM_READY_GEN_OSC                - Ready stays low for low_time and then goes to high and stays 
  *                                          high for high_time, it then goes to low and repeat the same pattern
  *   XIL_AXI4STREAM_READY_GEN_RANDOM             - Ready generates randomly 
  *   XIL_AXI4STREAM_READY_GEN_AFTER_VALID_SINGLE - Ready stays low, once valid goes high, ready stays low for
  *                                          low_time, then it goes high and stay high till one ready/valid handshake 
  *                                          occurs. it then goes low and repeate the same pattern.
  *   XIL_AXI4STREAM_READY_GEN_AFTER_VALID_EVENTS - Ready stays low, once valid goes high, ready stays low for low_time,
  *                                          then it goes high and stay high till some amount of ready/valid handshake
  *                                          event occurs. it then goes low and repeate the same pattern.
  *   XIL_AXI4STREAM_READY_GEN_AFTER_VALID_OSC    - Ready stays low, once valid goes high, ready stays low for low_time, 
  *                                          then it goes high and stay high for high_time. it then goes low 
  *                                          and repeate the same pattern.
  *****************************************************************************************************************/
  task slv_gen_tready();
    axi4stream_ready_gen                           ready_gen;
    ready_gen = slv_agent.driver.create_ready("ready_gen");
    ready_gen.set_ready_policy(XIL_AXI4STREAM_READY_GEN_OSC);
    ready_gen.set_low_time(2);
    ready_gen.set_high_time(6);
    slv_agent.driver.send_tready(ready_gen);
  endtask :slv_gen_tready


  /*************************************************************************************************************
  * Master VIP generates transaction:
  * Driver in master agent creates transaction
  * Randomized the transaction
  * Driver in master agent sends the transaction
  *************************************************************************************************************/
  task mst_gen_transaction();
    axi4stream_transaction                         wr_transaction; 
    wr_transaction = mst_agent.driver.create_transaction("Master VIP write transaction");
    wr_transaction.set_xfer_alignment(XIL_AXI4STREAM_XFER_RANDOM);
    WR_TRANSACTION_FAIL: assert(wr_transaction.randomize());
    mst_agent.driver.send(wr_transaction);
  endtask

  /*************************************************************************************************************
  * Input data to the DUT contains 3 10-bit color components (it does not matter which colors, only the order
  * is important).
  * Output data from the DUT contains 3 8-bit color components; from each color, we need to remove the two LSBs
  * and to make sure we keep the color order when generating the output data.
  *************************************************************************************************************/
  task extract_colors_from_input_data(input xil_axi4stream_data_byte data[4], output xil_axi4stream_data_byte colors[3]);
    colors[0] = ((data[1] & 8'h03) << 6) | (data[0] >> 2);
	colors[1] = ((data[2] & 8'h0F) << 4) | (data[1] >> 4);
	colors[2] = ((data[3] & 8'h3F) << 2) | (data[2] >> 6);
  endtask

  /***************************************************************************************************
  * Get monitor transaction from master VIP monitor analysis port
  * Put the transaction into master monitor transaction queue 
  ***************************************************************************************************/
  initial begin
    forever begin
      mst_agent.monitor.item_collected_port.get(mst_monitor_transaction);
      master_moniter_transaction_queue.push_back(mst_monitor_transaction);
      master_moniter_transaction_queue_size++;
    end  
  end 

  /***************************************************************************************************
  * Get monitor transaction from slave VIP monitor analysis port
  * Put the transactin into slave monitor transaction queue 
  ***************************************************************************************************/
  initial begin
    forever begin
      slv_agent.monitor.item_collected_port.get(slv_monitor_transaction);
      slave_moniter_transaction_queue.push_back(slv_monitor_transaction);
      slave_moniter_transaction_queue_size++;
    end
  end

  // event to trigger comparison tests finish event
  always @(comparison_cnt) begin
    if(comparison_cnt == max_comparison_cnt) begin
      -> comparison_tests_finish_event;
    end 
  end

  /***************************************************************************************************
  * Simple scoreboard doing self checking 
  * Comparing transaction from master VIP monitor with transaction from Slave VIP
  * if they are match, SUCCESS. else, ERROR
  ***************************************************************************************************/
  initial begin
   forever begin
      wait (master_moniter_transaction_queue_size>0 ) begin
        mst_scb_transaction = master_moniter_transaction_queue.pop_front;
        master_moniter_transaction_queue_size--;
        wait( slave_moniter_transaction_queue_size>0) begin
          slv_scb_transaction = slave_moniter_transaction_queue.pop_front;
          slave_moniter_transaction_queue_size--;
          //if (slv_scb_transaction.do_compare(mst_scb_transaction) == 0) begin
		  
		  mst_scb_transaction.get_data(InputData);
		  slv_scb_transaction.get_data(OutputData); 
		  
		  extract_colors_from_input_data(InputData, InputColors);
		  
		  $display("Data sent by master: ",$sformatf("%x_", InputData[3]),$sformatf("%x_", InputData[2]),$sformatf("%x_", InputData[1]),$sformatf("%x_", InputData[0]));
		  $display("Color1: ",$sformatf("%x", InputColors[0]));
		  $display("Color2: ",$sformatf("%x", InputColors[1]));
		  $display("Color3: ",$sformatf("%x", InputColors[2]));
		  $display("Data received by slave: ",$sformatf("%x_", OutputData[2]),$sformatf("%x_", OutputData[1]),$sformatf("%x_", OutputData[0]));
		  
          if ((InputColors[0] != OutputData[0]) || (InputColors[1] != OutputData[1]) || (InputColors[2] != OutputData[2])) begin
            $display("ERROR:  Master VIP against Slave VIP scoreboard Compare failed");
            error_cnt++;
			$finish;
          end else begin
            $display("SUCCESS: Master VIP against Slave VIP scoreboard Compare passed");
          end
          comparison_cnt++;
        end  
      end 
    end
  end

endmodule
