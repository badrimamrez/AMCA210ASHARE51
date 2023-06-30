function b = brk (n) ;
    adad = n ;
    i = 1 ;
    while adad~=0
        b(1,i) = mod(adad,10) ;
        adad = (adad - b(1,i))/10 ;
        if b(1,i) == 0
            b(1,i) = 10 ;
        end
        i = i+1 ;
    end
    b = fliplr(b) ;
end