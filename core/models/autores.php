<?php
class Autores extends Validator
{
	//Declaración de propiedades
	private $id = null;
	private $nombres = null;
    private $apellidos = null;
    private $pais = null;

	//Métodos para sobrecarga de propiedades
	public function setId($value)
	{
		if ($this->validateId($value)) {
			$this->id = $value;
			return true;
		} else {
			return false;
		}
	}

	public function getId()
	{
		return $this->id;
	}

	public function setNombres($value)
	{
		if ($this->validateAlphabetic($value, 1, 50)) {
			$this->nombres = $value;
			return true;
		} else {
			return false;
		}
	}

	public function getNombres()
	{
		return $this->nombres;
	}

	public function setApellidos($value)
	{
		if ($this->validateAlphabetic($value, 1, 50)) {
			$this->apellidos = $value;
			return true;
		} else {
			return false;
		}
	}

	public function getApellidos()
	{
		return $this->apellidos;
    }
    
    public function setPais($value)
	{
		if ($this->validateAlphabetic($value, 1, 50)) {
			$this->pais = $value;
			return true;
		} else {
			return false;
		}
	}

	public function getPais()
	{
		return $this->pais;
	}


	//Metodos para manejar el CRUD
	public function readAutores()
	{
		$sql = 'SELECT idAutor, nombre, apellido, pais FROM autor ORDER BY idAutor';
		$params = array(null);
		return Database::getRows($sql, $params);
	}

	public function createAutor()
	{
		$sql = 'INSERT INTO autor(nombre, apellido, pais) VALUES(?, ?, ?)';
		$params = array($this->nombres, $this->apellidos,$this->pais);
		return Database::executeRow($sql, $params);
	}

}
?>