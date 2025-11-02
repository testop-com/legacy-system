# 🌐 Configuração do GitHub Pages

Este documento explica como configurar e publicar a documentação técnica via GitHub Pages.

---

## 📋 Pré-requisitos

- Repositório no GitHub
- Acesso de administração ao repositório
- Todos os arquivos da documentação commitados

---

## 🚀 Passo a Passo para Ativar GitHub Pages

### 1. Push do Código para o GitHub

```bash
# Inicializar repositório (se ainda não foi feito)
git init

# Adicionar todos os arquivos
git add .

# Fazer commit
git commit -m "Adicionar documentação técnica das bases de dados"

# Adicionar remote (substitua com seu URL)
git remote add origin https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git

# Push para main
git branch -M main
git push -u origin main
```

### 2. Ativar GitHub Pages

1. Vá até o repositório no GitHub
2. Clique em **Settings** (Configurações)
3. No menu lateral, clique em **Pages**
4. Em **Source**, selecione:
   - Branch: `main`
   - Folder: `/ (root)`
5. Clique em **Save**

### 3. Aguardar Deploy

- O GitHub levará alguns minutos para fazer o deploy
- Você verá uma mensagem: "Your site is ready to be published at..."
- A URL será algo como: `https://SEU_USUARIO.github.io/SEU_REPOSITORIO/`

---

## 📁 Estrutura de Arquivos Necessária

Certifique-se de que estes arquivos estão no repositório:

```
/
├── index.html                              ← Página principal
├── _config.yml                             ← Configuração GitHub Pages
├── DOCUMENTACAO_TECNICA_BASES_DADOS.docx  ← Documento Word
├── database_analysis.json                  ← Dados JSON
├── LEIA-ME_DOCUMENTACAO.md                ← Guia
├── RESUMO_ENTREGA.md                      ← Resumo
├── assets/
│   ├── css/
│   │   └── style.css                      ← Estilos
│   └── js/
│       └── main.js                        ← JavaScript
└── database_schemas/
    ├── RESUMO_BASES_DADOS.pdf
    ├── ESQUEMA_grupotestop_financas.pdf
    ├── ESQUEMA_grupotestop_stock.pdf
    └── ... (mais 9 arquivos PDF)
```

---

## ✅ Verificação

Após o deploy, visite a URL do GitHub Pages e verifique:

- [ ] Página principal carrega corretamente
- [ ] Design e estilos estão aplicados
- [ ] Links de download funcionam
- [ ] PDFs podem ser baixados
- [ ] Documento Word pode ser baixado
- [ ] JSON pode ser acessado
- [ ] Layout responsivo funciona no mobile

---

## 🔧 Configurações Opcionais

### Domínio Personalizado

Se quiser usar um domínio próprio:

1. Em **Settings > Pages**
2. Em **Custom domain**, insira: `docs.seudominio.com`
3. Configure DNS no seu provedor:
   ```
   Type: CNAME
   Name: docs
   Value: SEU_USUARIO.github.io
   ```

### HTTPS

- GitHub Pages fornece HTTPS automaticamente
- Se usar domínio personalizado, marque **Enforce HTTPS**

---

## 🎨 Personalização

### Alterar Cores

Edite `assets/css/style.css`:

```css
:root {
  --primary-color: #2e86ab; /* Cor principal */
  --secondary-color: #a23b72; /* Cor secundária */
  --accent-color: #f18f01; /* Cor de destaque */
}
```

### Alterar Conteúdo

Edite `index.html` diretamente para:

- Mudar textos
- Adicionar seções
- Modificar links
- Atualizar informações

---

## 🔄 Atualizar Conteúdo

Para atualizar a documentação publicada:

```bash
# Fazer alterações nos arquivos
# ...

# Commit e push
git add .
git commit -m "Atualizar documentação"
git push origin main

# GitHub Pages re-publica automaticamente
```

---

## 📊 Monitorização

### Ver Estatísticas de Visitas

GitHub Pages não fornece analytics nativamente. Para rastreamento:

1. **Google Analytics**: Adicione o código ao `index.html`
2. **Plausible**: Alternativa focada em privacidade
3. **GitHub Insights**: Settings > Insights > Traffic

### Verificar Build Status

- **Settings > Pages** mostra o status do último deploy
- Se houver erro, será exibido aqui

---

## ⚠️ Limitações do GitHub Pages

- **Tamanho**: Repositório máximo de 1 GB
- **Bandwidth**: 100 GB/mês
- **Builds**: 10 por hora
- **Arquivos**: Máximo 100 MB por arquivo

**Nota**: Nossa documentação está bem abaixo destes limites.

---

## 🔒 Tornar Privado

Se quiser que a documentação seja privada:

1. **Settings > General**
2. Role até **Danger Zone**
3. Clique **Change visibility**
4. Selecione **Private**

**Nota**: GitHub Pages em repos privados requer GitHub Pro/Team/Enterprise.

---

## 🆘 Resolução de Problemas

### Página 404

**Problema**: Página não carrega, mostra 404

**Solução**:

1. Verifique se `index.html` está na raiz
2. Confirme que GitHub Pages está ativado
3. Aguarde 5-10 minutos após ativar

### Estilos não carregam

**Problema**: Página carrega mas sem formatação

**Solução**:

1. Verifique se `assets/css/style.css` existe
2. Verifique o caminho no `index.html`
3. Limpe cache do navegador (Ctrl+Shift+R)

### Downloads não funcionam

**Problema**: Links de download não funcionam

**Solução**:

1. Verifique se arquivos estão commitados
2. Confirme caminhos relativos corretos
3. Certifique-se que arquivos não excedem 100 MB

---

## 📞 Suporte

Para questões sobre:

- **GitHub Pages**: https://docs.github.com/pages
- **Esta documentação**: musekwa@tecmoza.com | (+258) 860140080
- **Conteúdo técnico**: Consulte LEIA-ME_DOCUMENTACAO.md
- **Tes-Top (Ponto Focal)**: Younus Mohammed - (+258) 843030477
- **Documentação (TECMOZA)**: Evariste Musekwa Iguna - (+258) 860140080

---

## 📝 Checklist de Deploy

Antes de fazer deploy, confirme:

- [ ] Todos arquivos commitados no Git
- [ ] `index.html` na raiz do repositório
- [ ] Pasta `assets/` com CSS e JS
- [ ] Pasta `database_schemas/` com todos PDFs
- [ ] Arquivos DOCX, JSON e MD incluídos
- [ ] Links testados localmente
- [ ] Paths relativos (não absolutos)
- [ ] `.gitignore` configurado corretamente

---

## 🎉 Após Deploy

Compartilhe a URL com:

- ✉️ Email: Envie para equipa técnica
- 📋 README: Adicione ao README.md principal
- 📄 Documentos: Referencie em relatórios

**URL de Exemplo**:

```
https://grupotestop.github.io/legacy-system/
```

---

**Data**: 01 de Novembro de 2025  
**Versão**: 1.0  
**Preparado por**: TECMOZA
