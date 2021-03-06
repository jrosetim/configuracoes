#### Instalar o git
> sudo apt install git

#### ubuntu
> sudo apt-get install xclip
 

> git config --global user.email "jrosetim@gmail.com"  
> git config --global user.name "Julio Cesar Rosetim"

-----------------------------------------------------------------------------------------------------------------------------------

depois de instalado o git no pc, seguimos as proximas etapas para configurar a conta
1- Precisamos gerar uma chave SSH que seu computador vai usar pra se autorizar com o Github.  
Digite o seguinte comando no Git Bash:  

> ssh-keygen -t rsa -b 4096 -C "jrosetim@gmail.com" 

O resultado será:

> Generating public/private rsa key pair.  
> Enter file in which to save the key (/Users/you/.ssh/id_rsa): [Press enter]  

caso seja digitado uma senha, ela será pedida sempre que fizer um pull ou push

Em seguida, você verá uma mensagem dizendo que deu tudo certo:  

```
> Your identification has been saved in /Users/you/.ssh/id_rsa.  
> # Your public key has been saved in /Users/you/.ssh/id_rsa.pub.  
> # The key fingerprint is:  
> # 01:0f:f4:3b:ca:85:d6:17:a1:7d:f0:68:9d:f0:a2:db seuemail@dominio.com  
```

2- Agora, precisamos adicionar a chave que criamos ao ssh-agent. Primeiro, vamos ativa-lo:

ssh-agent -s  

Em seguida, vamos adicionar a chave que geramos ao ssh-agent:

ssh-add ~/.ssh/id_rsa  

3- Agora, vamos associar a chave que geramos à nossa conta do Github.
Para copiar a chave do bash, digite o seguinte comando:

windows
    clip < ~/.ssh/id_rsa.pub  
Linux
    xclip -selection clipboard ~/.ssh/id_rsa.pub  
    ou
    cat ~/.ssh/id_rsa.pub

Abra o Github no navegador, faça o login e selecione a opção settings em seu menu:  
No menu lateral esquerdo, escolha a opção SSH Keys e depois clique no botão Add SSH key:  
Em title, coloque o nome que você quiser dar pra essa chave. Você pode colocar o nome que quiser, não faz diferença.  
Em key, cole a chave que você copiou do terminal com ctrl-v. Se não funcionar, volte uns passos acima e copie novamente.  
Clique em Add Key

Digite o seguinte no Git Bash:

ssh -T git@github.com  
O resultado deve ser:  

```
> The authenticity of host 'github.com (207.97.227.239)' can't be established.  
> # RSA key fingerprint is 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48.  
> # Are you sure you want to continue connecting (yes/no)?  
```
Digite yes e aperte enter.

Hi username! You've successfully authenticated, but GitHub does not provide shell access. 

-----------------------------------------------------------------------------------------------------------------------------------
#### criar um repositorio fazio no git.

> copiar o nome ex: git@github.com:jrosetim/cursojs.git

ir na pasta onde vai criar o projeto e executar o comando  
git clone git@github.com:jrosetim/cursojs.git  

#### depois de fazer as alterações

git add .  
git commit -m "comentario"  
git push -u origin master  

-----------------------------------------------------------------------------------------------------------------------------------
#### Adicionando Alterações em um repositorio depois de ja ter começado o projeto e ainda não ter clonado o projeto

> executar o comando na pasta onde esta os fontes  
> git init  

> git remote add origin git@github.com:jrosetim/cursojs.git  

> git add .  
> git commit -m "comentario"  
> git push -u origin master  
-----------------------------------------------------------------------------------------------------------------------------------
#### Alterar endereço remoto do repositório  

> git remote set-url origin https://github.com/USERNAME/REPOSITORY.git  


--------------------------------Resolvendo conflito via terminal-----------------------------------------------------

#### Tentar usar o seguinte comando

**git mergetool**

caso não funcione tentar a solução abaixo

1. Abra Terminal.  
2. Navegue até o repositório Git local que tem o conflito de merge.  

    cd REPOSITORY-NAME
    

3. Gere uma lista dos arquivos afetados pelo conflito de merge. Neste exemplo, o arquivo *styleguide.md* tem um conflito de merge.

    ```
    $ git status  
    > # No branch branch-b  
    > # Você desfez o merge de paths.  
    > #   (resolver conflitos e executar "git commit")  
    > #  
    > # Desfazer merge de paths:  
    > #   (use "git add ..." para marcar resoluções)  
    > #  
    > # ambos modificados:      styleguide.md  
    > #  
    > nenhuma alteração adicionada ao commit (use "git add" e/ou "git commit -a")  
    ```

4. Abra o editor de texto de sua preferência, como o [Atom](https://atom.io/), e navegue até o arquivo que tem conflitos de merge.
5. Para ver o começo do conflito de merge no arquivo, pesquise o marcador de conflito \`<<<<<<<\` no arquivo. Quando abrir o arquivo no editor de texto, você verá as alterações do branch HEAD ou base após a linha \`<<<<<<< HEAD\`. Em seguida, você verá \`=======\`, que divide suas alterações das alterações no outro branch, seguido por \`>>>>>>> BRANCH-NAME\`. Neste exemplo, uma pessoa escreveu "open an issue" (abrir um problema) no branch base ou HEAD e outra pessoa escreveu "ask your question in IRC" (faça sua pergunta no IRC) no branch de comparação ou \`branch-a\`.  

```
If you have questions, please  
<<<<<<< HEAD  
open an issue  
=======  
ask your question in IRC.  
>>>>>>> branch-a   
```   

6. Decida se você deseja manter apenas as alterações do seu branch, manter apenas as alterações do outro branch, ou fazer uma nova alteração, que pode incorporar alterações de ambos os branches. Exclua os marcadores de conflito \`<<<<<<<\`, \`=============\` \`>>>>>>>\` e faça as alterações desejadas no merge final. Neste exemplo, as duas alterações são incorporadas ao merge final:  

    If you have questions, please open an issue or ask in our IRC channel if it's more urgent.  
    
7. Adicione ou faça stage das alterações.  

    $ git add .  
    

8. Faça o commit das suas alterações com um comentário.  

    $ git commit -m "Resolved merge conflict by incorporating both suggestions."  
    

-------------------------------------------------------------------------------------------------------------------------------    
#### Adicionar Alias  
> git config alias.coam "commit -am" -> adidiona um alias com o nome de coam

para utilizar é só digitar git coam "comentario aqui"  
será adicionar e feito o comentario.
