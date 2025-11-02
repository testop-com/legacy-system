# Estimativa de Custos - 4 Estratégias de Modernização

**Data**: 2 de Novembro de 2025  
**Empresa**: Grupo Testop  
**Ecossistema**: ~17 sistemas, 10 bases de dados, 539 tabelas  
**Sistemas Avaliados**: 3 de 17 (18%)

---

## 💰 Parâmetros de Custo Base (Moçambique)

| Item                    | Valor            | Observações                     |
| ----------------------- | ---------------- | ------------------------------- |
| **Custo/Desenvolvedor** | $1,000-1,600/mês | Desenvolvedores em Moçambique   |
| **Custo/DBA**           | $1,200-1,700/mês | Administrador de bases de dados |
| **Custo/Tech Lead**     | $1,800-2,200/mês | Liderança técnica               |
| **Custo/Arquiteto**     | $2,000-2,500/mês | Arquitetura de soluções         |
| **Contingência**        | 15-20%           | Imprevistos                     |

### 📊 Custo por Sistema/Módulo (Baseado em Complexidade)

| Complexidade | Range de Custo     | Características                               |
| ------------ | ------------------ | --------------------------------------------- |
| **Baixa**    | **< $35,000**      | Poucas funcionalidades, pouca integração      |
| **Média** ⭐ | **$35,000-50,000** | Sistema/módulo padrão, integrações moderadas  |
| **Alta**     | **> $50,000**      | Muitas funcionalidades, integrações complexas |

### ⚠️ Nota Importante sobre Custos

**Desenvolvedores em Moçambique**:

- Salários variam entre **$1,000 - $1,600/mês**, dependendo de:
  - Experiência específica
  - Stack tecnológico (Laravel, React, etc.)
  - Tamanho da empresa
  - Localização (Maputo vs outras cidades)

**DBAs em Moçambique**:

- Salários variam entre **$1,200 - $1,700/mês**, dependendo de:
  - Experiência com MySQL/PostgreSQL
  - DevOps skills
  - Gestão de backups e segurança

**Sistemas/Módulos para Este Projeto**:

- **Todos classificados como COMPLEXIDADE MÉDIA**: $35,000-50,000
- Range considerado para simplificação e consistência
- Permite flexibilidade baseada em scope específico de cada módulo

---

## 🎯 Estratégia 1: Consolidar Sistemas (Equipa Externa)

### Timeline: 18 meses

### Equipa Externa Necessária

| Função               | Quantidade | Meses | Custo/Mês | Total        |
| -------------------- | ---------- | ----- | --------- | ------------ |
| Arquiteto Soluções   | 1          | 18    | $2,200    | $39,600      |
| Tech Lead            | 1          | 18    | $2,000    | $36,000      |
| Desenvolvedor Senior | 4          | 18    | $1,600    | $115,200     |
| Desenvolvedor Mid    | 3          | 18    | $1,200    | $64,800      |
| DBA/DevOps           | 1          | 18    | $1,600    | $28,800      |
| QA Engineer          | 2          | 12    | $1,200    | $28,800      |
| **SUBTOTAL**         | **12**     |       |           | **$313,200** |

### Custos Adicionais

| Item                    | Custo        | Observações             |
| ----------------------- | ------------ | ----------------------- |
| Infraestrutura (Cloud)  | $18,000      | $1,000/mês × 18 meses   |
| Ferramentas & Licenças  | $12,000      | CI/CD, monitoring, etc. |
| Gestão de Projeto       | $18,000      | $1,000/mês × 18 meses   |
| Formação Equipa Interna | $8,000       | Handover final          |
| Contingência (15%)      | $55,230      | Imprevistos             |
| **SUBTOTAL**            | **$111,230** |                         |

### 💵 CUSTO TOTAL ESTRATÉGIA 1

| Componente              | Valor                     |
| ----------------------- | ------------------------- |
| Equipa Externa          | $313,200                  |
| Custos Adicionais       | $111,230                  |
| **TOTAL**               | **$424,430**              |
| **Custo Médio/Sistema** | **$24,967** (17 sistemas) |

### 📊 Breakdown por Fase

