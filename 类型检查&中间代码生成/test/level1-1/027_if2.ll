@a = global i32 0, align 4
define i32 @main() {
B3:
  store i32 10, i32* @a, align 4
  %t1 = load i32, i32* @a, align 4
  %t2 = icmp sgt i32 %t1, 0
  br i1 %t2, label %B4, label %B9
B4:                               	; preds = %B3
  ret i32 1
  br label %B6
B9:                               	; preds = %B3
  br label %B5
B6:                               	; preds = %B4, %B5
  ret i32 0
B5:                               	; preds = %B9
  ret i32 0
  br label %B6
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
