require 'find'

def check_keywords(dirname)
  # Lesen aller Dateien in dem Verzeichni
  Dir.foreach(dirname) do |f|
    # voll qualifizierter Dateiname
    filename = "#{dirname}/#{f}"
    
    # Wenn es kein Verzeichnis ist
    unless File.directory?(filename)
        file = File.open(filename, 'r')
        ok = false
        
        # Zeile für Zeile lesen
        file.each_line do |line|
          if !ok 
            # Ggf. Encoding korrigieren, ansonsten kommt es zu dem Fehler:
            # invalid byte sequence in UTF-8 (ArgumentError)
            if ! line.valid_encoding?
              line = line.encode("UTF-16be", :invalid=>:replace, :replace=>"?").encode('UTF-8')
            end
          
            # Prüfen auf $Header ... $ oder $Revision ... $
            if (line[/\$Header.+\$/i]) or (line[/\$Revision.+\$/i]) 
              ok = true
            end
          end
        end # inner do
        if !ok
          puts filename unless filename[/.*jpg\b/]
        end
    end #if
  end
end

# Wechseln in der angegebene Verzeichnis
Dir.chdir(ARGV[0])  
current_dir = Dir.pwd

# Alle Verzeichnisse rekursiv lesen
Find.find(".") do |f|
  dirname = "#{current_dir}/#{f}"
  
  # Wenn es ein Verzeichnis ist, alle Dateien innerhalb prüfen
  if File.directory?(dirname)
    check_keywords(dirname)
  end #if
  
end #loop

