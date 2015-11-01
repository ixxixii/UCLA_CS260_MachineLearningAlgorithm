function [matrix,label] = dataTransform(filename)
    m = textread(filename,'%s','delimiter', ',');
    n = size(m,1);
    c = n/35;
    %%matrix = zeros(c,34);
    %%label = zeros(c,1);
    for j = 1:c
        for i = 1:34
            x = (j-1)*35+i;
            matrixC(j,i) = m(x);
        end
        
        if strcmp(m(j*35),'b')
            label(j,1) = 1;
        else
            label(j,1) = 0;
        end
    end
    
    matrix = str2double(matrixC);

end
