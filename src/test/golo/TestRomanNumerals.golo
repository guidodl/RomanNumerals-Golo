module RomanTest

import RomanNumerals
import org.hamcrest.MatcherAssert
import org.hamcrest
import org.assertj.core.api
import org.junit

@Test
function testOneTwoThree = {
    assertThat(arabicToRoman(1)): isEqualTo("I")
}

function main = |args|{
    #println(testOneTwoThree())
}