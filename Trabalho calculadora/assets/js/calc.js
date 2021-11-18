var txtCampo = "";
var n1 = parseFloat();
var p1 = "";
var p2 = "";
var n2 = parseFloat();
var n3 = parseFloat();
var p3 = "";
var conta = 0;
var verif = 0;
var varifCont = 0;

import(Math)

//IMPRESSÃO NÚMERO 9
document.getElementById("iButton9").onclick = function (){
    txtCampo += document.getElementById("iButton9").value
    if( verif === 0 ){
        p1 += document.getElementById("iButton9").value
    }else{
        if(verif === 1){
            p2 += document.getElementById("iButton9").value
        }else{
            p1 += document.getElementById("iButton9").value
        }
    }
    document.getElementById("iTela").value = txtCampo
}

//IMPRESSÃO NÚMERO 8
document.getElementById("iButton8").onclick = function (){
    txtCampo += document.getElementById("iButton8").value
    if( verif === 0 || verif === 3){
        p1 += document.getElementById("iButton8").value
    }else{
        if(verif === 1){
            p2 += document.getElementById("iButton8").value
        }else{
            p1 += document.getElementById("iButton8").value
        }
    }
    console.log(p1)
    document.getElementById("iTela").value = txtCampo
}
//IMPRESSÃO NÚMERO 7
document.getElementById("iButton7").onclick = function (){
    txtCampo += document.getElementById("iButton7").value
    if( verif === 0){
            p1 += document.getElementById("iButton7").value
        }else{
            if(verif === 1){
                p2 += document.getElementById("iButton7").value
            }else{
                p3 += document.getElementById("iButton7").value
            }
        }
    document.getElementById("iTela").value = txtCampo
}

//IMPRESSÃO NÚMERO 6
document.getElementById("iButton6").onclick = function (){
    txtCampo += document.getElementById("iButton6").value
    if( verif === 0){
        p1 += document.getElementById("iButton6").value
    }else{
        if(verif === 1){
            p2 += document.getElementById("iButton6").value
        }else{
            p3 += document.getElementById("iButton6").value
        }
    }
    document.getElementById("iTela").value = txtCampo
}

//IMPRESSÃO NÚMERO 5
document.getElementById("iButton5").onclick = function (){
    txtCampo += document.getElementById("iButton5").value
    if( verif === 0){
        p1 += document.getElementById("iButton5").value
    }else{
        if(verif === 1){
            p2 += document.getElementById("iButton5").value
        }else{
            p3 += document.getElementById("iButton5").value
        }
    }
    document.getElementById("iTela").value = txtCampo
}

//IMPRESSÃO NÚMERO 4
document.getElementById("iButton4").onclick = function (){
    txtCampo += document.getElementById("iButton4").value
    if( verif === 0){
        p1 += document.getElementById("iButton4").value
    }else{
        if(verif === 1){
            p2 += document.getElementById("iButton4").value
        }else{
            p3 += document.getElementById("iButton4").value
        }
    }
    document.getElementById("iTela").value = txtCampo
}

//IMPRESSÃO NÚMERO 3
document.getElementById("iButton3").onclick = function (){
    txtCampo += document.getElementById("iButton3").value
    if( verif === 0){
        p1 += document.getElementById("iButton3").value
    }else{
        if(verif === 1){
            p2 += document.getElementById("iButton3").value
        }else{
            p3 += document.getElementById("iButton3").value
        }
    }
    document.getElementById("iTela").value = txtCampo
}

//IMPRESSÃO NÚMERO 2
document.getElementById("iButton2").onclick = function (){
    txtCampo += document.getElementById("iButton2").value
    if( verif === 0){
        p1 += document.getElementById("iButton2").value
    }else{
        if(verif === 1){
            p2 += document.getElementById("iButton2").value
        }else{
            p3 += document.getElementById("iButton2").value
        }
    }
    console.log(n1)
    console.log(n2)
    console.log(verif)
    document.getElementById("iTela").value = txtCampo
}

//IMPRESSÃO NÚMERO 1
document.getElementById("iButton1").onclick = function () {
    txtCampo += document.getElementById("iButton1").value
    if (verif === 0) {
        p1 += document.getElementById("iButton1").value
    } else {
        if (verif === 1) {
            p2 += document.getElementById("iButton1").value
        }else{
            p3 += document.getElementById("iButton1").value
        }
    }
    console.log(p1)
    console.log(p2)
    console.log(verif)
    document.getElementById("iTela").value = txtCampo
}
//IMPRESSÃO NÚMERO 0
document.getElementById("iButton0").onclick = function (){
    txtCampo += document.getElementById("iButton0").value
    if( verif === 0){
        p1 += document.getElementById("iButton0").value
    }else{
        if(verif === 1){
            p2 += document.getElementById("iButton0").value
        }else{
            p3 += document.getElementById("iButton0").value
        }
        console.log(p1)
        console.log(p2)
        console.log(verif)
    }
    document.getElementById("iTela").value = txtCampo
}

