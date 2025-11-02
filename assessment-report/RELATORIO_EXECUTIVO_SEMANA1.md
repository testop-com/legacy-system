------

## 💰 Cost Information

**This is a technical assessment document.**

For cost estimates, budgets, and ROI analysis, please refer to:
- **Folder**: [`../cost-analysis/`](../cost-analysis/)
- **Executive Summary**: [`../cost-analysis/APROVACAO_EXECUTIVA.md`](../cost-analysis/APROVACAO_EXECUTIVA.md)
- **Detailed Costs**: [`../cost-analysis/RESUMO_CUSTOS_FINAIS.md`](../cost-analysis/RESUMO_CUSTOS_FINAIS.md)

This document focuses solely on **technical analysis**:
- Architecture
- Code quality
- Security (OWASP)
- Performance
- Recommendations

---

title: "Relatório de Avaliação dos Sistemas de TI - Grupo Testop"
subtitle: "Semana 1 - Descoberta Completa do Ecossistema"
author: "Evariste Musekwa Iguna - TECMOZA"
date: "17 de Outubro de 2025"
lang: pt
---

\newpage

# RELATÓRIO EXECUTIVO - SEMANA 1

**Para**: Administração do Grupo Testop  
**De**: Evariste Musekwa Iguna, TECMOZA  
**Data**: 17 de Outubro de 2025  
**Assunto**: Avaliação dos Sistemas de TI - Descoberta Crítica

---

## SUMÁRIO EXECUTIVO

### Descoberta Principal

Durante a primeira semana de avaliação, **descobrimos que o Grupo Testop opera um ecossistema complexo de aproximadamente 17 sistemas de aplicação partilhando 10 bases de dados**.

Esta descoberta tem **implicações importantes** no orçamento, cronograma e estratégia de modernização.

**Complexidade adicional**: Vários sistemas partilham a mesma base de dados, tornando difícil separá-los ou modernizá-los individualmente.

### Números-Chave do Ecossistema

| Aspeto                       | Descoberto                 |
| ---------------------------- | -------------------------- |
| **Número de Sistemas**       | **~17**                    |
| **Número de Bases de Dados** | **10**                     |
| **Tabelas de Base de Dados** | **539**                    |
| **Tamanho Total**            | **~180 MB**                |
| **Investimento Estimado**    | **$1.0M-1.5M** (estim.)    |
| **Tempo Necessário**         | **36-48 meses** (3-4 anos) |
| **Estado da Avaliação**      | **12% completo**           |

### O Que Isto Significa

O Grupo Testop opera **aproximadamente 17 aplicações informáticas** partilhando **10 bases de dados**:

- Alguns sistemas têm bases de dados próprias
- **Vários sistemas partilham a mesma base de dados** (ex: projectos e projectos-banco-mundial)
- Cada sistema tem o seu próprio código de programação
- Os seus próprios utilizadores e processos de negócio

**Consequências**:

- A modernização será mais complexa e dispendiosa do que inicialmente previsto
- **Sistemas que partilham bases de dados são difíceis de separar**
- Mudanças num sistema podem afetar outros que partilham a mesma base de dados
- Consolidação requer cuidado especial

\newpage

## O ECOSSISTEMA DE SISTEMAS

### Descoberta Importante

**Ecossistema complexo**: ~17 sistemas de aplicação usando 10 bases de dados

**Particularidade crítica**: Vários sistemas **partilham a mesma base de dados**, o que torna a separação e modernização mais complexa.

### As 10 Bases de Dados Descobertas

| #   | Base de Dados                 | Tamanho     | Tabelas | Sistemas que Usam              | Estado           |
| --- | ----------------------------- | ----------- | ------- | ------------------------------ | ---------------- |
| 1   | **grupotestop_financas**      | 62.53 MB    | 125     | FINANÇAS                       | ✅ Avaliado      |
| 2   | **grupotestop_stock**         | 94.70 MB    | 89      | STOCK (principal)              | 🔴 Não avaliado  |
| 3   | **grupotestop_banco_mundial** | 15.11 MB    | 60      | BANCO MUNDIAL STOCK            | 🔴 Não avaliado  |
| 4   | **autobas2_testop_db**        | ~0.30 MB    | 36      | PROJECTOS + BANCO MUNDIAL \*\* | ✅ Parcialmente  |
| 5   | **grupotestop_salarios**      | 3.40 MB     | 71      | SALÁRIOS                       | 🔴 Não avaliado  |
| 6   | **grupotestop_attendance**    | 3.87 MB     | 71      | ASSIDUIDADE                    | 🔴 Não avaliado  |
| 7   | **grupotestop_baixadas**      | 0.46 MB     | 36      | BAIXADAS                       | 🔴 Não avaliado  |
| 8   | **grupotestop_helpdesk**      | 0.17 MB     | 34      | HELPDESK                       | 🔴 Não avaliado  |
| 9   | **grupotestop_meeting**       | 0.14 MB     | 9       | REUNIÕES                       | 🔴 Não avaliado  |
| 10  | **grupotestop_archives**      | 0.03 MB     | 5       | ARQUIVO                        | 🔴 Não avaliado  |
|     | **+ grupotestop_ticket**      | 0.02 MB     | 3       | TICKETS                        | 🔴 Não avaliado  |
|     | **TOTAL**                     | **~180 MB** | **539** | **~17 sistemas**               | **12% Avaliado** |

\*\* _Nota: PROJECTOS e PROJECTOS-BANCO-MUNDIAL partilham a mesma base de dados (autobas2_testop_db)_

### Sistemas de Aplicação (Aproximadamente 17)

Identificámos as seguintes aplicações/sistemas:

**Com base de dados própria**:

1. FINANÇAS (grupotestop_financas) ✅
2. STOCK (grupotestop_stock) 🔴
3. BANCO MUNDIAL STOCK (grupotestop_banco_mundial) 🔴
4. SALÁRIOS (grupotestop_salarios) 🔴
5. ASSIDUIDADE (grupotestop_attendance) 🔴
6. BAIXADAS (grupotestop_baixadas) 🔴
7. HELPDESK (grupotestop_helpdesk) 🔴
8. REUNIÕES (grupotestop_meeting) 🔴
9. ARQUIVO (grupotestop_archives) 🔴
10. TICKETS (grupotestop_ticket) 🔴

