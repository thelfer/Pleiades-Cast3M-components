E=200e9
nu=0.3
FRR(t)=1+0.2*t
err(t)=log(FRR(t)**2)/2;
ezz(t)=-nu*err(t);
ett(t)=-nu*err(t);
J(t)=sqrt(exp(2*ett(t))*exp(2*ezz(t)))*FRR(t);
Trr(t)=E*err(t);

# plot "test2.res", Trr(x), Trr(x)/J(x)

FZZ(t)=sqrt(1-nu*(FRR(t)**2-1))
FTT(t)=sqrt(1-nu*(FRR(t)**2-1))

Srr(t)=E*(FRR(t)**2-1)*FRR(t)/(2*(1-nu*(FRR(t)**2-1)))
Srr2(t)=E*(FRR(t)**2-1)*FRR(t)*FRR(t)/(2)
plot "SaintVenantKirchhoffElasticityUniaxialTesting-2-castem.res", \
     Srr(x), Srr2(x)
