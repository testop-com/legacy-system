# Estimativa de Custos - 4 Estratégias de Modernização

**Data**: 2 de Novembro de 2025  
**Empresa**: Grupo Testop  
**Ecossistema**: ~17 sistemas, 10 bases de dados, 539 tabelas  
**Sistemas Avaliados**: 3 de 17 (18%)

---

## 💰 Parâmetros de Custo Base

| Item | Valor | Observações |
|------|-------|-------------|
| **Custo/Dev Nacional** | $1,600/mês | Desenvolvedores Moçambique |
| **Custo/Dev Senior** | $2,000/mês | Experiência 5+ anos |
| **Custo/Tech Lead** | $2,500/mês | Liderança técnica |
| **Custo/Arquiteto** | $3,000/mês | Arquitetura de soluções |
| **Máximo por Sistema** | $40,000 | Limite definido |
| **Contingência** | 15-20% | Imprevistos |

---

## 🎯 Estratégia 1: Consolidar Sistemas (Equipa Externa)

### Timeline: 18 meses

### Equipa Externa Necessária

| Função | Quantidade | Meses | Custo/Mês | Total |
|--------|-----------|-------|-----------|--------|
| Arquiteto Soluções | 1 | 18 | $3,500 | $63,000 |
| Tech Lead | 1 | 18 | $3,000 | $54,000 |
| Desenvolvedor Senior | 4 | 18 | $2,500 | $180,000 |
| Desenvolvedor Mid | 3 | 18 | $2,000 | $108,000 |
| DBA/DevOps | 1 | 18 | $2,500 | $45,000 |
| QA Engineer | 2 | 12 | $2,000 | $48,000 |
| **SUBTOTAL** | **12** | | | **$498,000** |

### Custos Adicionais

| Item | Custo | Observações |
|------|-------|-------------|
| Infraestrutura (Cloud) | $18,000 | $1,000/mês × 18 meses |
| Ferramentas & Licenças | $15,000 | CI/CD, monitoring, etc. |
| Gestão de Projeto | $27,000 | $1,500/mês × 18 meses |
| Formação Equipa Interna | $10,000 | Handover final |
| Contingência (15%) | $85,350 | Imprevistos |
| **SUBTOTAL** | **$155,350** | |

### 💵 CUSTO TOTAL ESTRATÉGIA 1

| Componente | Valor |
|-----------|-------|
| Equipa Externa | $498,000 |
| Custos Adicionais | $155,350 |
| **TOTAL** | **$653,350** |
| **Custo Médio/Sistema** | **$38,432** (17 sistemas) |

### 📊 Breakdown por Fase

| Fase | Duração | Custo | Entregáveis |
|------|---------|-------|-------------|
| **Fase 1: Foundation** | 6 meses | $217,783 | API layer, SSO, CI/CD |
| **Fase 2: Consolidation** | 9 meses | $326,675 | Sistemas consolidados |
| **Fase 3: Handover** | 3 meses | $108,892 | Docs, formação, suporte |

---

## 🎯 Estratégia 2: Consolidar Sistemas (Equipa Interna)

### Timeline: 24-30 meses (média: 27 meses)

### Equipa Interna Necessária (4+ Senior Devs)

| Função | Quantidade | Meses | Custo/Mês | Total |
|--------|-----------|-------|-----------|--------|
| Tech Lead (Interno) | 1 | 27 | $2,500 | $67,500 |
| Dev Senior | 4 | 27 | $2,000 | $216,000 |
| Dev Mid-Level | 2 | 27 | $1,600 | $86,400 |
| DBA/DevOps | 1 | 27 | $2,000 | $54,000 |
| **SUBTOTAL** | **8** | | | **$423,900** |

### Custos Adicionais

