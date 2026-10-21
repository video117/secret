ORG 0000H
CLR P1.3

AGAIN: MOV TMOD, #10H
       MOV TH1, #0DBH
       MOV TL1, #0FFH
       SETB TR1

BACK:  JNB TF1, BACK
       CLR TR1
       CPL P1.3
       CLR TF1
       SJMP AGAIN
END