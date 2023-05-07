import mysql.connector

# Configurar conexión a la base de datos
db = mysql.connector.connect(
    host="localhost",
    user="root", #modificar de acuerdo al usuario
    password="root", #modificar de acuerdo a la contraseña
    database="parser"
)
cursor = db.cursor()

# Leer archivo
with open('input-10-facturas.txt', "r") as file:
    lines = file.readlines()

# Inicializar variables de facturas
numero_factura = None
numero_cliente = None
fecha = None
tipo_moneda = None
total_items = None
total_neto = None
productos = []

# Procesar líneas del archivo
for line in lines:
    if line[0] == 'H':
        # Procesar header
        numero_factura = line[2:11].strip()
        numero_cliente = line[12:18].strip()
        fecha = line[18:26]
        tipo_moneda = line[27:30].strip()
        total_items = 0
        total_neto = 0
        productos = []
    elif line[0] == 'I':
        # Procesar item
        producto_id = line[2:10].strip()
        antiguedad = int(line[10:13].replace(' ', '0'))  # Reemplazar espacios por ceros
        cantidad = int(line[13:16].replace(' ', ''))
        valor_neto = float(line[16:28].replace(' ', ''))
        total_items += cantidad
        total_neto += valor_neto
        productos.append((producto_id, antiguedad, cantidad, valor_neto))
    elif line[0] == 'T':
        # Guardar factura y productos en la base de datos
        cursor.execute("INSERT INTO factura (numero_factura, numero_cliente, fecha, tipo_moneda, total_items, total_neto) VALUES (%s, %s, %s, %s, %s, %s)", (numero_factura, numero_cliente, fecha, tipo_moneda, total_items, total_neto))
        factura_id = cursor.lastrowid
        for producto in productos:
            cursor.execute("INSERT INTO producto (factura_id, producto_id, antiguedad, cantidad, valor_neto) VALUES (%s, %s, %s, %s, %s)", (factura_id, *producto))
        db.commit()
        print(f"Factura {numero_factura} procesada exitosamente.")

# Registrar acción de procesamiento
cursor.execute("INSERT INTO log_actions (action, description) VALUES (%s, %s)", ('Procesamiento completado', 'Archivo procesado exitosamente.'))
db.commit()
print("Procesamiento completado.")

# Cerrar conexión a la base de datos
cursor.close()
db.close()
