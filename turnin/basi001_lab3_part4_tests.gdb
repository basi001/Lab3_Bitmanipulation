# Test file for Lab3_Bitmanipulation


# commands.gdb provides the following functions for ease:
#   test "<message>"
#       Where <message> is the message to print. Must call this at the beginning of every test
#       Example: test "PINA: 0x00 => expect PORTC: 0x01"
#   checkResult
#       Verify if the test passed or failed. Prints "passed." or "failed." accordingly, 
#       Must call this at the end of every test.
#   expectPORTx <val>
#       With x as the port (A,B,C,D)
#       The value the port is epected to have. If not it will print the erroneous actual value
#   setPINx <val>
#       With x as the port or pin (A,B,C,D)
#       The value to set the pin to (can be decimal or hexidecimal
#       Example: setPINA 0x01
#   printPORTx f OR printPINx f 
#       With x as the port or pin (A,B,C,D)
#       With f as a format option which can be: [d] decimal, [x] hexadecmial (default), [t] binary 
#       Example: printPORTC d
#   printDDRx
#       With x as the DDR (A,B,C,D)
#       Example: printDDRB

echo ======================================================\n
echo Running all tests..."\n\n

# Add tests below
test "PINA: 0x6B => PORTB: 0x06"
setPINA 0x6B
continue 10
expectPORTB 0x06
checkResult

test "PINA: 0x6B => PORTC: 0xB0"
setPINA 0x6B
continue 10
expectPORTC 0xB0
checkResult

test "PINA: 0xFF => PORTB: 0x0F"
setPINA 0xFF
continue 10
expectPORTB 0x0F
checkResult

test "PINA: 0xFF => PORTC: 0xF0"
setPINA 0xFF
continue 10
expectPORTC 0xF0
check result

test "PINA: 0x00 => PORTB: 0x00"
setPINA 0x00
continue 10
expectPORTB 0x00
checkResult

test "PINA: 0x00 => PORTC: 0x00"
setPINA 0x00
continue 10
expectPORTC 0x00
check result

test "PINA: 0x07 => PORTB: 0x00"
setPINA 0x07
continue 10
expectPORTB 0x00
checkResult

test "PINA: 0x07 => PORTC: 0x70"
setPINA 0x07
continue 10
expectPORTC 0x70
check result


# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