**Partilhando base de dados**: 11. PROJECTOS (usa autobas2_testop_db) ✅ 12. PROJECTOS-BANCO-MUNDIAL (usa autobas2_testop_db) 🔴
13-17. **~5+ outros sistemas** (ainda por identificar completamente)

### Estado Atual da Avaliação

- ✅ **Bases de dados avaliadas**: 2 de 10 (20%)
- ✅ **Sistemas avaliados**: 2 de ~17 (12%)
- 🔴 **Por avaliar**: 8 bases de dados, ~15 sistemas
- **Percentagem completa**: **12% do ecossistema total**

### Desafio Adicional: Bases de Dados Partilhadas

**Problema**: Quando 2+ sistemas partilham a mesma base de dados:

- Não podem ser modernizados independentemente
- Mudanças afetam múltiplos sistemas
- Mais difícil de testar
- Maior risco de quebrar funcionalidades
- Requer coordenação cuidadosa

\newpage

## DESCRIÇÃO DOS SISTEMAS (Em Linguagem Simples)

### 1. Sistema FINANÇAS ✅ (Avaliado)

**O que faz**:

- Gere as finanças de 10+ empresas do grupo
- Controla 278 viaturas e 30.000+ abastecimentos
- Gere compras e fornecedores
- Controla seguros e garantias
- Faz o acompanhamento de custos por projetos

**Tamanho**: Muito grande (125 tabelas, 62.53 MB)  
**Utilizadores**: 200+ pessoas  
**Estado**: Funciona mas precisa de modernização urgente  
**Classificação**: ⭐⭐⭐ (3 em 5) - Razoável mas antiquado

**Problemas principais**:

- Sistema antigo e lento
- Sem cópias de segurança automáticas
- Risco de perda de dados
- Difícil de manter

**Investimento necessário**: $180.000 - $280.000 (12 meses)

---

### 2. Sistema STOCK 🔴 (Não avaliado) **MAIOR SISTEMA**

**O que faz (provável)**:

- Sistema principal de controlo de stock/inventário
- Gestão de armazéns
- Controlo de entradas e saídas de materiais
- Gestão de stocks em múltiplas localizações

**Tamanho**: **Muito grande (89 tabelas, 94.70 MB)** - O MAIOR SISTEMA  
**Estado**: **Não foi ainda avaliado**  
**Prioridade**: **CRÍTICA** - Precisa de avaliação urgente

**Por que é crítico**:

- É o maior sistema em termos de dados
- Provavelmente é essencial para as operações diárias
- Pode estar ligado a outros sistemas
- Sem avaliação, não sabemos o seu estado

---

### 3. Sistema BANCO MUNDIAL 🔴 (Não avaliado)

**O que faz (provável)**:

- Gestão de stocks para projetos financiados pelo Banco Mundial
- Controlo especial para fundos de doadores
- Relatórios de conformidade
- Rastreamento de materiais de projetos internacionais

**Tamanho**: Grande (60 tabelas, 15.11 MB)  
**Estado**: **Não foi ainda avaliado**  
**Prioridade**: **ALTA** - Obrigações com doadores

**Por que é importante**:

- Projetos financiados requerem relatórios específicos
- Requisitos de auditoria internacional
- Conformidade com regras de doadores

---

### 4. Sistema PROJECTOS ✅ (Avaliado)

**O que faz**:

- Gestão de projetos de instalações elétricas
- Controlo de materiais elétricos (cabos, transformadores, etc.)
- Acompanhamento de stocks por projeto
- Gestão de requisições de armazém

**Tamanho**: Médio (36 tabelas, 0.30 MB)  
**Estado**: Sistema bem organizado e moderno  
**Classificação**: ⭐⭐⭐⭐ (4 em 5) - Bom estado

**Pontos fortes**:

- Sistema mais moderno
- Bem organizado
- Fácil de manter
- Pode servir de modelo para outros

**Investimento necessário**: $95.000 - $145.000 (9 meses)

---

### 5. Sistema SALÁRIOS 🔴 (Não avaliado) **CRÍTICO**

**O que faz (provável)**:

- Processamento de salários dos funcionários
- Cálculo de impostos e descontos
- Gestão de benefícios
- Geração de recibos de vencimento

**Tamanho**: Médio-grande (71 tabelas, 3.40 MB)  
**Estado**: **Não foi ainda avaliado**  
**Prioridade**: **CRÍTICA** - Pagamentos de salários

**Por que é crítico**:

- **Os pagamentos dos funcionários dependem deste sistema**
- Requisitos legais e fiscais
- Erros podem afetar todos os colaboradores
- Precisa de funcionar sem falhas

---

### 6. Sistema ASSIDUIDADE 🔴 (Não avaliado)

**O que faz (provável)**:

- Registo de entradas e saídas de funcionários
- Gestão de férias e faltas
- Controlo de horas trabalhadas
- Gestão de turnos

**Tamanho**: Médio-grande (71 tabelas, 3.87 MB)  
**Estado**: **Não foi ainda avaliado**  
**Prioridade**: **ALTA** - Alimenta o sistema de salários

**Ligação importante**:

- Provavelmente fornece dados ao sistema de SALÁRIOS
- Horas trabalhadas → Cálculo de salários

---

### 7. Sistema BAIXADAS 🔴 (Não avaliado)

**O que faz (provável)**:

- Registo de instalações/ligações de clientes
- Controlo de ligações elétricas
- Materiais usados em cada instalação
- Localização GPS das instalações

**Tamanho**: Médio (36 tabelas, 0.46 MB)  
**Estado**: **Não foi ainda avaliado**  
**Nota**: Pode ter funcionalidades duplicadas com PROJECTOS

---

### 8-11. Sistemas Auxiliares 🔴 (Não avaliados)

**HELPDESK** (34 tabelas, 0.17 MB)

- Suporte técnico de TI
- Gestão de chamados
- Acompanhamento de problemas

**REUNIÕES** (9 tabelas, 0.14 MB)

- Agendamento de reuniões
- Gestão de salas
- Convocatórias

