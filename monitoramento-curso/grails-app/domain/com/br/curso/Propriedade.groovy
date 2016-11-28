package com.br.curso

class Propriedade {
	
	String nome
	Endereco endereco
	
	static belongsTo = Agricultor

    static constraints = {
    }
	
	String toString() {
		"$nome"
	}
}
