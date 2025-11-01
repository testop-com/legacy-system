# 📋 CHANGELOG - Versão 1.1

**Data:** 01 de Novembro de 2025  
**Preparado por:** TECMOZA

---

## 🔄 Alterações Implementadas

### 1. Atualização de Contactos

#### 📧 TECMOZA - Evariste Musekwa Iguna
- ✅ **Adicionado**: Telefone (+258) 860140080
- ✅ Email mantido: musekwa@tecmoza.com

#### 🔧 Suporte Técnico - Grupo Testop
- ❌ **Removidos**: 
  - Nunes Pedro (it.nunes@q99.co.mz)
  - Edson Paporo (it.paporo@testop.co.mz)
- ✅ **Adicionado**: 
  - Onésimo Metro
  - Tel: (+258) 848938851

---

## 📄 Documentos Atualizados

### Arquivos HTML/Web
1. **`index.html`**
   - Contactos atualizados no footer
   - Informações de suporte técnico
   - Layout mantido

### Arquivos Markdown
2. **`LEIA-ME_DOCUMENTACAO.md`**
   - Secção de contactos atualizada
   - Telefones adicionados
   - Suporte técnico atualizado

3. **`RESUMO_ENTREGA.md`**
   - Contactos atualizados
   - Telefones adicionados
   - Suporte técnico novo

4. **`GITHUB_PAGES_SETUP.md`**
   - Secção de suporte atualizada
   - Telefones incluídos

5. **`NAVEGACAO_DOCUMENTACAO.md`**
   - Contactos técnicos atualizados
   - Novo suporte técnico

6. **`README.md`**
   - Secção "Contact & Support" atualizada
   - Departamento de TI atualizado

7. **`DEPLOY_CHECKLIST.md`**
   - Footer atualizado com contactos completos

---

## 📊 Esquemas PDF - NOVIDADE IMPORTANTE

### Defeitos Adicionados aos PDFs

Todos os **11 esquemas PDF** foram regenerados com uma **página inicial de defeitos** que inclui:

#### ⚠️ Conteúdo da Página de Defeitos

1. **Título**: "DEFEITOS IDENTIFICADOS"
2. **Base de dados**: Nome da base de dados analisada
3. **Alerta crítico**: Box vermelho destacando vulnerabilidades
4. **Lista de defeitos** detectados:
   - Ausência de chaves estrangeiras (FOREIGN KEY)
   - Falta de constraints de integridade
   - Índices insuficientes
   - Problemas de nomenclatura
   - Falta de validação
   - Estratégia de backup ausente
   - Outros defeitos específicos por BD

5. **Impacto**: Consequências dos defeitos
   - Risco de inconsistência
   - Impossibilidade de garantir integridade
   - Performance sub-ótima
   - Dificuldade de manutenção
   - Vulnerabilidade a dados órfãos

6. **Recomendações Prioritárias**:
   - URGENTE: Implementar chaves estrangeiras
   - ALTA: Adicionar índices críticos
   - ALTA: Criar constraints de validação
   - MÉDIA: Normalizar estruturas
   - MÉDIA: Implementar backup strategy

#### 📝 Defeitos por Base de Dados

##### grupotestop_financas (125 tabelas)
- ❌ Ausência total de FOREIGN KEY
- ❌ Sem constraints de integridade referencial
- ⚠️ Índices insuficientes
- ⚠️ Tabelas sem chave primária explícita
- ⚠️ Nomenclatura inconsistente
- ⚠️ Sem validação ao nível da BD
- ❌ Sem backup documentado

##### grupotestop_stock (89 tabelas - MAIOR)
- ❌ Ausência total de FOREIGN KEY
- ❌ Base mais volumosa (94.70 MB) sem otimização
- ⚠️ Falta de índices em colunas frequentes
- ⚠️ Sem constraints de integridade
- ⚠️ Possível redundância não normalizada
- ❌ Sem controlo de concorrência

##### grupotestop_salarios (71 tabelas - CRÍTICA)
- ❌ CRÍTICO: Sem FOREIGN KEY
- ❌ CRÍTICO: Dados sensíveis sem encriptação
- ⚠️ Sem audit trail para alterações salariais
- ⚠️ Sem controlo de versões
- ⚠️ Índices insuficientes
- ❌ Backup não documentado

##### grupotestop_attendance (71 tabelas)
- ❌ Ausência de FOREIGN KEY
- ⚠️ Sem validação de horários ao nível da BD
- ⚠️ Sem constraints anti-duplicação
- ⚠️ Índices ausentes em data/hora
- ⚠️ Nomenclatura inconsistente

##### grupotestop_banco_mundial_stock (60 tabelas)
- ❌ Ausência de FOREIGN KEY
- ⚠️ Separação pouco clara com stock geral
- ⚠️ Índices insuficientes
- ⚠️ Possível duplicação de lógica
- ⚠️ Sem constraints

##### grupotestop_baixadas (36 tabelas)
- ❌ Ausência de FOREIGN KEY
- ⚠️ Sem validação de coordenadas GPS
- ⚠️ Sem constraints para materiais
- ⚠️ Índices ausentes

