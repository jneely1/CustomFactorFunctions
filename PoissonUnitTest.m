% Poisson
f = FactorFunction('Poisson');
for i=1:10;
    n=randi(15);
    assertElementsAlmostEqual(f.IFactorFunction.evalEnergy({i,n}),-log(poisspdf(i,n)));
end
for i=1:10
    n=randi(15);
    assertElementsAlmostEqual(f.IFactorFunction.evalEnergy({n,i}),-log(poisspdf(n,i)));
end
assert(f.IFactorFunction.evalEnergy({randi(100),0}) == Inf);
assert(f.IFactorFunction.evalEnergy({randi(100),0}) == Inf);
assert(f.IFactorFunction.evalEnergy({0,0}) == 0);





