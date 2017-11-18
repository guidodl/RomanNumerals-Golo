module Test

import RomanTest
import org.junit.runner.JUnitCore
import org.junit.runner.Result
import org.junit.runner.notification.Failure

function main = |args|{
    var result = JUnitCore.runClasses(RomanTest.class)

    foreach failure in result.getFailures() {
        println(failure.toString())
    }
    println(result.wasSuccessful())
}