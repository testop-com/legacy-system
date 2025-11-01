# Script PowerShell para configurar URLs do GitHub
# Sistema Tes-Top - Documentação

Write-Host "`n╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║     Configurador de URLs - Sistema Tes-Top                ║" -ForegroundColor Cyan
Write-Host "╚════════════════════════════════════════════════════════════╝`n" -ForegroundColor Cyan

# Solicitar username do GitHub
Write-Host "Digite seu username do GitHub: " -ForegroundColor Yellow -NoNewline
$username = Read-Host

if ([string]::IsNullOrWhiteSpace($username)) {
    Write-Host "`n❌ Username não pode ser vazio!`n" -ForegroundColor Red
    exit 1
}

Write-Host "`n✅ Username GitHub: $username`n" -ForegroundColor Green

# Confirmar
Write-Host "Exemplo de URL que será gerada:" -ForegroundColor Yellow
Write-Host "https://github.com/$username/legacy-system/blob/main/assessment-report/...`n" -ForegroundColor Cyan

Write-Host "Confirma que está correto? (S/N): " -ForegroundColor Yellow -NoNewline
$confirm = Read-Host

if ($confirm -ne 'S' -and $confirm -ne 's') {
    Write-Host "`n❌ Operação cancelada.`n" -ForegroundColor Red
    exit 0
}

Write-Host "`n🔧 Configurando URLs...`n" -ForegroundColor Cyan

# Verificar se arquivos existem
$files = @('index.html', 'codigo-fonte.html')
$missing = @()

foreach ($file in $files) {
    if (-not (Test-Path $file)) {
        $missing += $file
    }
}

if ($missing.Count -gt 0) {
    Write-Host "❌ Arquivos não encontrados:" -ForegroundColor Red
    $missing | ForEach-Object { Write-Host "   - $_" -ForegroundColor Red }
    Write-Host "`nCertifique-se de estar no diretório correto.`n" -ForegroundColor Yellow
    exit 1
}

# Fazer backup
Write-Host "📦 Criando backup dos arquivos originais..." -ForegroundColor Yellow
Copy-Item 'index.html' 'index.html.backup'
Copy-Item 'codigo-fonte.html' 'codigo-fonte.html.backup'
Write-Host "   ✓ Backups criados (*.backup)`n" -ForegroundColor Green

# Substituir URLs
Write-Host "🔄 Substituindo URLs..." -ForegroundColor Yellow

try {
    # index.html
    $content = Get-Content 'index.html' -Raw
    $originalCount = ([regex]::Matches($content, 'SEU_USUARIO')).Count
    $content = $content -replace 'SEU_USUARIO', $username
    Set-Content 'index.html' -Value $content -NoNewline
    Write-Host "   ✓ index.html: $originalCount ocorrências substituídas" -ForegroundColor Green
    
    # codigo-fonte.html
    $content = Get-Content 'codigo-fonte.html' -Raw
    $originalCount = ([regex]::Matches($content, 'SEU_USUARIO')).Count
    $content = $content -replace 'SEU_USUARIO', $username
    Set-Content 'codigo-fonte.html' -Value $content -NoNewline
    Write-Host "   ✓ codigo-fonte.html: $originalCount ocorrências substituídas`n" -ForegroundColor Green
    
} catch {
    Write-Host "`n❌ Erro ao substituir URLs: $_`n" -ForegroundColor Red
    # Restaurar backups
    Write-Host "📦 Restaurando backups..." -ForegroundColor Yellow
    Copy-Item 'index.html.backup' 'index.html' -Force
    Copy-Item 'codigo-fonte.html.backup' 'codigo-fonte.html' -Force
    Write-Host "   ✓ Arquivos restaurados`n" -ForegroundColor Green
    exit 1
}

# Verificar se ainda há placeholders
Write-Host "🔍 Verificando se ainda há placeholders..." -ForegroundColor Yellow

$remaining = Select-String -Path $files -Pattern 'SEU_USUARIO' -AllMatches

if ($remaining) {
    Write-Host "   ⚠️  Ainda encontrado 'SEU_USUARIO' em:" -ForegroundColor Yellow
    $remaining | ForEach-Object { Write-Host "      - $($_.Filename):$($_.LineNumber)" -ForegroundColor Yellow }
    Write-Host "`n   Verifique manualmente.`n" -ForegroundColor Yellow
} else {
    Write-Host "   ✓ Nenhum placeholder encontrado!`n" -ForegroundColor Green
}

# Resumo
Write-Host "╔════════════════════════════════════════════════════════════╗" -ForegroundColor Green
Write-Host "║                   ✅ CONFIGURAÇÃO COMPLETA!                ║" -ForegroundColor Green
Write-Host "╚════════════════════════════════════════════════════════════╝`n" -ForegroundColor Green

Write-Host "URLs configuradas para:" -ForegroundColor Cyan
Write-Host "  https://github.com/$username/legacy-system/...`n" -ForegroundColor White

Write-Host "Arquivos atualizados:" -ForegroundColor Cyan
Write-Host "  ✓ index.html" -ForegroundColor Green
Write-Host "  ✓ codigo-fonte.html`n" -ForegroundColor Green

Write-Host "Backups criados:" -ForegroundColor Cyan
Write-Host "  • index.html.backup" -ForegroundColor Gray
Write-Host "  • codigo-fonte.html.backup`n" -ForegroundColor Gray

Write-Host "PRÓXIMOS PASSOS:" -ForegroundColor Yellow
Write-Host "  1. Verificar os arquivos (abrir no editor)" -ForegroundColor White
Write-Host "  2. git add index.html codigo-fonte.html" -ForegroundColor Cyan
Write-Host "  3. git commit -m 'Configurar URLs do GitHub'" -ForegroundColor Cyan
Write-Host "  4. git push origin main" -ForegroundColor Cyan
Write-Host "  5. Testar no GitHub Pages`n" -ForegroundColor White

Write-Host "════════════════════════════════════════════════════════════" -ForegroundColor Green
Write-Host "           Pronto para deploy! 🚀" -ForegroundColor Black -BackgroundColor Green
Write-Host "════════════════════════════════════════════════════════════`n" -ForegroundColor Green

