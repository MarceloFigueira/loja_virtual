# coding: utf-8
class Livro

	attr_accessor :valor
	#com o uso do método attr_accessor temos acesso de leitura e escrita sobre o atributo
	#é como o metodo get e set do Java
	attr_reader :categoria, :autor, :titulo

	def initialize(titulo, autor, isbn = "1", numero_de_paginas, valor, categoria)
		@titulo = titulo
		@autor = autor
		@isbn = isbn
		@numero_de_paginas = numero_de_paginas
		@categoria = categoria
		@valor = valor
	end

	def to_s
		"Autor: #{@autor}, ISBN: #{@isbn}, Páginas: #{@numero_de_paginas}, Categoria: #{@categoria}"
	end

	def eql?(outro_livro)
		@isbn == outro_livro.isbn
	end

	def hash
		@isbn.hash
	end
end