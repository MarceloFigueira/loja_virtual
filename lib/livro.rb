# coding: utf-8
class Livro

	attr_accessor :valor
	#com o uso do método attr_accessor temos acesso de leitura e escrita sobre o atributo
	#é como o metodo get e set do Java

	def initialize(autor, isbn = "1", numero_de_paginas, valor)
		@autor = autor
		@isbn = isbn
		@numero_de_paginas = numero_de_paginas
		@valor = valor
	end

	def to_s
		"Autor: #{@autor}, ISBN: #{@isbn}, Páginas: #{@numero_de_paginas}"
	end
end