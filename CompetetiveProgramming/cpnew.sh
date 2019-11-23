#!/bin/bash

SITE="" 
NO=""
NAME=""
FILENAME=""

if [ $# == 3 ]
then
    SITE+=$1
    NO+=$2
    NAME+=$3
    echo "You're solving $SITE $NO : $NAME"
elif [ $# == 2 ]
then
    SITE+=$1
    NO+=$2
    echo "You're solving $SITE $NO"
    echo "Please give the problem name"
    read NAME
    echo "You're solving $SITE $NO : $NAME"
elif [ $# == 1 ]
then
    SITE+=$1
    echo "You're solving from $SITE"
    echo "Please give the problem number"
    read NO
    echo "Please give the problem name"
    read NAME
    echo "You're solving $SITE $NO : $NAME"
elif [ $# == 0 ]
then
    echo "From which site you're solving"
    read SITE
    echo "Please give the problem number"
    read NO
    echo "Please give the problem name"
    read NAME
    echo "You're solving $SITE $NO : $NAME"
else
    echo "Something is wrong!"
    echo "Please restart the program with a valid input."
fi

FILENAME+="$NO - $NAME.cpp"


TEMPLATE="
/*
* @site         $SITE
* @problem_no   $NO
* @problem_name $NAME
* @author       KhanShaheb
* @Language     C++
* @status       
* @time         
*/

#include<bits/stdc++.h>
using namespace std;

typedef long long ll;
typedef unsigned long long ull;
typedef long double ld;
typedef pair<int, int> ii;
typedef vector<ii> vii;
typedef vector<int> vi;
inline void fast_io() { ios_base::sync_with_stdio(false); cin.tie(0); cout.tie(0); }
#define INF 1000000000
#define endl '\\\n'
#define ashche cerr<<\"Ekhane Ashche!\"<<endl
#define mem(a,x) memset(a,x,sizeof(a))
#define fout(x) fixed<<setprecision(x)
const int mod=1e9+7;
void deb(istream_iterator<string> it) {}
template<typename T, typename... Args>
void deb(istream_iterator<string> it, T a, Args... args) {
    cerr << *it << \" = \" << a << endl;
    deb(++it, args...);
}

int main()
{
    fast_io();

    int q;      // FOR TESTCASES
    cin >> q;
    while(q--)
    {
        // CODE HERE
        
    }

    return 0;
}"

printf "$TEMPLATE">"$NO - $NAME.cpp"