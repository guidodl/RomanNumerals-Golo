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
    var res = ""

    while(left != 0){
        if(left < 40 and left != 0){
            res = res + tens: get(10)
            left = left - 10
        }else if(left >= 50 and left < 90){
            res = res + tens: get(50)
            left = left - 50
        }else{
            res = res + tens: get(left)
            left = 0
        }
    }
    while(right != 0){
        if(right >= 5 and right < 9){
            res = res + ones: get(5)
            right = right - 5
        }else if(right < 4){
            res = res + ones: get(1)
            right = right - 1
        }else{
            res = res + ones: get(right)
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




