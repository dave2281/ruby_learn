require_relative 'importer'
require_relative 'printer'

importer = Importer::Engine.new
printer = Printer::Engine.new

importer.start
printer.start