| Fase                      | Duração | Custo    | Entregáveis             |
| ------------------------- | ------- | -------- | ----------------------- |
| **Fase 1: Foundation**    | 6 meses | $141,477 | API layer, SSO, CI/CD   |
| **Fase 2: Consolidation** | 9 meses | $212,215 | Sistemas consolidados   |
| **Fase 3: Handover**      | 3 meses | $70,738  | Docs, formação, suporte |

---

## 🎯 Estratégia 2: Consolidar Sistemas (Equipa Interna)

### Timeline: 24-30 meses (média: 27 meses)

### Equipa Interna Necessária (4+ Senior Devs)

| Função              | Quantidade | Meses | Custo/Mês | Total        |
| ------------------- | ---------- | ----- | --------- | ------------ |
| Tech Lead (Interno) | 1          | 27    | $1,800    | $48,600      |
| Dev Senior          | 4          | 27    | $1,400    | $151,200     |
| Dev Mid-Level       | 2          | 27    | $1,000    | $54,000      |
| DBA/DevOps          | 1          | 27    | $1,400    | $37,800      |
| **SUBTOTAL**        | **8**      |       |           | **$291,600** |

### Custos Adicionais

| Item                   | Custo        | Observações                      |
| ---------------------- | ------------ | -------------------------------- |
| Infraestrutura (Cloud) | $27,000      | $1,000/mês × 27 meses            |
| Ferramentas & Licenças | $15,000      | CI/CD, monitoring, etc.          |
| Formação Técnica       | $18,000      | Laravel, APIs, microserviços     |
| Consultoria Externa    | $25,000      | Arquitetura, code review         |
| Contingência (20%)     | $75,320      | Maior devido a curva aprendizado |
| **SUBTOTAL**           | **$160,320** |                                  |

### 💵 CUSTO TOTAL ESTRATÉGIA 2

| Componente              | Valor                     |
| ----------------------- | ------------------------- |
| Equipa Interna          | $291,600                  |
| Custos Adicionais       | $160,320                  |
| **TOTAL**               | **$451,920**              |
| **Custo Médio/Sistema** | **$26,583** (17 sistemas) |

### 📊 Breakdown por Fase

| Fase                         | Duração | Custo    | Entregáveis                   |
| ---------------------------- | ------- | -------- | ----------------------------- |
| **Fase 1: Training & Setup** | 3 meses | $50,213  | Equipa preparada, arquitetura |
| **Fase 2: Foundation**       | 6 meses | $100,427 | API layer, SSO                |
| **Fase 3: Consolidation A**  | 9 meses | $150,640 | FINANCAS + STOCK              |
| **Fase 4: Consolidation B**  | 6 meses | $100,427 | HR + PROJECTOS                |
| **Fase 5: Stabilization**    | 3 meses | $50,213  | Testes, docs, suporte         |

### ⚠️ Nota Importante

Custos são **ligeiramente superiores à Estratégia 1** ($452K vs $424K), mas timeline mais longo (27 meses vs 18 meses). **Vantagem**: conhecimento fica 100% interno e desenvolvimento de equipa.

---

## 🎯 Estratégia 3: Reconstruir Sistema (Equipa Externa - Modular)

### Timeline: 18-36 meses (3-6 meses/módulo × 6 módulos)

### Módulos Identificados (Complexidade Média)

| Módulo                 | Complexidade | Timeline     | Custo Estimado |
| ---------------------- | ------------ | ------------ | -------------- |
| 1. Finance Management  | MÉDIA        | 6 meses      | $50,000        |
| 2. Stock & Procurement | MÉDIA        | 6 meses      | $50,000        |
| 3. Human Resources     | MÉDIA        | 4 meses      | $40,000        |
| 4. Projects Management | MÉDIA        | 5 meses      | $45,000        |
| 5. Transportation      | MÉDIA        | 3 meses      | $35,000        |
| 6. Company Properties  | MÉDIA        | 3 meses      | $35,000        |
| **TOTAL**              |              | **27 meses** | **$255,000**   |

**Nota**: Todos os módulos classificados como **complexidade MÉDIA** ($35K-50K), para simplificação e consistência.

### Equipa Externa por Módulo (Média)

