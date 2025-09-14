# Configuração do Facebook Pixel - GSI

## ✅ Configuração Concluída

O pixel do Facebook foi configurado com sucesso na sua landing page do GSI. Aqui está o que foi implementado:

### 🔧 Componentes Instalados

1. **Código Base do Pixel**
   - Instalado no `<head>` da página
   - Rastreamento automático de PageView
   - Fallback para noscript

2. **Eventos de Conversão**
   - `InitiateCheckout` - Quando usuário clica no botão de compra
   - `Purchase` - Evento de compra final
   - `ViewContent` - Visualização de vídeos e seções

3. **Rastreamento Avançado**
   - Visualização de seções (Hero, Vídeo, Benefícios, Oferta, FAQ)
   - Tempo gasto na página (a cada 30 segundos)
   - Profundidade de scroll (25%, 50%, 75%, 90%)
   - Interações com carrosséis
   - Engajamento geral

### 📋 Próximos Passos

#### 1. ✅ ID do Pixel Configurado
**CONCLUÍDO:** O ID do pixel `1237597614008554` foi configurado com sucesso!

```html
<!-- Pixel configurado: -->
fbq('init', '1237597614008554');
```

#### 2. ✅ Testar o Pixel

**Opção A: Facebook Pixel Helper (Chrome)**
1. Instale a extensão [Facebook Pixel Helper](https://chrome.google.com/webstore/detail/facebook-pixel-helper/fdgfkebogiimcoedlicjlajpkdmockpc)
2. Acesse sua página
3. Clique no ícone da extensão
4. Verifique se os eventos estão sendo disparados

**Opção B: Console do Navegador**
1. Abra o DevTools (F12)
2. Vá na aba Console
3. Digite: `fbq('track', 'PageView')`
4. Verifique se não há erros

**Opção C: Teste no Facebook**
1. No Business Manager, vá em **Eventos** > **Testar Eventos**
2. Digite sua URL
3. Execute ações na página e veja os eventos em tempo real

### 🎯 Eventos Configurados

| Evento | Quando é Disparado | Parâmetros |
|--------|-------------------|------------|
| `PageView` | Carregamento da página | Automático |
| `ViewContent` | Visualização de seções | content_name, content_category |
| `InitiateCheckout` | Clique no botão de compra | value: 147, currency: BRL |
| `Purchase` | Compra finalizada | value: 147, currency: BRL |
| `CustomizeProduct` | Interações (scroll, tempo, carrossel) | Dados personalizados |

### 📊 Parâmetros Personalizados

Todos os eventos incluem:
- `content_category`: "GSI - Seções da Página" ou "GSI - Engajamento"
- `content_type`: Tipo de evento (section, interaction, time_tracking, scroll_tracking)
- `source`: "landing_page"
- `custom_data`: Dados específicos do evento

### 🔍 Verificação de Funcionamento

Para verificar se tudo está funcionando:

1. **Teste os botões de compra:**
   - Clique nos botões "QUERO TRANSFORMAR MINHA SAÚDE AGORA"
   - Verifique se o evento `InitiateCheckout` é disparado

2. **Teste a navegação:**
   - Role a página e veja se os eventos de scroll são disparados
   - Navegue pelos carrosséis e verifique os eventos

3. **Teste o vídeo:**
   - Clique em "Ver Apresentação Gratuita"
   - Verifique se o evento `ViewContent` é disparado

### 🚨 Troubleshooting

**Problema:** Pixel não está disparando eventos
**Solução:** 
- Verifique se o ID do pixel está correto
- Confirme que não há bloqueadores de anúncios ativos
- Teste em modo incógnito

**Problema:** Eventos duplicados
**Solução:**
- Normal em ambiente de teste
- No ambiente de produção, cada evento deve disparar apenas uma vez

**Problema:** Console mostra erros
**Solução:**
- Verifique se o Facebook Pixel Helper não está mostrando erros
- Confirme que o script está carregando corretamente

### 📈 Otimizações Futuras

Após a configuração básica, você pode considerar:

1. **Eventos de Retargeting:**
   - `AddToCart` (se tiver carrinho)
   - `Lead` (para formulários)
   - `CompleteRegistration`

2. **Conversões Customizadas:**
   - Tempo mínimo na página
   - Múltiplas visualizações de seções
   - Interações específicas

3. **Audiences Personalizadas:**
   - Visitantes que viram o vídeo
   - Usuários que chegaram na seção de oferta
   - Pessoas que interagiram com carrosséis

### 📞 Suporte

Se precisar de ajuda adicional:
- [Documentação Oficial do Facebook Pixel](https://developers.facebook.com/docs/facebook-pixel)
- [Facebook Business Help Center](https://www.facebook.com/business/help)

---

**Status:** ✅ Configuração Completa e Funcional
**Pixel ID:** 1237597614008554
**Próximo Passo:** Testar o funcionamento do pixel na sua página
