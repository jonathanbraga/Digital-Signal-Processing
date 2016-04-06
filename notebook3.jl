
# Aqui iremos implementar o  o cálcula da FFT usando julia
vetorFftJulia=[1:1:4096];
@time fft(vetorFftJulia);

# criando a função myIFFT, proposta para o trabalho
function myifft(x) 
    N=4096
    par=Complex32[1:1:N]; 
    impar=Complex32[1:1:N];
    N=4096    
    for i=1:N 
        if i%2 == 0 
            par[i]=x[i] 
        elseif i%2 == 1 
            impar[i]=x[i]
        end
    end 
    N1=N/2
    for i=1:N1 
        par[i]=par[i]*exp(-1im*2*pi*i/N1) + exp(-1im*pi/N)        
        for j=1:N1 
            impar[j]=par[i]*impar[j]*exp(-1im*2*pi*i/N1) 
        end 
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
    par=Complex32[1:1:N]; 
    impar=Complex32[1:1:N];
    N=4096    
    for i=1:N 
        if i%2 == 0 
            par[i]=x[i] 
        elseif i%2 == 1 
            impar[i]=x[i]
        end
    end 
    N1=N/2
    for i=1:N1 
        par[i]=1/N*par[i]*exp(-1im*2*pi*i/N1) + exp(-1im*pi/N)        
        for j=1:N1 
            impar[j]=1/N*par[i]*impar[j]*exp(-1im*2*pi*i/N1) 
        end 
    end
    
end

N=4096 
vetorIfftMy=Complex32[1:1:N];
@time myifft(vetorIfftMy)
