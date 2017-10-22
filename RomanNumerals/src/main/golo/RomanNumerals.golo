module romannumerals

import java.lang.Integer

function arabicToRoman = |num| {
    let numbers = array["I", "II", "III", null, "V"]

    return numbers: get(num - 1)

}

function main = |args|{
    if(args: length() != 0){
        let res = arabicToRoman(Integer.parseInt(args: get(0)))
        println(res)
     }
}




