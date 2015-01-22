class Biblioteca

	attr_reader :livros

	def initialize
		#@livros = [] Assim inicializava com Array
		@livros = {} #Assim inicializa com Hash
		@banco_de_arquivos = BancoDeArquivos.new
		#A linha acima inicializa banco de arquivos
	end

	def adiciona(livro)
		#@livros << livro Assim acionavamos algo ao array
		salva livro do
			@livros[livro.categoria] ||= []
			@livros[livro.categoria] << livro
		end
		
	end

	def livros
		@livros.values.flatten
	end

	def livros_por_categoria(categoria)
		@livros[categoria].each do |livro|
			yield livro if block_given?
		end
	end

	private

	def salva(livro)
		@banco_de_arquivos.salva livro
		yield
	end
end