| Função         | Quantidade | Meses Médios | Custo/Mês | Total/Módulo       |
| -------------- | ---------- | ------------ | --------- | ------------------ |
| Tech Lead      | 1          | 4.5          | $2,000    | $9,000             |
| Dev Senior     | 2          | 4.5          | $1,400    | $12,600            |
| Dev Mid        | 2          | 4.5          | $1,100    | $9,900             |
| DBA            | 1          | 3            | $1,500    | $4,500             |
| UI/UX Designer | 1          | 2            | $1,200    | $2,400             |
| QA Engineer    | 1          | 3            | $1,200    | $3,600             |
| **SUBTOTAL**   | **8**      |              |           | **$42,000/módulo** |

**Nota**: Custo médio por módulo de **$42,500** (desenvolvimento + overhead), dentro do range de complexidade média ($35K-50K).

### Custos Adicionais (Todo o Projeto)

| Item                   | Custo        | Observações                            |
| ---------------------- | ------------ | -------------------------------------- |
| Arquitetura Inicial    | $30,000      | Design do sistema, escolha tech stack  |
| Infraestrutura (Cloud) | $54,000      | $2,000/mês × 27 meses                  |
| Ferramentas & Licenças | $20,000      | Modernas (React/Vue, PostgreSQL, etc.) |
| Migração de Dados      | $45,000      | ETL, validação, cutover                |
| Gestão de Projeto      | $27,000      | $1,000/mês × 27 meses                  |
| Formação Utilizadores  | $18,000      | $3,000 por módulo                      |
| Contingência (15%)     | $68,850      | Imprevistos                            |
| **SUBTOTAL**           | **$262,850** |                                        |

### 💵 CUSTO TOTAL ESTRATÉGIA 3

| Componente                  | Valor                                               |
| --------------------------- | --------------------------------------------------- |
| Desenvolvimento (6 módulos) | $255,000                                            |
| Custos Adicionais           | $262,850                                            |
| **TOTAL**                   | **$517,850**                                        |
| **Custo por Módulo**        | **$42,500** (média de complexidade MÉDIA: $35K-50K) |

### 📊 Entrega Modular - Timeline e Custos

| Ordem | Módulo              | Timeline | Custo Total | Complexidade     |
| ----- | ------------------- | -------- | ----------- | ---------------- |
| 1     | Finance Management  | M1-M6    | $86,308     | MÉDIA ($50K dev) |
| 2     | Stock & Procurement | M7-M12   | $86,308     | MÉDIA ($50K dev) |
| 3     | Projects Management | M13-M17  | $77,642     | MÉDIA ($45K dev) |
| 4     | Human Resources     | M18-M21  | $68,975     | MÉDIA ($40K dev) |
| 5     | Transportation      | M22-M24  | $60,308     | MÉDIA ($35K dev) |
| 6     | Company Properties  | M25-M27  | $60,308     | MÉDIA ($35K dev) |

**Nota**: Custos por módulo = desenvolvimento ($35K-50K) + proporção dos custos adicionais (infraestrutura, gestão, migração, etc.)

### ✅ Vantagens da Entrega Modular

- Valor entregue a cada 3-6 meses
- Pode pausar entre módulos se necessário
- ROI começa cedo (módulo 1)
- Feedback contínuo dos utilizadores

---

## 🎯 Estratégia 4: Reconstruir Sistema (Equipa Interna - Modular)

### Timeline: 36-72 meses (6-12 meses/módulo × 6 módulos, média: 54 meses)

### Módulos Identificados (Todos: Complexidade Média)

| Módulo                 | Complexidade | Timeline     | Custo Estimado |
| ---------------------- | ------------ | ------------ | -------------- |
| 1. Finance Management  | MÉDIA        | 12 meses     | $50,000        |
| 2. Stock & Procurement | MÉDIA        | 12 meses     | $50,000        |
| 3. Human Resources     | MÉDIA        | 8 meses      | $40,000        |
| 4. Projects Management | MÉDIA        | 10 meses     | $45,000        |
| 5. Transportation      | MÉDIA        | 6 meses      | $35,000        |
| 6. Company Properties  | MÉDIA        | 6 meses      | $35,000        |
| **TOTAL**              |              | **54 meses** | **$255,000**   |

**Nota**: Para **simplificação**, todos os módulos são classificados como **complexidade MÉDIA** ($35K-50K).

### Equipa Interna Necessária (4+ Senior Devs)

