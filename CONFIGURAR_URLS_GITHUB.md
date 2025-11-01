# 🔧 CONFIGURAR URLs DO GITHUB

**AÇÃO OBRIGATÓRIA antes do deploy!**

---

## ⚠️ O QUE PRECISA SER FEITO

Os arquivos `index.html` e `codigo-fonte.html` contêm placeholders `SEU_USUARIO` que precisam ser substituídos pelo seu **username real do GitHub**.

---

## 📝 Passo a Passo

### 1. Identificar Seu Username GitHub

Seu username GitHub é o nome que aparece na URL do seu perfil:

```
https://github.com/[SEU_USERNAME]
```

**Exemplos:**

- Se seu perfil é `https://github.com/grupotestop` → username é `grupotestop`
- Se é `https://github.com/tecmoza` → username é `tecmoza`

### 2. Substituir nos Arquivos

#### Método A: Editor de Texto (VS Code)

1. Abra VS Code
2. Abra o projeto `legacy-system`
3. Use `Ctrl+Shift+F` (buscar em todos arquivos)
4. Buscar por: `SEU_USUARIO`
5. Substituir por: `[seu_username_real]`
6. Clicar "Replace All"

**Arquivos afetados:** 2 (index.html, codigo-fonte.html)  
**Ocorrências:** ~14 links

#### Método B: PowerShell (Linha de Comando)

```powershell
cd D:\TECMOZA\TESTOP\legacy-system

# SUBSTITUA 'grupotestop' pelo seu username real
$username = 'grupotestop'  # <-- EDITAR AQUI

# Substituir em index.html
(Get-Content index.html) -replace 'SEU_USUARIO', $username | Set-Content index.html

# Substituir em codigo-fonte.html
(Get-Content codigo-fonte.html) -replace 'SEU_USUARIO', $username | Set-Content codigo-fonte.html

# Verificar
Select-String -Path index.html,codigo-fonte.html -Pattern 'SEU_USUARIO'
# (não deve retornar nada)
```

### 3. Verificar

Abra os arquivos e confirme que não há mais `SEU_USUARIO`:

```bash
# Buscar por SEU_USUARIO
grep -r "SEU_USUARIO" index.html codigo-fonte.html

# Ou no PowerShell:
Select-String -Path index.html,codigo-fonte.html -Pattern "SEU_USUARIO"
```

**Resultado esperado:** Nenhuma ocorrência encontrada

---

## ✅ Exemplo de URL Correto

### ANTES (Placeholder):

```html
https://github.com/SEU_USUARIO/legacy-system/blob/main/assessment-report/ASSESSMENT_FINANCAS.md
```

### DEPOIS (Username real - exemplo):

```html
https://github.com/grupotestop/legacy-system/blob/main/assessment-report/ASSESSMENT_FINANCAS.md
```

---

## 📋 Checklist de Configuração

### Antes do Deploy

- [ ] Identificou seu username GitHub
- [ ] Abriu index.html e codigo-fonte.html
- [ ] Substituiu TODOS os `SEU_USUARIO`
- [ ] Verificou que não restou nenhum placeholder
- [ ] Testou pelo menos 1 link localmente
- [ ] Salvou os arquivos

### Validação

- [ ] Buscou por "SEU_USUARIO" → Não encontrou
- [ ] Links têm formato: `https://github.com/[username_real]/legacy-system/...`
- [ ] Total de 14 links atualizados

---

## 🧪 Como Testar ANTES do Deploy

### Teste Manual

1. Abra `index.html` no navegador
2. Navegue para "Código-Fonte"
3. Clique em "📖 Ver no GitHub" em qualquer relatório
4. Verifique a URL que abre:
   - ❌ Se tiver `SEU_USUARIO` → Ainda não substituiu
   - ✅ Se tiver seu username → Correto!

---

## 🚀 Depois de Configurar

### Fazer Deploy

```bash
# Adicionar alterações
git add index.html codigo-fonte.html

# Commit
git commit -m "Configurar URLs do GitHub para relatórios"

# Push
git push origin main
```