**ARQUIVO** (5 tabelas, 0.03 MB)

- Arquivo de documentos antigos
- Armazenamento de ficheiros

**TICKETS** (3 tabelas, 0.02 MB)

- Sistema geral de bilhetes
- (Diferente do Helpdesk?)

\newpage

## PROBLEMAS CRÍTICOS IDENTIFICADOS

### Problema #1: Duplicação Massiva de Dados

**O que isto significa**:
Estimamos que **40-60% dos dados estão duplicados** em vários sistemas.

**Exemplos práticos**:

**Utilizadores**:

- Cada um dos 11 sistemas tem a sua própria lista de utilizadores
- O mesmo funcionário aparece 11 vezes em bases de dados diferentes
- Alterar o email de um utilizador significa alterar em 11 lugares

**Stocks/Inventário** (4 sistemas diferentes!):

- STOCK (sistema principal)
- BANCO MUNDIAL STOCK
- PROJECTOS
- Módulo de compras no FINANÇAS
- O mesmo material pode aparecer em 4 bases de dados diferentes

**Fornecedores**:

- Fornecedores repetidos em vários sistemas
- Informações inconsistentes (telefone diferente em cada sistema)
- Difícil saber qual informação está correta

**Consequências**:

- ❌ Dados inconsistentes
- ❌ Muito trabalho manual para manter
- ❌ Erros e confusão
- ❌ Desperdício de espaço

---

### Problema #2: Sistemas Não Comunicam Entre Si

**O que isto significa**:
Os 11 sistemas funcionam isolados, sem partilhar informação.

**Exemplos práticos**:

**Stock e Finanças não falam**:

- Compra-se material no FINANÇAS
- Tem que se inserir manualmente no STOCK
- Trabalho duplicado
- Risco de erros

**Salários e Assiduidade não estão ligados**:

- Regista-se presença na ASSIDUIDADE
- Tem que se inserir horas manualmente em SALÁRIOS
- Possibilidade de erros nos cálculos

**Consequências**:

- ⏰ Muito tempo perdido em inserção manual
- ❌ Erros humanos frequentes
- 📊 Relatórios difíceis de fazer
- 💰 Custos operacionais elevados

---

### Problema #3: Sistemas Antigos e Difíceis de Manter

**O que isto significa**:

- 11 sistemas diferentes para gerir
- Cada um com tecnologia diferente
- Difícil encontrar programadores que conhecem todos

**Consequências**:

- 💸 Custos de manutenção muito altos
- ⏱️ Mudanças demoram muito tempo
- 👨‍💻 Dependência de poucos técnicos que conhecem os sistemas
- 🔴 Risco se esses técnicos saírem da empresa

---

### Problema #4: Sem Cópias de Segurança Adequadas

**O que isto significa**:
Não há evidência de sistema automático de cópias de segurança (backups) para todos os sistemas.

**Consequências**:

- 🔴 **Risco de perda de dados**
- 🔴 Se um servidor falhar, podemos perder tudo
- 🔴 Sem forma de recuperar informação perdida
- 🔴 Risco para a continuidade do negócio

**Exemplo prático**:
Se o servidor do SALÁRIOS falhar sem backup, perdem-se todos os registos de pagamentos, cálculos, e histórico de funcionários.

\newpage

## AVALIAÇÃO DETALHADA DOS SISTEMAS ANALISADOS

### Sistema FINANÇAS (✅ Avaliação Completa)

#### O Que Este Sistema Faz

**Gestão Financeira Multi-Empresa**:

- Controla contas bancárias de 10+ empresas
- Registo de pagamentos e despesas
- Reconciliação bancária
- Gestão de fluxo de caixa

**Gestão de Frota**:

- Controlo de 278 viaturas
- Registo de 30.000+ abastecimentos
- Manutenção de viaturas
- Seguros automóveis

**Gestão de Compras**:

- Ordens de compra
- Gestão de fornecedores
- Controlo de stocks (duplicado com STOCK?)
- Aprovações de compras

**Gestão de Seguros**:

- Apólices de seguros
- Garantias bancárias
- Sinistros
- Renovações

**Gestão de Projectos**:

- Acompanhamento de custos por projeto
- Orçamentos vs. real
- Alocação de recursos

#### Empresas Geridas pelo Sistema

1. TES-TOP LDA
2. EA-ELECTRO ÁFRICA LDA
3. ELECTRO VERDE LDA
4. MAS CONSTRUÇÕES LDA
5. Q99 LDA
6. Várias joint ventures
7. Várias subsidiárias

**Total**: 10+ empresas do grupo

#### Números e Estatísticas

- **Utilizadores**: 200+ pessoas
- **Registos**: 50.000+ transações
- **Idiomas**: 8 (Português, Inglês, Francês, Espanhol, Árabe, Chinês, Russo, Turco)
- **Departamentos**: 14 (Finanças, RH, Procurement, Projectos, etc.)

#### Pontos Fortes

✅ Sistema muito completo  
✅ Cobre muitos processos de negócio  
✅ Interface profissional  
✅ Registo de auditoria (quem fez o quê)  
✅ Suporta múltiplas empresas  
✅ Suporta múltiplas moedas  
✅ Relatórios extensivos (50+ tipos)

#### Problemas Identificados

❌ **Sistema muito antigo** (tecnologia de 5-10 anos atrás)  
❌ **Muito lento** (falta de índices na base de dados)  
❌ **Sem integridade de dados** (faltam controlos)  
❌ **Sem backups automáticos documentados**  
❌ **Estrutura monolítica** (difícil de manter)  
❌ **Muitas bibliotecas antigas** no frontend  
❌ **Sem testes automatizados** (risco de bugs)  
❌ **Sem API** (impossível fazer app móvel)  
❌ **Mistura de versões** de tecnologia  
❌ **Muito difícil de fazer mudanças** sem quebrar algo

#### Classificação Geral

**⭐⭐⭐ (3 em 5)** - Funcional mas precisa de modernização significativa

**Categorias específicas**:

