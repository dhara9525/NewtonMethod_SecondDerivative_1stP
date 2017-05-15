% Given function is : (x^2)+(5*x)-6;
learning_rate=0.3;
resultVector=[];
x=2;

for i=1:70
    result=x-((learning_rate*(((2*x)+5))/(2))); 
    resultVector(end+1)=result;
    x=result;
end

figure;
plot(1:70,resultVector);
xlabel('Number of iteration');
ylabel('Result');
title(' Number of iteration V/S Result');
for i=1:69
   diff=resultVector(i)-resultVector(i+1);
   if(diff<0.00001)
       iteration=i;
       finalResult=resultVector(i);
   break;
   end
end
fprintf('Final Result');disp(finalResult);
fprintf('Learning rate is :');disp(learning_rate);
fprintf('Iterations required for convergance :');disp(iteration);



