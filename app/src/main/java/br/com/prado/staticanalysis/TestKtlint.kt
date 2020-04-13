package br.com.prado.staticanalysis

import java.util.*

class TestKtlint {

}

class A {}


class B {}

fun f(): Unit {}

/* OUTPUT da Task Gradle

staticanalysis/TestKtlint.kt:1:1: File must end with a newline (\n)
staticanalysis/TestKtlint.kt:3:1: Wildcard import (cannot be auto-corrected)
staticanalysis/TestKtlint.kt:5:18: Unnecessary block ("{}")
staticanalysis/TestKtlint.kt:6:1: Unexpected blank line(s) before "}"
staticanalysis/TestKtlint.kt:9:9: Unnecessary block ("{}")
staticanalysis/TestKtlint.kt:11:1: Needless blank line(s)
staticanalysis/TestKtlint.kt:12:9: Unnecessary block ("{}")
staticanalysis/TestKtlint.kt:14:10: Unnecessary "Unit" return type

 */