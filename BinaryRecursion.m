function i = BinaryRecursion(X,y,bottom,top)
    if(top <= bottom)
        i = top;
    else
        middle = floor((top + bottom) / 2);
        if(y > X(middle))
            i = BinaryRecursion(X,y,middle + 1,top);
        else
            i = BinaryRecursion(X,y,bottom,middle);
        end
    end

end