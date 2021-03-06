n <- as.integer(readline(prompt = "Enter the number of employees. "))

EmpID <- vector(mode = "integer", length = n)
EmpName <- vector(mode = "character", length = n)
DOJ <- vector(mode = "character", length = n)
Dept <- vector(mode = "character", length = n)
Desig <- vector(mode = "character", length = n)

print("Enter employees' IDs, nams, DOJs, departments and designations.")
for (i in 1:n) {
  EmpID[i] <- as.integer(readline())
  EmpName[i] <- as.character(readline())
  DOJ[i] <- as.character(readline())
  Dept[i] <- as.character(readline())
  Desig[i] <- as.character(readline())
}

Employee <- data.frame(EmpID, EmpName, DOJ, Dept, Desig)
print("The employee details are as follows : ")
print(Employee)

write.csv(Employee, "c:\\Users\\Akshay\\OneDrive\\Desktop\\VS_Code\\R Script\\bdtp2.csv", row.names = FALSE)

empcsv <- read.csv("c:\\Users\\Akshay\\OneDrive\\Desktop\\VS_Code\\R Script\\bdtp2.csv")
print(empcsv)

newrow <- data.frame(3, 'c', '4/3/2022', 'mech', 'technician')
write.table(newrow, file = "c:\\Users\\Akshay\\OneDrive\\Desktop\\VS_Code\\R Script\\bdtp2.csv", sep = ","
            , append = TRUE, col.names = FALSE, row.names = FALSE)

print(empcsv)
