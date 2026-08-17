//Behavioral level
//DIFF = A'B + AB'
//BOUT = A'B

module half_subtractor(a, b, diff, bout);
input a, b;
output diff, bout;
reg diff, bout;

always @(a,b)
begin
diff = a^b;
bout = (~a)&b;
end 
endmodule
