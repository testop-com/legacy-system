# Estimativa de Custos - 4 Estratégias de Modernização

**Data**: 2 de Novembro de 2025  
**Empresa**: Grupo Testop  
**Ecossistema**: ~17 sistemas, 10 bases de dados, 539 tabelas  
**Sistemas Avaliados**: 3 de 17 (18%)

---

## 💰 Parâmetros de Custo Base (Moçambique)

| Item | Valor | Observações |
|------|-------|-------------|
| **Custo/Dev Mid-Level** | $800-1,200/mês | Desenvolvedores júnior-mid Moçambique |
| **Custo/Dev Senior** | $1,000-1,600/mês | Experiência 5+ anos, Moçambique |
| **Custo/Tech Lead** | $1,800-2,200/mês | Liderança técnica, Moçambique |
| **Custo/Arquiteto** | $2,000-2,500/mês | Arquitetura de soluções |
| **Custo Sistema/Módulo** | $3,500-50,000 | Complexidade média |
| **Contingência** | 15-20% | Imprevistos |

### ⚠️ Nota Importante sobre Custos

**Desenvolvedores em Moçambique**: Os salários variam entre **$1,000 - $1,600/mês** para seniors, dependendo de:
- Experiência específica
- Stack tecnológico (Laravel, React, etc.)
- Tamanho da empresa
- Localização (Maputo vs outras cidades)

**Sistemas/Módulos de Complexidade Média**: Entre **$3,500 - $50,000**, considerando:
- Número de funcionalidades
- Integrações necessárias
- Volume de dados
- Requisitos de performance
- Equipa e timeline

---

## 🎯 Estratégia 1: Consolidar Sistemas (Equipa Externa)

### Timeline: 18 meses

### Equipa Externa Necessária

| Função | Quantidade | Meses | Custo/Mês | Total |
|--------|-----------|-------|-----------|--------|
| Arquiteto Soluções | 1 | 18 | $2,200 | $39,600 |
| Tech Lead | 1 | 18 | $2,000 | $36,000 |
| Desenvolvedor Senior | 4 | 18 | $1,600 | $115,200 |
| Desenvolvedor Mid | 3 | 18 | $1,200 | $64,800 |
| DBA/DevOps | 1 | 18 | $1,600 | $28,800 |
| QA Engineer | 2 | 12 | $1,200 | $28,800 |
| **SUBTOTAL** | **12** | | | **$313,200** |

### Custos Adicionais

| Item | Custo | Observações |
|------|-------|-------------|
| Infraestrutura (Cloud) | $18,000 | $1,000/mês × 18 meses |
| Ferramentas & Licenças | $12,000 | CI/CD, monitoring, etc. |
| Gestão de Projeto | $18,000 | $1,000/mês × 18 meses |
| Formação Equipa Interna | $8,000 | Handover final |
| Contingência (15%) | $55,230 | Imprevistos |
| **SUBTOTAL** | **$111,230** | |

### 💵 CUSTO TOTAL ESTRATÉGIA 1

| Componente | Valor |
|-----------|-------|
| Equipa Externa | $313,200 |
| Custos Adicionais | $111,230 |
| **TOTAL** | **$424,430** |
| **Custo Médio/Sistema** | **$24,967** (17 sistemas) |

### 📊 Breakdown por Fase

| Fase | Duração | Custo | Entregáveis |
|------|---------|-------|-------------|
| **Fase 1: Foundation** | 6 meses | $141,477 | API layer, SSO, CI/CD |
| **Fase 2: Consolidation** | 9 meses | $212,215 | Sistemas consolidados |
| **Fase 3: Handover** | 3 meses | $70,738 | Docs, formação, suporte |

---

## 🎯 Estratégia 2: Consolidar Sistemas (Equipa Interna)

### Timeline: 24-30 meses (média: 27 meses)

### Equipa Interna Necessária (4+ Senior Devs)

| Função | Quantidade | Meses | Custo/Mês | Total |
|--------|-----------|-------|-----------|--------|
| Tech Lead (Interno) | 1 | 27 | $1,800 | $48,600 |
| Dev Senior | 4 | 27 | $1,400 | $151,200 |
| Dev Mid-Level | 2 | 27 | $1,000 | $54,000 |
| DBA/DevOps | 1 | 27 | $1,400 | $37,800 |
| **SUBTOTAL** | **8** | | | **$291,600** |

