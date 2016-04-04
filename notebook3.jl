
# Aqui iremos implementar o  o cálcula da FFT usando julia
vetorFftJulia=[1:1:4096];
@time fft(vetorFftJulia); 


# criando a função myFFT, proposta para o trabalho
function myfft(x) 
    N=4096    
    for i=1:N 
        x[i]= cos(2*pi*i/N)-1im*sin(2*pi*i/N)
        end 
end

N=4096 
vetorFftMy=Complex32[1:1:N];
@time myfft(vetorFftMy)

# Aqui iremos implementar o  o cálcula da FFT usando julia
vetorIfftJulia=[1:1:4096];
@time ifft(vetorIfftJulia); 

# criando a função myIFFT, proposta para o trabalho
function myifft(x) 
    N=4096    
    for i=1:N 
        x[i]=1/N*cos(2*pi*i/N)-1im*sin(2*pi*i/N)
        end 
end

N=4096 
vetorIfftMy=Complex32[1:1:N];
@time myifft(vetorIfftMy)
