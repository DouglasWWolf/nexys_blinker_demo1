
//====================================================================================
//                        ------->  Revision History  <------
//====================================================================================
//
//   Date     Who   Ver  Changes
//====================================================================================
// 12-Aug-24  DWW     1  Initial creation
//====================================================================================

/*

  This is a simple blinker, whose output should be tied to an LED

*/


module blinky # (parameter FREQ_HZ = 100000000)
(
    input clk, resetn,
    output reg led
);

// We will change the state of the output every 1/2 second
localparam BLINK_PERIOD = FREQ_HZ / 2;

//=============================================================================
// This block is a very basic blinker that alternates turning the "led" port
// on or off every BLINK_PERIOD clock-cycles.
//=============================================================================
reg[31:0] blink_counter;
//-----------------------------------------------------------------------------
always @(posedge clk) begin

    
    // If we're in reset, initialize variables...
    if (resetn == 0) begin
        blink_counter <= 0;
        led           <= 0;
    end

    // Otherwise, blink the LED
    if (blink_counter < BLINK_PERIOD)
        blink_counter <= blink_counter + 1;
    else begin
        blink_counter <= 0;
        led           <= ~led;
    end

end
//=============================================================================

endmodule