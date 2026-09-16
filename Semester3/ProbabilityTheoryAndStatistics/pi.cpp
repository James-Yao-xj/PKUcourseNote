#include<iostream>
#include<random>

using namespace std;
double estimate_pi(int N){
    int inside_circle = 0;
    random_device rd;
    mt19937 gen(rd());
    uniform_real_distribution<double> dis(0.0, 1.0);

    for(int i = 0; i < N; ++i){
        double x = dis(gen);
        double y = dis(gen);
        if(x*x + y*y <= 1.0){
            inside_circle++;
        }
    }
    return 4.0 * inside_circle / N;
}
int main(){
    const int N = 100000;
    double pi_estimate = estimate_pi(N);
    cout << "Estimated value of pi after " << N << " iterations: " << pi_estimate << endl;
    return 0;

}