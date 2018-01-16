module TestFunctions
import RomanTest
import RomanNumerals
import org.hamcrest
import org.assertj.core.api
import org.junit
import org.junit.Assert
import java.lang
import gololang.Predefined
import gololang.StandardAugmentations
import gololang

function main = |args| {
	test_OneTwoThree()
	five()
	tenFifty()
	fourNineFourtynine()
	sixSevenEight()
	twelveFourteen()
	twentySixEightythree()
	fourtyFourtythreeFourtyFive()
	oneHundredFivehundredOnethousand()
	mixSix()
	mixArabicToRoman()
	#mixRomanToArabic()
}
