# update_signature_collaborators
Essa script tem relevancia para empresas, pois auxilia na alteração e implementação da assinatura de e-mail em todas estações(workstations) de modo automatizado.

Neste script coletamos as informações do usuário logado na workstation e adicionamos no html as suas respectivas informações que estejam armazenadas no AD.

0. Pré requisitos básicos para uma boa manutenção:
  0.1. File Server Windows ou Linux para alocar o template base.
  
1. Crie um template da assinatura de email da sua empresa ou utilize o nosso template como base.

2. Passo criar conta GPO no AD com script com uma conta de serviço
para coletar informações dos usuários e executar na workstation.
3. Passo desenvolver parte para usuários que vem de fora da rede atualizarem suas assinaturas ao
conectarem.
4. Configurar de forma automatizada para inserir assinatura automaticamente no aplicativo de email do colaborador, como: Outlook, Thuderbird.

Relevancia:
Em alguns casos é criado no próprio fileserver todas assinaturas e é editado nome por nome, email por email, telefone pessoal e ramal por exemplo de cada colaborador, através desse script é possível realizar essa atividade de forma automatizada e ao mesmo tempo distribuir para todas workstations.

Tempo médio para realizar a atividade sem script: 2h
Com AD ou repositório com dados dos usuários via script: 5min

Powershell + HTML + CSS

Autores: Mateus e Wallace