| Função         | Quantidade | Meses | Custo/Mês | Total        |
| -------------- | ---------- | ----- | --------- | ------------ |
| Tech Lead      | 1          | 54    | $2,000    | $108,000     |
| Dev Senior     | 4          | 54    | $1,400    | $302,400     |
| Dev Mid-Level  | 2          | 54    | $1,100    | $118,800     |
| UI/UX Designer | 1          | 30    | $1,200    | $36,000      |
| QA Engineer    | 1          | 40    | $1,100    | $44,000      |
| DBA/DevOps     | 1          | 54    | $1,500    | $81,000      |
| **SUBTOTAL**   | **10**     |       |           | **$690,200** |

**Nota**: Salários baseados em ranges de mercado Moçambique (Devs: $1K-1.6K, DBA: $1.2K-1.7K)

### Custos Adicionais

| Item                      | Custo        | Observações                        |
| ------------------------- | ------------ | ---------------------------------- |
| Formação Técnica Avançada | $35,000      | React/Vue, microserviços, cloud    |
| Consultoria Externa       | $55,000      | Arquitetura, code review periódico |
| Infraestrutura (Cloud)    | $108,000     | $2,000/mês × 54 meses              |
| Ferramentas & Licenças    | $35,000      | Stack moderno                      |
| Migração de Dados         | $55,000      | ETL interno                        |
| Gestão de Projeto         | $54,000      | $1,000/mês × 54 meses              |
| Contingência (20%)        | $207,440     | Alta devido a timeline longo       |
| **SUBTOTAL**              | **$549,440** |                                    |

### 💵 CUSTO TOTAL ESTRATÉGIA 4

| Componente                  | Valor                                                              |
| --------------------------- | ------------------------------------------------------------------ |
| Desenvolvimento (6 módulos) | $255,000                                                           |
| Equipa Interna (salários)   | $690,200                                                           |
| Custos Adicionais           | $549,440                                                           |
| **TOTAL**                   | **$1,494,640**                                                     |
| **Custo por Módulo**        | **$42,500** (dev MÉDIA) + salários proporcionais = $249,107/módulo |

### 📊 Entrega Modular - Timeline e Custos

| Ordem | Módulo              | Timeline | Custo Total | Complexidade |
| ----- | ------------------- | -------- | ----------- | ------------ |
| 1     | Finance Management  | M1-M12   | $249,107    | MÉDIA ($50K) |
| 2     | Stock & Procurement | M13-M24  | $249,107    | MÉDIA ($50K) |
| 3     | Projects Management | M25-M34  | $224,196    | MÉDIA ($45K) |
| 4     | Human Resources     | M35-M42  | $199,285    | MÉDIA ($40K) |
| 5     | Transportation      | M43-M48  | $174,375    | MÉDIA ($35K) |
| 6     | Company Properties  | M49-M54  | $174,375    | MÉDIA ($35K) |

**Nota**: Custos = desenvolvimento módulo ($35K-50K) + salários equipa + custos adicionais proporcionais

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

| Aspecto            | Estratégia 1 (Consolidar Ext) | Estratégia 2 (Consolidar Int) | Estratégia 3 (Rebuild Ext) | Estratégia 4 (Rebuild Int) |
| ------------------ | ----------------------------- | ----------------------------- | -------------------------- | -------------------------- |
| **Custo Total**    | **$424,430**                  | **$451,920**                  | **$517,850**               | **$1,494,640**             |
| **Timeline**       | **18 meses**                  | **27 meses**                  | **27 meses**               | **54 meses**               |
| **Custo/Mês**      | $23,579                       | $16,738                       | $19,179                    | $27,678                    |
| **Equipa**         | 12 externos                   | 8 internos                    | 8 ext/módulo               | 10 internos                |
| **Entrega**        | Final                         | Final                         | Modular                    | Modular                    |
| **Dívida Técnica** | Reduzida                      | Reduzida                      | Zero                       | Zero                       |
| **Conhecimento**   | Externo                       | 100% Interno                  | Externo                    | 100% Interno               |
| **Risco**          | Médio                         | Médio-Alto                    | Médio                      | Alto                       |
| **ROI Inicio**     | Mês 18                        | Mês 27                        | Mês 6                      | Mês 12                     |

**Nota**: Todos os custos baseados em:

- **Salários**: Devs $1K-1.6K/mês, DBA $1.2K-1.7K/mês
- **Módulos**: Complexidade MÉDIA $35K-50K (todos os módulos deste projeto)

