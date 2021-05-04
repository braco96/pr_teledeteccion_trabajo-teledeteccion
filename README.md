# Trabajo teledeteccion
 
## Resumen
Repositorio independiente que empaqueta la memoria original, un README con la metodología seguida y un guion de comandos reproducibles (gdal/otb) para la práctica.

## Objetivos
- Dejar un proyecto autocontenido listo para versionar en GitHub.
- Documentar datos de entrada, pasos y salidas esperadas.
- Proveer comandos CLI que permitan repetir el flujo sin interfaz gráfica.

## Metodología
El README resume entradas, proceso y salidas, y se incluye un script con comandos de línea para facilitar la reproducción sin entorno gráfico.

## Estructura del repositorio
```
.
├─ Memoria.docx
├─ README.md
└─ comandos.sh
```

## Requisitos
- Python 3 (opcional)
- GDAL (>= 3.x) y Orfeo Toolbox (OTB) instalados y en el `PATH`
- Bash (Linux/macOS) o WSL en Windows

## Ejecución
```bash
chmod +x comandos.sh
./comandos.sh
```

## Notas
- Ver `comandos.sh` para el detalle ejecutable.
