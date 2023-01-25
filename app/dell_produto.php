<?php
    
    include_once('cnx.php');
    include_once('gravar_verificacao.php');
     if(!isset($_POST)){
        header("Location: ../admin/login.php"); exit;
    }

    class dell_p{
                      
        public function up(int $id, int $status){

                $categoria = $_POST['categoria'];
                $conect = new conexao;
                $cnx = $conect->cnxb();
                
                //buscando o id da categoria
                $cmd = "select id from categoria where categoria='$categoria'";

                $resultados = mysqli_query($cnx,$cmd);
                $Catg = mysqli_fetch_assoc($resultados);
                
                $id = $_POST['id'];
                
              
                    //inserindo dados na base de dados
                   $consulta = mysqli_query($cnx,"update produtos set status='$status', where id=$id");
              
                    header("Location: ../admin/index.php?acao=Dellsucess"); 
               // }
                      
            }            

        }
    

    $produtoUP = new Dell_p;
    $produtoUP->up($_POST['produto'], $_POST['descricao'], $_POST['quantidade'], 
                            $_POST['estado'], $_POST['idapp'], $_POST['preco']);
