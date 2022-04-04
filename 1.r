n <- as.integer(readline(prompt = "Enter the number of students. "))

USN <- vector(mode = "character", length = n)
Name <- vector(mode = "character", length = n)
Marks <- vector(mode = "numeric", length = n)

print("Enter students' USNs, names and marks.")
for (i in 1:n) {
  USN[i] <- as.character(readline())
  Name[i] <- as.character(readline())
  Marks[i] <- as.numeric(readline())
}

Student <- data.frame(USN, Name, Marks)

Age <- vector(mode = "integer", length = n)
print("Enter students' ages.")
for (i in 1:n)
  Age[i] <- as.integer(readline())

Student <- cbind(Student, Age)
print("Student details:")
print(Student)

for (i in 1:n) {
  if (Student[i, ][3] > 25)
    if (Student[i, ][4] < 20)
      print(Student[i,])
}