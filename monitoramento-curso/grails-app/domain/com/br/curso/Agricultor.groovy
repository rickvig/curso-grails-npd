package com.br.curso

class Agricultor {
	
	String nome
	String agricultorEmail
	Integer cpf
	
	static hasMany = [propriedades: Propriedade]

    static constraints = {
		agricultorEmail email: true
		cpf unique: true
    }
}