- Design da Base de Dados: ⭐⭐⭐ (3/5)
- Arquitetura do Código: ⭐⭐ (2/5) - Fraco
- Segurança: ⭐⭐⭐ (3/5)
- Performance: ⭐⭐ (2/5) - Fraco
- Manutenibilidade: ⭐⭐ (2/5) - Muito difícil
- Escalabilidade: ⭐⭐ (2/5) - Limitada

#### Investimento Necessário

**Orçamento**: $180.000 - $280.000  
**Tempo**: 12 meses  
**Equipa**: 2-3 programadores + 1 especialista em bases de dados

\newpage

### Sistema PROJECTOS ✅ (Avaliação Completa)

#### O Que Este Sistema Faz

**Gestão de Inventário de Materiais Elétricos**:

- Catálogo de produtos (cabos, transformadores, ferramentas)
- Categorização hierárquica de materiais
- Controlo de stocks por local

**Gestão de Projectos**:

- Registo de projectos de instalações elétricas
- Alocação de materiais a projectos
- Controlo de sites/locais de trabalho
- Atribuição de utilizadores a projectos

**Operações de Armazém**:

- Guias de entrada (receção de materiais)
- Guias de saída (envio de materiais)
- Guias de transporte
- Requisições de armazém

**Instalações de Clientes (Baixadas)**:

- Registo de ligações elétricas de clientes
- Coordenadas GPS
- Materiais utilizados
- Contadores instalados

#### Números e Estatísticas

- **Tabelas**: 36
- **Categorias de produtos**: 40+ (Ferramentas, Material Elétrico, etc.)
- **Tecnologia**: Laravel 8.x/9.x (mais moderna que FINANÇAS)

#### Pontos Fortes

✅ **Sistema bem organizado**  
✅ **Tecnologia moderna**  
✅ **Código limpo e claro**  
✅ **Focado no domínio específico**  
✅ **Categorias hierárquicas** de produtos  
✅ **Rastreamento completo** de movimentos  
✅ **Menor complexidade** que FINANÇAS  
✅ **Mais fácil de manter**

#### Problemas Identificados

❌ Base de dados antiga (exportada em Junho 2022)  
❌ Sem controlos de integridade  
❌ Sem índices de performance  
❌ Ficheiros duplicados no código  
❌ Sem testes automatizados  
❌ Sem API para mobile

#### Classificação Geral

**⭐⭐⭐⭐ (4 em 5)** - Boa base, precisa de melhorias pontuais

**Categorias específicas**:

- Design da Base de Dados: ⭐⭐⭐⭐ (4/5) - Muito bom
- Arquitetura do Código: ⭐⭐⭐ (3/5)
- Segurança: ⭐⭐⭐ (3/5)
- Performance: ⭐⭐⭐ (3/5)
- Manutenibilidade: ⭐⭐⭐⭐ (4/5) - Bom
- Escalabilidade: ⭐⭐⭐ (3/5)

#### Investimento Necessário

**Orçamento**: $95.000 - $145.000  
**Tempo**: 9 meses  
**Equipa**: 1-2 programadores

**Nota**: Este sistema pode servir de modelo arquitetural para modernizar FINANÇAS.

\newpage

## COMPARAÇÃO: FINANÇAS vs. PROJECTOS

### O Que Aprendemos

O sistema PROJECTOS está em **muito melhor estado** que o FINANÇAS.

| Aspeto                       | FINANÇAS                 | PROJECTOS          | Vencedor  |
| ---------------------------- | ------------------------ | ------------------ | --------- |
| **Complexidade**             | Muito alta (125 tabelas) | Média (36 tabelas) | PROJECTOS |
| **Tamanho**                  | 62.53 MB                 | 0.30 MB            | PROJECTOS |
| **Organização do código**    | ⭐⭐ Fraca               | ⭐⭐⭐⭐ Boa       | PROJECTOS |
| **Tecnologia**               | Antiga (5-8 anos)        | Moderna (2-3 anos) | PROJECTOS |
| **Facilidade de manutenção** | Muito difícil            | Fácil              | PROJECTOS |
| **Investimento necessário**  | $180K-280K               | $95K-145K          | PROJECTOS |
| **Tempo de modernização**    | 12 meses                 | 9 meses            | PROJECTOS |

### Recomendação Importante

💡 **Use PROJECTOS como modelo** para modernizar FINANÇAS:

- A arquitetura é melhor
- O código é mais limpo
- É mais fácil de entender
- Pode-se aprender com as boas práticas

\newpage

## RISCOS PRINCIPAIS

### Risco #1: Perda de Dados 🔴 CRÍTICO

**Problema**: Sem sistema adequado de cópias de segurança (backups)

**Consequências se acontecer**:

- 💥 Perda de todos os dados financeiros
- 💥 Perda de registos de salários
- 💥 Perda de histórico de stocks
- 💥 Impossibilidade de recuperar informação
- 💥 Paragem total das operações

**Probabilidade**: Média  
**Impacto**: **CATASTRÓFICO**

**Solução**: Implementar backups automáticos diários IMEDIATAMENTE

**Custo**: $5.000 - $10.000 (solução profissional)  
**Tempo**: 1-2 semanas

---

### Risco #2: Dados Inconsistentes 🔴 CRÍTICO

**Problema**: Mesma informação em 11 sistemas diferentes

**Exemplo prático**:

- Um fornecedor está no sistema FINANÇAS com telefone 84-1234567
- O mesmo fornecedor está no STOCK com telefone 82-7654321
- No PROJECTOS tem outro telefone diferente
- **Qual é o correto?** Ninguém sabe!

**Consequências**:

- ❌ Informação não confiável
- ❌ Decisões baseadas em dados errados
- ❌ Problemas com fornecedores (contactos errados)
- ❌ Relatórios incorretos

**Solução**: Consolidar dados mestres (master data)

---

### Risco #3: Dependências Desconhecidas 🔴 CRÍTICO

**Problema**: Não sabemos como os sistemas se relacionam

**Questões sem resposta**:

- ❓ O SALÁRIOS lê dados da ASSIDUIDADE?
- ❓ O FINANÇAS está ligado ao STOCK?
- ❓ O BANCO MUNDIAL partilha informação com FINANÇAS?
- ❓ Há integrações que não conhecemos?

**Perigo**:
Se mexermos num sistema sem saber as dependências, **podemos quebrar outros sistemas**.

