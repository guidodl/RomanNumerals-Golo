module romannumerals

import java.lang.Integer

function arabicToRoman = |num| {
    let ones = array["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
    let tens = array["X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
    let hundreds = array["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
    return elaborateTraduction(num, hundreds, tens, ones)

}

function elaborateTraduction = |num, hundreds, tens, ones|{
    var o = num % 10
    var t = (num % 100) - o
    var hun = (num - t)
    return elaborateHundreds(hun, hundreds) + elaborateTens(t, tens) + elaborateOnes(o, ones)

}

function elaborateHundreds = |hun, hundreds|{
    var res = ""
    if(hun != 0){
        res = hundreds: get(hun/100 - 1)
    }
    return res
}

function elaborateTens = |left, tens|{
    var res = ""
    if(left != 0){
        res = tens: get(left/10 - 1)
    }
    return res
}

function elaborateOnes = |right, ones|{
    var res = ""
    if(right != 0){
        res = ones: get(right - 1)
    }
    return res
}

function main = |args|{
    if(args: length() != 0){
        let res = arabicToRoman(Integer.parseInt(args: get(0)))
        println(res)

    }
}




