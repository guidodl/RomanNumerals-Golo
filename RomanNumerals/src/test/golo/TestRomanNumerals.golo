module RomanTest

import RomanNumerals
import org.hamcrest
import org.junit.Assert


    function Test = |fun| {
        return |args...| {
            return "this is a test " + fun: invoke(args)
        }
    }
    
    @Test
    function test_OneTwoThree = {
        assertEquals(arabicToRoman(1),"I")
        assertEquals(arabicToRoman(2),"II")
        assertEquals(arabicToRoman(3),"III")
    }

	@Test
	function five = {
		assertEquals(arabicToRoman(5),"V")
	}

	@Test
	function tenFifty = {
		assertEquals(arabicToRoman(10),"X")
		assertEquals(arabicToRoman(50),"L")
	}


	
	@Test
	function fourNineFourtynine = {
		assertEquals(arabicToRoman(4),"IV")
		assertEquals(arabicToRoman(9),"IX")
	}


	
	@Test
	function sixSevenEight = {
		assertEquals(arabicToRoman(6),"VI")
		assertEquals(arabicToRoman(7),"VII")
		assertEquals(arabicToRoman(8),"VIII")
	}


	@Test
	function twelveFourteen = {
		assertEquals(arabicToRoman(12),"XII")
		assertEquals(arabicToRoman(14),"XIV")
	}


	
	@Test
	function twentySixEightythree = {
		assertEquals(arabicToRoman(26),"XXVI")
		assertEquals(arabicToRoman(83),"LXXXIII")
	}


	
	@Test
	function fourtyFourtythreeFourtyFive = {
		assertEquals(arabicToRoman(40),"XL")
		assertEquals(arabicToRoman(43),"XLIII")
		assertEquals(arabicToRoman(45),"XLV")
		assertEquals(arabicToRoman(49),"XLIX")
	}


	
	@Test
	function oneHundredFivehundredOnethousand = {
		assertEquals(arabicToRoman(100),"C")
		assertEquals(arabicToRoman(500),"D")
		assertEquals(arabicToRoman(1000),"M")
	}


	
	@Test
	function mixSix = {
		assertEquals(arabicToRoman(96),"XCVI")
		assertEquals(arabicToRoman(496),"CDXCVI")
		assertEquals(arabicToRoman(996),"CMXCVI")
		assertEquals(arabicToRoman(2996),"MMCMXCVI")
	}




	
	@Test
	function mixArabicToRoman = {
		assertEquals(arabicToRoman(1223),"MCCXXIII")
		assertEquals(arabicToRoman(1999),"MCMXCIX")
		assertEquals(arabicToRoman(2781),"MMDCCLXXXI")
		assertEquals(arabicToRoman(321),"CCCXXI")
		assertEquals(arabicToRoman(3266),"MMMCCLXVI")
		assertEquals(arabicToRoman(1211),"MCCXI")
		assertEquals(arabicToRoman(1207),"MCCVII")
	}


	
	@Test
    function mixRomanToArabic = {
		assertEquals(romanToArabic("I"),1)
		assertEquals(romanToArabic("II"),2)
		assertEquals(romanToArabic("III"),3)
		assertEquals(romanToArabic("IV"),4)
		assertEquals(romanToArabic("V"),5)
		assertEquals(romanToArabic("VI"),6)
		assertEquals(romanToArabic("VII"),7)
		assertEquals(romanToArabic("VIII"),8)
		assertEquals(romanToArabic("IX"),9)
		assertEquals(romanToArabic("X"),10)
		assertEquals(romanToArabic("XI"),11)
		assertEquals(romanToArabic("XII"),12)
		assertEquals(romanToArabic("XIII"),13)
		assertEquals(romanToArabic("XIV"),14)
		assertEquals(romanToArabic("XV"),15)

		assertEquals(romanToArabic("XL"),40)
		assertEquals(romanToArabic("L"),50)
		assertEquals(romanToArabic("XC"),90)
		assertEquals(romanToArabic("C"),100)
		assertEquals(romanToArabic("CD"),400)
		assertEquals(romanToArabic("D"),500)
		assertEquals(romanToArabic("CM"),900)
		assertEquals(romanToArabic("M"),1000)

		assertEquals(romanToArabic("MCCXXIII"),1223)
		assertEquals(romanToArabic("MCMXCIX"),1999)
		assertEquals(romanToArabic("MMDCCLXXXI"),2781)
		assertEquals(romanToArabic("CCCXXI"),321)
		assertEquals(romanToArabic("MCCXI"),1211)
		assertEquals(romanToArabic("MCCVII"),1207)
	}




