

<?php

define('DB_HOST', 'localhost');
define('DB_NAME', 'ecomerce');
define('DB_USER', 'root');
define('DB_PASS', '');

class Class_Conexao{

	private static $instance;

	public static function getInstance(){

		if(!isset(self::$instance)){

			try {
				self::$instance = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS);
				self::$instance->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				self::$instance->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
				

			} catch (PDOException $e) {
				echo $e->getMessage();
			}

		}

		return self::$instance;
	}
 	
	public static function prepare($sql){
		return self::getInstance()->prepare($sql);
	}

}





class Class_Cliente{
	
	protected $table = 'cliente';
	

	public function listar(){
		$sql  = "SELECT * FROM $this->table LIMIT 3";
		$stmt = Class_Conexao::prepare($sql);
		$stmt->execute();
		return $stmt->fetchAll();
    }

    public function listarQtd(){
		$sql  = "SELECT id FROM usuarios";
		$stmt = Class_Conexao::prepare($sql);
		$stmt->execute();
		$result = $stmt->fetchAll();
		return count($result);

    }

	
	

}








class Class_Venda{
	
	protected $table = 'venda';
	

	

    public function listar(){
		$sql  = "SELECT DISTINCT * FROM $this->table WHERE qtd >=6 GROUP BY produto LIMIT 5";
		$stmt = Class_Conexao::prepare($sql);
		$stmt->execute();
		return $stmt->fetchAll();
    }

     public function listarP(){
		$sql  = "SELECT DISTINCT * FROM $this->table GROUP BY produto DESC";
		$stmt = Class_Conexao::prepare($sql);
		$stmt->execute();
		return $stmt->fetchAll();
    }


    public function listarQtd(){
		$sql  = "SELECT SUM(preco) FROM $this->table";
		$stmt = Class_Conexao::prepare($sql);
		$stmt->execute();
		
		return $stmt->fetchColumn();

    }


	public function listarQtdV(){
		$sql  = "SELECT SUM(preco) FROM $this->table";
		$stmt = Class_Conexao::prepare($sql);
		$stmt->execute();
		
		return $stmt->fetchColumn();

    }

    public function listarQtdP(){
		$sql  = "SELECT idVenda FROM $this->table";
		$stmt = Class_Conexao::prepare($sql);
		$stmt->execute();
		$result = $stmt->fetchAll();
		return count($result);

    }
    
   

	
  

}
    
    ?>


