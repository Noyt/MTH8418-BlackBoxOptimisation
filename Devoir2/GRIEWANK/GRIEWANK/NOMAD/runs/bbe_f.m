%            b     blue          .     point              -     solid
%            g     green         o     circle             :     dotted
%            r     red           x     x-mark             -.    dashdot 
%            c     cyan          +     plus               --    dashed   
%            m     magenta       *     star             (none)  no line
%            y     yellow        s     square
%            k     black         d     diamond
%            w     white         v     triangle (down)
%                                ^     triangle (up)
%                                <     triangle (left)
%                                >     triangle (right)
%                                p     pentagram
%                                h     hexagram
%         


clear all;


%------------------------------------%
fid = fopen ( 'run_x0.txt','r');
X=fscanf(fid,'%f%f');
fclose(fid);
X=reshape(X,2,length(X)/2);
X=X';
for i = 1:size(X,1)-1
     Y0(2*i-1,1)=X(i,1);
     Y0(2*i-1,2)=X(i,2);
     Y0(2*i,1)=X(i+1,1);
     Y0(2*i,2)=X(i,2);
end
 Y0(2*size(X,1)-1,1)=X(size(X,1),1);
 Y0(2*size(X,1)-1,2)=X(size(X,1),2);
%------------------------------------%
fid = fopen ( 'run_x1.txt','r');
X=fscanf(fid,'%f%f');
fclose(fid);
X=reshape(X,2,length(X)/2);
X=X';
for i = 1:size(X,1)-1
     Y1(2*i-1,1)=X(i,1);
     Y1(2*i-1,2)=X(i,2);
     Y1(2*i,1)=X(i+1,1);
     Y1(2*i,2)=X(i,2);
end
 Y1(2*size(X,1)-1,1)=X(size(X,1),1);
 Y1(2*size(X,1)-1,2)=X(size(X,1),2);
%------------------------------------%
fid = fopen ( 'run_x2.txt','r');
X=fscanf(fid,'%f%f');
fclose(fid);
X=reshape(X,2,length(X)/2);
X=X';
for i = 1:size(X,1)-1
     Y2(2*i-1,1)=X(i,1);
     Y2(2*i-1,2)=X(i,2);
     Y2(2*i,1)=X(i+1,1);
     Y2(2*i,2)=X(i,2);
end
 Y2(2*size(X,1)-1,1)=X(size(X,1),1);
 Y2(2*size(X,1)-1,2)=X(size(X,1),2);
%------------------------------------%
fid = fopen ( 'run_x3.txt','r');
X=fscanf(fid,'%f%f');
fclose(fid);
X=reshape(X,2,length(X)/2);
X=X';
for i = 1:size(X,1)-1
     Y3(2*i-1,1)=X(i,1);
     Y3(2*i-1,2)=X(i,2);
     Y3(2*i,1)=X(i+1,1);
     Y3(2*i,2)=X(i,2);
end
 Y3(2*size(X,1)-1,1)=X(size(X,1),1);
 Y3(2*size(X,1)-1,2)=X(size(X,1),2);
%------------------------------------%
fid = fopen ( 'run_x4.txt','r');
X=fscanf(fid,'%f%f');
fclose(fid);
X=reshape(X,2,length(X)/2);
X=X';
for i = 1:size(X,1)-1
     Y4(2*i-1,1)=X(i,1);
     Y4(2*i-1,2)=X(i,2);
     Y4(2*i,1)=X(i+1,1);
     Y4(2*i,2)=X(i,2);
end
 Y4(2*size(X,1)-1,1)=X(size(X,1),1);
 Y4(2*size(X,1)-1,2)=X(size(X,1),2);
%------------------------------------%
fid = fopen ( 'run_x5.txt','r');
X=fscanf(fid,'%f%f');
fclose(fid);
X=reshape(X,2,length(X)/2);
X=X';
for i = 1:size(X,1)-1
     Y5(2*i-1,1)=X(i,1);
     Y5(2*i-1,2)=X(i,2);
     Y5(2*i,1)=X(i+1,1);
     Y5(2*i,2)=X(i,2);
