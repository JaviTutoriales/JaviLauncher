import tkinter as tk
from PIL import Image, ImageTk
import requests
from io import BytesIO

def cargar_imagen(url):
    """ Función para cargar una imagen desde una URL y convertirla para Tkinter """
    try:
        response = requests.get(url)
        response.raise_for_status()  # Lanza un error si la respuesta no es exitosa
        img_raw = BytesIO(response.content)
        img = Image.open(img_raw)
        return ImageTk.PhotoImage(img)
    except Exception as e:
        print(f"Error al cargar la imagen: {e}")
        return None

def ejecutar():
    print("Botón Ejecutar presionado")

# Crear la ventana principal
root = tk.Tk()
root.title("JaviLauncher GUITest")
root.geometry("500x400")

# URL de la imagen
url_imagen = "https://example.com/your-image.png"  # Cambia esto por la URL de tu imagen

# Cargar y mostrar una imagen
imagen_tk = cargar_imagen(url_imagen)
if imagen_tk:
    label_imagen = tk.Label(root, image=imagen_tk)
    label_imagen.pack(pady=10)

# Agregar una etiqueta con texto
label_texto = tk.Label(root, text="Escritorio", font=("Arial", 16))
label_texto.pack(pady=10)

# Agregar un botón
boton = tk.Button(root, text="Ejecutar", command=ejecutar)
boton.pack(pady=10)

# Iniciar el bucle principal de la GUI
root.mainloop()
