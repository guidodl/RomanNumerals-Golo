module romannumerals

import java.lang.Integer

function arabicToRoman = |num| {
    let ones = array["I", "IV", "V", "IX"]
    let tens = array["X", "XL", "L"]
    return elaborateTraduction(num, tens, ones)

}

function elaborateTraduction = |num, tens, ones|{
    var  right = num % 10
    var left = num - right
    var res = ""
    while(left != 0 or right != 0){
        if(left == 40){
            res = res + tens: get(1)
            left = left - 40
        }else if(left >= 50){
            res = res + tens: get(2)
            left = left - 50
        }else{
            for(var i = 0, i < left / 10, i = i + 1){
                res = res + tens: get(0)
            }
            left = 0
        }



        if(right == 9){
            res = res + ones: get(3)
            right = right - 9
        }else if(right == 4){
            res = res + ones: get(1)
            right = right - 4
        }else if(right >= 5 and right < 9){
            res = res + "V"
            right = right - 5
        }else{
            for(var i = 0, i < right, i = i + 1){
                res = res + ones: get(0)
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




