E=200e9
nu=0.3
Fzz(t)=1+0.7*t
Frr(t)=sqrt(1-nu*(Fzz(t)**2-1))
J(t)  =(1-nu*(Fzz(t)**2-1))*Fzz(t)
Szz(t)=E*(Fzz(t)**2-1)/2
szz(t)=Szz(t)*(Fzz(t)**2)/J(t)

plot [0:1] szz(x) t "Analitical results", \
     "SaintVenantKirchhoffElasticityUniaxialTesting.res" u 1:8 t "MTest", \
     "SaintVenantKirchhoffElasticityUniaxialTesting-castem.res" u 1:2 t "INCREPL v4" w l, \
     "SaintVenantKirchhoffElasticityUniaxialTesting-castem-PASAPAS.res" u 1:2 t "PASAPAS" w l
