module ProgramasHelper
    def setup_programa(programa)
        programa.instalacion ||= Instalacion.new
        programa
    end
end
