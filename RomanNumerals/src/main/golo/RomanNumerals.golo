module RomanNumerals

function arabicToRoman = |num| {
    let ones = array["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
    let tens = array["X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
    let hundreds = array["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
    return elaborateTraduction(num, hundreds, tens, ones)

}

function elaborateTraduction = |num, hundreds, tens, ones|{
    let numbers = numberParsing(num)
    var o = numbers: get(3)
    var t = numbers: get(2)
    var hun = numbers: get(1)
    var thousand = numbers: get(0)

    var res = ""
    for(var i = 0, i < thousand, i = i + 1){
        res = res + "M"
    }
    return res + elaborateHundreds(hun, hundreds) + elaborateTens(t, tens) + elaborateOnes(o, ones)

}

function elaborateHundreds = |hun, hundreds|{
    var res = ""
    if(hun != 0){
        res = hundreds: get(hun - 1)
    }
    return res
}

function elaborateTens = |t, tens|{
    var res = ""
    if(t != 0){
        res = tens: get(t - 1)
    }
    return res
}

function elaborateOnes = |units, ones|{
    var res = ""
    if(units != 0){
        res = ones: get(units - 1)
    }
    return res
}

function numberParsing = |num|{
    let numStr = Integer.toString(num)
    var o = 0
    var t = 0
    var hun = 0
    var thousand = 0
    if(numStr: length() >= 1){
        o = Character.getNumericValue(numStr: charAt(numStr: length() - 1))
    }
    if(numStr: length() >= 2){
        t = Character.getNumericValue(numStr: charAt(numStr: length() - 2))
    }
    if(numStr: length() >= 3){
        hun = Character.getNumericValue(numStr: charAt(numStr: length() - 3))
    }
    if(numStr: length() >= 4){
        thousand = Character.getNumericValue(numStr: charAt(numStr: length() - 4))
    }
    let numbers = array[thousand, hun, t, o]
    return numbers
}

#function main = |args|{
#   if(args: length() != 0){
#      let res = arabicToRoman(Integer.parseInt(args: get(0)))
#      println(args: get(0) + " is " + res + " in Roman Numerals")


# }
#}