### O Que Acontece

1. GitHub Pages atualiza (2-5 minutos)
2. Usuários clicam "📖 Ver no GitHub"
3. Abre relatório no GitHub.com
4. Markdown é renderizado automaticamente
5. Usuário lê formatado e bonito! ✅

---

## 💡 Opções Alternativas

### Se Repositório for Privado

Os links do GitHub só funcionarão para quem tem acesso ao repositório privado.

**Opções:**

1. Tornar repositório público (recomendado para documentação)
2. Fornecer acesso ao repositório para usuários autorizados
3. Ou usar solução local (clone do repo)

### Se Quiser Acesso Offline

Forneça instruções para clonar:

```bash
git clone https://github.com/SEU_USUARIO/legacy-system.git
cd legacy-system/assessment-report
# Abrir arquivos no editor preferido
```

---

## 📊 Links a Configurar

### Em index.html (6 links)

1. COMPLETE_ECOSYSTEM_ANALYSIS.md
2. OVERALL_ASSESSMENT.md
3. ASSESSMENT_FINANCAS.md
4. ASSESSMENT_PROJECTOS.md
5. OVERALL_PROJECT_SUMMARY.md
6. EXECUTIVE_BRIEF.md

### Em codigo-fonte.html (8 links)

1. COMPLETE_ECOSYSTEM_ANALYSIS.md
2. OVERALL_ASSESSMENT.md
3. ASSESSMENT_FINANCAS.md
4. ASSESSMENT_PROJECTOS.md
5. OVERALL_PROJECT_SUMMARY.md
6. EXECUTIVE_BRIEF.md
7. PROJECT_SUMMARY_FINANCAS.md
8. README.md

**Total:** 14 links (alguns duplicados entre páginas)

---

## ✅ Validação Final

Após substituir, confirme:

1. ✅ Sem `SEU_USUARIO` em index.html
2. ✅ Sem `SEU_USUARIO` em codigo-fonte.html
3. ✅ URLs têm formato: `github.com/[username_real]/...`
4. ✅ Testou pelo menos 1 link
5. ✅ Pronto para push!

---

## 🎓 Por Que Esta Solução?

### Vantagens

1. **Renderização Automática** - GitHub renderiza MD perfeitamente
2. **Sem Downloads** - Lê direto no navegador
3. **Sempre Atualizado** - Sempre mostra versão mais recente
4. **Tabelas e Código** - Tudo formatado corretamente
5. **Imagens** - Se houver, são exibidas
6. **Links Internos** - Funcionam dentro do documento
7. **Navegação** - Índice automático no GitHub

### Trade-offs

- ⚠️ Requer internet para acessar
- ⚠️ Requer repositório ser acessível ao usuário
- ✅ Mas a experiência de leitura é MUITO melhor!

---

## 🔐 Considerações de Segurança

### Repositório Público

- ✅ Qualquer pessoa pode ver os relatórios
- ✅ Bom para documentação aberta
- ⚠️ Verifique se não há dados sensíveis

### Repositório Privado

- ✅ Apenas usuários autorizados veem
- ✅ Controle de acesso via GitHub
- ✅ Pode compartilhar via convites

---

## 📞 Ajuda

**Precisa de ajuda para configurar?**

- **Email:** musekwa@tecmoza.com
- **Tel:** (+258) 860140080
- **Suporte:** Onésimo Metro - (+258) 848938851

---

## 🎯 RESUMO

**O QUE FAZER:**

1. ✅ Substituir `SEU_USUARIO` em 2 arquivos
2. ✅ Verificar que não restou placeholder
3. ✅ Fazer push
4. ✅ Testar links no GitHub Pages

**RESULTADO:**

- ✅ Relatórios abrem renderizados no GitHub
- ✅ Experiência de leitura excelente
- ✅ Sem necessidade de download
- ✅ Tudo funcionando perfeitamente!

---

**Data:** 01/11/2025  
**Por:** TECMOZA  
**Status:** ⚠️ **REQUER CONFIGURAÇÃO ANTES DO DEPLOY**
