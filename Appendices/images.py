import os

imagedir="../../OzoneWork/Images/AIRS/"
melb="Melbourne"
mac ="Macquarie"
dav ="Davis"
extension = ".png"

for i in range(0,3):
  site=[melb,mac,dav][i]
  directory =imagedir+site
  files = [file for file in os.listdir(directory) if file.lower().endswith(extension)]
  
  # use the location relative to thesis home folder
  location="../OzoneWork/Images/AIRS/"+site
  print r"\section{"+site+"}"
  for file in files:
    #print r"  \begin{figure}"
    print r"  \includegraphics[width=\textwidth]{"+location+'/'+file+"}" #
    #print r"  \end{figure}"

