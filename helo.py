print("Helo world")
print("cara" + "pau")

a = 5.0
b = 10
print(a +b)

a = 3
b = 5.0
print(a/b)
print(b/a)
c = 4
print(a/c)

d = 4
e = 2
print(d * e)
print(d - e)
print(d / e)
print(d // e)
print(d % e)
a = "Laboratorio"
b = " de "
c = "Informática"
print(len(c))
print(a + b +c)
print(a[0:3]+"-"+c[0]+" "+str(2020))
print(a[3]+"-"+c[2:3]+" ")
print(len(a)) # Comprimento de uma string
print(a.lower()) # Converte para minúsculas
print(a.upper()) # Converte para maiúsculas
print(a.title()) # Converte para título
print(a.find("t")) # Primeira posição de "t"
print(a.isalpha()) # Verifica se só tem letras
print(a.isdigit()) # Verifica se é um número
print(a.islower()) # Verifica se tem só minúsculas
print(a.strip()) # Remove espaços nos extremos
print(a.split(" ")) # Divide por espaços

curso1 = "MIECT"
curso2 = "LI"
etcs = 5
etcs1 = 3
print("%s %d, %s %d" %(curso1, etcs, curso2, etcs1))

a = 3
sa = str(a)
c = int(sa)
d = float(sa) * 1.2
print("%d, %s, %d, %4.1f" %(a, sa, c, d))

l = ['MIECT', 'LEI', 'MEI', 'MSI', 'MIEET']
print(l)
print(l[0])
print(l[0:2])

l = []
l1 = []
l2 = []

l1.append('Mec')
l1.append('Junior')
l1.append("Ada")
l2.append('Comeu')
l2.append('Jaca')
l.extend(l1)
l.extend(l2)
print(len(l))
print(l)
l = [1,2,2,4,6,7,8,9,0,12,43,5]
l.sort
print(l)

import sys 
print(sys.argv)

t = []
t.append( {'nome': "Adalberto", 'mec': 105589} )
t.append( {'nome': "Ada", 'mec': 102289} )
t.append( {'nome': "junior", 'mec': 902289} )
t.append( {'nome': "Trindade", 'mec': 103389} )
print(t[0]['nome'])
print(t)

valor1 = str(input("Frase: "))
print(valor1.upper())

ano = int(input('ano:'))
if ano % 4 == 0 or (ano % 400 == 0 and ano % 100 != 0):
    print("ano bissexto")
else:
    print("não é bissexto")

frase = str(input("Frase: "))
if (frase == ""):
    print("Vazio")
else:
    print(frase)

a = "Laboratórios de Informática"
for i in a:
        print(i)

for i in range(0, 100):
                print(i)

frase = str(input("Frase? :"))
cont = 0
for i in frase:
    if frase.isdigit():
                 cont = i + 1
                 a = cont
                 print(a);


i = 0
while i < 10:
    print(i)
    i = i + 1
    break


f = open("Ada.txt", "r")
for linha in f:
    print(linha)
f.close()