### Gráfico de Custo × Timeline

```
Custo Total
    │
$1.5M ┤                                                      ● (E4)
    │
$1.3M ┤
    │
$1.1M ┤
    │
$900K ┤
    │
$700K ┤
    │
$518K ┤                            ● (E3)
$452K ┤            ● (E2)
$424K ┤  ● (E1)
    │
    └─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────
         18m   27m         36m         45m         54m
                                Timeline

E1 = Estratégia 1 (Consolidar Externo) - $424K
E2 = Estratégia 2 (Consolidar Interno) - $452K
E3 = Estratégia 3 (Rebuild Externo) - $518K
E4 = Estratégia 4 (Rebuild Interno) - $1,495K

⭐ Estratégias 1 e 2 têm custos mais baixos (~$424K-452K)
✅ Estratégia 3 custo moderado ($518K) com melhor ROI
⚠️ Estratégia 4 custa 3x mais ($1,495K) devido ao timeline de 54 meses
```

### ROI Comparativo (5 anos)

| Estratégia   | Investimento | Savings/Year | 5-Year ROI | Break-Even |
| ------------ | ------------ | ------------ | ---------- | ---------- |
| Estratégia 1 | $424K        | $150K        | 77%        | 2.8 anos   |
| Estratégia 2 | $452K        | $150K        | 66%        | 3.0 anos   |
| Estratégia 3 | $518K        | $180K        | 74%        | 2.9 anos   |
| Estratégia 4 | $1,495K      | $180K        | -40%       | 8.3 anos   |

**Savings**: Redução de custos de manutenção (~$100K-150K/ano), menor downtime, produtividade aumentada (~$30K-50K/ano)

**Nota**:

- Custos ajustados para mercado de Moçambique
- Módulos complexidade MÉDIA ($35K-50K)
- Estratégias 1, 2, 3 têm ROI positivo excelente (66-77%)
- Estratégia 4 tem ROI negativo devido ao timeline longo (54 meses)

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
- 💰 Custo moderado ($518K)
- 📈 ROI excelente: 74% em 5 anos
- ⏱️ Break-even: 2.9 anos
- 🎯 Todos módulos complexidade MÉDIA ($35K-50K)

**Ideal para:** Empresa que quer transformação completa com flexibilidade e entrega modular

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

- 💰 Custo muito alto ($1,495K - 3x mais que outras)
- ⏰ Timeline muito longo (54 meses = 4.5 anos)
- 📉 ROI negativo (-40%) em 5 anos
- ⚠️ Break-even: 8.3 anos
- 😰 Alto risco de burnout da equipa

**Ideal para:** Empresa com paciência (4+ anos), orçamento muito largo ($1.5M), e compromisso de longo prazo

**Recomendação**: Considere Estratégias 1, 2 ou 3 para melhor custo-benefício

---

## 💡 Decisão Rápida

### Se você tem:

**$424K-452K e quer consolidar existente**:
→ Escolha **Estratégia 1** (18m) ⭐ ou **Estratégia 2** (27m)

- E1: ⚡ Mais rápido, ROI 77%
- E2: 🧠 Conhecimento interno, ROI 66%

**$518K e quer sistema novo modular**:
→ Escolha **Estratégia 3**

- 📦 Entrega modular (3-6 meses/módulo)
- ROI 74% em 5 anos
- Break-even 2.9 anos
- Todos módulos complexidade MÉDIA ($35K-50K)

**$1,495K e 4.5 anos de compromisso**:
→ Escolha **Estratégia 4** (⚠️ NÃO recomendada)

- Custo 3x mais alto
- ROI -40% (negativo)
- Break-even 8.3 anos

---

## ⚠️ Ações Imediatas (Todas as Estratégias)

**ANTES de escolher qualquer estratégia, execute:**

| Semana | Ação                                  | Custo    | Criticidade |
| ------ | ------------------------------------- | -------- | ----------- |
| 1      | Backup todas as 10 bases de dados     | Incluído | 🔴 CRÍTICO  |
| 1-2    | Identificar sistemas ativos vs legacy | Incluído | 🔴 CRÍTICO  |
| 2-3    | Limpeza de bases de dados             | Incluído | 🟠 ALTO     |
| 3-4    | Preparação migração de dados          | Incluído | 🟠 ALTO     |

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
