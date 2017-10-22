module romannumerals

import java.lang.Integer

#import static org.assertj.core.api.Assertions.*;

#import org.junit.Before;
#import org.junit.Test;

function arabicToRoman = |num| {
    if(num == 1){
        return "I"
    }else if(num == 2){
        return "II"
    }else if(num == 3){
        return "III"
    }else {return null}

}

function main = |args|{
    if(args: length() != 0){
        let res = arabicToRoman(Integer.parseInt(args: get(0)))
        println(res)
     }
}