**Exemplo**:
Alterar o STOCK pode quebrar o FINANÇAS se houver ligação desconhecida.

**Solução**: Mapear todas as dependências antes de qualquer mudança

---

### Risco #4: Fardo de Manutenção 🟡 ALTO

**Situação atual**:

- 11 sistemas para manter
- 539 tabelas de base de dados
- Provavelmente 1.000+ ecrãs/páginas
- 10+ códigos de programação diferentes

**Consequências**:

- 💸 Custos de manutenção enormes
- 👨‍💻 Precisamos de muitos técnicos especializados
- 🐌 Mudanças demoram muito tempo
- 😓 Sobrecarga cognitiva para a equipa de TI

**Solução**: Consolidação de sistemas é necessária, não opcional

\newpage

## ORÇAMENTO E INVESTIMENTO

### Estimativas de Investimento

#### Ecossistema Descoberto

O ecossistema completo do Grupo Testop:

- **Sistemas de aplicação**: ~17
- **Bases de dados**: 10 (algumas partilhadas)
- **Tabelas**: 539 tabelas
- **Tamanho total**: ~180 MB
- **Complexidade**: Múltiplos sistemas partilham bases de dados

#### Investimento Necessário

**Para modernização completa do ecossistema**:

- **Orçamento**: **$1.000.000 - $1.500.000**
- **Tempo**: **36-48 meses** (3-4 anos)
- **Equipa**: 3-5 programadores + 1-2 arquitetos de sistemas

**Fatores que influenciam o investimento**:

- Número de sistemas (17)
- Bases de dados partilhadas (complexidade adicional)
- 539 tabelas para migrar
- Duplicação de dados (40-60%)
- Falta de documentação
- Sistemas antigos (5-10 anos)

\newpage

## OPÇÕES ESTRATÉGICAS

### Opção A: Consolidação Estratégica (RECOMENDADA)

**Objetivo**: Reduzir 11 sistemas para 3-4 plataformas modernas

#### Plano de Consolidação

**Plataforma 1: ERP Unificado**

- **Juntar**: FINANÇAS + STOCK + BANCO MUNDIAL
- **Resultado**: Uma única plataforma de gestão de negócio
- **Benefícios**:
  - Eliminação de duplicação de dados
  - Processos integrados
  - Relatórios consolidados
  - Menos sistemas para manter
- **Investimento**: $500.000 - $750.000 (18-24 meses)

**Plataforma 2: Sistema de Recursos Humanos**

- **Juntar**: SALÁRIOS + ASSIDUIDADE
- **Resultado**: Sistema integrado de RH e folha de pagamentos
- **Benefícios**:
  - Cálculo automático de salários baseado em presenças
  - Menos erros
  - Conformidade legal
  - Relatórios integrados
- **Investimento**: $150.000 - $250.000 (12 meses)

**Plataforma 3: Gestão de Projectos**

- **Juntar**: PROJECTOS + BAIXADAS
- **Resultado**: Sistema unificado de projectos e instalações
- **Benefícios**:
  - Melhor controlo de projectos
  - Acompanhamento de instalações
  - Dados centralizados
- **Investimento**: $120.000 - $180.000 (9 meses)

**Plataforma 4: Sistemas de Suporte**

- **Opção 1**: Juntar HELPDESK + TICKETS + REUNIÕES
- **Opção 2**: Substituir por ferramentas comerciais (Zendesk, Jira, Google Calendar)
- **Investimento**: $50.000 - $100.000 OU $20.000/ano em licenças

**ARQUIVO**: Mover para cloud (Google Drive, OneDrive)

#### Total da Opção A

**Investimento Total**: $820.000 - $1.280.000  
**Tempo Total**: 24-30 meses (2-2.5 anos)  
**Resultado**: 4 plataformas modernas e integradas

---

### Opção B: Foco Estratégico

**Objetivo**: Modernizar apenas os 3 sistemas mais críticos

#### O Que Modernizar

1. **FINANÇAS** - Crítico para o negócio
2. **STOCK** - Maior sistema, operações diárias
3. **SALÁRIOS** - Pagamentos de funcionários

#### O Que Fazer com os Outros

- **ASSIDUIDADE**: Integrar com SALÁRIOS ou usar ferramenta comercial
- **BANCO MUNDIAL**: Avaliar se ainda é necessário
- **PROJECTOS**: Manter (já está bom)
- **Sistemas pequenos**: Substituir por ferramentas comerciais ou cloud

#### Total da Opção B

**Investimento Total**: $600.000 - $900.000  
**Tempo Total**: 24 meses (2 anos)  
**Resultado**: 3 sistemas críticos modernizados  
**Trade-off**: Perda de algumas funcionalidades dos sistemas pequenos

---

### Opção C: Manter Como Está (NÃO RECOMENDADA)

**O que significa**: Continuar com 11 sistemas separados

**Investimento**: $200.000 - $300.000 por ano em manutenções  
**Resultado**: Problemas persistem e pioram  
**Risco**: **Falha inevitável de sistemas**

**Por que NÃO recomendamos**:

- ❌ Dívida técnica continua a crescer
- ❌ Sistemas ficam cada vez mais lentos
- ❌ Riscos de segurança aumentam
- ❌ Custos de manutenção sobem
- ❌ Eventualmente, sistemas vão falhar

\newpage

## PLANO RECOMENDADO

### Fase 0: Descoberta Completa (3 meses) - **COMEÇAR JÁ**

**Objetivo**: Avaliar TODOS os 11 sistemas antes de tomar decisões

#### O Que Vamos Fazer

**Mês 1: Avaliar todas as bases de dados**

- Exportar bases de dados de produção
- Analisar estrutura de cada sistema
- Documentar finalidades de negócio
- Identificar donos/responsáveis de cada sistema

**Mês 2: Mapear dependências**

- Como os sistemas se relacionam
- Fluxo de dados entre sistemas
- Avaliar duplicação de dados
- Identificar oportunidades de consolidação

**Mês 3: Planeamento estratégico**

- Orçamento realista e detalhado
- Cronograma de modernização
- Estratégia de consolidação
- Reunião de decisão executiva

#### Investimento

