require 'yaml'

class BancoDeArquivos
	def salva(livro)
		File.open("livro.yml", "a") do |arquivo|
			arquivo.puts YAML.dump(livro)
			arquivo.puts ""
		end
	end
end