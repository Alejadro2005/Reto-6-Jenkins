# knote-java + Jenkins CI/CD

## ¿Cómo correr el pipeline en Jenkins?

1. Asegúrate de tener Jenkins corriendo y el plugin de Docker instalado.
2. Crea credenciales tipo "Username with password" en Jenkins con ID: `dockerhub` (tu usuario y contraseña de DockerHub).
3. Crea un pipeline en Jenkins apuntando a este repositorio.
4. Ejecuta el pipeline.

## ¿Cómo probar la app localmente usando la imagen de Docker?

1. Descarga la imagen desde DockerHub (reemplaza `<tag>` por el número de build que veas en Jenkins):
   ```
   docker pull alejadro2005/knote-java:<tag>
   ```
2. Ejecuta la imagen:
   ```
   docker run -d -p 8080:8080 alejadro2005/knote-java:<tag>
   ```
3. Abre tu navegador en [http://localhost:8080](http://localhost:8080)

---

## Estructura del proyecto

- `Dockerfile`: Para construir la imagen de la app.
- `Jenkinsfile`: Pipeline de CI/CD.
- Código fuente en `src/`. 