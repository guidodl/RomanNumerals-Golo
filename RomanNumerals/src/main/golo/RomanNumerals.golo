module romannumerals

import java.lang.Integer

function arabicToRoman = |num| {
    let ones = map[[1, "I"], [4, "IV"], [5, "V"], [9, "IX"]]
    let tens = map[[10, "X"], [40, "XL"], [50, "L"]]
    return elaborateTraduction(num, tens, ones)

}

function elaborateTraduction = |num, tens, ones|{
    var  right = num % 10
    var left = num - right
    var res = ""

    if(left < 40){
        res = lessThanForty(left, tens)
    }else{
        res = res + tens: get(left)
    }

    while(right != 0){
        if(right >= 5 and right < 9){
            res = res + ones: get(5)
            right = right - 5
        }else{
            if(right < 4){
                for(var i = 0, i < right, i = i + 1){
                    res = res + ones: get(1)
                }
            }else{
                res = res + ones: get(right)
            }
            right = 0
        }
    }
    return res

}

function lessThanForty = |left, tens|{
    var res = ""
    for(var i = 0, i < left / 10, i = i + 1){
        res = res + tens: get(10)
    }
    return res
}

function main = |args|{
    if(args: length() != 0){
        let res = arabicToRoman(Integer.parseInt(args: get(0)))
        println(res)
    }
}




