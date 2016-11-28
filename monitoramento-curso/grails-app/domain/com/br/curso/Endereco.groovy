package com.br.curso

class Endereco {
	
	String logradouro
	Integer numero
	String bairro
	String cidade
	String estado

    static constraints = {
		logradouro blank:true
		numero()
		bairro nullable: true
		cidade() 
		estado inList: ["Paraná", "São Paulo", "Rio de Janeiro"]
    }
	
	String toString() {
		"$logradouro $numero \n $bairro / $cidade $estado"
	}
}
