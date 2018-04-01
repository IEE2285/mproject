#ģ�����ͳ��רҵͬѧ������ѧ�����֣�
#��¼��ѧ���������Դ����������۵ĳɼ�
#Ȼ�����ͳ�Ʒ���

#�ֲ�����
#rnorm()��̬�ֲ�����
#rpois() ���ɷֲ�����
#rexp() ָ���ֲ�����
#rgamma()Gamma�ֲ�����
#runif()���ȷֲ�����
#rbinnorm()����ֲ�����
#rgeom()���ηֲ�����

num=seq(7102001,7102100)				#ѧ��
mathRes=round(runif(100,min=80,max=100))		#�������Ͼ��ȷֲ�����ѧ�ɼ���round��������ȡ��
lineRes=round(rnorm(100,mean=80,sd=7))
probabilityRes=round(rnorm(100,mean=85,sd=18))
probabilityRes[which(probabilityRes>100)]=100

res=data.frame(num,mathRes,lineRes,probabilityRes)
#��ѧ���ĳɼ���Ϣ���浽excel�ļ���
#col.names: ������,F��ʾ��
#row.names: �����ƣ�F��ʾ��
write.table(res,file="E:\\Daily\\01_R\\RLearn\\mark.txt",col.names=c('ѧ��','��ѧ����','���Դ���','������'),row.names=F,sep=" ")

print(colMeans(res))								      #��ѧ�š����Ƶĳɼ�����ƽ��ֵ

colMean=colMeans(res[c("mathRes","lineRes","probabilityRes")])	      #������Ƶ�ƽ��ֵ
print(colMean)

applyMean=apply(res[c("mathRes","lineRes","probabilityRes")],2,mean)	#����apply������Ƶ�ƽ���ɼ������еڶ�������2-�в��� 1-�в���
print(applyMean)

applySum=apply(res[c("mathRes","lineRes","probabilityRes")],1,sum)      #����ÿ��ѧ�����ܳɼ�
print(applySum)

max=apply(res[c("mathRes","lineRes","probabilityRes")],2,max)	      #���ҵ�����߳ɼ�
print(max)

min=apply(res[c("mathRes","lineRes","probabilityRes")],2,min)           #���ҵ�����ͳɼ�
print(min)

maxSum=max(applySum)	                                                #������߳ɼ�
print(maxSum)

numMaxSum=res$num[which.max(apply(res[c("mathRes","lineRes","probabilityRes")],1,sum))]  #�ܳɼ���ߵ�ѧ��
print(numMaxSum)						      