end
 Y5(2*size(X,1)-1,1)=X(size(X,1),1);
 Y5(2*size(X,1)-1,2)=X(size(X,1),2);
%------------------------------------%
fid = fopen ( 'run_x6.txt','r');
X=fscanf(fid,'%f%f');
fclose(fid);
X=reshape(X,2,length(X)/2);
X=X';
for i = 1:size(X,1)-1
     Y6(2*i-1,1)=X(i,1);
     Y6(2*i-1,2)=X(i,2);
     Y6(2*i,1)=X(i+1,1);
     Y6(2*i,2)=X(i,2);
end
 Y6(2*size(X,1)-1,1)=X(size(X,1),1);
 Y6(2*size(X,1)-1,2)=X(size(X,1),2); 
%------------------------------------%
fid = fopen ( 'run_x7.txt','r');
X=fscanf(fid,'%f%f');
fclose(fid);
X=reshape(X,2,length(X)/2);
X=X';
for i = 1:size(X,1)-1
     Y7(2*i-1,1)=X(i,1);
     Y7(2*i-1,2)=X(i,2);
     Y7(2*i,1)=X(i+1,1);
     Y7(2*i,2)=X(i,2);
end
 Y7(2*size(X,1)-1,1)=X(size(X,1),1);
 Y7(2*size(X,1)-1,2)=X(size(X,1),2);
%------------------------------------%
fid = fopen ( 'run_x8.txt','r');
X=fscanf(fid,'%f%f');
fclose(fid);
X=reshape(X,2,length(X)/2);
X=X';
for i = 1:size(X,1)-1
     Y8(2*i-1,1)=X(i,1);
     Y8(2*i-1,2)=X(i,2);
     Y8(2*i,1)=X(i+1,1);
     Y8(2*i,2)=X(i,2);
end
 Y8(2*size(X,1)-1,1)=X(size(X,1),1);
 Y8(2*size(X,1)-1,2)=X(size(X,1),2);
%------------------------------------%
fid = fopen ( 'run_x9.txt','r');
X=fscanf(fid,'%f%f');
fclose(fid);
X=reshape(X,2,length(X)/2);
X=X';
for i = 1:size(X,1)-1
     Y9(2*i-1,1)=X(i,1);
     Y9(2*i-1,2)=X(i,2);
     Y9(2*i,1)=X(i+1,1);
     Y9(2*i,2)=X(i,2);
end
 Y9(2*size(X,1)-1,1)=X(size(X,1),1);
 Y9(2*size(X,1)-1,2)=X(size(X,1),2);
 
hold on;  
grid on;



plot( Y0(:,1) , Y0(:,2) , 'k--' );
plot( Y1(:,1) , Y1(:,2) , 'g--' );
plot( Y2(:,1) , Y2(:,2) , 'r--' );
plot( Y3(:,1) , Y3(:,2) , 'c--' );
plot( Y4(:,1) , Y4(:,2) , 'm--' );
plot( Y5(:,1) , Y5(:,2) , 'y--' );
plot( Y6(:,1) , Y6(:,2) , 'b--' );
plot( Y7(:,1) , Y7(:,2) , 'w--' );
plot( Y8(:,1) , Y8(:,2) , 'b-.' );
plot( Y9(:,1) , Y9(:,2) , 'r-.' );

title ( 'GRIEWANK 2, f vs eval, 10 executions' );

%  
axis ( [0 2000  0  1] );
%  

legend ( 'PSWARM default x0',...
         'PSWARM default x1',...
         'PSWARM default x2',...
         'PSWARM default x3',...
         'PSWARM default x4',...
         'PSWARM default x5',...
         'PSWARM default x6',...
         'PSWARM default x7',...
         'PSWARM default x8',...
         'PSWARM default x9');

xlabel ( 'number of evaluations' );
ylabel ( 'objective' );
 
hold off;