**Orçamento**: $50.000 - $75.000  
**Equipa**: 1-2 analistas + 1 arquiteto de sistemas  
**Resultado**: **Informação completa para tomar decisão informada**

#### Por Que Esta Fase é Importante

**Este investimento VAI POUPAR DINHEIRO** ao evitar:

- ❌ Trabalho duplicado
- ❌ Falhas de integração
- ❌ Ultrapassagens de orçamento
- ❌ Soluções incompletas
- ❌ Decisões baseadas em informação errada

**Exemplo prático**:
Se investirmos $315K nos 2 sistemas avaliados mas depois descobrirmos que o STOCK (maior sistema) não funciona com eles, **perdemos todo o investimento**.

---

### Ponto de Decisão (Final do Mês 3)

Após a Fase 0, a administração escolhe:

**Opção A**: Consolidação completa ($900K-1.33M, 30-36 meses)  
**Opção B**: Foco estratégico ($600K-900K, 24 meses)  
**Opção C**: Status quo (não recomendada)

\newpage

## CRONOGRAMA PROPOSTO

### Próximas Semanas

#### Semana 2 (21-25 Outubro)

- ✅ Exportar bases de dados de produção (todos os 11 sistemas)
- ✅ Agendar reuniões com responsáveis de cada sistema
- ✅ Identificar sistemas ativos vs. inativos
- ✅ Começar análise do sistema STOCK (prioridade máxima)

#### Semana 3 (28 Outubro - 1 Novembro)

- ✅ Avaliações dos sistemas STOCK e SALÁRIOS
- ✅ Mapear integrações entre sistemas
- ✅ Documentar processos de negócio
- ✅ Identificar dados duplicados

#### Semana 4 (4-8 Novembro)

- ✅ Completar avaliações dos sistemas restantes
- ✅ Análise de consolidação
- ✅ Preparar apresentação executiva
- ✅ Orçamentos detalhados por opção

### Próximos Meses

#### Novembro 2025

- Análise detalhada de dependências
- Avaliação de riscos
- Planeamento de migração de dados

#### Dezembro 2025

- Estratégia de consolidação
- Arquitetura da solução futura
- Plano de implementação detalhado

#### Janeiro 2026

- Revisão final
- Preparação de documentos de decisão
- **Reunião Executiva de Decisão**

\newpage

## PERGUNTAS CRÍTICAS PARA A ADMINISTRAÇÃO

Para completar a avaliação, precisamos de respostas às seguintes questões:

### Sobre Utilização dos Sistemas

1. **Todos os 11 sistemas estão ativamente em uso?**

   - Alguns podem estar inativos/abandonados
   - Podemos poupar dinheiro não modernizando sistemas não usados

2. **Quantos utilizadores tem cada sistema?**

   - Ajuda a priorizar
   - Sistemas com mais utilizadores têm maior impacto

3. **Quais sistemas são absolutamente essenciais?**
   - Sem os quais o negócio para
   - Devem ser priorizados

### Sobre Integrações

4. **O sistema SALÁRIOS lê dados da ASSIDUIDADE?**

   - Se sim, devem ser modernizados juntos

5. **O FINANÇAS está ligado ao STOCK?**

   - Para valorização de inventário
   - Importante para consolidação

6. **Há outras integrações que devemos conhecer?**
   - APIs ou transferências de dados
   - Dependências críticas

### Sobre Consolidação

7. **Podemos juntar STOCK + BANCO MUNDIAL + PROJECTOS?**

   - Parecem ter funções similares (inventário)
   - Grande oportunidade de poupança

8. **O BAIXADAS ainda é usado ou foi substituído por PROJECTOS?**

   - Têm o mesmo número de tabelas (36)
   - Podem ser redundantes

9. **Os sistemas HELPDESK, TICKETS e REUNIÕES justificam desenvolvimento próprio?**
   - Ou seria melhor usar ferramentas comerciais?
   - Google Calendar, Zendesk, Jira são mais baratos

### Sobre Orçamento

10. **Qual é o orçamento realista disponível?**
    - $315K-485K não cobre o ecossistema completo
    - $900K-1.33M para consolidação total
    - $600K-900K para foco estratégico
    - Qual é viável?

\newpage

## RECOMENDAÇÕES IMEDIATAS

### ESTA SEMANA (21-25 Outubro)

#### Ação #1: PAUSAR Plano Inicial 🛑

**NÃO APROVAR** o orçamento de $315.000 - $485.000 ainda

**Por quê?**

- Baseado em apenas 18% do ecossistema
- Faltam 9 sistemas por avaliar
- Orçamento está subestimado
- Risco de falha é alto

#### Ação #2: APROVAR Fase 0 ✅

**APROVAR**: $50.000 - $75.000 para descoberta completa

**Por quê?**

- Avaliar TODOS os 11 sistemas
- Ter informação completa
- Fazer decisão informada
- Evitar desperdício de dinheiro

#### Ação #3: AGENDAR Reuniões 📅

**Reuniões necessárias**:

1. Reunião de emergência com a administração (esta semana)
2. Entrevistas com responsáveis de cada sistema
3. Reunião com utilizadores principais
4. Reunião com equipa de TI interna

---

### PRÓXIMAS 2 SEMANAS

#### Semana 2: Recolha de Informação

1. Exportar TODAS as bases de dados de produção
2. Entrevistar responsáveis de cada sistema:

   - Responsável pelo STOCK
   - Responsável pelos SALÁRIOS
   - Gestor de projetos BANCO MUNDIAL
   - Utilizadores da ASSIDUIDADE
   - Donos de cada sistema

3. Documentar:
   - Quantos utilizadores por sistema
   - Frequência de utilização
   - Processos críticos de negócio
   - Integrações conhecidas

#### Semana 3: Análise e Priorização

1. Analisar todos os sistemas
2. Identificar quais são críticos
3. Mapear dependências
4. Identificar oportunidades de consolidação
5. Avaliar sistemas que podem ser descontinuados

\newpage

## BENEFÍCIOS ESPERADOS (Após Modernização)

### Se Escolher Opção A: Consolidação Completa

#### Benefícios Operacionais

**Ano 1**:

