       IDENTIFICATION DIVISION.
       PROGRAM-ID. CARTAO-BATCH.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CARTAO-INFILE ASSIGN TO "cartoes.txt"
               ORGANIZATION IS LINE SEQUENTIAL.
       
       DATA DIVISION.
       FILE SECTION.
       FD  CARTAO-INFILE.
       01  CARTAO-REGISTRO.
           05 CARTAO-NUMERO    PIC 9(5).
           05 CARTAO-NOME      PIC X(20).
           05 CARTAO-VALOR     PIC 9(6).
           05 CARTAO-STATUS    PIC X(1).
       
       WORKING-STORAGE SECTION.
       01  FIM-ARQUIVO         PIC X VALUE "N".
       01  PROCESSADO-STATUS   PIC X(10).
       
       PROCEDURE DIVISION.
           OPEN INPUT CARTAO-INFILE
           PERFORM UNTIL FIM-ARQUIVO = "S"
               READ CARTAO-INFILE
                   AT END
                       MOVE "S" TO FIM-ARQUIVO
                   NOT AT END
                       IF CARTAO-VALOR > 0
                           MOVE "APROVADO" TO PROCESSADO-STATUS
                       ELSE
                           MOVE "REJEITADO" TO PROCESSADO-STATUS
                       END-IF
                       DISPLAY CARTAO-NUMERO " "
                               CARTAO-NOME " "
                               CARTAO-VALOR " "
                               PROCESSADO-STATUS
               END-READ
           END-PERFORM
           CLOSE CARTAO-INFILE
           STOP RUN.
