# 🧭 Guia de Navegação - Documentação Técnica

Este guia explica como navegar e usar a documentação interativa das bases de dados.

---

## 📱 Acessar a Documentação

### Opção 1: GitHub Pages (Recomendado)

- Acesse via navegador web
- Não requer download
- Sempre atualizado
- Funciona em qualquer dispositivo

**URL**: `https://SEU_USUARIO.github.io/SEU_REPOSITORIO/`

### Opção 2: Localmente

1. Clone ou baixe o repositório
2. Abra `index.html` no navegador
3. Navegue offline

```bash
# Clonar repositório
git clone https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git

# Abrir no navegador
cd SEU_REPOSITORIO
# Windows
start index.html
# Mac
open index.html
# Linux
xdg-open index.html
```

---

## 🎯 Estrutura da Página

### 1. Header (Cabeçalho)

- Logo e título do projeto
- Badges com estatísticas rápidas (11 BDs, 539 tabelas, ~180 MB)

### 2. Hero Section

- Visão geral do projeto
- Estatísticas principais em destaque
- Disponível em português 🇵🇹

### 3. Documentação Principal

Três cards principais:

#### 📄 Documento Word Completo

- **Conteúdo**: Documentação técnica completa
- **Formato**: Microsoft Word (.docx)
- **Tamanho**: 63 KB
- **Páginas**: 50+
- **Inclui**: Esquemas detalhados de todas as 539 tabelas

#### 📊 Resumo Visual (PDF)

- **Conteúdo**: Visão consolidada
- **Formato**: PDF
- **Tamanho**: 36 KB
- **Inclui**: Estatísticas, prioridades, gráficos

#### 💾 Dados Técnicos (JSON)

- **Conteúdo**: Análise estrutural completa
- **Formato**: JSON
- **Tamanho**: 1.09 MB
- **Uso**: Processamento automatizado, scripts

### 4. Guias de Utilização

Dois documentos markdown:

- **Guia de Utilização**: Instruções detalhadas
- **Resumo da Entrega**: Checklist e validação

### 5. Esquemas das Bases de Dados

11 cards organizados por prioridade:

#### 🔴 CRÍTICA (2 bases)

- grupotestop_stock
- grupotestop_salarios

#### 🟠 ALTA (3 bases)

- grupotestop_financas
- grupotestop_attendance
- grupotestop_banco_mundial_stock

#### 🟡 MÉDIA (2 bases)

- grupotestop_baixadas
- autobas2_testop_db

#### 🟢 BAIXA (4 bases)

- grupotestop_helpdesk
- grupotestop_meeting
- grupotestop_archives
- grupotestop_ticket

### 6. Alerta Crítico

- Destaque visual para descobertas críticas
- Ausência de chaves estrangeiras
- Recomendações urgentes

### 7. Início Rápido

Guias específicos por função:

- **👔 Executivos**: Foco em resumo e decisões
- **💼 Gestores de TI**: Visão técnica e prioridades
- **👨‍💻 Desenvolvedores**: Estruturas e implementação
- **🔧 DBAs**: Esquemas e otimização

### 8. Footer (Rodapé)

- Informações de contacto
- TECMOZA
- Grupo Testop
- Data e versão

---

## 🖱️ Como Usar

### Downloads

1. Clique no botão **"⬇️ Download"** de qualquer documento
2. O arquivo será baixado para seu computador
3. Todos os formatos são suportados (DOCX, PDF, JSON)

### Navegação por Prioridade

- **Críticas** (vermelho): Atender primeiro
- **Altas** (laranja): Prioridade secundária
- **Médias** (amarelo): Revisar após críticas
- **Baixas** (verde): Menor urgência

### Busca Rápida

Use Ctrl+F (Windows/Linux) ou Cmd+F (Mac) para buscar:

- Nome de base de dados
- Número de tabelas
- Sistema específico

---

## 📱 Funcionalidades

### Responsivo

- Desktop: Layout completo em grid
- Tablet: Layout adaptado em 2 colunas
- Mobile: Layout vertical em 1 coluna

### Animações

- Fade-in ao rolar a página
- Hover effects nos cards
- Transições suaves

### Acessibilidade

- Contraste adequado de cores
- Textos legíveis
- Estrutura semântica HTML

---

## 🎨 Código de Cores

### Prioridades

- 🔴 **Vermelho**: Crítica (requer ação imediata)
- 🟠 **Laranja**: Alta (prioridade secundária)
- 🟡 **Amarelo**: Média (revisar)
- 🟢 **Verde**: Baixa (menor urgência)

### Elementos

