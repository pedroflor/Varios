import re
import sys

def replace_text(text):
    # Reemplazar el contenido dentro de title=''
    text = re.sub(r'title=\'.*?\'', "title=''", text)

    # Reemplazar el contenido dentro de title=""
    text = re.sub(r'title=".*?"', 'title=""', text)

    return text

# Verificar si se proporcionó el nombre de archivo como argumento
if len(sys.argv) < 2:
    print("Por favor, proporciona el nombre de archivo como argumento.")
    sys.exit(1)

# Obtener el nombre de archivo desde los argumentos de línea de comandos
filename = sys.argv[1]

try:
    # Leer el contenido del archivo
    with open(filename, 'r') as file:
        content = file.read()

    # Reemplazar los textos utilizando expresiones regulares
    modified_content = replace_text(content)

    # Escribir el contenido modificado en el archivo
    with open(filename, 'w') as file:
        file.write(modified_content)

    print("El archivo se ha modificado exitosamente.")

except FileNotFoundError:
    print(f"El archivo '{filename}' no existe.")
except IOError:
    print(f"Ocurrió un error al leer o escribir el archivo '{filename}'.")
