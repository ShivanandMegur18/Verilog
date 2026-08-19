module halfadder_tb;
reg a; 
reg b;
wire s;
wire c;

half_adder uut(a,b,s,c);
initial 
begin 
 a=0; b=0;
#5 a=0; b=1;
#5 a=1; b=0;
#5 a=1; b=1;

#5 $finish;

$monitor($time, "a=%b, b=%b, c=%b, s=%b",a,b,s,c);
end 
endmodule
