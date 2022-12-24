.model small            
.code
org 100h
jmp mulai
    nama    db 0dh, 0ah, 0dh, 0ah,"Masukkan Nama Anda       : ", '$'
    nik     db 0dh, 0ah,"Masukkan NIK Anda        : ", '$'
    nomor   db 0dh, 0ah,"Masukkan No. HP Anda     : ", '$'
        tampung_nama db 30,?,30 dup (?)
        tampung_nik db 30,?,30 dup (?)
        tampung_nomor db 30,?,30 dup (?)
    sewa1   db 0dh, 0ah,"===== PROGRAM PENYEWAAN MOTOR =====", '$'  
    sewa2   db 0dh, 0ah,"         ", '$'
    sewa3   db 0dh, 0ah,"Silahkan Masukkan Data Diri Anda." , '$' 
    sewa4   db 0dh, 0dh, 0dh, 0ah, 0dh, 0ah, "Selamat Datang di Penyewaan Motor", '$' 
    sewa5   db 0dh, 0ah," "    
    
            db 0dh, 0ah, "Pilih Tipe Waktu dan Motor yang Anda Inginkan ", 0dh, 0ah           
  
          
            db "=======================================================", 0dh, 0ah 
            db "|| PER HARI  :                                        ||", 0dh, 0ah
            db "|| 1. Motor Honda Beat       (1 hari) Rp 60.000      ||", 0dh, 0ah 
            db "|| 2. Motor Honda Vario      (1 hari) Rp 80.000      ||", 0dh, 0ah
            db "|| 3. Motor Honda PCX 160    (1 hari) Rp 150.000     ||", 0dh, 0ah                                        
            db "|| 4. Motor Yamaha NMAX      (1 hari) Rp 150.000     ||", 0dh, 0ah
            db "=======================================================", 0dh, 0ah
            db "                                                   ", 0dh, 0ah              
          
            db "=======================================================", 0dh, 0ah 
            db "|| PER BULAN :                                        ||", 0dh, 0ah
            db "|| 5. Motor Honda Beat       (1 Bulan) Rp 650.000    ||", 0dh, 0ah 
            db "|| 6. Motor Honda Vario      (1 Bulan) Rp 1.400.000  ||", 0dh, 0ah
            db "|| 7. Motor Honda PCX 160    (1 Bulan) Rp 2.300.000  ||", 0dh, 0ah              
            db "|| 8. Motor Yamaha NMAX      (1 Bulan) Rp 2.300.000  ||", 0dh, 0ah
            db "=======================================================", 0dh, 0ah
            db 0dh, 0ah, "Masukkan Pilihan Anda Sesuai Nomor ? ", '$'
            
    sewa6      db 0dh, 0ah, 0dh, 0ah, "Proses berhasil, berikut rinciannya :", '$'
    sewa7      db 0dh, 0ah, "Motor Dapat diambill di kasir setelah pembayaran", '$'
    sewa8      db 0dh, 0ah, 0dh, 0ah,"Apakah ada tambahan tenda yang disewa ?(Y, N)", '$'
    salah   db 0dh, 0ah, "Tidak ada pilihan.", '$'      
    
                                                                                                 
    motor1    db 0dh, 0ah, 0dh, 0ah, "Motor Honda Beat    (1 hari)",0dh, 0ah, "Harga                Rp 60.0000",0dh, 0ah,0dh, 0ah, "Harap Dikembalikan Tepat Waktu Dengan Kondisi Utuh!!" , '$'
    motor2    db 0dh, 0ah, 0dh, 0ah, "Motor Honda Vario   (1 hari)",0dh, 0ah, "Harga                Rp 80.000",0dh, 0ah,0dh, 0ah, "Harap Dikembalikan Tepat Waktu Dengan Kondisi Utuh!!" , '$' 
    motor3    db 0dh, 0ah, 0dh, 0ah, "Motor Honda PCX 160 (1 hari)",0dh, 0ah, "Harga                Rp 150.000",0dh, 0ah,0dh, 0ah, "Harap Dikembalikan Tepat Waktu Dengan Kondisi Utuh!!" , '$'  
    motor4    db 0dh, 0ah, 0dh, 0ah, "Motor Yamaha NMAX   (1 hari)",0dh, 0ah, "Harga                Rp150.000",0dh, 0ah,0dh, 0ah, "Harap Dikembalikan Tepat Waktu Dengan Kondisi Utuh!!" , '$'
    motor5    db 0dh, 0ah, 0dh, 0ah, "Motor Honda Beat    (1 Bulan)",0dh, 0ah, "Harga               Rp 650.000",0dh, 0ah,0dh, 0ah, "Harap Dikembalikan Tepat Waktu Dengan Kondisi Utuh!!" , '$'
    motor6    db 0dh, 0ah, 0dh, 0ah, "Motor Honda Vario   (1 Bulan)",0dh, 0ah, "Harga               Rp 1.400.000",0dh, 0ah,0dh, 0ah, "Harap Dikembalikan Tepat Waktu Dengan Kondisi Utuh!!" , '$'
    motor7    db 0dh, 0ah, 0dh, 0ah, "Motor Honda PCX 160 (1 hari)",0dh, 0ah, "Harga                Rp 2.300.000",0dh, 0ah,0dh, 0ah, "Harap Dikembalikan Tepat Waktu Dengan Kondisi Utuh!!" , '$'
    motor8    db 0dh, 0ah, 0dh, 0ah, "Motor Yamaha NMAX  (1 hari)",0dh, 0ah, "Harga              Rp 2.300.000",0dh, 0ah,0dh, 0ah, "Harap Dikembalikan Tepat Waktu Dengan Kondisi Utuh!!" , '$'
