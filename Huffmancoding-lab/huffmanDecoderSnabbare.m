function [ diffVector ] = huffmanDecoderSnabbare( binaryVector, CodeBook) %Add CodeBook as input argument
%%
% This function decodes a single binary vector into a black n white image 
% Input: a binary vector formed by concatenated huffman codewords
%           representing a Y frame
%          codebook, generated by huffmanCodebook

% Output: decoded image, Black and White, type uint8
% You can add the input/output arguments if needed.
%%
binaryVector=(bin2dec(binaryVector))';  %Convert from bin to double
diffVector=[];                         %Empty vector (output)
tempvec=[];
k=size(CodeBook,1);

for i=1:numel(binaryVector)
    found=0;
    tempvec=[tempvec binaryVector(i)];   %Add value from binvec to tempvec
    n=1;                 % start from first position in codebok
    while found==0 && n<=k
        if isequal(CodeBook(n,2),tempvec)
            diffVector=[diffVector CodeBook(n,1)];
            found=1
            tempVec=[]          % Empty tempvec
            break
        end
        n=n+1;      % Move to next position in codebook
    end
end
            
        
    
