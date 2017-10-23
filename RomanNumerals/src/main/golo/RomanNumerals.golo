module romannumerals

import java.lang.Integer

function arabicToRoman = |num| {
    let ones = map[[1, "I"], [4, "IV"], [5, "V"], [9, "IX"]]
    let tens = map[[10, "X"], [40, "XL"], [50, "L"], [90, "XC"], [100, "C"]]
    return elaborateTraduction(num, tens, ones)

}

function elaborateTraduction = |num, tens, ones|{
    var  right = num % 10
    var left = num - right
    var res = elaborateTens(left, tens) + elaborateOnes(right, ones)
    return res

}

function elaborateTens = |left, tens|{
    var l = left
    var res = ""
    while(l != 0){
        if(l < 40 and l != 0){
            res = res + tens: get(10)
            l = l - 10
        }else if(l >= 50 and l < 90){
            res = res + tens: get(50)
            l = l - 50
        }else{
            res = res + tens: get(l)
            l = 0
        }
    }
    return res
}

function elaborateOnes = |right, ones|{
    var r = right
    var res = ""
    while(r != 0){
        if(r >= 5 and r < 9){
            res = res + ones: get(5)
            r = r - 5
        }else if(r < 4){
            res = res + ones: get(1)
            r = r - 1
        }else{
            res = res + ones: get(r)
            r = 0
        }
    }
    return res
}

function main = |args|{
    if(args: length() != 0){
        let res = arabicToRoman(Integer.parseInt(args: get(0)))
        println(res)
    }
}




