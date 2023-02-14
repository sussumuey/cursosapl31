Ambiente de curso para o SAPL 3.1 a ser usado nas oficinas Interlegis

Procedimentos para zerar o ambiente (executar todos os passos como root):

1. git pull - Atualiza scripts e arquivos de docker-compose
2. Caso haja mudança de release, atualizar o script newversion.sh para substituir a release antiga para a nova e executá-lo. Neste caso, atualize também o repositório com git push.
3. Execute o script zeratudo.sh. A execução completa pode levar de 20 a 30 minutos. Ao final, o ambiente deve estar no ar. Este script gera um backup da base anterior em /var/backups/cursosapl.backup.tar.gz gerado a partir da pasta /var/lib/docker/volumes. 
4. Teste.

Resolução de problemas:

Se os SAPLs estiverem apresentando erro 404, será preciso restartá-los. Para isso, entre no diretório do SAPL com problema e digite os seguintes comandos: 
    docker-compose down 
    docker-compose up -d 
    
Se o restart acima não resolveu o problema ou se há vários ou todos os sistemas fora, será melhor restartar todos os serviços. Para isso há dois scripts a serem executados: 
    paracursos.sh   
    sobecursos.sh   

Há 8 VMs de curso para o SAPL, hospedando os seguintes ambientes:

    cursosapl31a: 172.31.20.25
        https://cursosapl01.interlegis.leg.br
        https://cursosapl02.interlegis.leg.br
        https://cursosapl03.interlegis.leg.br
        https://cursosapl04.interlegis.leg.br
        https://cursosapl05.interlegis.leg.br
        https://cursosapl06.interlegis.leg.br
        https://cursosapl07.interlegis.leg.br
        https://cursosapl08.interlegis.leg.br
        https://cursosapl09.interlegis.leg.br
        https://cursosapl10.interlegis.leg.br        
    cursosapl31b: 172.31.20.27
        https://cursosapl11.interlegis.leg.br
        https://cursosapl12.interlegis.leg.br
        https://cursosapl13.interlegis.leg.br
        https://cursosapl14.interlegis.leg.br
        https://cursosapl15.interlegis.leg.br
        https://cursosapl16.interlegis.leg.br
        https://cursosapl17.interlegis.leg.br
        https://cursosapl18.interlegis.leg.br
        https://cursosapl19.interlegis.leg.br
        https://cursosapl20.interlegis.leg.br
    cursosapl31c: 172.31.20.28
        https://cursosapl21.interlegis.leg.br
        https://cursosapl22.interlegis.leg.br
        https://cursosapl23.interlegis.leg.br
        https://cursosapl24.interlegis.leg.br
        https://cursosapl25.interlegis.leg.br
        https://cursosapl26.interlegis.leg.br
        https://cursosapl27.interlegis.leg.br
        https://cursosapl28.interlegis.leg.br
        https://cursosapl29.interlegis.leg.br
        https://cursosapl30.interlegis.leg.br
    cursosapl31d: 172.31.20.20
        https://cursosapl31.interlegis.leg.br
        https://cursosapl32.interlegis.leg.br
        https://cursosapl33.interlegis.leg.br
        https://cursosapl34.interlegis.leg.br
        https://cursosapl35.interlegis.leg.br
        https://cursosapl36.interlegis.leg.br
        https://cursosapl37.interlegis.leg.br
        https://cursosapl38.interlegis.leg.br
        https://cursosapl39.interlegis.leg.br
        https://cursosapl40.interlegis.leg.br
    cursosapl31g: 172.31.21.40
        https://cursosapl41.interlegis.leg.br
        https://cursosapl42.interlegis.leg.br
        https://cursosapl43.interlegis.leg.br
        https://cursosapl44.interlegis.leg.br
        https://cursosapl45.interlegis.leg.br
        https://cursosapl46.interlegis.leg.br
        https://cursosapl47.interlegis.leg.br
        https://cursosapl48.interlegis.leg.br
        https://cursosapl49.interlegis.leg.br
        https://cursosapl50.interlegis.leg.br
    cursosapl31h: 172.31.20.17
        https://cursosapl51.interlegis.leg.br
        https://cursosapl52.interlegis.leg.br
        https://cursosapl53.interlegis.leg.br
        https://cursosapl54.interlegis.leg.br
        https://cursosapl55.interlegis.leg.br
        https://cursosapl56.interlegis.leg.br
        https://cursosapl57.interlegis.leg.br
        https://cursosapl58.interlegis.leg.br
        https://cursosapl59.interlegis.leg.br
        https://cursosapl60.interlegis.leg.br
    cursosapl31i: 172.31.21.33
        https://cursosapl61.interlegis.leg.br
        https://cursosapl62.interlegis.leg.br
        https://cursosapl63.interlegis.leg.br
        https://cursosapl64.interlegis.leg.br
        https://cursosapl65.interlegis.leg.br
        https://cursosapl66.interlegis.leg.br
        https://cursosapl67.interlegis.leg.br
        https://cursosapl68.interlegis.leg.br
        https://cursosapl69.interlegis.leg.br
        https://cursosapl70.interlegis.leg.br
    cursosapl31j: 172.31.20.13
        https://cursosapl71.interlegis.leg.br
        https://cursosapl72.interlegis.leg.br
        https://cursosapl73.interlegis.leg.br
        https://cursosapl74.interlegis.leg.br
        https://cursosapl75.interlegis.leg.br
        https://cursosapl76.interlegis.leg.br
        https://cursosapl77.interlegis.leg.br
        https://cursosapl78.interlegis.leg.br
        https://cursosapl79.interlegis.leg.br
        https://cursosapl80.interlegis.leg.br
