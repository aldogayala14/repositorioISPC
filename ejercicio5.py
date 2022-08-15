Historial =(2350, 5960, 23000, 1000, 8900)

total = 0

for i in range(len(Historial)):
    total+=Historial[i]

if(total < 30000):
    print('El monto total es: ', total)
else:
    print('Gastos por encima de lo presupuestado')
