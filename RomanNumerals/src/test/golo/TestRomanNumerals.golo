module RomanTest

import RomanNumerals
import org.hamcrest
import org.assertj.core.api
import org.junit
import org.junit.Assert


    function Test = |fun| {
        return |args...| {
            return "this is a test " + fun: invoke(args)
        }
    }
    
    @Test
    function test_OneTwoThree = {
        assertEquals(arabicToRoman(1),"I")
        assertThat(arabicToRoman(2)): isEqualTo("II")
        assertThat(arabicToRoman(3)): isEqualTo("III")
    }

	@Test
	function five = {
		assertThat(arabicToRoman(5)): isEqualTo("V")
	}

	@Test
	function tenFifty = {
		assertThat(arabicToRoman(10)): isEqualTo("X")
		assertThat(arabicToRoman(50)): isEqualTo("L")
	}


	
	@Test
	function fourNineFourtynine = {
		assertThat(arabicToRoman(4)): isEqualTo("IV")
		assertThat(arabicToRoman(9)): isEqualTo("IX")
	}


	
	@Test
	function sixSevenEight = {
		assertThat(arabicToRoman(6)): isEqualTo("VI")
		assertThat(arabicToRoman(7)): isEqualTo("VII")
		assertThat(arabicToRoman(8)): isEqualTo("VIII")
	}


	
	@Test
	function twelveFourteen = {
		assertThat(arabicToRoman(12)): isEqualTo("XII")
		assertThat(arabicToRoman(14)): isEqualTo("XIV")
	}


	
	@Test
	function twentySixEightythree = {
		assertThat(arabicToRoman(26)): isEqualTo("XXVI")
		assertThat(arabicToRoman(83)): isEqualTo("LXXXIII")
	}


	
	@Test
	function fourtyFourtythreeFourtyFive = {
		assertThat(arabicToRoman(40)): isEqualTo("XL")
		assertThat(arabicToRoman(43)): isEqualTo("XLIII")
		assertThat(arabicToRoman(45)): isEqualTo("XLV")
		assertThat(arabicToRoman(49)): isEqualTo("XLIX")
	}


	
	@Test
	function oneHundredFivehundredOnethousand = {
		assertThat(arabicToRoman(100)): isEqualTo("C")
		assertThat(arabicToRoman(500)): isEqualTo("D")
		assertThat(arabicToRoman(1000)): isEqualTo("M")
	}


	
	@Test
	function mixSix = {
		assertThat(arabicToRoman(96)): isEqualTo("XCVI")
		assertThat(arabicToRoman(496)): isEqualTo("CDXCVI")
		assertThat(arabicToRoman(996)): isEqualTo("CMXCVI")
		assertThat(arabicToRoman(2996)): isEqualTo("MMCMXCVI")
	}




	
	@Test
	function mixArabicToRoman = {
		assertThat(arabicToRoman(1223)): isEqualTo("MCCXXIII")
		assertThat(arabicToRoman(1999)): isEqualTo("MCMXCIX")
		assertThat(arabicToRoman(2781)): isEqualTo("MMDCCLXXXI")
		assertThat(arabicToRoman(321)): isEqualTo("CCCXXI")
		assertThat(arabicToRoman(3266)): isEqualTo("MMMCCLXVI")
		assertThat(arabicToRoman(1211)): isEqualTo("MCCXI")
		assertThat(arabicToRoman(1207)): isEqualTo("MCCVII")
	}


	
	@Test
	function mixRomanToArabic = {
		assertThat(romanToArabic("I")): isEqualTo(1)
		assertThat(romanToArabic("II")): isEqualTo(2)
		assertThat(romanToArabic("III")): isEqualTo(3)
		assertThat(romanToArabic("IV")): isEqualTo(4)
		assertThat(romanToArabic("V")): isEqualTo(5)
		assertThat(romanToArabic("VI")): isEqualTo(6)
		assertThat(romanToArabic("VII")): isEqualTo(7)
		assertThat(romanToArabic("VIII")): isEqualTo(8)
		assertThat(romanToArabic("IX")): isEqualTo(9)
		assertThat(romanToArabic("X")): isEqualTo(10)
		assertThat(romanToArabic("XI")): isEqualTo(11)
		assertThat(romanToArabic("XII")): isEqualTo(12)
		assertThat(romanToArabic("XIII")): isEqualTo(13)
		assertThat(romanToArabic("XIV")): isEqualTo(14)
		assertThat(romanToArabic("XV")): isEqualTo(15)

		assertThat(romanToArabic("XL")): isEqualTo(40)
		assertThat(romanToArabic("L")): isEqualTo(50)
		assertThat(romanToArabic("XC")): isEqualTo(90)
		assertThat(romanToArabic("C")): isEqualTo(100)
		assertThat(romanToArabic("CD")): isEqualTo(400)
		assertThat(romanToArabic("D")): isEqualTo(500)
		assertThat(romanToArabic("CM")): isEqualTo(900)
		assertThat(romanToArabic("M")): isEqualTo(1000)

		assertThat(romanToArabic("MCCXXIII")): isEqualTo(1223)
		assertThat(romanToArabic("MCMXCIX")): isEqualTo(1999)
		assertThat(romanToArabic("MMDCCLXXXI")): isEqualTo(2781)
		assertThat(romanToArabic("CCCXXI")): isEqualTo(321)
		assertThat(romanToArabic("MCCXI")): isEqualTo(1211)
		assertThat(romanToArabic("MCCVII")): isEqualTo(1207)
	}


    function main = |args| {
        println(test_OneTwoThree())
        #org.junit.runner.JUnitCore.main(test_OneTwoThree())
    }

