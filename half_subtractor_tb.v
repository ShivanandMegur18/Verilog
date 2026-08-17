
module half_subtractor_tb;

reg a, b;
wire diff, bout;

half_subtractor uut(.a(a), .b(b), .diff(diff), .bout(bout));

initial
begin 
$monitor("a =%b | b=%b | diff=%b | bout=%b", a,b,diff,bout);

a=0; b=0;
#10;
a=0; b=1;
#10;
a=1; b=0;
#10;
a=1; b=1;
#10;
a=0; b=0;
#10;
a=0; b=1;
#10;
a=1; b=0;
#10;
a=1; b=1;
#10;
$finish;
 end 
endmodule
