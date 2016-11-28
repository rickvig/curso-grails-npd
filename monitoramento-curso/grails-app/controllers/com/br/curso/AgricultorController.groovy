package com.br.curso



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AgricultorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Agricultor.list(params), model:[agricultorInstanceCount: Agricultor.count()]
    }

    def show(Agricultor agricultorInstance) {
		println "no show: " + agricultorInstance
		
		if (agricultorInstance == null) {
			flash.message = message(code: 'Agricultor.naoEncontrado')
			
			redirect action: "index", method: "GET"
			return
		}
			
        respond agricultorInstance
    }

    def create() {
		println "na action create: " + params
        respond new Agricultor(params)
    }

    @Transactional
    def save(Agricultor agricultorInstance) {
		
		println 'CHEGOU NO SAVE..'
		
        if (agricultorInstance == null) {
            notFound()
            return
        }

        if (agricultorInstance.hasErrors()) {
            respond agricultorInstance.errors, view:'create'
            return
        }

        agricultorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'agricultor.label', default: 'Agricultor'), agricultorInstance.id])
                redirect agricultorInstance
            }
            '*' { respond agricultorInstance, [status: CREATED] }
        }
    }

    def edit(Agricultor agricultorInstance) {
        respond agricultorInstance
    }

    @Transactional
    def update(Agricultor agricultorInstance) {
        if (agricultorInstance == null) {
            notFound()
            return
        }

        if (agricultorInstance.hasErrors()) {
            respond agricultorInstance.errors, view:'edit'
            return
        }

        agricultorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Agricultor.label', default: 'Agricultor'), agricultorInstance.id])
                redirect agricultorInstance
            }
            '*'{ respond agricultorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Agricultor agricultorInstance) {

        if (agricultorInstance == null) {
            notFound()
            return
        }

        agricultorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Agricultor.label', default: 'Agricultor'), agricultorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'agricultor.label', default: 'Agricultor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
