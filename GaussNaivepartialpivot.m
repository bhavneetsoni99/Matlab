function x = GaussNaivepartialpivot(A,b)
%GaussNaive: naive Gauss elimination
% x = GaussNaive(A,b): Gauss elimination without pivoting.
% input: 
% A = coefficient matrix
% b = right hand side vector
% output:
% x = solution vector

[m,n] = size(A);
if m~=n
    error('Matrix A must be square');
end

nb = n+1;
Aug = [A b];
ppAug = sortrows (Aug, abs(-1))

%% forward elimination
for k = 1:n-1
    for i = k+1:n   % n-1 iteration
        factor = ppAug(i,k)/ppAug(k,k);
        ppAug(i, k:nb) = ppAug(i, k:nb)-factor*ppAug(k,k:nb);
        
        % for k=1
            % inner loop will be from i=2 to n ...> number of iteration n-1
                %for every one of the iteration
                    % division -- 1
                    %muliplication 2 to nb ...> n+1 -1
                    % --> muliplication + division: n+1
                    % ---> subtraction: nb-k=n+1-1 =n
            %inner loop: (n-1)(n+1) multiiplication/division
                        % (n-1)n   subtraction
                        
        % iteration k =k
            % inner loop i=k+1 to n > number of iterations n-k
                % multiplication  k+1 to nb=n+1  : n+1-k=n-k+1
                %   division 1
                % subtract: (n+1-k)
            %inner loop: (n-k)(n-k+1+1) multiiplication/division
                        % (n-k)(n+1-k)   subtraction
               
       % total -- summarize k=1 to n-1
        %Sigma (n-k)(n-k+2)
        %Sigma (n-k)(n+1-k), k=1 to n-1  ---subtraction
    end
end

%% back substitution
x = zeros(n,1);
x(n)= ppAug(n,nb)/ppAug(n,n);  % one division
for i = n-1: -1: 1
    x(i) = (ppAug(i,nb)-ppAug(i,i+1:n)*x(i+1:n))/ppAug(i,i);
    % multiplicaiton: i+1 to n: n-(i+1)+1 = n-i
    %addition: n-i-1
    %subtraction: 1
    %division:1
    
    
 
end
