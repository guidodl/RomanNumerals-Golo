module romannumerals

import java.lang.Integer

function arabicToRoman = |num| {
    if(num == 1){
        return "I"
    }else if(num == 2){
        return "II"
    }else if(num == 3){
        return "III"
    }else if(num == 5){
        return "V"
    }else {return null}

}

function main = |args|{
    if(args: length() != 0){
        let res = arabicToRoman(Integer.parseInt(args: get(0)))
        println(res)
     }
}