mulai:
    mov ah,09h
    lea dx,sewa1
    int 21h
        
    mov ah,09h
    lea dx,sewa2
    int 21h        
        
    mov ah,09h
    lea dx,sewa3
    int 21h       
                               
    mov ah,09h
    lea dx,nama
    int 21h        

    MOV ah, 0ah
    LEA dx, tampung_nama
    INT 21h
    PUSH dx 
    
    MOV ah, 09
    LEA dx, nik
    INT 21h
    
    MOV ah, 0ah
    LEA dx, tampung_nik
    INT 21h
    PUSH dx    
          
    MOV ah, 09
    LEA dx, nomor
    INT 21h
              
    MOV ah, 0ah
    LEA dx, tampung_nomor
    INT 21h
    PUSH dx
    
    MOV ah, 09
    LEA dx, sewa4
    INT 21h
mulai2:        
    MOV ah, 09
    LEA dx, sewa5
    INT 21h 
    
Proses1:
    MOV ah, 01
    INT 21h
    
    CMP al, '1'
    JE motor_1
    
    CMP al, '2'
    JE motor_2
    
    CMP al, '3'
    JE motor_3   
    
    CMP al, '4'
    JE motor_4    
      
    CMP al, '5'
    JE motor_5
    
    CMP al, '6'
    JE motor_6
    
    CMP al, '7'
    JE motor_7
    
    CMP al, '8'
    JE motor_8
       
    JNE input_salah     
    
Proses2:
    MOV ah, 09
    LEA dx, sewa8
    INT 21h
    MOV ah, 01
    INT 21h
    
    CMP al, 'Y'
    JE sewa_lagi
    
    CMP al, 'y'
    JE sewa_lagi
    
    CMP al, 'N'
    JE end
    
    CMP al, 'n'
    JE end
    
    JNE input_salah
    
motor_1:
     MOV ah, 09
     LEA dx, sewa6
     INT 21h
     
     MOV ah, 09
     LEA dx, motor1
     INT 21h   
     
     JMP Proses2
     
motor_2:
     MOV ah, 09
     LEA dx, sewa6
     INT 21h
     
     MOV ah, 09
     LEA dx, motor2       
     
     INT 21h   
     
     JMP Proses2

motor_3:
     MOV ah, 09
     LEA dx, sewa6
     INT 21h
     
     MOV ah, 09
     LEA dx, motor3
     INT 21h
     
     JMP Proses2 
     
motor_4:
     MOV ah, 09
     LEA dx, sewa6
     INT 21h
     
     MOV ah, 09
     LEA dx, motor4
     INT 21h
     
     JMP Proses2
     
motor_5:
     MOV ah, 09
     LEA dx, sewa6
     INT 21h
     
     MOV ah, 09
     LEA dx, motor5
     INT 21h
     
     JMP Proses2 
     
motor_6:
     MOV ah, 09
     LEA dx, sewa6 
     INT 21h
     
     MOV ah, 09
     LEA dx, motor6
     INT 21h 
     
     JMP Proses2
     
motor_7:
     MOV ah, 09
     LEA dx, sewa6
     
     MOV ah, 09
     LEA dx, motor7
     INT 21h 
     
     JMP Proses2
     
motor_8:
     MOV ah, 09
     LEA dx, sewa6
     INT 21h
     
     MOV ah, 09
     LEA dx, motor8
     INT 21h
     
     JMP Proses2  

sewa_lagi:
    JMP mulai2

end:
    MOV ah, 09
    LEA dx, sewa7
    INT 21h
    INT 20h
    JMP Exit

input_salah:
    MOV ah, 09
    LEA dx, salah
    INT 21h
    
    JMP Proses2

JMP Exit
Exit:
RET