| Item | Custo | Observações |
|------|-------|-------------|
| Infraestrutura (Cloud) | $27,000 | $1,000/mês × 27 meses |
| Ferramentas & Licenças | $20,000 | CI/CD, monitoring, etc. |
| Formação Técnica | $25,000 | Laravel, APIs, microserviços |
| Consultoria Externa | $40,000 | Arquitetura, code review |
| Contingência (20%) | $107,180 | Maior devido a curva aprendizado |
| **SUBTOTAL** | **$219,180** | |

### 💵 CUSTO TOTAL ESTRATÉGIA 2

| Componente | Valor |
|-----------|-------|
| Equipa Interna | $423,900 |
| Custos Adicionais | $219,180 |
| **TOTAL** | **$643,080** |
| **Custo Médio/Sistema** | **$37,828** (17 sistemas) |

### 📊 Breakdown por Fase

| Fase | Duração | Custo | Entregáveis |
|------|---------|-------|-------------|
| **Fase 1: Training & Setup** | 3 meses | $71,520 | Equipa preparada, arquitetura |
| **Fase 2: Foundation** | 6 meses | $143,040 | API layer, SSO |
| **Fase 3: Consolidation A** | 9 meses | $214,560 | FINANCAS + STOCK |
| **Fase 4: Consolidation B** | 6 meses | $143,040 | HR + PROJECTOS |
| **Fase 5: Stabilization** | 3 meses | $70,920 | Testes, docs, suporte |

### ⚠️ Nota Importante
Custos são **similares à Estratégia 1**, mas timeline mais longo (27 meses vs 18 meses). **Vantagem**: conhecimento fica 100% interno.

---

## 🎯 Estratégia 3: Reconstruir Sistema (Equipa Externa - Modular)

### Timeline: 18-36 meses (3-6 meses/módulo × 6 módulos)

### Módulos Identificados

| Módulo | Complexidade | Timeline | Custo Estimado |
|--------|--------------|----------|----------------|
| 1. Finance Management | ALTA | 6 meses | $120,000 |
| 2. Stock & Procurement | ALTA | 6 meses | $120,000 |
| 3. Human Resources | MÉDIA | 4 meses | $80,000 |
| 4. Projects Management | MÉDIA | 5 meses | $100,000 |
| 5. Transportation | BAIXA | 3 meses | $60,000 |
| 6. Company Properties | BAIXA | 3 meses | $60,000 |
| **TOTAL** | | **27 meses** | **$540,000** |

### Equipa Externa por Módulo (Média)

| Função | Quantidade | Meses Médios | Custo/Mês | Total/Módulo |
|--------|-----------|--------------|-----------|--------------|
| Tech Lead | 1 | 4.5 | $3,000 | $13,500 |
| Dev Senior | 2 | 4.5 | $2,500 | $22,500 |
| Dev Mid | 2 | 4.5 | $2,000 | $18,000 |
| UI/UX Designer | 1 | 2 | $2,500 | $5,000 |
| QA Engineer | 1 | 3 | $2,000 | $6,000 |
| **SUBTOTAL** | **7** | | | **$65,000/módulo** |

### Custos Adicionais (Todo o Projeto)

| Item | Custo | Observações |
|------|-------|-------------|
| Arquitetura Inicial | $40,000 | Design do sistema, escolha tech stack |
| Infraestrutura (Cloud) | $54,000 | $2,000/mês × 27 meses |
| Ferramentas & Licenças | $30,000 | Modernas (React/Vue, PostgreSQL, etc.) |
| Migração de Dados | $80,000 | ETL, validação, cutover |
| Gestão de Projeto | $40,500 | $1,500/mês × 27 meses |
| Formação Utilizadores | $30,000 | $5,000 por módulo |
| Contingência (15%) | $124,575 | Imprevistos |
| **SUBTOTAL** | **$399,075** | |

### 💵 CUSTO TOTAL ESTRATÉGIA 3

| Componente | Valor |
|-----------|-------|
| Desenvolvimento (6 módulos) | $390,000 |
| Arquitetura + Módulos Extra | $150,000 |
| Custos Adicionais | $399,075 |
| **TOTAL** | **$939,075** |
| **Custo por Módulo** | **$156,513** (média) |