### Custos Adicionais

| Item | Custo | Observações |
|------|-------|-------------|
| Infraestrutura (Cloud) | $27,000 | $1,000/mês × 27 meses |
| Ferramentas & Licenças | $15,000 | CI/CD, monitoring, etc. |
| Formação Técnica | $18,000 | Laravel, APIs, microserviços |
| Consultoria Externa | $25,000 | Arquitetura, code review |
| Contingência (20%) | $75,320 | Maior devido a curva aprendizado |
| **SUBTOTAL** | **$160,320** | |

### 💵 CUSTO TOTAL ESTRATÉGIA 2

| Componente | Valor |
|-----------|-------|
| Equipa Interna | $291,600 |
| Custos Adicionais | $160,320 |
| **TOTAL** | **$451,920** |
| **Custo Médio/Sistema** | **$26,583** (17 sistemas) |

### 📊 Breakdown por Fase

| Fase | Duração | Custo | Entregáveis |
|------|---------|-------|-------------|
| **Fase 1: Training & Setup** | 3 meses | $50,213 | Equipa preparada, arquitetura |
| **Fase 2: Foundation** | 6 meses | $100,427 | API layer, SSO |
| **Fase 3: Consolidation A** | 9 meses | $150,640 | FINANCAS + STOCK |
| **Fase 4: Consolidation B** | 6 meses | $100,427 | HR + PROJECTOS |
| **Fase 5: Stabilization** | 3 meses | $50,213 | Testes, docs, suporte |

### ⚠️ Nota Importante
Custos são **ligeiramente superiores à Estratégia 1** ($452K vs $424K), mas timeline mais longo (27 meses vs 18 meses). **Vantagem**: conhecimento fica 100% interno e desenvolvimento de equipa.

---

## 🎯 Estratégia 3: Reconstruir Sistema (Equipa Externa - Modular)

### Timeline: 18-36 meses (3-6 meses/módulo × 6 módulos)

### Módulos Identificados (Complexidade Média)

| Módulo | Complexidade | Timeline | Custo Estimado |
|--------|--------------|----------|----------------|
| 1. Finance Management | MÉDIA-ALTA | 6 meses | $45,000 |
| 2. Stock & Procurement | MÉDIA-ALTA | 6 meses | $45,000 |
| 3. Human Resources | MÉDIA | 4 meses | $30,000 |
| 4. Projects Management | MÉDIA | 5 meses | $35,000 |
| 5. Transportation | MÉDIA-BAIXA | 3 meses | $20,000 |
| 6. Company Properties | MÉDIA-BAIXA | 3 meses | $20,000 |
| **TOTAL** | | **27 meses** | **$195,000** |

**Nota**: Todos os módulos classificados como **complexidade média**, dentro do range **$3,500 - $50,000** por módulo.

### Equipa Externa por Módulo (Média)

| Função | Quantidade | Meses Médios | Custo/Mês | Total/Módulo |
|--------|-----------|--------------|-----------|--------------|
| Tech Lead | 1 | 4.5 | $1,800 | $8,100 |
| Dev Senior | 2 | 4.5 | $1,400 | $12,600 |
| Dev Mid | 2 | 4.5 | $1,000 | $9,000 |
| UI/UX Designer | 1 | 2 | $1,200 | $2,400 |
| QA Engineer | 1 | 3 | $1,200 | $3,600 |
| **SUBTOTAL** | **7** | | | **$35,700/módulo** |

**Nota**: Custo médio por módulo ajustado para refletir salários de mercado em Moçambique.

### Custos Adicionais (Todo o Projeto)

| Item | Custo | Observações |
|------|-------|-------------|
| Arquitetura Inicial | $25,000 | Design do sistema, escolha tech stack |
| Infraestrutura (Cloud) | $54,000 | $2,000/mês × 27 meses |
| Ferramentas & Licenças | $20,000 | Modernas (React/Vue, PostgreSQL, etc.) |
| Migração de Dados | $40,000 | ETL, validação, cutover |
| Gestão de Projeto | $27,000 | $1,000/mês × 27 meses |
| Formação Utilizadores | $18,000 | $3,000 por módulo |
| Contingência (15%) | $56,850 | Imprevistos |
| **SUBTOTAL** | **$240,850** | |

