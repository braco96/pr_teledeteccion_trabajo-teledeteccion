#!/usr/bin/env bash
set -euo pipefail

# === Parámetros de ejemplo (ajusta rutas a tus datos) ===
PAN="datos/pan.tif"          # Pancromática (alta resolución)
MS="datos/ms.tif"            # Multiespectral (baja resolución, 3 o 4 bandas)
SALIDA="salidas"
mkdir -p "$SALIDA"

echo "Comprobando dependencias..."
command -v gdalinfo >/dev/null || { echo "Falta gdalinfo (GDAL)."; exit 1; }
command -v otbcli_Pansharpening >/dev/null || echo "Aviso: intenta 'otbcli_BundleToPerfectSensor' si tu OTB no trae 'otbcli_Pansharpening'."
echo "OK"

echo "=== Comandos de ejemplo ==="
echo "Ajusta estos pasos a la práctica concreta."
gdalinfo "$MS" | head -n 20 || true
gdal_translate -ot Byte -scale "$MS" "$SALIDA/ms_8b.tif"
echo "Hecho."

