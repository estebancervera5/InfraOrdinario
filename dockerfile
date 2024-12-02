# Usar una imagen base oficial de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo de requisitos
COPY requirements.txt .

# Instalar dependencias
RUN pip install -r requirements.txt

# Copiar el código fuente
COPY app/ app/

# Exponer el puerto donde correrá la aplicación
EXPOSE 5000

# Comando de inicio
CMD ["python", "app/app.py"]
