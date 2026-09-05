$ErrorActionPreference = "Continue"

function Push-Dir($path) {
    if (Test-Path $path) {
        Write-Host "Staging $path"
        git add $path
        git commit -m "Add $path"
        Write-Host "Pushing $path"
        git push
    }
}

Push-Dir "Content/EnhancedTPTemplateB"

Push-Dir "Content/Ft_Gothic_castle/BluePrints"
Push-Dir "Content/Ft_Gothic_castle/Map"
Push-Dir "Content/Ft_Gothic_castle/Materials"
Push-Dir "Content/Ft_Gothic_castle/Meshes"
Push-Dir "Content/Ft_Gothic_castle/Particles"
Push-Dir "Content/Ft_Gothic_castle/Textures"

Push-Dir "Content/ParagonGideon/Audio"
Push-Dir "Content/ParagonGideon/FX"

Push-Dir "Content/ParagonGideon/Characters/Global/Materials"
Push-Dir "Content/ParagonGideon/Characters/Global/Meshes"
Push-Dir "Content/ParagonGideon/Characters/Global/MaterialLayers"
Push-Dir "Content/ParagonGideon/Characters/Global/Feathers"

Push-Dir "Content/ParagonGideon/Characters/Heroes/Gideon/Animations"
Push-Dir "Content/ParagonGideon/Characters/Heroes/Gideon/Materials"
Push-Dir "Content/ParagonGideon/Characters/Heroes/Gideon/Meshes"
Push-Dir "Content/ParagonGideon/Characters/Heroes/Gideon/Textures"
Push-Dir "Content/ParagonGideon/Characters/Heroes/Gideon/Skins"

Push-Dir "Content/ParagonGideon/Characters/Maps"

git add .
git commit -m "Final cleanup"
git push
