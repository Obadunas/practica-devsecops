# Usamos una imagen ligera para mayor seguridad
FROM python:3.9-alpine 

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Instalamos dependencias
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el código de la app (app.py)
COPY . .

# Exponemos el puerto que usa Flask
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