### 💵 CUSTO TOTAL ESTRATÉGIA 3

| Componente | Valor |
|-----------|-------|
| Desenvolvimento (6 módulos) | $195,000 |
| Custos Adicionais | $240,850 |
| **TOTAL** | **$435,850** |
| **Custo por Módulo** | **$32,500** (média, dentro do range $3.5K-50K) |

### 📊 Entrega Modular - Timeline e Custos

| Ordem | Módulo | Timeline | Custo | ROI Esperado |
|-------|--------|----------|-------|--------------|
| 1 | Finance Management | M1-M6 | $72,642 | Alto - crítico |
| 2 | Stock & Procurement | M7-M12 | $72,642 | Alto - volume |
| 3 | Projects Management | M13-M17 | $58,308 | Médio |
| 4 | Human Resources | M18-M21 | $50,000 | Médio |
| 5 | Transportation | M22-M24 | $33,308 | Baixo |
| 6 | Company Properties | M25-M27 | $33,308 | Baixo |

**Nota**: Custos por módulo incluem desenvolvimento + proporção dos custos adicionais (infraestrutura, gestão, etc.)

### ✅ Vantagens da Entrega Modular
- Valor entregue a cada 3-6 meses
- Pode pausar entre módulos se necessário
- ROI começa cedo (módulo 1)
- Feedback contínuo dos utilizadores

---

## 🎯 Estratégia 4: Reconstruir Sistema (Equipa Interna - Modular)

### Timeline: 36-72 meses (6-12 meses/módulo × 6 módulos, média: 54 meses)

### Módulos Identificados (Complexidade Média)

| Módulo | Complexidade | Timeline | Custo Estimado |
|--------|--------------|----------|----------------|
| 1. Finance Management | MÉDIA-ALTA | 12 meses | $48,000 |
| 2. Stock & Procurement | MÉDIA-ALTA | 12 meses | $48,000 |
| 3. Human Resources | MÉDIA | 8 meses | $32,000 |
| 4. Projects Management | MÉDIA | 10 meses | $40,000 |
| 5. Transportation | MÉDIA-BAIXA | 6 meses | $24,000 |
| 6. Company Properties | MÉDIA-BAIXA | 6 meses | $24,000 |
| **TOTAL** | | **54 meses** | **$216,000** |

**Nota**: Todos os módulos classificados como **complexidade média**, dentro do range **$3,500 - $50,000** por módulo.

### Equipa Interna Necessária (4+ Senior Devs)

| Função | Quantidade | Meses | Custo/Mês | Total |
|--------|-----------|-------|-----------|--------|
| Tech Lead | 1 | 54 | $1,800 | $97,200 |
| Dev Senior | 4 | 54 | $1,400 | $302,400 |
| Dev Mid-Level | 2 | 54 | $1,000 | $108,000 |
| UI/UX Designer | 1 | 30 | $1,200 | $36,000 |
| QA Engineer | 1 | 40 | $1,000 | $40,000 |
| DBA/DevOps | 1 | 54 | $1,400 | $75,600 |
| **SUBTOTAL** | **10** | | | **$659,200** |

### Custos Adicionais

| Item | Custo | Observações |
|------|-------|-------------|
| Formação Técnica Avançada | $30,000 | React/Vue, microserviços, cloud |
| Consultoria Externa | $50,000 | Arquitetura, code review periódico |
| Infraestrutura (Cloud) | $108,000 | $2,000/mês × 54 meses |
| Ferramentas & Licenças | $30,000 | Stack moderno |
| Migração de Dados | $50,000 | ETL interno |
| Gestão de Projeto | $54,000 | $1,000/mês × 54 meses |
| Contingência (20%) | $198,240 | Alta devido a timeline longo |
| **SUBTOTAL** | **$520,240** | |

### 💵 CUSTO TOTAL ESTRATÉGIA 4

| Componente | Valor |
|-----------|-------|
| Equipa Interna | $659,200 |
| Custos Adicionais | $520,240 |
| **TOTAL** | **$1,179,440** |
| **Custo por Módulo** | **$196,573** (média, inclui 54 meses de salários + infraestrutura) |

