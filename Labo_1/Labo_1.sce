clear;
clc;
function [nombre]=loi_uniforme(n)
    x=1:n
    nombre=1:n
    for i=1:n
        nombre(i)=grand(1,1,"uin",1,6)
    end
//    scf(1)
//    plot2d(x,nombre)
//    histplot(linspace(0.5,6.5,7),nombre)
endfunction

function [nombre]=fdr(nombre)
    val=[0 0 0 0 0 0]
    for i=1:(length(nombre)-1)
        val(nombre(i))=val(nombre(i))+1
    end
    for i=1:(length(val)-1)
        val(i)=(val(i))/(length(nombre))
    end
    bar(val)
    //bar(vecteur)
endfunction

nombre=loi_uniforme(10)
fdr(nombre)
//loi_binomiale(10)
//loi_poisson(10)
