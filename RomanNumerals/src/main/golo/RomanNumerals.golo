module romannumerals

import java.lang.Integer

function arabicToRoman = |num| {
    let ones = array["I", "II", "III", "IV", "V", "IX"]
    let tens = array["X", "L"]
    var  right = num % 10
    var left = num - right
    var res = ""
    while(left != 0 or right != 0){
        if(left != 0){
            if(left == 10){
                res = res + tens: get(0)
            }else{
                res = res + tens: get(1)
            }
            left = 0
        }else{
            if(right == 9){
                res = res + ones: get(5)
            }else{
                res = res + ones: get(right - 1)
            }
            right = 0
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