- **Azul (#2E86AB)**: Cor primária, links, botões
- **Roxo (#667eea)**: Hero section, destaques
- **Laranja (#F18F01)**: Botões secundários
- **Cinza (#718096)**: Textos secundários

---

## 📂 Estrutura de Arquivos

```
legacy-system/
├── index.html                              ← Página principal
├── _config.yml                             ← Config GitHub Pages
├── GITHUB_PAGES_SETUP.md                  ← Guia de setup
├── NAVEGACAO_DOCUMENTACAO.md              ← Este arquivo
│
├── assets/
│   ├── css/
│   │   └── style.css                      ← Todos os estilos
│   └── js/
│       └── main.js                        ← Interatividade
│
├── database_schemas/
│   ├── RESUMO_BASES_DADOS.pdf             ← Resumo
│   └── ESQUEMA_*.pdf                      ← 11 esquemas
│
├── DOCUMENTACAO_TECNICA_BASES_DADOS.docx  ← Doc principal
├── database_analysis.json                  ← Dados técnicos
├── LEIA-ME_DOCUMENTACAO.md                ← Guia uso
└── RESUMO_ENTREGA.md                      ← Resumo entrega
```

---

## 🔍 Pesquisa de Conteúdo

### No Documento Word

1. Abra o documento
2. Use Ctrl+F
3. Pesquise por:
   - Nome de tabela
   - Nome de coluna
   - Tipo de dado

### No JSON

1. Abra o arquivo no editor de código
2. Use ferramentas JSON:
   - JSON Viewer online
   - VS Code com formatação
   - jq (linha de comando)

```bash
# Exemplo com jq
cat database_analysis.json | jq '.[] | select(.name == "grupotestop_financas")'
```

### Nos PDFs

1. Abra o PDF
2. Use Ctrl+F no leitor de PDF
3. Navegue visualmente pelos diagramas

---

## 💡 Dicas de Uso

### Para Executivos

✅ **Comece aqui**:

1. Clique no **Documento Word**
2. Leia apenas o **Resumo Executivo** (primeiras páginas)
3. Reveja o **Alerta Crítico** na página principal

### Para Gestores de TI

✅ **Comece aqui**:

1. Baixe o **Resumo Visual (PDF)**
2. Reveja as prioridades
3. Acesse esquemas das bases **CRÍTICAS** primeiro

### Para Desenvolvedores

✅ **Comece aqui**:

1. Explore o **JSON** para estruturas
2. Consulte **Documento Word** para detalhes
3. Use **PDFs** para referência visual rápida

### Para DBAs

✅ **Comece aqui**:

1. Foque nos **Esquemas PDF**
2. Reveja **índices** no Documento Word
3. Implemente **chaves estrangeiras** urgentemente

---

## 🚀 Atalhos Úteis

| Ação              | Atalho                 |
| ----------------- | ---------------------- |
| Buscar na página  | Ctrl+F / Cmd+F         |
| Voltar ao topo    | Home                   |
| Ir ao fim         | End                    |
| Zoom in           | Ctrl++ / Cmd++         |
| Zoom out          | Ctrl+- / Cmd+-         |
| Imprimir          | Ctrl+P / Cmd+P         |
| Abrir em nova aba | Ctrl+Click / Cmd+Click |

---

## 📊 Visualização Recomendada

### Por Dispositivo

#### 💻 Desktop (1920x1080+)

- **Layout**: Grid 3 colunas
- **Zoom**: 100%
- **Visualização**: Completa

#### 📱 Tablet (768-1024px)

- **Layout**: Grid 2 colunas
- **Zoom**: 100-110%
- **Visualização**: Adaptada

#### 📱 Mobile (< 768px)

- **Layout**: Coluna única
- **Zoom**: 100-120%
- **Visualização**: Vertical

### Por Navegador

✅ **Testado e otimizado para**:

- Google Chrome 90+
- Mozilla Firefox 88+
- Microsoft Edge 90+
- Safari 14+

---

## ⚡ Performance

### Tempos de Carregamento

- **Página HTML**: < 1 segundo
- **CSS + JS**: < 500ms
- **Total (primeira visita)**: < 2 segundos
- **Visitas subsequentes**: < 500ms (cache)

### Tamanhos de Download

- **HTML**: ~30 KB
- **CSS**: ~15 KB
- **JS**: ~3 KB
- **Total da página**: ~48 KB

**Documentos separados** (download sob demanda):

- Word: 63 KB
- JSON: 1.09 MB
- PDFs: 553 KB total

---

## 🔧 Resolução de Problemas

### Estilos não aparecem

**Solução**: Limpe o cache (Ctrl+Shift+R)

### Download não funciona

**Solução**: Verifique se o arquivo existe no repositório

### Página lenta

**Solução**: Use navegador atualizado, desabilite extensões

### Layout quebrado no mobile

**Solução**: Rode em modo retrato, atualize página

---

## 📞 Suporte

### Problemas Técnicos

- **Email**: musekwa@tecmoza.com
- **Tel**: (+258) 860140080
- **GitHub**: Abra uma issue no repositório

### Contactos

- **Tes-Top (Ponto Focal)**: Younus Mohammed - (+258) 843030477
- **Suporte Técnico (Depto. Informática)**: Onésimo Metro - (+258) 848938851
- **Documentação (TECMOZA)**: Evariste Musekwa Iguna - (+258) 860140080

### Conteúdo

- Consulte: `LEIA-ME_DOCUMENTACAO.md`
- Consulte: `RESUMO_ENTREGA.md`

### GitHub Pages

- Consulte: `GITHUB_PAGES_SETUP.md`
- Docs oficiais: https://docs.github.com/pages

---

## ✅ Checklist de Navegação

Explore todos os recursos:

- [ ] Baixei o Documento Word principal
- [ ] Revisei o Resumo Visual (PDF)
- [ ] Explorei o JSON (se desenvolvedor/DBA)
- [ ] Li os guias de utilização
- [ ] Baixei esquemas das bases CRÍTICAS
- [ ] Revisei o alerta sobre chaves estrangeiras
- [ ] Li o guia específico para minha função
- [ ] Testei em diferentes dispositivos
- [ ] Compartilhei com a equipa

---

**Última atualização**: 01 de Novembro de 2025  
**Versão**: 1.0  
**Preparado por**: TECMOZA

---

**🎉 Aproveite a documentação!**
