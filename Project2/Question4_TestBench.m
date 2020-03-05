function Question4_TestBench()

p = [1 2 3];
for i=1:length(p)
    root = FindRoot_NewtonsMethod_Q4(6,1,p(i),10e-10)
end

for i=1:length(p)
    root = FindRoot_NewtonsMethod_Q4(6,p(i),p(i),10e-10)
end