#include <bits/stdc++.h>
using namespace std;
int main()
{
	int t;
	cin >> t;
	while (t--)
	{
		int n;
		cin>>n;
		int count=0;
		for(int i=0;i<n;i++)
		{
			int x;
			cin>>x;
			if(x&1)
			 count++;
		}
		if(count==0 || (count==n && !(count&1)))
		cout<<"NO"<<endl;
 
		else
		cout<<"YES"<<endl;
	}
 
	return 0;
}