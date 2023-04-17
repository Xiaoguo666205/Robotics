function JL = JacobLPro(gamma,alpha_1,beta,eta,phi,theta)
% 参数的雅可比矩阵
% 输入：结构参数，z-y-z欧拉角，关节角
% 输出：雅可比矩阵
gamma_1=gamma(1);
gamma_2=gamma(2);
gamma_3=gamma(3);
alpha_11=alpha_1(1);
alpha_12=alpha_1(2);
alpha_13=alpha_1(3);
beta_1=beta(1);
beta_2=beta(2);
beta_3=beta(3);
eta_1=eta(1);
eta_2=eta(2);
eta_3=eta(3);
phi_1=phi(1);
phi_2=phi(2);
phi_3=phi(3);
theta_1=theta(1);
theta_2=theta(2);
theta_3=theta(3);
%% 记录求导结果
%% f1 l
df1dl1 =(cos(alpha_11)*sin(gamma_1) + cos(gamma_1)*sin(alpha_11)*sin(theta_1))*(cos(beta_1)*cos(phi_2) + cos(eta_1)*sin(beta_1)*sin(phi_2)*sin(phi_3) + cos(phi_3)*sin(beta_1)*sin(eta_1)*sin(phi_2)) + cos(eta_1)*(sin(beta_1)*(cos(eta_1)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)) - sin(eta_1)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1))) + cos(beta_1)*sin(phi_1)*sin(phi_2))*(cos(alpha_11)*cos(gamma_1) - sin(alpha_11)*sin(gamma_1)*sin(theta_1)) + sin(eta_1)*(sin(beta_1)*(cos(eta_1)*cos(phi_3)*sin(phi_1) - sin(eta_1)*sin(phi_1)*sin(phi_3) + cos(eta_1)*cos(phi_1)*cos(phi_2)*sin(phi_3) + cos(phi_1)*cos(phi_2)*cos(phi_3)*sin(eta_1)) - cos(beta_1)*cos(phi_1)*sin(phi_2))*(cos(alpha_11)*cos(gamma_1) - sin(alpha_11)*sin(gamma_1)*sin(theta_1));
df1dl2 =0;
df1dl3 =0;
df1dl4 =(sin(beta_1)*(cos(eta_1 + pi/2)*(sin(phi_1)*sin(phi_3) - cos(phi_1)*cos(phi_2)*cos(phi_3)) + sin(eta_1 + pi/2)*(cos(phi_3)*sin(phi_1) + cos(phi_1)*cos(phi_2)*sin(phi_3))) - cos(beta_1)*cos(phi_1)*sin(phi_2))*((cos(alpha_11)*sin(eta_1) + cos(eta_1)*sin(alpha_11)*sin(gamma_1))*(cos(eta_1)*sin(eta_1)*(cos(theta_1) - 1)*sin(gamma_1)^2 + cos(gamma_1)*sin(theta_1)) + (cos(alpha_11)*cos(eta_1) - sin(alpha_11)*sin(eta_1)*sin(gamma_1))*((cos(theta_1) - 1)*(cos(eta_1)^2*sin(gamma_1)^2 + cos(gamma_1)^2) + 1) - cos(gamma_1)*sin(alpha_11)*(cos(eta_1)*sin(gamma_1)*sin(theta_1) - cos(gamma_1)*sin(eta_1)*sin(gamma_1)*(cos(theta_1) - 1))) - (sin(beta_1)*(cos(eta_1)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)) - sin(eta_1)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1))) + cos(beta_1)*sin(phi_1)*sin(phi_2))*(cos(alpha_11)*cos(theta_1)*sin(eta_1) + cos(eta_1)*sin(alpha_11)*sin(gamma_1) - cos(alpha_11)*cos(eta_1)*cos(gamma_1)*sin(theta_1)) + (cos(gamma_1)*sin(alpha_11) + cos(alpha_11)*sin(gamma_1)*sin(theta_1))*(cos(beta_1)*cos(phi_2) + cos(eta_1)*sin(beta_1)*sin(phi_2)*sin(phi_3) + cos(phi_3)*sin(beta_1)*sin(eta_1)*sin(phi_2));
df1dl5 =0;
df1dl6 =0;
df1dl7 =(cos(beta_1)*(cos(eta_1)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)) - sin(eta_1)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1))) - sin(beta_1)*sin(phi_1)*sin(phi_2))*(cos(alpha_11)*cos(eta_1)*sin(gamma_1) - sin(alpha_11)*cos(theta_1)*sin(eta_1) + cos(eta_1)*cos(gamma_1)*sin(alpha_11)*sin(theta_1)) + (cos(beta_1)*(cos(eta_1 + pi/2)*(sin(phi_1)*sin(phi_3) - cos(phi_1)*cos(phi_2)*cos(phi_3)) + sin(eta_1 + pi/2)*(cos(phi_3)*sin(phi_1) + cos(phi_1)*cos(phi_2)*sin(phi_3))) + cos(phi_1)*sin(beta_1)*sin(phi_2))*((sin(alpha_11)*sin(eta_1) - cos(alpha_11)*cos(eta_1)*sin(gamma_1))*(cos(eta_1)*sin(eta_1)*(cos(theta_1) - 1)*sin(gamma_1)^2 + cos(gamma_1)*sin(theta_1)) + (cos(eta_1)*sin(alpha_11) + cos(alpha_11)*sin(eta_1)*sin(gamma_1))*((cos(theta_1) - 1)*(cos(eta_1)^2*sin(gamma_1)^2 + cos(gamma_1)^2) + 1) + cos(alpha_11)*cos(gamma_1)*(cos(eta_1)*sin(gamma_1)*sin(theta_1) - cos(gamma_1)*sin(eta_1)*sin(gamma_1)*(cos(theta_1) - 1))) - (cos(alpha_11)*cos(gamma_1) - sin(alpha_11)*sin(gamma_1)*sin(theta_1))*(cos(beta_1)*cos(eta_1)*sin(phi_2)*sin(phi_3) - cos(phi_2)*sin(beta_1) + cos(beta_1)*cos(phi_3)*sin(eta_1)*sin(phi_2));
df1dl8 =0;
df1dl9 =0;
df1dl10 =(sin(beta_1)*(cos(eta_1)*cos(phi_3)*sin(phi_1) - sin(eta_1)*sin(phi_1)*sin(phi_3) + cos(eta_1)*cos(phi_1)*cos(phi_2)*sin(phi_3) + cos(phi_1)*cos(phi_2)*cos(phi_3)*sin(eta_1)) - cos(beta_1)*cos(phi_1)*sin(phi_2))*(cos(alpha_11)*cos(eta_1)*sin(gamma_1) - sin(alpha_11)*cos(theta_1)*sin(eta_1) + cos(eta_1)*cos(gamma_1)*sin(alpha_11)*sin(theta_1)) - (sin(beta_1)*(cos(eta_1)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)) - sin(eta_1)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1))) + cos(beta_1)*sin(phi_1)*sin(phi_2))*(cos(eta_1)*sin(alpha_11)*cos(theta_1) + cos(alpha_11)*sin(eta_1)*sin(gamma_1) + cos(gamma_1)*sin(alpha_11)*sin(eta_1)*sin(theta_1)) - sin(beta_1)*(cos(eta_1)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1)) + sin(eta_1)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)))*(cos(alpha_11)*cos(eta_1)*sin(gamma_1) - sin(alpha_11)*cos(theta_1)*sin(eta_1) + cos(eta_1)*cos(gamma_1)*sin(alpha_11)*sin(theta_1)) - sin(beta_1)*(cos(eta_1)*(sin(phi_1)*sin(phi_3) - cos(phi_1)*cos(phi_2)*cos(phi_3)) + sin(eta_1)*(cos(phi_3)*sin(phi_1) + cos(phi_1)*cos(phi_2)*sin(phi_3)))*((cos(eta_1)*sin(alpha_11) + cos(alpha_11)*sin(eta_1)*sin(gamma_1))*(cos(theta_1) + sin(eta_1)^2*sin(gamma_1)^2 - cos(theta_1)*sin(eta_1)^2*sin(gamma_1)^2) + (sin(alpha_11)*sin(eta_1) - cos(alpha_11)*cos(eta_1)*sin(gamma_1))*(cos(eta_1)*sin(eta_1)*(cos(theta_1) - 1)*sin(gamma_1)^2 + cos(gamma_1)*sin(theta_1)) + cos(alpha_11)*cos(gamma_1)*sin(gamma_1)*(cos(gamma_1)*sin(eta_1) + cos(eta_1)*sin(theta_1) - cos(gamma_1)*cos(theta_1)*sin(eta_1))) - cos(eta_1 + phi_3)*sin(beta_1)*sin(phi_2)*(cos(alpha_11)*cos(gamma_1) - sin(alpha_11)*sin(gamma_1)*sin(theta_1));
df1dl11 =0;
df1dl12 =0;
%% f1 x
df1dx1 =(sin(beta_1)*(cos(eta_1 + pi/2)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1)) + sin(eta_1 + pi/2)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3))) + cos(beta_1)*sin(phi_1)*sin(phi_2))*((sin(alpha_11)*sin(eta_1) - cos(alpha_11)*cos(eta_1)*sin(gamma_1))*(cos(eta_1)*sin(eta_1)*(cos(theta_1) - 1)*sin(gamma_1)^2 + cos(gamma_1)*sin(theta_1)) + (cos(eta_1)*sin(alpha_11) + cos(alpha_11)*sin(eta_1)*sin(gamma_1))*((cos(theta_1) - 1)*(cos(eta_1)^2*sin(gamma_1)^2 + cos(gamma_1)^2) + 1) + cos(alpha_11)*cos(gamma_1)*(cos(eta_1)*sin(gamma_1)*sin(theta_1) - cos(gamma_1)*sin(eta_1)*sin(gamma_1)*(cos(theta_1) - 1))) - (sin(beta_1)*(cos(eta_1)*(cos(phi_3)*sin(phi_1) + cos(phi_1)*cos(phi_2)*sin(phi_3)) - sin(eta_1)*(sin(phi_1)*sin(phi_3) - cos(phi_1)*cos(phi_2)*cos(phi_3))) - cos(beta_1)*cos(phi_1)*sin(phi_2))*(cos(alpha_11)*cos(eta_1)*sin(gamma_1) - sin(alpha_11)*cos(theta_1)*sin(eta_1) + cos(eta_1)*cos(gamma_1)*sin(alpha_11)*sin(theta_1));
df1dx2 =(sin(beta_1)*(cos(eta_1)*sin(phi_1)*sin(phi_2)*sin(phi_3) + cos(phi_3)*sin(eta_1)*sin(phi_1)*sin(phi_2)) + cos(beta_1)*cos(phi_2)*sin(phi_1))*(cos(alpha_11)*cos(eta_1)*sin(gamma_1) - sin(alpha_11)*cos(theta_1)*sin(eta_1) + cos(eta_1)*cos(gamma_1)*sin(alpha_11)*sin(theta_1)) - (cos(alpha_11)*cos(gamma_1) - sin(alpha_11)*sin(gamma_1)*sin(theta_1))*(cos(eta_1)*cos(phi_2)*sin(beta_1)*sin(phi_3) - cos(beta_1)*sin(phi_2) + cos(phi_2)*cos(phi_3)*sin(beta_1)*sin(eta_1)) + (sin(beta_1)*(cos(phi_1)*cos(phi_3)*cos(eta_1 + pi/2)*sin(phi_2) - cos(phi_1)*sin(phi_2)*sin(phi_3)*sin(eta_1 + pi/2)) - cos(beta_1)*cos(phi_1)*cos(phi_2))*((sin(alpha_11)*sin(eta_1) - cos(alpha_11)*cos(eta_1)*sin(gamma_1))*(cos(eta_1)*sin(eta_1)*(cos(theta_1) - 1)*sin(gamma_1)^2 + cos(gamma_1)*sin(theta_1)) + (cos(eta_1)*sin(alpha_11) + cos(alpha_11)*sin(eta_1)*sin(gamma_1))*((cos(theta_1) - 1)*(cos(eta_1)^2*sin(gamma_1)^2 + cos(gamma_1)^2) + 1) + cos(alpha_11)*cos(gamma_1)*(cos(eta_1)*sin(gamma_1)*sin(theta_1) - cos(gamma_1)*sin(eta_1)*sin(gamma_1)*(cos(theta_1) - 1)));
df1dx3 =- sin(beta_1)*(cos(eta_1)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1)) + sin(eta_1)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)))*(cos(alpha_11)*cos(eta_1)*sin(gamma_1) - sin(alpha_11)*cos(theta_1)*sin(eta_1) + cos(eta_1)*cos(gamma_1)*sin(alpha_11)*sin(theta_1)) - sin(beta_1)*(cos(eta_1)*(sin(phi_1)*sin(phi_3) - cos(phi_1)*cos(phi_2)*cos(phi_3)) + sin(eta_1)*(cos(phi_3)*sin(phi_1) + cos(phi_1)*cos(phi_2)*sin(phi_3)))*((cos(eta_1)*sin(alpha_11) + cos(alpha_11)*sin(eta_1)*sin(gamma_1))*(cos(theta_1) + sin(eta_1)^2*sin(gamma_1)^2 - cos(theta_1)*sin(eta_1)^2*sin(gamma_1)^2) + (sin(alpha_11)*sin(eta_1) - cos(alpha_11)*cos(eta_1)*sin(gamma_1))*(cos(eta_1)*sin(eta_1)*(cos(theta_1) - 1)*sin(gamma_1)^2 + cos(gamma_1)*sin(theta_1)) + cos(alpha_11)*cos(gamma_1)*sin(gamma_1)*(cos(gamma_1)*sin(eta_1) + cos(eta_1)*sin(theta_1) - cos(gamma_1)*cos(theta_1)*sin(eta_1))) - cos(eta_1 + phi_3)*sin(beta_1)*sin(phi_2)*(cos(alpha_11)*cos(gamma_1) - sin(alpha_11)*sin(gamma_1)*sin(theta_1));
%% f2 l
df2dl1 =0;
df2dl2 =(cos(alpha_12)*sin(gamma_2) + cos(gamma_2)*sin(alpha_12)*sin(theta_2))*(cos(beta_2)*cos(phi_2) + cos(eta_2)*sin(beta_2)*sin(phi_2)*sin(phi_3) + cos(phi_3)*sin(beta_2)*sin(eta_2)*sin(phi_2)) + cos(eta_2)*(sin(beta_2)*(cos(eta_2)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)) - sin(eta_2)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1))) + cos(beta_2)*sin(phi_1)*sin(phi_2))*(cos(alpha_12)*cos(gamma_2) - sin(alpha_12)*sin(gamma_2)*sin(theta_2)) + sin(eta_2)*(sin(beta_2)*(cos(eta_2)*cos(phi_3)*sin(phi_1) - sin(eta_2)*sin(phi_1)*sin(phi_3) + cos(eta_2)*cos(phi_1)*cos(phi_2)*sin(phi_3) + cos(phi_1)*cos(phi_2)*cos(phi_3)*sin(eta_2)) - cos(beta_2)*cos(phi_1)*sin(phi_2))*(cos(alpha_12)*cos(gamma_2) - sin(alpha_12)*sin(gamma_2)*sin(theta_2));
df2dl3 =0;
df2dl4 =0;
df2dl5 =(sin(beta_2)*(cos(eta_2 + pi/2)*(sin(phi_1)*sin(phi_3) - cos(phi_1)*cos(phi_2)*cos(phi_3)) + sin(eta_2 + pi/2)*(cos(phi_3)*sin(phi_1) + cos(phi_1)*cos(phi_2)*sin(phi_3))) - cos(beta_2)*cos(phi_1)*sin(phi_2))*((cos(alpha_12)*sin(eta_2) + cos(eta_2)*sin(alpha_12)*sin(gamma_2))*(cos(eta_2)*sin(eta_2)*(cos(theta_2) - 1)*sin(gamma_2)^2 + cos(gamma_2)*sin(theta_2)) + (cos(alpha_12)*cos(eta_2) - sin(alpha_12)*sin(eta_2)*sin(gamma_2))*((cos(theta_2) - 1)*(cos(eta_2)^2*sin(gamma_2)^2 + cos(gamma_2)^2) + 1) - cos(gamma_2)*sin(alpha_12)*(cos(eta_2)*sin(gamma_2)*sin(theta_2) - cos(gamma_2)*sin(eta_2)*sin(gamma_2)*(cos(theta_2) - 1))) - (sin(beta_2)*(cos(eta_2)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)) - sin(eta_2)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1))) + cos(beta_2)*sin(phi_1)*sin(phi_2))*(cos(alpha_12)*cos(theta_2)*sin(eta_2) + cos(eta_2)*sin(alpha_12)*sin(gamma_2) - cos(alpha_12)*cos(eta_2)*cos(gamma_2)*sin(theta_2)) + (cos(gamma_2)*sin(alpha_12) + cos(alpha_12)*sin(gamma_2)*sin(theta_2))*(cos(beta_2)*cos(phi_2) + cos(eta_2)*sin(beta_2)*sin(phi_2)*sin(phi_3) + cos(phi_3)*sin(beta_2)*sin(eta_2)*sin(phi_2));
df2dl6 =0;
df2dl7 =0;
df2dl8 =(cos(beta_2)*(cos(eta_2)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)) - sin(eta_2)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1))) - sin(beta_2)*sin(phi_1)*sin(phi_2))*(cos(alpha_12)*cos(eta_2)*sin(gamma_2) - sin(alpha_12)*cos(theta_2)*sin(eta_2) + cos(eta_2)*cos(gamma_2)*sin(alpha_12)*sin(theta_2)) + (cos(beta_2)*(cos(eta_2 + pi/2)*(sin(phi_1)*sin(phi_3) - cos(phi_1)*cos(phi_2)*cos(phi_3)) + sin(eta_2 + pi/2)*(cos(phi_3)*sin(phi_1) + cos(phi_1)*cos(phi_2)*sin(phi_3))) + cos(phi_1)*sin(beta_2)*sin(phi_2))*((sin(alpha_12)*sin(eta_2) - cos(alpha_12)*cos(eta_2)*sin(gamma_2))*(cos(eta_2)*sin(eta_2)*(cos(theta_2) - 1)*sin(gamma_2)^2 + cos(gamma_2)*sin(theta_2)) + (cos(eta_2)*sin(alpha_12) + cos(alpha_12)*sin(eta_2)*sin(gamma_2))*((cos(theta_2) - 1)*(cos(eta_2)^2*sin(gamma_2)^2 + cos(gamma_2)^2) + 1) + cos(alpha_12)*cos(gamma_2)*(cos(eta_2)*sin(gamma_2)*sin(theta_2) - cos(gamma_2)*sin(eta_2)*sin(gamma_2)*(cos(theta_2) - 1))) - (cos(alpha_12)*cos(gamma_2) - sin(alpha_12)*sin(gamma_2)*sin(theta_2))*(cos(beta_2)*cos(eta_2)*sin(phi_2)*sin(phi_3) - cos(phi_2)*sin(beta_2) + cos(beta_2)*cos(phi_3)*sin(eta_2)*sin(phi_2));
df2dl9 =0;
df2dl10 =0;
df2dl11 =(sin(beta_2)*(cos(eta_2)*cos(phi_3)*sin(phi_1) - sin(eta_2)*sin(phi_1)*sin(phi_3) + cos(eta_2)*cos(phi_1)*cos(phi_2)*sin(phi_3) + cos(phi_1)*cos(phi_2)*cos(phi_3)*sin(eta_2)) - cos(beta_2)*cos(phi_1)*sin(phi_2))*(cos(alpha_12)*cos(eta_2)*sin(gamma_2) - sin(alpha_12)*cos(theta_2)*sin(eta_2) + cos(eta_2)*cos(gamma_2)*sin(alpha_12)*sin(theta_2)) - (sin(beta_2)*(cos(eta_2)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)) - sin(eta_2)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1))) + cos(beta_2)*sin(phi_1)*sin(phi_2))*(cos(eta_2)*sin(alpha_12)*cos(theta_2) + cos(alpha_12)*sin(eta_2)*sin(gamma_2) + cos(gamma_2)*sin(alpha_12)*sin(eta_2)*sin(theta_2)) - sin(beta_2)*(cos(eta_2)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1)) + sin(eta_2)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)))*(cos(alpha_12)*cos(eta_2)*sin(gamma_2) - sin(alpha_12)*cos(theta_2)*sin(eta_2) + cos(eta_2)*cos(gamma_2)*sin(alpha_12)*sin(theta_2)) - sin(beta_2)*(cos(eta_2)*(sin(phi_1)*sin(phi_3) - cos(phi_1)*cos(phi_2)*cos(phi_3)) + sin(eta_2)*(cos(phi_3)*sin(phi_1) + cos(phi_1)*cos(phi_2)*sin(phi_3)))*((cos(eta_2)*sin(alpha_12) + cos(alpha_12)*sin(eta_2)*sin(gamma_2))*(cos(theta_2) + sin(eta_2)^2*sin(gamma_2)^2 - cos(theta_2)*sin(eta_2)^2*sin(gamma_2)^2) + (sin(alpha_12)*sin(eta_2) - cos(alpha_12)*cos(eta_2)*sin(gamma_2))*(cos(eta_2)*sin(eta_2)*(cos(theta_2) - 1)*sin(gamma_2)^2 + cos(gamma_2)*sin(theta_2)) + cos(alpha_12)*cos(gamma_2)*sin(gamma_2)*(cos(gamma_2)*sin(eta_2) + cos(eta_2)*sin(theta_2) - cos(gamma_2)*cos(theta_2)*sin(eta_2))) - cos(eta_2 + phi_3)*sin(beta_2)*sin(phi_2)*(cos(alpha_12)*cos(gamma_2) - sin(alpha_12)*sin(gamma_2)*sin(theta_2));
df2dl12 =0;
%% f2 x
df2dx1 =(sin(beta_2)*(cos(eta_2 + pi/2)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1)) + sin(eta_2 + pi/2)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3))) + cos(beta_2)*sin(phi_1)*sin(phi_2))*((sin(alpha_12)*sin(eta_2) - cos(alpha_12)*cos(eta_2)*sin(gamma_2))*(cos(eta_2)*sin(eta_2)*(cos(theta_2) - 1)*sin(gamma_2)^2 + cos(gamma_2)*sin(theta_2)) + (cos(eta_2)*sin(alpha_12) + cos(alpha_12)*sin(eta_2)*sin(gamma_2))*((cos(theta_2) - 1)*(cos(eta_2)^2*sin(gamma_2)^2 + cos(gamma_2)^2) + 1) + cos(alpha_12)*cos(gamma_2)*(cos(eta_2)*sin(gamma_2)*sin(theta_2) - cos(gamma_2)*sin(eta_2)*sin(gamma_2)*(cos(theta_2) - 1))) - (sin(beta_2)*(cos(eta_2)*(cos(phi_3)*sin(phi_1) + cos(phi_1)*cos(phi_2)*sin(phi_3)) - sin(eta_2)*(sin(phi_1)*sin(phi_3) - cos(phi_1)*cos(phi_2)*cos(phi_3))) - cos(beta_2)*cos(phi_1)*sin(phi_2))*(cos(alpha_12)*cos(eta_2)*sin(gamma_2) - sin(alpha_12)*cos(theta_2)*sin(eta_2) + cos(eta_2)*cos(gamma_2)*sin(alpha_12)*sin(theta_2));
df2dx2 =(sin(beta_2)*(cos(eta_2)*sin(phi_1)*sin(phi_2)*sin(phi_3) + cos(phi_3)*sin(eta_2)*sin(phi_1)*sin(phi_2)) + cos(beta_2)*cos(phi_2)*sin(phi_1))*(cos(alpha_12)*cos(eta_2)*sin(gamma_2) - sin(alpha_12)*cos(theta_2)*sin(eta_2) + cos(eta_2)*cos(gamma_2)*sin(alpha_12)*sin(theta_2)) - (cos(alpha_12)*cos(gamma_2) - sin(alpha_12)*sin(gamma_2)*sin(theta_2))*(cos(eta_2)*cos(phi_2)*sin(beta_2)*sin(phi_3) - cos(beta_2)*sin(phi_2) + cos(phi_2)*cos(phi_3)*sin(beta_2)*sin(eta_2)) + (sin(beta_2)*(cos(phi_1)*cos(phi_3)*cos(eta_2 + pi/2)*sin(phi_2) - cos(phi_1)*sin(phi_2)*sin(phi_3)*sin(eta_2 + pi/2)) - cos(beta_2)*cos(phi_1)*cos(phi_2))*((sin(alpha_12)*sin(eta_2) - cos(alpha_12)*cos(eta_2)*sin(gamma_2))*(cos(eta_2)*sin(eta_2)*(cos(theta_2) - 1)*sin(gamma_2)^2 + cos(gamma_2)*sin(theta_2)) + (cos(eta_2)*sin(alpha_12) + cos(alpha_12)*sin(eta_2)*sin(gamma_2))*((cos(theta_2) - 1)*(cos(eta_2)^2*sin(gamma_2)^2 + cos(gamma_2)^2) + 1) + cos(alpha_12)*cos(gamma_2)*(cos(eta_2)*sin(gamma_2)*sin(theta_2) - cos(gamma_2)*sin(eta_2)*sin(gamma_2)*(cos(theta_2) - 1)));
df2dx3 =- sin(beta_2)*(cos(eta_2)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1)) + sin(eta_2)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)))*(cos(alpha_12)*cos(eta_2)*sin(gamma_2) - sin(alpha_12)*cos(theta_2)*sin(eta_2) + cos(eta_2)*cos(gamma_2)*sin(alpha_12)*sin(theta_2)) - sin(beta_2)*(cos(eta_2)*(sin(phi_1)*sin(phi_3) - cos(phi_1)*cos(phi_2)*cos(phi_3)) + sin(eta_2)*(cos(phi_3)*sin(phi_1) + cos(phi_1)*cos(phi_2)*sin(phi_3)))*((cos(eta_2)*sin(alpha_12) + cos(alpha_12)*sin(eta_2)*sin(gamma_2))*(cos(theta_2) + sin(eta_2)^2*sin(gamma_2)^2 - cos(theta_2)*sin(eta_2)^2*sin(gamma_2)^2) + (sin(alpha_12)*sin(eta_2) - cos(alpha_12)*cos(eta_2)*sin(gamma_2))*(cos(eta_2)*sin(eta_2)*(cos(theta_2) - 1)*sin(gamma_2)^2 + cos(gamma_2)*sin(theta_2)) + cos(alpha_12)*cos(gamma_2)*sin(gamma_2)*(cos(gamma_2)*sin(eta_2) + cos(eta_2)*sin(theta_2) - cos(gamma_2)*cos(theta_2)*sin(eta_2))) - cos(eta_2 + phi_3)*sin(beta_2)*sin(phi_2)*(cos(alpha_12)*cos(gamma_2) - sin(alpha_12)*sin(gamma_2)*sin(theta_2));
%% f3 l
df3dl1 =0;
df3dl2 =0; 
df3dl3 =(cos(alpha_13)*sin(gamma_3) + cos(gamma_3)*sin(alpha_13)*sin(theta_3))*(cos(beta_3)*cos(phi_2) + cos(eta_3)*sin(beta_3)*sin(phi_2)*sin(phi_3) + cos(phi_3)*sin(beta_3)*sin(eta_3)*sin(phi_2)) + cos(eta_3)*(sin(beta_3)*(cos(eta_3)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)) - sin(eta_3)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1))) + cos(beta_3)*sin(phi_1)*sin(phi_2))*(cos(alpha_13)*cos(gamma_3) - sin(alpha_13)*sin(gamma_3)*sin(theta_3)) + sin(eta_3)*(sin(beta_3)*(cos(eta_3)*cos(phi_3)*sin(phi_1) - sin(eta_3)*sin(phi_1)*sin(phi_3) + cos(eta_3)*cos(phi_1)*cos(phi_2)*sin(phi_3) + cos(phi_1)*cos(phi_2)*cos(phi_3)*sin(eta_3)) - cos(beta_3)*cos(phi_1)*sin(phi_2))*(cos(alpha_13)*cos(gamma_3) - sin(alpha_13)*sin(gamma_3)*sin(theta_3));
df3dl4 =0;
df3dl5 =0;
df3dl6 =(sin(beta_3)*(cos(eta_3 + pi/2)*(sin(phi_1)*sin(phi_3) - cos(phi_1)*cos(phi_2)*cos(phi_3)) + sin(eta_3 + pi/2)*(cos(phi_3)*sin(phi_1) + cos(phi_1)*cos(phi_2)*sin(phi_3))) - cos(beta_3)*cos(phi_1)*sin(phi_2))*((cos(alpha_13)*sin(eta_3) + cos(eta_3)*sin(alpha_13)*sin(gamma_3))*(cos(eta_3)*sin(eta_3)*(cos(theta_3) - 1)*sin(gamma_3)^2 + cos(gamma_3)*sin(theta_3)) + (cos(alpha_13)*cos(eta_3) - sin(alpha_13)*sin(eta_3)*sin(gamma_3))*((cos(theta_3) - 1)*(cos(eta_3)^2*sin(gamma_3)^2 + cos(gamma_3)^2) + 1) - cos(gamma_3)*sin(alpha_13)*(cos(eta_3)*sin(gamma_3)*sin(theta_3) - cos(gamma_3)*sin(eta_3)*sin(gamma_3)*(cos(theta_3) - 1))) - (sin(beta_3)*(cos(eta_3)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)) - sin(eta_3)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1))) + cos(beta_3)*sin(phi_1)*sin(phi_2))*(cos(alpha_13)*cos(theta_3)*sin(eta_3) + cos(eta_3)*sin(alpha_13)*sin(gamma_3) - cos(alpha_13)*cos(eta_3)*cos(gamma_3)*sin(theta_3)) + (cos(gamma_3)*sin(alpha_13) + cos(alpha_13)*sin(gamma_3)*sin(theta_3))*(cos(beta_3)*cos(phi_2) + cos(eta_3)*sin(beta_3)*sin(phi_2)*sin(phi_3) + cos(phi_3)*sin(beta_3)*sin(eta_3)*sin(phi_2));
df3dl7 =0;
df3dl8 =0;
df3dl9 =(cos(beta_3)*(cos(eta_3)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)) - sin(eta_3)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1))) - sin(beta_3)*sin(phi_1)*sin(phi_2))*(cos(alpha_13)*cos(eta_3)*sin(gamma_3) - sin(alpha_13)*cos(theta_3)*sin(eta_3) + cos(eta_3)*cos(gamma_3)*sin(alpha_13)*sin(theta_3)) + (cos(beta_3)*(cos(eta_3 + pi/2)*(sin(phi_1)*sin(phi_3) - cos(phi_1)*cos(phi_2)*cos(phi_3)) + sin(eta_3 + pi/2)*(cos(phi_3)*sin(phi_1) + cos(phi_1)*cos(phi_2)*sin(phi_3))) + cos(phi_1)*sin(beta_3)*sin(phi_2))*((sin(alpha_13)*sin(eta_3) - cos(alpha_13)*cos(eta_3)*sin(gamma_3))*(cos(eta_3)*sin(eta_3)*(cos(theta_3) - 1)*sin(gamma_3)^2 + cos(gamma_3)*sin(theta_3)) + (cos(eta_3)*sin(alpha_13) + cos(alpha_13)*sin(eta_3)*sin(gamma_3))*((cos(theta_3) - 1)*(cos(eta_3)^2*sin(gamma_3)^2 + cos(gamma_3)^2) + 1) + cos(alpha_13)*cos(gamma_3)*(cos(eta_3)*sin(gamma_3)*sin(theta_3) - cos(gamma_3)*sin(eta_3)*sin(gamma_3)*(cos(theta_3) - 1))) - (cos(alpha_13)*cos(gamma_3) - sin(alpha_13)*sin(gamma_3)*sin(theta_3))*(cos(beta_3)*cos(eta_3)*sin(phi_2)*sin(phi_3) - cos(phi_2)*sin(beta_3) + cos(beta_3)*cos(phi_3)*sin(eta_3)*sin(phi_2));
df3dl10 =0;
df3dl11 =0;
df3dl12 =(sin(beta_3)*(cos(eta_3)*cos(phi_3)*sin(phi_1) - sin(eta_3)*sin(phi_1)*sin(phi_3) + cos(eta_3)*cos(phi_1)*cos(phi_2)*sin(phi_3) + cos(phi_1)*cos(phi_2)*cos(phi_3)*sin(eta_3)) - cos(beta_3)*cos(phi_1)*sin(phi_2))*(cos(alpha_13)*cos(eta_3)*sin(gamma_3) - sin(alpha_13)*cos(theta_3)*sin(eta_3) + cos(eta_3)*cos(gamma_3)*sin(alpha_13)*sin(theta_3)) - (sin(beta_3)*(cos(eta_3)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)) - sin(eta_3)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1))) + cos(beta_3)*sin(phi_1)*sin(phi_2))*(cos(eta_3)*sin(alpha_13)*cos(theta_3) + cos(alpha_13)*sin(eta_3)*sin(gamma_3) + cos(gamma_3)*sin(alpha_13)*sin(eta_3)*sin(theta_3)) - sin(beta_3)*(cos(eta_3)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1)) + sin(eta_3)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)))*(cos(alpha_13)*cos(eta_3)*sin(gamma_3) - sin(alpha_13)*cos(theta_3)*sin(eta_3) + cos(eta_3)*cos(gamma_3)*sin(alpha_13)*sin(theta_3)) - sin(beta_3)*(cos(eta_3)*(sin(phi_1)*sin(phi_3) - cos(phi_1)*cos(phi_2)*cos(phi_3)) + sin(eta_3)*(cos(phi_3)*sin(phi_1) + cos(phi_1)*cos(phi_2)*sin(phi_3)))*((cos(eta_3)*sin(alpha_13) + cos(alpha_13)*sin(eta_3)*sin(gamma_3))*(cos(theta_3) + sin(eta_3)^2*sin(gamma_3)^2 - cos(theta_3)*sin(eta_3)^2*sin(gamma_3)^2) + (sin(alpha_13)*sin(eta_3) - cos(alpha_13)*cos(eta_3)*sin(gamma_3))*(cos(eta_3)*sin(eta_3)*(cos(theta_3) - 1)*sin(gamma_3)^2 + cos(gamma_3)*sin(theta_3)) + cos(alpha_13)*cos(gamma_3)*sin(gamma_3)*(cos(gamma_3)*sin(eta_3) + cos(eta_3)*sin(theta_3) - cos(gamma_3)*cos(theta_3)*sin(eta_3))) - cos(eta_3 + phi_3)*sin(beta_3)*sin(phi_2)*(cos(alpha_13)*cos(gamma_3) - sin(alpha_13)*sin(gamma_3)*sin(theta_3));
%% f3 x
df3dx1 =(sin(beta_3)*(cos(eta_3 + pi/2)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1)) + sin(eta_3 + pi/2)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3))) + cos(beta_3)*sin(phi_1)*sin(phi_2))*((sin(alpha_13)*sin(eta_3) - cos(alpha_13)*cos(eta_3)*sin(gamma_3))*(cos(eta_3)*sin(eta_3)*(cos(theta_3) - 1)*sin(gamma_3)^2 + cos(gamma_3)*sin(theta_3)) + (cos(eta_3)*sin(alpha_13) + cos(alpha_13)*sin(eta_3)*sin(gamma_3))*((cos(theta_3) - 1)*(cos(eta_3)^2*sin(gamma_3)^2 + cos(gamma_3)^2) + 1) + cos(alpha_13)*cos(gamma_3)*(cos(eta_3)*sin(gamma_3)*sin(theta_3) - cos(gamma_3)*sin(eta_3)*sin(gamma_3)*(cos(theta_3) - 1))) - (sin(beta_3)*(cos(eta_3)*(cos(phi_3)*sin(phi_1) + cos(phi_1)*cos(phi_2)*sin(phi_3)) - sin(eta_3)*(sin(phi_1)*sin(phi_3) - cos(phi_1)*cos(phi_2)*cos(phi_3))) - cos(beta_3)*cos(phi_1)*sin(phi_2))*(cos(alpha_13)*cos(eta_3)*sin(gamma_3) - sin(alpha_13)*cos(theta_3)*sin(eta_3) + cos(eta_3)*cos(gamma_3)*sin(alpha_13)*sin(theta_3));
df3dx2 =(sin(beta_3)*(cos(eta_3)*sin(phi_1)*sin(phi_2)*sin(phi_3) + cos(phi_3)*sin(eta_3)*sin(phi_1)*sin(phi_2)) + cos(beta_3)*cos(phi_2)*sin(phi_1))*(cos(alpha_13)*cos(eta_3)*sin(gamma_3) - sin(alpha_13)*cos(theta_3)*sin(eta_3) + cos(eta_3)*cos(gamma_3)*sin(alpha_13)*sin(theta_3)) - (cos(alpha_13)*cos(gamma_3) - sin(alpha_13)*sin(gamma_3)*sin(theta_3))*(cos(eta_3)*cos(phi_2)*sin(beta_3)*sin(phi_3) - cos(beta_3)*sin(phi_2) + cos(phi_2)*cos(phi_3)*sin(beta_3)*sin(eta_3)) + (sin(beta_3)*(cos(phi_1)*cos(phi_3)*cos(eta_3 + pi/2)*sin(phi_2) - cos(phi_1)*sin(phi_2)*sin(phi_3)*sin(eta_3 + pi/2)) - cos(beta_3)*cos(phi_1)*cos(phi_2))*((sin(alpha_13)*sin(eta_3) - cos(alpha_13)*cos(eta_3)*sin(gamma_3))*(cos(eta_3)*sin(eta_3)*(cos(theta_3) - 1)*sin(gamma_3)^2 + cos(gamma_3)*sin(theta_3)) + (cos(eta_3)*sin(alpha_13) + cos(alpha_13)*sin(eta_3)*sin(gamma_3))*((cos(theta_3) - 1)*(cos(eta_3)^2*sin(gamma_3)^2 + cos(gamma_3)^2) + 1) + cos(alpha_13)*cos(gamma_3)*(cos(eta_3)*sin(gamma_3)*sin(theta_3) - cos(gamma_3)*sin(eta_3)*sin(gamma_3)*(cos(theta_3) - 1)));
df3dx3 =- sin(beta_3)*(cos(eta_3)*(cos(phi_1)*sin(phi_3) + cos(phi_2)*cos(phi_3)*sin(phi_1)) + sin(eta_3)*(cos(phi_1)*cos(phi_3) - cos(phi_2)*sin(phi_1)*sin(phi_3)))*(cos(alpha_13)*cos(eta_3)*sin(gamma_3) - sin(alpha_13)*cos(theta_3)*sin(eta_3) + cos(eta_3)*cos(gamma_3)*sin(alpha_13)*sin(theta_3)) - sin(beta_3)*(cos(eta_3)*(sin(phi_1)*sin(phi_3) - cos(phi_1)*cos(phi_2)*cos(phi_3)) + sin(eta_3)*(cos(phi_3)*sin(phi_1) + cos(phi_1)*cos(phi_2)*sin(phi_3)))*((cos(eta_3)*sin(alpha_13) + cos(alpha_13)*sin(eta_3)*sin(gamma_3))*(cos(theta_3) + sin(eta_3)^2*sin(gamma_3)^2 - cos(theta_3)*sin(eta_3)^2*sin(gamma_3)^2) + (sin(alpha_13)*sin(eta_3) - cos(alpha_13)*cos(eta_3)*sin(gamma_3))*(cos(eta_3)*sin(eta_3)*(cos(theta_3) - 1)*sin(gamma_3)^2 + cos(gamma_3)*sin(theta_3)) + cos(alpha_13)*cos(gamma_3)*sin(gamma_3)*(cos(gamma_3)*sin(eta_3) + cos(eta_3)*sin(theta_3) - cos(gamma_3)*cos(theta_3)*sin(eta_3))) - cos(eta_3 + phi_3)*sin(beta_3)*sin(phi_2)*(cos(alpha_13)*cos(gamma_3) - sin(alpha_13)*sin(gamma_3)*sin(theta_3));
%% 组成JacobL
B=[    
    df1dl1 df1dl2 df1dl3 df1dl4 df1dl5 df1dl6 df1dl7 df1dl8 df1dl9 df1dl10 df1dl11 df1dl12
    df2dl1 df2dl2 df2dl3 df2dl4 df2dl5 df2dl6 df2dl7 df2dl8 df2dl9 df2dl10 df2dl11 df2dl12
    df3dl1 df3dl2 df3dl3 df3dl4 df3dl5 df3dl6 df3dl7 df3dl8 df3dl9 df3dl10 df3dl11 df3dl12
    ];
C=[
    df1dx1 df1dx2 df1dx3 
    df2dx1 df2dx2 df2dx3 
    df3dx1 df3dx2 df3dx3 
    ];
JL=-C\B;

end
