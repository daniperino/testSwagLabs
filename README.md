# Teste automatizado para efetuar compras no e-commerce Swag Labs

### Para conseguir rodar o teste siga o passo a passo
    1. Baixe a IDE [Visual Studio Code](https://code.visualstudio.com/download)
    
    2. Dentro do Visual Studio Code, instale as seguintes extensões:
        -Robot Framework Language Server
        -Robot Beautifier
    
    3. Instale o python seguindo o passo a passo deste [link](https://dicasdepython.com.br/como-instalar-o-python-no-windows-10/#:~:text=No%20prompt%20de%20comando%20digite,j%C3%A1%20pode%20executar%20comandos%20python.)
    
    4. Baixe o [chrome driver](https://chromedriver.chromium.org/downloads) seguindo este passo a passo [link](https://www.youtube.com/watch?v=Ot10qzrb13c)
    
    4. Abra o cmd e execute:
    pip install robotframework
    pip instalar robotframework-selenium2library==1.8.0
    
    5. Baixe o projeto do gitHub
    
    6. No Visual Studio Code clique em **Teste** no menu lateral com o ícone de uma ampulheta e clique na setinha ao lado o teste **test.robot. Os testes serão executados por inteiro 
    
    ### **OU**
    
    7. Execute os testes individuais abrindo a pasta **tests** e o arquivo **test.robot**, clique na setinha verde ao lado de cada título do teste.
    
    8. Os logs, prints de tela ficam na pasta **results**
    
    9. Após a execução de cada teste pode clicar no terminal, passar o mouse no link do log e clicar, irá abrir o **Test log e o Test Report** que mostrará detalhado cada passo do teste executado, se passou, se falhou, motivo da falha, print da tela.