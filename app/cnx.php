<?php

 if(!isset($_POST)){
    header("Location: ../index.php"); exit;
}

        class conexao{

            public function cnxb(){
                 return mysqli_connect("127.0.0.1","root","","ecomerce");
            }
        }
        $conect = new conexao;
        $cnx = $conect->cnxb();


?>