- ⚡ 50% mais rápido na geração de relatórios
- 🎯 80% menos problemas críticos
- ✅ 99.5% de disponibilidade dos sistemas
- 📱 Acesso móvel a dados de inventário

**Ano 2-3**:

- 🔗 Sistemas integrados (dados em tempo real)
- 📱 Aplicações móveis para trabalho de campo
- 🤝 Possibilidade de integrar com sistemas externos
- ⚡ 50% mais rápidas as operações de campo

**Ano 4-5**:

- 💻 Plataforma moderna e escalável
- 📱 Operações de campo mobile-first
- 💰 **Retorno do investimento positivo**
- 🚀 Base para crescimento futuro

#### Benefícios Financeiros

**Poupanças Anuais** (após modernização):

- 💰 $150.000 - $200.000/ano em custos de manutenção
- ⏱️ 30-40% de eficiência operacional
- 📊 Melhor tomada de decisões (dados corretos)
- 🔒 Redução de riscos

**Retorno do Investimento (ROI)**:

- **Investimento**: $900K-1.33M
- **Poupança anual**: $150K-200K
- **Tempo para recuperar investimento**: 5-7 anos
- **Depois disso**: Poupanças contínuas

---

### Se Escolher Opção B: Foco Estratégico

#### Benefícios

**Mais rápido**: 24 meses vs. 30-36 meses  
**Mais barato**: $600K-900K vs. $900K-1.33M  
**Menor risco**: Foco em sistemas críticos

#### Trade-offs

**Perde-se**:

- Alguns sistemas pequenos
- Algumas funcionalidades
- Integração completa

**Ganha-se**:

- Sistemas críticos modernizados
- Menor investimento
- Mais rápido


\newpage

## COMPARAÇÃO DAS OPÇÕES

### Tabela Comparativa

| Critério              | Opção A: Consolidação | Opção B: Foco  | Opção C: Status Quo |
| --------------------- | --------------------- | -------------- | ------------------- |
| **Investimento**      | $900K-1.33M           | $600K-900K     | $200K-300K/ano      |
| **Tempo**             | 30-36 meses           | 24 meses       | Contínuo            |
| **Sistemas finais**   | 4 plataformas         | 3 sistemas     | 11 sistemas         |
| **Integração**        | ✅ Completa           | ⚠️ Parcial     | ❌ Nenhuma          |
| **Risco**             | Médio                 | Médio          | 🔴 Alto             |
| **Manutenção futura** | 💰 Baixa              | 💰 Média       | 💰💰💰 Muito alta   |
| **Recomendação**      | ✅ SIM                | ⚠️ Alternativa | ❌ NÃO              |

### Nossa Recomendação

✅ **OPÇÃO A: Consolidação Estratégica**

**Por quê?**

1. Elimina duplicação de dados
2. Reduz custos de manutenção a longo prazo
3. Cria plataforma integrada
4. Melhor retorno a longo prazo
5. Prepara para crescimento futuro

**Mas primeiro**: Completar Fase 0 para confirmar esta recomendação

\newpage

## CONCLUSÕES E PRÓXIMOS PASSOS

### Conclusões Principais

#### 1. Ecossistema Complexo Identificado

- ~17 sistemas de aplicação
- 10 bases de dados (algumas partilhadas por múltiplos sistemas)
- 539 tabelas de bases de dados
- Estimativa de 40-60% de duplicação de dados
- Complexidade adicional: sistemas acoplados via bases de dados partilhadas

#### 2. Risco Significativo Identificado

- 🔴 Sem backups adequados (risco de perda de dados)
- 🔴 Dados inconsistentes entre sistemas
- 🔴 Dependências desconhecidas
- 🔴 Custos de manutenção muito altos

#### 3. Oportunidade de Melhoria

- Consolidação pode reduzir 11 sistemas para 4
- Poupanças anuais de $150K-200K após modernização
- Plataforma moderna e integrada
- Melhor eficiência operacional

#### 4. Necessidade de Mais Informação

- Apenas 18% do ecossistema foi avaliado
- 9 sistemas ainda por analisar
- Dependências por mapear
- Fase 0 é essencial

---

### Decisão Necessária AGORA

#### ✅ APROVAR: Fase 0 - Descoberta Completa

**Investimento**: $50.000 - $75.000  
**Duração**: 3 meses (Novembro 2025 - Janeiro 2026)  
**Resultado**: Informação completa para decisão informada

#### 🛑 NÃO APROVAR (ainda): Modernização completa

**Esperar por**: Conclusão da Fase 0  
**Então decidir**: Opção A, B ou C  
**Com**: Informação completa e orçamento realista

---

### Próximos Passos Imediatos

#### Esta Semana (21-25 Outubro)

1. **Reunião de emergência** com a administração
2. **Decisão** sobre aprovação da Fase 0
3. **Se aprovado**: Começar planeamento da Fase 0

#### Se Fase 0 For Aprovada

**Semana 2**: Início da recolha de dados  
**Semana 3-4**: Análise de sistemas  
**Mês 2**: Mapeamento de dependências  
**Mês 3**: Planeamento estratégico  
**Final Mês 3**: Reunião de decisão executiva

\newpage

## RESUMO PARA DECISÃO

### O Que Descobrimos Esta Semana

✅ Identificados ~17 sistemas de aplicação  
✅ Mapeadas 10 bases de dados  
✅ Avaliados 2 sistemas (FINANÇAS e PROJECTOS) - 12% completo  
✅ Avaliadas 2 bases de dados - 20% completo  
📊 Catalogadas 539 tabelas totais  
⚠️ Descoberta crítica: vários sistemas partilham bases de dados  
💰 Investimento estimado: $1.0M-1.5M  
⏱️ Tempo necessário: 36-48 meses

### O Que Sabemos

**FINANÇAS**:

- Sistema complexo e antigo
- Funciona mas precisa modernização urgente
- $180K-280K necessários

**PROJECTOS**:

- Sistema bem feito e moderno
- Pode servir de modelo
- $95K-145K necessários

### O Que NÃO Sabemos (e precisamos saber)

**STOCK**:

- Maior sistema (94.70 MB)
- Função exata desconhecida
- Estado desconhecido
- **AVALIAÇÃO URGENTE NECESSÁRIA**

