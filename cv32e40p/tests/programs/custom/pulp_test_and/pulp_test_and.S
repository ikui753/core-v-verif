.include "user_define.h" 

.section .text.start
.globl _start
.type _start, @function 

_start:
	j _start_main

.globl _start_main
.section .text
_start_main:
				li x0, 0x00000002
				li x1, 0x00000001
				li x2, 0x00000003
                p.mac x2, x1, x0
				ori x3, x1, 2
				bne x3, x2, _test_failed
				j _test_passed

_test_passed: 
				lui a0,print_port>>12
    				addi a1,zero,'\n'
   			        sw a1,0(a0)
					addi a1,zero,'C'
					sw a1,0(a0)
					addi a1,zero,'V'
					sw a1,0(a0)
					addi a1,zero,'3'
					sw a1,0(a0)
					addi a1,zero,'2'
					sw a1,0(a0)
					addi a1,zero,' '
					sw a1,0(a0)
					addi a1,zero,'D'
					sw a1,0(a0)
					addi a1,zero,'O'
					sw a1,0(a0)
					addi a1,zero,'N'
					sw a1,0(a0)
					addi a1,zero,'E'
					sw a1,0(a0)
					addi a1,zero,'\n'
					sw a1,0(a0)
					sw a1,0(a0)
					
test_pass:
					li x18, 123456789
					li x17, 0x20000000
					sw x18,0(x17)
					wfi 

_test_failed: 
				 lui a0,print_port>>12
   				 addi a1,zero,'\n'
   				 sw a1,0(a0)
   				 addi a1,zero,'C'
   				 sw a1,0(a0)
   				 addi a1,zero,'V'
   				 sw a1,0(a0)
   				 addi a1,zero,'3'
   				 sw a1,0(a0)
   				 addi a1,zero,'2'
   				 sw a1,0(a0)
   				 addi a1,zero,' '
    				 sw a1,0(a0)
   				 addi a1,zero,'F'
   				 sw a1,0(a0)
   				 addi a1,zero,'A'
   				 sw a1,0(a0)
   				 addi a1,zero,'I'
   				 sw a1,0(a0)
   				 addi a1,zero,'L'
   				 sw a1,0(a0)
   				 addi a1,zero,'\n'
   				 sw a1,0(a0)
   				 sw a1,0(a0)

   				 li x18, 1
   				 li x17, 0x20000000
   				 sw x18,0(x17)
				 wfi
