#!/bin/bash

echo "🖼️  Comprimindo imagens para otimizar tamanho..."

# Criar diretório para imagens comprimidas
mkdir -p images_compressed/modulos
mkdir -p images_compressed/bonus

# Função para comprimir imagem
compress_image() {
    local input="$1"
    local output="$2"
    local quality="$3"
    
    echo "Comprimindo: $input"
    
    # Redimensionar e comprimir com ImageMagick
    magick "$input" \
        -resize '800x600>' \
        -quality "$quality" \
        -strip \
        -define webp:lossless=false \
        -define webp:method=6 \
        "$output"
}

# Comprimir imagem principal
compress_image "images/dra-yallana.png" "images_compressed/dra-yallana.png" 85

# Comprimir imagens dos módulos
for img in images/modulos/*.png; do
    if [ -f "$img" ]; then
        filename=$(basename "$img")
        compress_image "$img" "images_compressed/modulos/$filename" 85
    fi
done

# Comprimir imagens dos bônus
for img in images/bonus/*.png; do
    if [ -f "$img" ]; then
        filename=$(basename "$img")
        compress_image "$img" "images_compressed/bonus/$filename" 85
    fi
done

echo "✅ Compressão concluída!"
echo "📊 Verificando tamanhos..."

echo "Tamanho original:"
du -sh images/

echo "Tamanho comprimido:"
du -sh images_compressed/

echo "🎉 Imagens comprimidas salvas em images_compressed/"