**SALÁRIOS**:

- Sistema crítico (pagamentos)
- Dependências desconhecidas
- **AVALIAÇÃO URGENTE NECESSÁRIA**

**+~15 outros sistemas**: Completamente desconhecidos

**Desafio adicional descoberto**:

- Vários sistemas partilham a mesma base de dados
- Exemplo: PROJECTOS e PROJECTOS-BANCO-MUNDIAL usam autobas2_testop_db
- Isto torna a separação e modernização mais complexa
- Precisamos mapear exatamente quais sistemas partilham quais bases de dados

### Decisão Requerida

**APROVAR OU NÃO**: Fase 0 ($50K-75K, 3 meses)?

**Se SIM**:

- ✅ Avaliação completa de todos os sistemas
- ✅ Informação completa para decisão
- ✅ Orçamento realista
- ✅ Plano detalhado
- ✅ Poupança de dinheiro a longo prazo

**Se NÃO**:

- ❌ Decisões baseadas em 12% de informação
- ❌ Alto risco de quebrar sistemas acoplados
- ❌ Não sabemos quais sistemas dependem de quais
- ❌ Investimento desperdiçado
- ❌ Problemas continuam e agravam-se

\newpage

## ANEXOS

### Anexo A: Glossário de Termos Técnicos

**Base de Dados / Database**
: Local onde se guardam todos os dados do sistema (como um grande arquivo digital)

**Tabela**
: Forma de organizar informação na base de dados (como uma folha Excel)

**API (Interface de Programação)**
: Forma dos sistemas comunicarem entre si automaticamente

**Backup / Cópia de Segurança**
: Cópia dos dados para recuperação em caso de falha

**Índice de Base de Dados**
: Mecanismo que torna as pesquisas mais rápidas (como índice de um livro)

**Integração**
: Ligação entre sistemas para partilharem informação

**Legacy System / Sistema Legado**
: Sistema antigo que ainda está em uso

**Consolidação**
: Juntar vários sistemas num só

**ROI (Return on Investment)**
: Tempo necessário para recuperar o investimento através de poupanças

**Frontend**
: Parte visual do sistema que os utilizadores veem

**Backend**
: Parte "por trás" que processa a informação

---

### Anexo B: Documentos de Suporte

Documentos técnicos detalhados disponíveis para consulta:

1. **COMPLETE_ECOSYSTEM_ANALYSIS.md** - Análise técnica completa
2. **ASSESSMENT_FINANCAS.md** - Avaliação detalhada do FINANÇAS (1.497 linhas)
3. **ASSESSMENT_PROJECTOS.md** - Avaliação detalhada do PROJECTOS (791 linhas)
4. **OVERALL_ASSESSMENT.md** - Avaliação inicial (agora incompleta)

**Nota**: Estes documentos são técnicos e destinam-se à equipa de TI.

---

### Anexo C: Contactos

**Para Questões Sobre Esta Avaliação**:

Evariste Musekwa Iguna  
Email: musekwa@tecmoza.com  
Organização: TECMOZA  
Telefone: [A fornecer]

**Para Questões Técnicas (Equipa Interna)**:

**Tes-Top (Ponto Focal)**  
Younus Mohammed  
Tel: (+258) 843030477

**Departamento de Informática - Suporte Técnico**  
Onésimo Metro  
Tel: (+258) 848938851

**Para Questões de Negócio**:

Grupo Testop

- Email: rh@testop.co.mz
- Telefone: +258 21328056
- Morada: AV. KARL MARX, Nº1877 R/C-MAPUTO, Moçambique

\newpage

## RESUMO DE UMA PÁGINA

### 📋 Situação Atual

- **~17 sistemas** de aplicação identificados
- **10 bases de dados** (algumas partilhadas por múltiplos sistemas)
- **539 tabelas** de bases de dados
- **~180 MB** de dados
- **Alta duplicação** de informação (40-60%)
- **Sem integração** entre a maioria dos sistemas
- **Apenas 12% avaliado** (2 de ~17 sistemas, 2 de 10 bases de dados)
- **Complexidade adicional**: Sistemas que partilham bases de dados

### 🔴 Problemas Principais

1. **Risco de perda de dados** (sem backups adequados)
2. **Dados inconsistentes** (duplicados em múltiplos locais)
3. **Sistemas não comunicam** (trabalho manual)
4. **Bases de dados partilhadas** (difícil separar sistemas)
5. **Manutenção cara** (~17 sistemas para gerir)
6. **Tecnologia antiga** (alguns sistemas com 10+ anos)

### ✅ O Que Foi Feito (Semana 1)

- ✅ Identificados ~17 sistemas de aplicação
- ✅ Mapeadas 10 bases de dados
- ✅ Avaliados 2 sistemas (FINANÇAS e PROJECTOS)
- ✅ Catalogadas 539 tabelas totais
- ✅ Identificada complexidade: bases de dados partilhadas
- ✅ Identificados riscos críticos
- ✅ Criadas opções estratégicas

### 📊 Próximos Passos

**Imediato** (Esta semana):

1. Reunião de decisão com administração
2. Aprovar Fase 0 ($50K-75K)

**Se aprovado** (3 meses):

1. Avaliar os 9 sistemas restantes
2. Mapear todas as dependências
3. Criar plano detalhado
4. Decidir estratégia final

### 💰 Investimento

**Fase 0** (Descoberta): $50K-75K (3 meses)  
**Opção A** (Consolidação): $900K-1.33M (30-36 meses)  
**Opção B** (Foco): $600K-900K (24 meses)

### 🎯 Recomendação

1. ✅ **APROVAR Fase 0** ($50K-75K, 3 meses)
2. ⏸️ **ESPERAR** pela informação completa
3. 📅 **DECIDIR** estratégia final em Janeiro 2026

---

**FIM DO RELATÓRIO**

**Preparado por**: Evariste Musekwa Iguna, TECMOZA  
**Data**: 17 de Outubro de 2025, Sexta-feira - Final da Semana 1  
**Estado**: 🔴 Requer atenção executiva imediata  
**Próxima Ação**: Reunião de decisão sobre Fase 0
