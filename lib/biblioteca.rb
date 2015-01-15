class Biblioteca

	attr_reader :livros

	def initialize
		#@livros = [] Assim inicializava com Array
		@livros = {} #Assim inicializa com Hash
	end

	def adiciona(livro)
		#@livros << livro Assim acionavamos algo ao array

		@livros[livro.categoria] || = []
		@livros[livro.categoria] << livro
	end
end