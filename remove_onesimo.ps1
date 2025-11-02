# Script para remover Onésimo Metro e IT Department de todos os documentos

$files = @(
    # Cost-analysis
    "cost-analysis\RESUMO_CUSTOS_FINAIS.md",
    "cost-analysis\ESTIMATIVA_CUSTOS_4_ESTRATEGIAS.md",
    "cost-analysis\APROVACAO_EXECUTIVA.md",
    "cost-analysis\README.md",
    "cost-analysis\TRABALHO_COMPLETO_FINAL.md",
    "cost-analysis\INICIO_RAPIDO_CUSTOS.md",
    "cost-analysis\INDICE_CUSTOS_FINAIS.md",
    "cost-analysis\CUSTOS_FINAIS_MOCAMBIQUE.md",
    "cost-analysis\ENTREGA_FINAL_CUSTOS_REAIS.md",
    "cost-analysis\NOVA_ESTRUTURA_CUSTOS.md",
    # Root
    "README.md",
    "NAVEGACAO.md",
    "RESUMO_ENTREGA.md",
    "LEIA-ME_DOCUMENTACAO.md",
    # Assessment reports
    "assessment-report\COMPLETE_SYSTEMS_ASSESSMENT_3SYSTEMS.md",
    "assessment-report\COMPLETE_ECOSYSTEM_ANALYSIS.md",
    "assessment-report\ASSESSMENT_PROJECTOS_BANCO_MUNDIAL.md",
    "assessment-report\ASSESSMENT_PROJECTOS.md",
    "assessment-report\ASSESSMENT_FINANCAS.md",
    "assessment-report\README.md",
    # HTML files
    "index.html",
    "cost-analysis\estrategias.html",
    "codigo-fonte.html"
)

$patterns = @(
    # IT Department section
    @{
        Old = "### IT Department - Suporte Técnico`r`n`r`n\*\*Onésimo Metro\*\*  `r`nTel: \(\+258\) 848938851`r`n`r`n"
        New = ""
    },
    @{
        Old = "### IT Department - Suporte Técnico`n`n**Onésimo Metro**  `nTel: (+258) 848938851`n`n"
        New = ""
    },
    @{
        Old = "**IT Department**  `nOnésimo Metro  `nTel: (+258) 848938851`n`n"
        New = ""
    },
    @{
        Old = "**IT Support**:  `nOnésimo Metro  `n📱 (+258) 848938851`n`n"
        New = ""
    },
    @{
        Old = "**IT Department - Suporte Técnico**:`n`n- Onésimo Metro: (+258) 848938851`n`n"
        New = ""
    },
    # HTML patterns
    @{
        Old = '<p style="margin-bottom: 0.5rem">\s*<strong>IT Support:</strong> Onésimo Metro \| \(\+258\) 848938851\s*</p>'
        New = ""
    }
)

Write-Host "`nRemovendo Onésimo Metro e IT Department de todos os arquivos...`n" -ForegroundColor Cyan

$count = 0
foreach ($file in $files) {
    if (Test-Path $file) {
        $content = Get-Content $file -Raw -Encoding UTF8
        $originalContent = $content
        
        # Remove IT Department sections (multiline)
        $content = $content -replace "### IT Department - Suporte Técnico\s*\n\s*\n\s*\*\*Onésimo Metro\*\*\s*\n\s*Tel: \(\+258\) 848938851\s*\n\s*\n", ""
        $content = $content -replace "\*\*IT Department\*\*\s*\n\s*Onésimo Metro\s*\n\s*Tel: \(\+258\) 848938851\s*\n\s*\n", ""
        $content = $content -replace "\*\*IT Support\*\*:\s*\n\s*Onésimo Metro\s*\n\s*📱 \(\+258\) 848938851\s*\n\s*\n", ""
        $content = $content -replace "\*\*IT Department - Suporte Técnico\*\*:\s*\n\s*\n\s*- Onésimo Metro: \(\+258\) 848938851\s*\n\s*\n", ""
        
        # HTML patterns
        $content = $content -replace '<p[^>]*>\s*<strong>IT Support:</strong>[^<]*Onésimo Metro[^<]*848938851[^<]*</p>\s*', ""
        
        # Generic removals
        $content = $content -replace "Onésimo Metro", ""
        $content = $content -replace "\(\+258\) 848938851", ""
        $content = $content -replace "848938851", ""
        
        if ($content -ne $originalContent) {
            Set-Content $file -Value $content -Encoding UTF8 -NoNewline
            Write-Host "  ✓ $file" -ForegroundColor Green
            $count++
        }
    }
}

Write-Host "`n✅ $count arquivos atualizados!`n" -ForegroundColor Green