### 📊 Entrega Modular - Timeline e Custos

| Ordem | Módulo | Timeline | Custo | Team Utilization |
|-------|--------|----------|-------|------------------|
| 1 | Finance Management | M1-M12 | $196,573 | 100% |
| 2 | Stock & Procurement | M13-M24 | $196,573 | 100% |
| 3 | Projects Management | M25-M34 | $163,811 | 80% |
| 4 | Human Resources | M35-M42 | $131,048 | 70% |
| 5 | Transportation | M43-M48 | $98,286 | 60% |
| 6 | Company Properties | M49-M54 | $98,286 | 60% |

**Nota**: Custos por módulo incluem salários da equipa + proporção dos custos adicionais (infra, formação, etc.)

### ⚠️ Desafios da Estratégia 4
- **Timeline mais longo**: 4.5 anos (54 meses)
- **Risco de burnout**: Equipa no mesmo projeto por 4+ anos
- **Custo mais alto**: Apesar de salários internos, timeline longo aumenta custo total
- **Requer disciplina**: Manter foco e qualidade por 54 meses

### ✅ Vantagens
- **100% conhecimento interno**: Equipa conhece cada linha de código
- **Desenvolvimento de equipa**: Skill upgrade significativo
- **Controlo total**: Decisões técnicas internas
- **Customização máxima**: Atende necessidades específicas

---

## 📊 Comparação das 4 Estratégias

### Tabela de Comparação Geral

| Aspecto | Estratégia 1 (Consolidar Ext) | Estratégia 2 (Consolidar Int) | Estratégia 3 (Rebuild Ext) | Estratégia 4 (Rebuild Int) |
|---------|-------------------------------|-------------------------------|---------------------------|---------------------------|
| **Custo Total** | **$424,430** | **$451,920** | **$435,850** | **$1,179,440** |
| **Timeline** | **18 meses** | **27 meses** | **27 meses** | **54 meses** |
| **Custo/Mês** | $23,579 | $16,738 | $16,143 | $21,841 |
| **Equipa** | 12 externos | 8 internos | 7 ext/módulo | 10 internos |
| **Entrega** | Final | Final | Modular | Modular |
| **Dívida Técnica** | Reduzida | Reduzida | Zero | Zero |
| **Conhecimento** | Externo | 100% Interno | Externo | 100% Interno |
| **Risco** | Médio | Médio-Alto | Médio | Alto |
| **ROI Inicio** | Mês 18 | Mês 27 | Mês 6 | Mês 12 |

**Nota**: Todos os custos baseados em salários de mercado em Moçambique ($1,000-1,600/mês para seniors) e módulos de complexidade média ($3,500-50,000).

### Gráfico de Custo × Timeline

```
Custo Total
    │
$1.2M ┤                                                      ● (E4)
    │
$1.0M ┤
    │
$800K ┤
    │
$600K ┤
    │
$450K ┤  ● (E1)  ● (E2)  ● (E3)
    │
$300K ┤
    │
$150K ┤
    │
    └─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────
         18m   27m         36m         45m         54m
                                Timeline

E1 = Estratégia 1 (Consolidar Externo) - $424K
E2 = Estratégia 2 (Consolidar Interno) - $452K
E3 = Estratégia 3 (Rebuild Externo) - $436K
E4 = Estratégia 4 (Rebuild Interno) - $1,179K

⭐ Estratégias 1, 2 e 3 têm custos similares (~$424K-452K)
⚠️ Estratégia 4 custa 2.5x mais devido ao timeline de 54 meses
```

### ROI Comparativo (5 anos)

| Estratégia | Investimento | Savings/Year | 5-Year ROI | Break-Even |
|-----------|--------------|--------------|------------|------------|
| Estratégia 1 | $424K | $150K | 77% | 2.8 anos |
| Estratégia 2 | $452K | $150K | 66% | 3.0 anos |
| Estratégia 3 | $436K | $180K | 106% | 2.4 anos |
| Estratégia 4 | $1,179K | $180K | -24% | 6.6 anos |

**Savings**: Redução de custos de manutenção (~$100K-150K/ano), menor downtime, produtividade aumentada (~$30K-50K/ano)

**Nota**: ROI significativamente melhorado com custos ajustados para mercado de Moçambique.

