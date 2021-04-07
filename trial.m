i=1
while (true)
  disp(i);
  i+=1; 
  if(i==5 || i==10)
    continue;
  endif  
  disp('Lets break');
    
  if(i==10)
    break;  
  endif;
   
endwhile
