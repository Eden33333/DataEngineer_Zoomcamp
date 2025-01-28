# DataEngineer_Zoomcamp
You will mount a volumn in docker which will locate in you local device. Once you import data into the folder, the folder will be too large to push into git
1. You need to create `.gitignore` in the root directory of your Git repository

``` bash
touch .gitignore
```
2. Edit .gitignore file using
`/data/`
to ignore all the files in "data" directory, 
2. Check if this works
  ``` bash
git status --ignored
```


