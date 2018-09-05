<#
Coletaremos as informações do usuário logado e adicionaremos no html

Autores: Mateus e Wallace

2. Passo criar conta GPO no AD com script com uma conta de serviço
para coletar informações dos usuários e executar na workstation.

3. Passo desenvolver parte para usuários que vem de fora da rede atualizarem suas assinaturas ao
conectarem.

#>

import-Module ActiveDirectory
$ADUser = Get-ADUser $env:UserName -Properties *
$nome = $ADUser | Select-Object -ExpandProperty Name
$telefone = $ADUser | Select-Object -ExpandProperty OfficePhone
$mobile = $ADUser | Select-Object -ExpandProperty mobile
$email = $ADUser | Select-Object -ExpandProperty EmailAddress




$html = @"

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <meta http-equiv="content-type"
 content="text/html; charset=ISO-8859-1">
  <title>Assinatura</title>
</head>
<body>
<table style="text-align: left; width: 410px; height: 120px;" border="0"
 cellspacing="0">
  <tbody>
    <tr>
      <td style="height: 120px; width: 165px; vertical-align: top;"><a
 href="http://www.website.com.br"><img
 src="C:\FOLDER_SHARED\assinatura\name_image.jpg"
 style="border: 0px solid ; width: 160px; height: 120px;" alt=""></a> </td>
      <td style="vertical-align: top;" cellpadding="5"> $nome <span
 style="font-weight: bold; font-family: Verdana; font-size: 12px;"></span>
      <table style="text-align: left; width: 100%; height: 48px;"
 border="0" cellpadding="0" cellspacing="0">
        <tbody>
          <tr>
            <td style="vertical-align: middle;"><span
 style="font-weight: bold; font-family: Verdana; font-size: 12px; color: rgb(0, 0, 0);">$nome <br>
            </span><span><img
 src="file:///C:\Program Files\Common Files\microsoft shared\Stationery\barra_vermelha.gif"
 style="border: medium none ; width: 235px; height: 5px;" alt=""></span><br>
            <span
 style="font-weight: normal; font-family: Verdana; font-size: 12px; color: rgb(0, 0, 0);">Tecnologia da Informação</span>
            </td>
          </tr>
        </tbody>
      </table>
      <span
 style="font-weight: normal; font-family: Verdana; font-size: 10px; line-height: 15px; color: rgb(0, 0, 0);">
Tel: $telefone<br>
Cel: $mobile<br>

      <a href="mailto:$email"
 style="text-decoration: none; color: rgb(0, 0, 0);">$email</a><br>
      <a href="http://www.domain.com.br"
 style="text-decoration: none; color: rgb(0, 0, 0);">www.domain.com.br</a><br>
      
  </tbody>
</table>
<p
 style="font-family: Verdana; font-size: 8px; font-weight: bold; color: rgb(0, 153, 0);">Antes
de imprimir, pense em sua
responsabilidade
e compromisso com o
MEIO AMBIENTE!</p>
</body>
</html>
"@


# Aqui ele cospe um html no diretório desejado:
Write-Output $html >> C:\FOLDER_SHARED\signature\default_ass.html