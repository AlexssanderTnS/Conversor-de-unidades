#Mais um projeto com o objetivo de estudos de Julia
#Criando um conversor de unidades - Celsius - KM - Dolar 

println("Bem-vindo ao conversor de unidades!")

function menu()
    println("\nEscolha o tipo de conversão:")
    println("1. Celsius para Fahrenheit")
    println("2. Metros para Quilômetros")
    println("3. Real para Dólar (cotação fixa)")
    println("4. Sair")
    print("Digite sua opção: ")
end

loop = true
while loop
    menu()
    opcao =readline()
    if opcao == "1"
        print(Digite a temperatura em Celsius: ")
        c = parse(Float64, readline())
        f = (c * 9/5) + 32
        println("Temperatura em Fahrenheit: $f °F" )
    elseif opcao == "2"
        print("Digite a distância em metros: ")
        m = parse(Float64, readline())
        km = m / 1000
        println("Resultado: $km km)
    elseif opcao == "3"
        print("Digite o valor em Reais: ")
        r = parse(Float64, readline())
        cotacao_dolar = 5.54  # Cotação fixa do Dólar
        d = r / cotacao_dolar
        println("Valor em Dólares: $d USD")
    elseif opcao == "4"
        println("Saindo do conversor. Até logo!")
        loop = false
    else
        println("Opção inválida. Tente novamente.")
    end
end

println("Obrigado por usar o conversor de unidades!")
# conversor.jl
# Fim do código