### 📊 Entrega Modular - Timeline e Custos

| Ordem | Módulo | Timeline | Custo | ROI Esperado |
|-------|--------|----------|-------|--------------|
| 1 | Finance Management | M1-M6 | $156,513 | Alto - crítico |
| 2 | Stock & Procurement | M7-M12 | $156,513 | Alto - volume |
| 3 | Projects Management | M13-M17 | $130,428 | Médio |
| 4 | Human Resources | M18-M21 | $104,342 | Médio |
| 5 | Transportation | M22-M24 | $78,257 | Baixo |
| 6 | Company Properties | M25-M27 | $78,257 | Baixo |

### ✅ Vantagens da Entrega Modular
- Valor entregue a cada 3-6 meses
- Pode pausar entre módulos se necessário
- ROI começa cedo (módulo 1)
- Feedback contínuo dos utilizadores

---

## 🎯 Estratégia 4: Reconstruir Sistema (Equipa Interna - Modular)

### Timeline: 36-72 meses (6-12 meses/módulo × 6 módulos, média: 54 meses)

### Módulos Identificados

| Módulo | Complexidade | Timeline | Custo Estimado |
|--------|--------------|----------|----------------|
| 1. Finance Management | ALTA | 12 meses | $192,000 |
| 2. Stock & Procurement | ALTA | 12 meses | $192,000 |
| 3. Human Resources | MÉDIA | 8 meses | $128,000 |
| 4. Projects Management | MÉDIA | 10 meses | $160,000 |
| 5. Transportation | BAIXA | 6 meses | $96,000 |
| 6. Company Properties | BAIXA | 6 meses | $96,000 |
| **TOTAL** | | **54 meses** | **$864,000** |

### Equipa Interna Necessária (4+ Senior Devs)

| Função | Quantidade | Meses | Custo/Mês | Total |
|--------|-----------|-------|-----------|--------|
| Tech Lead | 1 | 54 | $2,500 | $135,000 |
| Dev Senior | 4 | 54 | $2,000 | $432,000 |
| Dev Mid-Level | 2 | 54 | $1,600 | $172,800 |
| UI/UX Designer | 1 | 30 | $1,800 | $54,000 |
| QA Engineer | 1 | 40 | $1,600 | $64,000 |
| DBA/DevOps | 1 | 54 | $2,000 | $108,000 |
| **SUBTOTAL** | **10** | | | **$965,800** |

### Custos Adicionais

| Item | Custo | Observações |
|------|-------|-------------|
| Formação Técnica Avançada | $50,000 | React/Vue, microserviços, cloud |
| Consultoria Externa | $80,000 | Arquitetura, code review periódico |
| Infraestrutura (Cloud) | $108,000 | $2,000/mês × 54 meses |
| Ferramentas & Licenças | $40,000 | Stack moderno |
| Migração de Dados | $100,000 | ETL interno |
| Gestão de Projeto | $81,000 | $1,500/mês × 54 meses |
| Contingência (20%) | $281,960 | Alta devido a timeline longo |
| **SUBTOTAL** | **$740,960** | |

### 💵 CUSTO TOTAL ESTRATÉGIA 4

| Componente | Valor |
|-----------|-------|
| Equipa Interna | $965,800 |
| Custos Adicionais | $740,960 |
| **TOTAL** | **$1,706,760** |
| **Custo por Módulo** | **$284,460** (média) |

### 📊 Entrega Modular - Timeline e Custos