---

## 🎯 Recomendações Finais

### ✅ Mais Rápido: **ESTRATÉGIA 1** (Consolidar Externo)
**Por quê:**
- ⚡ Timeline mais curto (18 meses)
- 💰 Custo controlado ($424K)
- 🎯 Expertise externa garantida
- 📈 ROI 77% em 5 anos
- ⏱️ Break-even: 2.8 anos

**Ideal para:** Empresa que precisa resultados rápidos

---

### ✅ Mais Modular: **ESTRATÉGIA 3** (Rebuild Externo)
**Por quê:**
- 📦 Valor entregue a cada 3-6 meses
- ✨ Sistema novo (zero dívida técnica)
- 🔄 Pode pausar entre módulos
- 💰 Custo similar à E1 ($436K)
- 📈 **MELHOR ROI**: 106% em 5 anos
- ⏱️ **Break-even mais rápido**: 2.4 anos

**Ideal para:** Empresa que quer transformação completa com flexibilidade e melhor ROI

---

### ✅ Conhecimento Interno: **ESTRATÉGIA 2** (Consolidar Interno)
**Por quê:**
- 🧠 100% conhecimento interno
- 💰 Custo razoável ($452K)
- ⏰ Timeline 27 meses (aceitável)
- 📈 ROI 66% em 5 anos
- 👥 Desenvolve equipa interna

**Ideal para:** Empresa com equipa de TI competente (4+ seniors) e quer reter conhecimento

---

### ⚠️ Menos Recomendada: **ESTRATÉGIA 4** (Rebuild Interno)
**Por quê:**
- 💰 Custo muito alto ($1,179K - 2.5x mais)
- ⏰ Timeline muito longo (54 meses)
- 📉 ROI negativo (-24%) em 5 anos
- ⚠️ Break-even: 6.6 anos
- 😰 Risco de burnout da equipa

**Ideal para:** Empresa com paciência (4+ anos), orçamento largo, e compromisso de longo prazo

---

## 💡 Decisão Rápida

### Se você tem:

**$424K-452K e quer consolidar existente**:
→ Escolha **Estratégia 1** (18m) ou **Estratégia 2** (27m)
- E1: Mais rápido, externo
- E2: Conhecimento interno

**$436K e quer melhor ROI**:
→ Escolha **Estratégia 3** ⭐ **RECOMENDADA**
- ROI 106% (melhor de todas)
- Break-even 2.4 anos
- Modular e flexível

**$1,179K e 4+ anos de compromisso**:
→ Escolha **Estratégia 4** (mas reconsidere seriamente!)
- Custo 2.5x-2.7x mais alto
- ROI negativo em 5 anos

---

## ⚠️ Ações Imediatas (Todas as Estratégias)

**ANTES de escolher qualquer estratégia, execute:**

| Semana | Ação | Custo | Criticidade |
|--------|------|-------|-------------|
| 1 | Backup todas as 10 bases de dados | Incluído | 🔴 CRÍTICO |
| 1-2 | Identificar sistemas ativos vs legacy | Incluído | 🔴 CRÍTICO |
| 2-3 | Limpeza de bases de dados | Incluído | 🟠 ALTO |
| 3-4 | Preparação migração de dados | Incluído | 🟠 ALTO |

**Custo**: Já incluído nos custos de cada estratégia  
**Timeline**: 3-4 semanas  
**Obrigatório**: Sim, para qualquer estratégia

---

## 📞 Próximos Passos

1. **Revisar este documento** com equipa executiva
2. **Escolher 1 estratégia** baseada em orçamento e timeline
3. **Aprovar orçamento** para estratégia escolhida
4. **Executar ações imediatas** (3-4 semanas)
5. **Começar implementação** da estratégia escolhida

---

**Contactos**:

**TECMOZA (Avaliação)**:  
Evariste Musekwa Iguna  
📧 musekwa@tecmoza.com  
📱 (+258) 860140080

**Tes-Top (Decisões)**:  
Younus Mohammed  
📱 (+258) 843030477

**IT Support**:  
Onésimo Metro  
📱 (+258) 848938851

---

**Data**: 2 de Novembro de 2025  
**Versão**: 1.0  
**Status**: ✅ Pronto para Revisão Executiva

