%Markov random field
close all
im = img_to_bip('bayes_dirty.png');
y= im;
sz = size(im);
xdim = sz(2);
ydim = sz(1);
sz

count = 0;

wrapN = @(x, N) (1 + mod(x-1, N));
z = 1
h = z * rand(1) - (z/2)
beta = 10*rand(1)
eta = 10*rand(1)
h = -.1
beta = 5
eta = 10
change_flag=1;    


while (change_flag) 
    count = count + 1;
    change_flag=0;    
    for i=1:xdim
        for j=1:ydim
            no_flip_energy = energy(   im(j,i ), im( j, wrapN(i+1, xdim)), im( j, wrapN(i-1, xdim)), im( wrapN(j+1, ydim), i ), im( wrapN(j-1, ydim), i ), y(j,i), h, beta, eta );
            flip_energy = energy(-1*im(j,i), im( j, wrapN(i+1, xdim)), im( j, wrapN(i-1, xdim)), im( wrapN(j+1, ydim), i ), im( wrapN(j-1, ydim), i ), y(j,i), h, beta, eta );
            
            if flip_energy < no_flip_energy
                im(j, i) = -1 * im(j,i);
                change_flag = 1;
            end
        end
    end
    count
    
end