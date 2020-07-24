**commit b16e463**

<p align="center"><img src="https://user-images.githubusercontent.com/39688690/88074978-20e9d000-cbb3-11ea-8a73-d072b5390a5d.png" height="500px" width="280px" >



**commit 4081b07**

- [x] Drawer

- [x] ListTile

<p align="center"><img src="https://user-images.githubusercontent.com/39688690/88083428-fcdfbc00-cbbd-11ea-8efe-878532371d26.png" height="500px" width="280px" ></p>



### SnackBar

`BuildContext는 위젯트리(widget tree)와  깊은 연관성을 가지고 있으며, 특히 scaffold.of 메소드가 사용하는 context(콘텍스트)의 정체를 이해해야 스낵바가 화면에 그려지는 원리를 이해할 수 있습니다. ` >>**위젯트리의 중요성**

모든 위젯은 자신만의 BuildContext를 가지고 있음. 이 BuildContext은 stateless 위젯이나 state 빌드 메소드에 의해 리턴된 위젯의 부모가 된다.

* Scaffold 내 SnackBar를 생성할 때, 아래와 같이 build 의 context를 사용하게 된다면 오류가 발생하게 된다.

```dart
class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

	...
				Center(
              child: FlatButton(
	...
					Scaffold.of(context).showSnackBar(SnackBar(
					  content: Text('Clicked!'),
					));
				
	...

	}
}
```

**Error: Scaffold.of() called with a context that does not contain a Scaffold.**

The context used was: Grade (부모위젯이 호출되었음을 확인할 수 있음)



**Scaffold 를 포함하고 있는 위젯** 중에서 Context를 가져와야 하지만, 위의 코드는 **Grade의 Context**를 가져오므로 에러가 발생하게 된다. Scaffold 내부에 있는 Context를 가져오기 위해서는 Builder를 사용해야 한다.

<img src="https://user-images.githubusercontent.com/39688690/88375804-38090780-cdd7-11ea-8782-78b8b1e1a4cc.png" alt="image" style="zoom: 50%;" />



` Builder Wiget 없이 사용하는 법은 없을까 ?`  >> **클래스를 생성하자**

<img src="https://user-images.githubusercontent.com/39688690/88379289-a05ae780-cddd-11ea-976b-84e143602e77.png" alt="image" style="zoom:50%;" />





**Toast Dependency setting 시 주의사항**

1. Could not resolve the package 'fluttertoast'....

- flutter doctor 시 설정 정보 error or warning 을 해결 하면, 이 문제는 자동으로 해결....

2. MissingPluginException(No implementation found for method showToast on channel...)

* hot reload 말고, 자체적으로 에뮬레이터 재시작하기