hist(res$mathRes)										#������ѧ�ɼ�ֱ��ͼ
hist(#ģ�����ͳ��רҵͬѧ������ѧ�����֣�
#��¼��ѧ���������Դ����������۵ĳɼ�
#Ȼ�����ͳ�Ʒ���

#�ֲ�����
#rnorm()��̬�ֲ�����
#rpois() ���ɷֲ�����
#rexp() ָ���ֲ�����
#rgamma()Gamma�ֲ�����
#runif()���ȷֲ�����
#rbinnorm()����ֲ�����
#rgeom()���ηֲ�����

num=seq(7102001,7102100)				#ѧ��
mathRes=round(runif(100,min=80,max=100))		#�������Ͼ��ȷֲ�����ѧ�ɼ���round��������ȡ��
lineRes=round(rnorm(100,mean=80,sd=7))
probabilityRes=round(rnorm(100,mean=85,sd=18))
probabilityRes[which(probabilityRes>100)]=100

res=data.frame(num,mathRes,lineRes,probabilityRes)
#��ѧ���ĳɼ���Ϣ���浽excel�ļ���
#col.names: ������,F��ʾ��
#row.names: �����ƣ�F��ʾ��
write.table(res,file="E:\\Daily\\01_R\\RLearn\\mark.txt",col.names=c('ѧ��','��ѧ����','���Դ���','������'),row.names=F,sep=" ")

print(colMeans(res))								      #��ѧ�š����Ƶĳɼ�����ƽ��ֵ

colMean=colMeans(res[c("mathRes","lineRes","probabilityRes")])	      #������Ƶ�ƽ��ֵ
print(colMean)

applyMean=apply(res[c("mathRes","lineRes","probabilityRes")],2,mean)	#����apply������Ƶ�ƽ���ɼ������еڶ�������2-�в��� 1-�в���
print(applyMean)

applySum=apply(res[c("mathRes","lineRes","probabilityRes")],1,sum)      #����ÿ��ѧ�����ܳɼ�
print(applySum)

max=apply(res[c("mathRes","lineRes","probabilityRes")],2,max)	      #���ҵ�����߳ɼ�
print(max)

min=apply(res[c("mathRes","lineRes","probabilityRes")],2,min)           #���ҵ�����ͳɼ�
print(min)

maxSum=max(applySum)	                                                #������߳ɼ�
print(maxSum)

numMaxSum=res$num[which.max(apply(res[c("mathRes","lineRes","probabilityRes")],1,sum))]  #�ܳɼ���ߵ�ѧ��
print(numMaxSum)						      

#Ĭ��ֻ��һ������ڣ�������ƶ��ֱ��ͼ������ֻ�ܿ������һ����Ծ�Ĵ���
hist(res$mathRes)										#������ѧ�ɼ�ֱ��ͼ
#hist(res$lineRes)
#hist(res$probabilityRes)

plot(num,mathRes)										#����ѧ�ź���ѧ�ɼ���ɢ��ͼ
plot(res$num,res$mathRes)								#����ѧ�ź���ѧ�ɼ���ɢ��ͼ,Ч��ͬ��һ��
plot(res$mathRes,res$lineRes,main="��ѧ�ɼ������Դ����ɼ���ϵ",
	xlab="��ѧ�ɼ�",ylab="���Դ����ɼ�",xlim=c(0,100),ylim=c(0,100),
	xaxs="i",yaxs="i",#����
	col="green",pch=19)								#ɢ��ͼ�Ľ�һ������,pch=19Բ��

a=c(2,3,4,5,6)
b=c(4,7,8,9,12)
plot(a,b,type="l")									#����ͼ

plot(res$num,res$mathRes,type="l",col="red",ylim=c(0,100),
main="ѧ���ĸ��Ƴɼ�����",xlab="ѧ��",ylab="�ɼ�",lwd=3)				#lwd:�߿�
lines(res$num,res$lineRes,type="l",col="blue",lwd="3")
lines(res$num,res$probabilityRes,type="l",col="green",lwd="3")		#һ��ͼ���ƶ�������

#par()��ʵ���豸��������ɢ��ͼ
par(mfrow=c(3,1))										#3��1��
plot(res$num,res$mathRes,type="l")
plot(res$num,res$lineRes,type="l")
plot(res$num,res$probabilityRes,type="l")						#ɢ��ͼ����һ��ͼ���ƶ������

plot(res$num,res$mathRes,type="l",main="��ѧ�ɼ�")
dev.new()
plot(res$num,res$lineRes,type="l",main="���Դ���")
dev.new()
plot(res$num,res$probabilityRes,type="l",main="������")			#����ͼ���ƶ����������


plot(density(rnorm(1000)))								#density�ܶ�ͼ


table(res$mathRes)									#��������
barplot(table(res$mathRes))								#��״ͼ

pie(table(res$mathRes))									#��״ͼ

#��βͼ���м����Ϊ������λ��
#���ӵ����º��߷ֱ��Ӧ��������25%��75%��λ��
#����������Ϊβ�ߣ�β�߾�ͷ�ֱ��Ӧ�����ֵ�����ֵ
#oΪ�쳣ֵ
boxplot(res$mathRes,res$lineRes,res$probabilityRes)				#��βͼ
boxplot(res$mathRes,res$lineRes,res$probabilityRes,horizontal=T)		#ˮƽ���õ���βͼ

boxplot(res[2:4],col=c("red","blue","green"),notch=T)				#����ͼ

#ÿ���۲ⵥλ����ֵΪһ����λ��ÿ��ͼ��ÿ���Ǳ�ʾһ�����������ߵĳ��ȱ�����ֵ�Ĵ�С
stars(res[c("mathRes","lineRes","probabilityRes")])					#����ͼ
stars(res[c("mathRes","lineRes","probabilityRes")],full=T,draw.segment=T)	#����ͼ��ȫԲ��ʾ
stars(res[c("mathRes","lineRes","probabilityRes")],full=F,draw.segment=T)	#����ͼ����Բ��ʾ

#����ͼ,��������ٵĿ��Ⱥ͸߶���������ݣ��ʺ��������Ƚ��ٵ����
#��Ҫ��װaplpack������Ӧ������install.packages("aplpack")
library(aplpack)
faces(res[c("mathRes","lineRes","probabilityRes")])

library(TeachingDemos)
faces2(res[c("mathRes","lineRes","probabilityRes")])					#����ͼ
faces2(res)

stem(res$mathRes)											#��Ҷͼ


#�������ж��Ƿ������̬�ֲ������ɢ��Խ�ӽ�ֱ�ߣ�Խ�ӽ���̫�ֲ�
#ֱ�ߵ�б���Ǳ�׼��ؾ��Ǿ�ֵ
qqnorm(res$mathRes)										#QQͼ										
qqline(res$mathRes)

data()												#�鿴��������
heatmap(as.matrix(mtcars),Rowv=NA,Colv=NA,col=heat.colors(256),
scale="column",margins=c(2,8),main="Car characteristics by Model")		#����ͼ

iris													#�β�����ݼ�,sepal���� petal���� species����
#����ͨ�����տ������������ʾ�ص������ݵĸ������˷���ɢ��ͼ�������ص�������
sunflowerplot(iris[,3:4],col="gold",seg.col="gold")					#���տ�ɢ��ͼ

#���������е�ȫ�������̶Ի�����Ԫͼ������ֱ����������Ԫ��֮��Ĺ�ϵ
pairs(iris[,1:4])											#ɢ��ͼ��
plot(iris[,1:4],pch=19,col="blue",cex=0.6)

library(scatterplot3d)
scatterplot3d(iris[,2:4])									#������άɢ��ͼ

x<-y<-seq(-2*pi,2*pi,pi/15)
f<-function(x,y) sin(x)*sin(y)
z<-outer(x,y,f)
contour(x,y,z,col="blue")									#��ά��ͼ�����������ڵȸ���
persp(x,y,z,theta=30,phi=30,expand=0.7,col="lightblue")

#�����������ھ����жϺܷ���
#unison(iris[,2:4])										#��������ͼ���Զ��壬��unison����



