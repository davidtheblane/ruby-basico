def capitalize_name (lambdaName)
  lambdaName.call "Davi"
  lambdaName.call "Roberto"
end

lambdaName = -> (name){puts name.capitalize }

capitalize_name(lambdaName)