##### grupotestop_helpdesk (34 tabelas)
- ❌ Ausência de FOREIGN KEY
- ⚠️ Sem validação de workflow states
- ⚠️ Sem audit trail
- ⚠️ Índices insuficientes

##### grupotestop_meeting (9 tabelas)
- ❌ Ausência de FOREIGN KEY
- ⚠️ Sistema pequeno mas sem constraints
- ⚠️ Sem validação de conflitos de horário

##### grupotestop_archives (5 tabelas)
- ❌ Ausência de FOREIGN KEY
- ⚠️ Sistema mínimo sem estrutura adequada
- ⚠️ Falta de metadados

##### grupotestop_ticket (3 tabelas)
- ❌ Ausência de FOREIGN KEY
- ⚠️ Sistema mais pequeno mas crítico
- ⚠️ Estrutura muito simplificada

##### autobas2_testop_db (36 tabelas)
- ❌ Ausência de FOREIGN KEY
- ⚠️ BD partilhada por 2 sistemas
- ⚠️ Export desatualizado (Jun 2022)
- ⚠️ Sem constraints
- ⚠️ Índices insuficientes

---

## 🎯 Benefícios das Alterações

### Para Utilizadores
- ✅ Contactos atualizados e corretos
- ✅ Telefones adicionados para contacto rápido
- ✅ Suporte técnico claramente identificado

### Para Técnicos
- ✅ Defeitos documentados em cada PDF
- ✅ Prioridades claramente estabelecidas
- ✅ Impacto e recomendações incluídas
- ✅ Facilita planejamento de correções

### Para Gestão
- ✅ Visibilidade clara dos problemas
- ✅ Priorização para tomada de decisão
- ✅ Contactos corretos para follow-up

---

## 📦 Arquivos Afetados

### Total de Arquivos Modificados: 18

#### Documentação (7 arquivos)
- `index.html`
- `LEIA-ME_DOCUMENTACAO.md`
- `RESUMO_ENTREGA.md`
- `GITHUB_PAGES_SETUP.md`
- `NAVEGACAO_DOCUMENTACAO.md`
- `README.md`
- `DEPLOY_CHECKLIST.md`

#### Esquemas PDF (11 arquivos)
- `database_schemas/ESQUEMA_grupotestop_financas.pdf`
- `database_schemas/ESQUEMA_grupotestop_stock.pdf`
- `database_schemas/ESQUEMA_grupotestop_salarios.pdf`
- `database_schemas/ESQUEMA_grupotestop_attendance.pdf`
- `database_schemas/ESQUEMA_grupotestop_banco_mundial_stock.pdf`
- `database_schemas/ESQUEMA_grupotestop_baixadas.pdf`
- `database_schemas/ESQUEMA_grupotestop_helpdesk.pdf`
- `database_schemas/ESQUEMA_grupotestop_meeting.pdf`
- `database_schemas/ESQUEMA_grupotestop_archives.pdf`
- `database_schemas/ESQUEMA_grupotestop_ticket.pdf`
- `database_schemas/ESQUEMA_autobas2_testop_db.pdf`

---

## 🚀 Próximos Passos

### Para Deploy
```bash
git add .
git commit -m "v1.1: Atualizar contactos e adicionar defeitos aos PDFs"
git push origin main
```

### Após Deploy
1. ✅ Verificar GitHub Pages atualizado
2. ✅ Testar downloads dos PDFs
3. ✅ Confirmar contactos visíveis
4. ✅ Validar página de defeitos nos PDFs
5. ✅ Notificar stakeholders das atualizações

---

## 📞 Contactos (Atualizados)

### Documentação Técnica
**TECMOZA**  
Evariste Musekwa Iguna  
📧 Email: musekwa@tecmoza.com  
📱 Tel: (+258) 860140080

### Suporte Técnico
**Grupo Testop - Departamento de TI**  
Onésimo Metro  
📱 Tel: (+258) 848938851

### Grupo Testop (Geral)
📧 Email: rh@testop.co.mz  
☎️ Tel: +258 21328056  
📍 AV. KARL MARX, Nº1877 R/C-MAPUTO, Moçambique

---

## ✅ Verificação de Qualidade

- [x] Todos contactos atualizados
- [x] Telefones adicionados onde solicitado
- [x] Contactos antigos removidos
- [x] Novo suporte técnico incluído
- [x] PDFs regenerados com defeitos
- [x] Defeitos específicos por BD
- [x] Impacto documentado
- [x] Recomendações incluídas
- [x] Contactos nos rodapés dos PDFs atualizados
- [x] Todos os 18 arquivos modificados
- [x] Scripts temporários removidos

---

## 📊 Estatísticas

| Métrica | Valor |
|---------|-------|
| **Versão** | 1.1 |
| **Arquivos Modificados** | 18 |
| **PDFs Regenerados** | 11 |
| **Contactos Atualizados** | 7 documentos |
| **Páginas de Defeitos Adicionadas** | 11 |
| **Total de Defeitos Documentados** | ~70 |

---

## 🔐 Confidencialidade

Esta documentação e todas as alterações são **confidenciais e proprietárias** do Grupo Testop.

---

**Versão:** 1.1  
**Data:** 01 de Novembro de 2025  
**Status:** ✅ **COMPLETO**  
**Preparado por:** TECMOZA