| Ordem | Módulo | Timeline | Custo | Team Utilization |
|-------|--------|----------|-------|------------------|
| 1 | Finance Management | M1-M12 | $284,460 | 100% |
| 2 | Stock & Procurement | M13-M24 | $284,460 | 100% |
| 3 | Projects Management | M25-M34 | $237,050 | 80% |
| 4 | Human Resources | M35-M42 | $189,640 | 70% |
| 5 | Transportation | M43-M48 | $142,230 | 60% |
| 6 | Company Properties | M49-M54 | $142,230 | 60% |

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
| **Custo Total** | **$653,350** | **$643,080** | **$939,075** | **$1,706,760** |
| **Timeline** | **18 meses** | **27 meses** | **27 meses** | **54 meses** |
| **Custo/Mês** | $36,297 | $23,818 | $34,781 | $31,606 |
| **Equipa** | 12 externos | 8 internos | 7 ext/módulo | 10 internos |
| **Entrega** | Final | Final | Modular | Modular |
| **Dívida Técnica** | Reduzida | Reduzida | Zero | Zero |
| **Conhecimento** | Externo | 100% Interno | Externo | 100% Interno |
| **Risco** | Médio | Médio-Alto | Médio | Alto |
| **ROI Inicio** | Mês 18 | Mês 27 | Mês 6 | Mês 12 |

### Gráfico de Custo × Timeline

```
Custo Total
    │
$1.7M ┤                                                      ● (E4)
    │
$1.5M ┤
    │
$1.3M ┤
    │
$1.1M ┤
    │
$900K ┤                                    ● (E3)
    │
$700K ┤
    │
$650K ┤  ● (E1)        ● (E2)
    │
    └─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────
         18m   27m         36m         45m         54m
                                Timeline

E1 = Estratégia 1 (Consolidar Externo)
E2 = Estratégia 2 (Consolidar Interno)
E3 = Estratégia 3 (Rebuild Externo)
E4 = Estratégia 4 (Rebuild Interno)
```

### ROI Comparativo (5 anos)

| Estratégia | Investimento | Savings/Year | 5-Year ROI | Break-Even |
|-----------|--------------|--------------|------------|------------|
| Estratégia 1 | $653K | $180K | 38% | 3.6 anos |
| Estratégia 2 | $643K | $180K | 40% | 3.6 anos |
| Estratégia 3 | $939K | $240K | 28% | 3.9 anos |
| Estratégia 4 | $1,707K | $240K | -30% | 7.1 anos |

**Savings**: Redução de custos de manutenção, menor downtime, produtividade aumentada

---

## 🎯 Recomendações Finais

### ✅ Melhor Custo-Benefício: **ESTRATÉGIA 2** (Consolidar Interno)
**Por quê:**
- Custo total similar à Estratégia 1 ($643K vs $653K)
- 100% conhecimento interno
- Timeline razoável (27 meses)
- ROI positivo em 3.6 anos
- Desenvolve equipa interna

**Ideal para:** Empresa com equipa de TI competente (4+ seniors)

---

### ✅ Mais Rápido: **ESTRATÉGIA 1** (Consolidar Externo)
**Por quê:**
- Timeline mais curto (18 meses)
- Expertise externa garantida
- Menor disrupção interna
- Custo controlado ($653K)

**Ideal para:** Empresa que precisa resultados rápidos e tem orçamento

---

### ✅ Mais Modular: **ESTRATÉGIA 3** (Rebuild Externo)
**Por quê:**
- Valor entregue a cada 3-6 meses
- Sistema novo (zero dívida técnica)
- Pode pausar entre módulos
- ROI começa cedo

**Ideal para:** Empresa que quer transformação completa com flexibilidade

---

### ❌ Menos Recomendada: **ESTRATÉGIA 4** (Rebuild Interno)
**Por quê:**
- Custo muito alto ($1.7M)
- Timeline muito longo (54 meses)
- ROI negativo em 5 anos
- Risco de burnout da equipa

**Ideal para:** Empresa com paciência, orçamento largo, e compromisso de longo prazo com desenvolvimento de equipa

---

## 💡 Decisão Rápida

### Se você tem:

**$650K-700K e 18-27 meses**:
→ Escolha **Estratégia 1 ou 2**

**$900K-1M e quer flexibilidade**:
→ Escolha **Estratégia 3**

**$1.7M+ e 4+ anos**:
→ Escolha **Estratégia 4** (mas reconsidere!)

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

