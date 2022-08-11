Historial2 = (23500, 5960, 2300, 10200, 8900)

def contar(parametero):
   count=0
   for i in range(len(parametero)):
        if(parametero[i]>5000):
            count+=1
   return count

print("Frida: Gastos > 5000: ",contar(Historial2))
        

