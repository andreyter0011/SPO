#include <iostream>
#include <thread>
#include <mutex>
using namespace std;

mutex m;

void calculate(int n, int& count)
{
	cout << "Введите элементы:" << endl;
	for (int i = 0; i < n; i++)
	{
		int x;
		cin >> x;
		if (x & 1)
		{
			m.lock();
			count++;
			m.unlock();
		}
	}
}

int main()
{
	setlocale(LC_ALL, "");
	cout << "Проверяет условие, что если количество\n нечетных чисел равно нулю,\n либо если все числа в последовательности\n нечетные и количество элементов\n в ней четное, то выводит NO.\n Иначе, выводит YES.\n" << endl;
	int t;
	cout << "Введите количество потоков:" << endl;
	cin >> t;
	while (t--)
	{
		int n;
		cout << "Введите количество элементов потока:" << endl;
		cin >> n;
		int count = 0;
		thread t(calculate, n, ref(count));
		t.join();
		if (count == 0 || (count == n && !(count & 1)))
			cout << "Ответ: NO" << endl;
		else
			cout << "Ответ: YES" << endl;
	}
	return 0;
}