//IMPRESSÃO SIMBOLO +
document.getElementById("iButtonA").onclick = function () {
    txtCampo += document.getElementById("iButtonA").value
    document.getElementById("iTela").value = txtCampo
    if (verif === 0) {
        verif = 1
    }
    varifCont = 1;
    console.log(p1)
    console.log(p2)
    console.log(verif)
}

//IMPRESSÃO SIMBOLO -
document.getElementById("iButtonS").onclick = function (){
    txtCampo += document.getElementById("iButtonS").value
    document.getElementById("iTela").value = txtCampo
    if (verif === 0) {
        verif = 1
    }
    varifCont = 2;
}

//IMPRESSÃO SIMBOLO x
document.getElementById("iButtonX").onclick = function (){
    txtCampo += document.getElementById("iButtonX").value
    document.getElementById("iTela").value = txtCampo
    if (verif === 0) {
        verif = 1
    }
    varifCont = 3;
}

//IMPRESSÃO SIMBOLO ÷
document.getElementById("iButtonD").onclick = function (){
    txtCampo += document.getElementById("iButtonD").value
    document.getElementById("iTela").value = txtCampo
    if (verif === 0) {
        verif = 1
    }
    varifCont = 4;
}

//IMPRESSÃO SIMBOLO √
document.getElementById("iButtonR").onclick = function (){
    txtCampo += document.getElementById("iButtonR").value
    document.getElementById("iTela").value = txtCampo
    if (verif === 0) {
        verif = 1
    }
    varifCont = 6;
}

//IMPRESSÃO SIMBOLO %
document.getElementById("iButtonP").onclick = function (){
    txtCampo += document.getElementById("iButtonP").value
    document.getElementById("iTela").value = txtCampo
    if (verif === 0) {
        verif = 1
    }
    varifCont = 5;
}

//IMPRESSÃO SIMBOLO .
document.getElementById("iButtonV").onclick = function (){
    txtCampo += document.getElementById("iButtonV").value
    document.getElementById("iTela").value = txtCampo
      if( verif === 0 || verif === 3){
        p1 += document.getElementById("iButtonV").value
    }else{
        if(verif === 1){
            p2 += document.getElementById("iButtonV").value
        }else{
            p1 += document.getElementById("iButtonV").value
        }
    }z
}

//IMPRESSÃO SIMBOLO =
document.getElementById("iButtonI").onclick = function (){
    n1 = parseFloat(p1)
    n2 = parseFloat(p2)
    n3 = parseFloat(p3)
    console.log(p1)
    console.log(p2)
    console.log(verif)

   // inicio funções 
    switch (varifCont){

        case 1:
            conta = adicao(n1, n2, n3);
            break;

        case 2:
            conta = menos(n1, n2, n3);
            break;


        case 3:
            conta = vezes(n1, n2, n3);
            break;

        case 4:
            conta = divisao(n1, n2, n3);
            break;

        case 5:
            conta = porcentagem(n1, n2, n3);
            break;

        case 6:
            conta = raiz(n1);
            break;
    }
    p1 = "";
    p2 = "";
    p3 = "";
    console.log(n1)
    console.log(n2)
    console.log(verif)
    document.getElementById("iTela").value = conta;
    txtCampo = conta;

}

//LIMPA A TELA
document.getElementById("iButtonLimpar").onclick = function (){
    txtCampo = "";
    document.getElementById("iTela").value = txtCampo
    conta = 0;
    n1 = 0;
    n2 = 0;
    verif=0;
}

document.getElementById("iButtonBack").onclick = function (){
	var value = document.getElementById("iTela").value;
    document.getElementById("iTela").value = value.substr(0, value.length - 1);
	txtCampo = value.substr(0, value.length - 1);
	if( verif === 0){
        p1 = value.substr(0, value.length - 1);
    }else{
        if(verif === 1){
            p2 = value.substr(0, value.length - 1);
        }else{
            p3 = value.substr(0, value.length - 1);
        }
        console.log(p1)
        console.log(p2)
        console.log(verif)
    }
}

function adicao (n1, n2, n3) {
    if (verif <= 2) {
        conta = n1 + n2
        verif = 3
    } else {
        conta = n3 + conta
    }
return conta;
}


function menos (n1, n2, n3) {
    if (verif <= 2) {
        conta = n1 - n2
        verif = 3
    } else {
        conta = conta - n3
    }
return conta;
}

function vezes (n1, n2, n3) {
    if (verif <= 2) {
        conta = n1 * n2
        verif = 3
    } else {
        conta = n3 * conta
    }
return conta;
}

function divisao (n1, n2, n3) {
    if (verif <= 2) {
        conta = n1 / n2
        verif = 3
    } else {
        conta = conta / n3
    }
return conta;
}

function porcentagem (n1, n2, n3) {
    var porcent = 0.0;
    if (verif <= 2) {
        porcent = n2/100;
        conta = n1 * porcent
    } else {
        porcent = n3/100
        conta = conta / porcent
    }
return conta;
}

function raiz (n1) {
    if (verif <= 2) {
        conta = Math.sqrt(n1)
    } else {
        conta = Math.sqrt(conta)
    }
return conta;
}

